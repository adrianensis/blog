var thread = document.querySelector('[aria-label="Timeline: Conversation"]');

//console.log(thread);

var tweets = thread.querySelectorAll('[data-testid="cellInnerDiv"]');

//console.log(tweets);

var str = "";
for(var t of tweets)
{
  var textElement = t.querySelector('[data-testid="tweetText"]');
  if(textElement)
  {
    //console.log(textElement);
    for(var c of textElement.childNodes)
    {
			str += (c.innerText || c.getAttribute('alt'));
    }
    
    str += "\n\n";
    
    //console.log(textElement.innerText);
  }
}

console.log(str);