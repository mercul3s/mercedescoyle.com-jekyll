---
layout: post
title: "Testing Elixir HTTP client with ExVCR and HTTPoison"
tags:
- programming
- tech
type: post
published: true
date:	2016-09-18 13:16
---
I've recently started working on a fun new distributed systems project written in Elixir. Functional programming and immutable languages are a brave new world for me, and getting used to the syntax and structure has been a delightfully frustrating challenge. One of the first things I had a chance to dig into was writing some helper functions to call an API (Marathon, in this case). HTTPoison and its dependent library Hackney are pretty straightfoward and easy to use. 
Here's a super simple example of an HTTP GET request using HTTPoison. Note: if you're not using [httpbin](httpbin.org) for http testing, you should! It provides a route for every HTTP verb with appropriate responses that you can test against, including one for testing response codes. You can also fork a copy and run it locally for testing so as not to depend on a live site. 
[HTTPoison](https://github.com/edgurgel/httpoison) is an elixir HTTP client built from [Hackney](https://github.com/benoitc/hackney) and [Poison](https://github.com/devinus/poison), which are HTTP and JSON libraries, respectively. HTTPoison's main feature is that it returns binaries instead of string lists, and it will do some encoding/decoding of JSON return or post bodies. This is nice because it simplifies any JSON massaging or converting that you might have to do, and in turn simplifies your code.
{% highlight elixir %}
  def get_request do
    with {:ok, response} <- HTTPoison.get("http://httpbin.org/get") do
      response
    end
  end
{% endhighlight %}
In this case, our with statement is used to split out the returned tuple into two parts: the default :ok return from elixir, and the HTTP response, which is what we're actually interested in. 
With that out of the way, let's move on to testing. Now, we could run our tests using standard unit testing, and assert that we get a return value of 200 whenever we call our get_request function. However, this would probably fail under certain conditions. If the site we're calling goes down or times out, our test fails, even if our code is actually doing what it is supposed to be doing. In addition, we don't really want to be hitting a site we don't own with a bunch of requests, especially if there are API concurrency limits. Instead of testing with an actual HTTP request, we want to mock the request, and have a predictable return value that indicates whether or not our function is working properly. This is where ExVCR comes in. Basically, ExVCR records the request/and response on the first run, and stores it as a JSON fixture in your test directory. During subsequent test runs, ExVCR intercepts the call to the http library, and instead uses the request/response JSON data in the fixture. The end result? Magic. ![Alt magic](/images/shia-magic.gif)

Here's the json fixture for our get request function:
{% highlight json %}
[
  {
    "request": {
      "body": "",
      "headers": [],
      "method": "get",
      "options": [],
      "request_body": "",
      "url": "http://httpbin.org/get"
    },
    "response": {
      "body": "{\n  \"args\": {}, \n  \"headers\": {\n    \"Host\": \"httpbin.org\", \n    \"User-Agent\": \"hackney/1.6.1\"\n  }, \n  \"origin\": \"69.5.96.76\", \n  \"url\": \"http://httpbin.org/get\"\n}\n",
      "headers": {
        "Server": "nginx",
        "Date": "Sun, 18 Sep 2016 21:06:01 GMT",
        "Content-Type": "application/json",
        "Content-Length": "163",
        "Connection": "keep-alive",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Credentials": "true"
      },
      "status_code": 200,
      "type": "ok"
    }
  }
]
{% endhighlight %}
And here is the test using that fixture:
{% highlight elixir %}
defmodule HttpExamplesTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  
  @tag :get_request_test
  test "get request" do
  	use_cassette "http_get_request" do
  		request_data = HttpExamples.get_request
  		assert Map.get(request_data, :status_code) == 200
  	end
  end
end
{% endhighlight %}
To specify that you want ExVCR to mock your request/response data, you call <code>use_cassette</code> and give it a cassette name that corresponds to the name of the JSON file fixture. If your file doesn't exist, it will record the request/response and store it in a new file automatically.

The downside to using this method is that it records a live http request, which is potentially not something you want to do if you're testing against an API or using methods that may change or delete data. In that case, you can create a JSON fixture before running your tests, and use it in place of a recorded fixture.

Previous to using ExVCR, I had setup mocks for HTTP libraries in Python and Ruby by specifying side effects on those libraries in my tests - returning different status codes, or using a different url, for example. However, that was always clunky and prone to repetition in my tests. With a better test fixture including the request and the response, I can do more intelligent and comprehensive testing on not only that the correct data is returned, but also on any further transformations of that data in other parts of my code.
