public with sharing class RedditSubController implements Schedulable{
	public RequestParameters params;

	public void execute(SchedulableContext SC) {
		updatePostsCollection(this.params);
 	}

	private static void updatePostsCollection(RequestParameters params){
		List<Reddit_Post__c> newPosts = getLatestPosts(params);
		List<Reddit_Post__c> oldPosts = [SELECT Id FROM Reddit_Post__c ORDER BY CreatedDate DESC LIMIT 40];
		if(oldPosts.size()>0){
			delete oldPosts;
		}
		insert newPosts;
	}
	
	private static List<Reddit_Post__c> getLatestPosts(RequestParameters params){
		HttpRequest req = new HttpRequest();
		req.setEndpoint('callout:__RedditSub/'+treatCalloutParams(params));
		req.setMethod('GET');
		Http http = new Http();
		HTTPResponse res = http.send(req);
		List<Reddit_Post__c> resultingPosts = parseJsonResponse(String.valueOf(res.getBody()));
		return resultingPosts;
	}

	private static String treatCalloutParams(RequestParameters params){
		String calloutParams = '';
		calloutParams += params.subName;
		if(params.resultWhere != null){
			calloutParams += '/'+params.resultWhere+'.json';
		}else{
			calloutParams+='.json';
		}
		if(params.resultsLimit != null){
			calloutParams += '?limit='+params.resultsLimit;
		}
		system.debug('@@@Callout params are: '+calloutParams);
		return calloutParams;
	}

	private static List<Reddit_Post__c> parseJsonResponse(String jsonString){
		List<Reddit_Post__c> postsList = new List<Reddit_Post__c>();
		JSONRedditResponse sobjectResponse = (JSONRedditResponse)JSON.deserialize(jsonString, JSONRedditResponse.class);
		for (JSONRedditResponse.Children post : sobjectResponse.data.children) {
			Reddit_Post__c postItem = new Reddit_Post__c();
			postItem.Author_Name__c = post.data.author;
			postItem.Author_Full_Name__c = post.data.author_fullname;
			postItem.Self_Text__c = post.data.selftext;
			postItem.Thumbnail_URL__c = post.data.thumbnail;
			postItem.Name = post.data.title.abbreviate(77)+'...';
			postItem.Post_Long_Name__c = post.data.title;	
			postItem.Image_URL__c = post.data.url;
			postsList.add(postItem);
		}
		return postsList;
	}

	public RedditSubController(String subName, Integer resultsLimit, String resultWhere){
		this.params = new RequestParameters();	
		this.params.subName = subName;
		this.params.resultsLimit = resultsLimit;
		this.params.resultWhere = resultWhere;
	}
	
	public class RequestParameters{
		public String subName;
		public Integer resultsLimit;
		public String resultWhere;
	}
}
