public class JSONRedditResponse {

	public class Link_flair_richtext {
	}

	public class Data_Y {
		public String after;
		public Integer dist;
		public String modhash;
		public String geo_filter;
		public List<Children> children;
	}

	public class Data_Z {
		public String subreddit;
		public String selftext;
		public String author_fullname;
		public Boolean saved;
		public Integer gilded;
		public Boolean clicked;
		public String title;
		public List<Link_flair_richtext> link_flair_richtext;
		public String subreddit_name_prefixed;
		public Boolean hidden;
		public Integer pwls;
		public Integer downs;
		public Integer thumbnail_height;
		public Boolean hide_score;
		public String name;
		public Boolean quarantine;
		public String link_flair_text_color;
		public Double upvote_ratio;
		public String author_flair_background_color;
		public String subreddit_type;
		public Integer ups;
		public Integer total_awards_received;
		public Link_flair_richtext media_embed;
		public Integer thumbnail_width;
		public Boolean is_original_content;
		public List<Link_flair_richtext> user_reports;
		public Secure_media secure_media;
		public Boolean is_reddit_media_domain;
		public Boolean is_meta;
		public Link_flair_richtext secure_media_embed;
		public Boolean can_mod_post;
		public Integer score;
		public Boolean is_created_from_ads_ui;
		public Boolean author_premium;
		public String thumbnail;
		public Boolean edited;
		public String author_flair_css_class;
		public List<Link_flair_richtext> author_flair_richtext;
		public Link_flair_richtext gildings;
		public String post_hint;
		public Boolean is_self;
		public Double created;
		public String link_flair_type;
		public Integer wls;
		public String author_flair_type;
		public String domain;
		public Boolean allow_live_comments;
		public String suggested_sort;
		public String url_overridden_by_dest;
		public Boolean archived;
		public Boolean no_follow;
		public Boolean is_crosspostable;
		public Boolean pinned;
		public Boolean over_18;
		public Preview preview;
		public List<Link_flair_richtext> all_awardings;
		public List<Link_flair_richtext> awarders;
		public Boolean media_only;
		public Boolean can_gild;
		public Boolean spoiler;
		public Boolean locked;
		public List<Link_flair_richtext> treatment_tags;
		public Boolean visited;
		public String subreddit_id;
		public Boolean author_is_blocked;
		public String link_flair_background_color;
		public String id;
		public Boolean is_robot_indexable;
		public String author;
		public Integer num_comments;
		public Boolean send_replies;
		public String whitelist_status;
		public Boolean contest_mode;
		public List<Link_flair_richtext> mod_reports;
		public Boolean author_patreon_flair;
		public String author_flair_text_color;
		public String permalink;
		public String parent_whitelist_status;
		public Boolean stickied;
		public String url;
		public Integer subreddit_subscribers;
		public Double created_utc;
		public Integer num_crossposts;
		public Secure_media media;
		public Boolean is_video;
	}

	public String kind;
	public Data_Y data;

	public class Images {
		public Source source;
		public List<Source> resolutions;
		public Link_flair_richtext variants;
		public String id;
	}

	public class Preview {
		public List<Images> images;
		public Boolean enabled;
	}

	public class Data {
		public String subreddit;
		public String selftext;
		public String author_fullname;
		public Boolean saved;
		public Integer gilded;
		public Boolean clicked;
		public String title;
		public List<Link_flair_richtext> link_flair_richtext;
		public String subreddit_name_prefixed;
		public Boolean hidden;
		public Integer pwls;
		public String link_flair_css_class;
		public Integer downs;
		public Integer thumbnail_height;
		public Boolean hide_score;
		public String name;
		public Boolean quarantine;
		public String link_flair_text_color;
		public Double upvote_ratio;
		public String subreddit_type;
		public Integer ups;
		public Integer total_awards_received;
		public Link_flair_richtext media_embed;
		public Integer thumbnail_width;
		public Boolean is_original_content;
		public List<Link_flair_richtext> user_reports;
		public Boolean is_reddit_media_domain;
		public Boolean is_meta;
		public Link_flair_richtext secure_media_embed;
		public Boolean can_mod_post;
		public Integer score;
		public Boolean is_created_from_ads_ui;
		public Boolean author_premium;
		public String thumbnail;
		public Boolean edited;
		public List<Link_flair_richtext> author_flair_richtext;
		public Link_flair_richtext gildings;
		public String post_hint;
		public Boolean is_self;
		public Double created;
		public String link_flair_type;
		public Integer wls;
		public String author_flair_type;
		public String domain;
		public Boolean allow_live_comments;
		public String url_overridden_by_dest;
		public Boolean archived;
		public Boolean no_follow;
		public Boolean is_crosspostable;
		public Boolean pinned;
		public Boolean over_18;
		public Preview preview;
		public List<Link_flair_richtext> all_awardings;
		public List<Link_flair_richtext> awarders;
		public Boolean media_only;
		public Boolean can_gild;
		public Boolean spoiler;
		public Boolean locked;
		public List<Link_flair_richtext> treatment_tags;
		public Boolean visited;
		public String subreddit_id;
		public Boolean author_is_blocked;
		public String link_flair_background_color;
		public String id;
		public Boolean is_robot_indexable;
		public String author;
		public Integer num_comments;
		public Boolean send_replies;
		public String whitelist_status;
		public Boolean contest_mode;
		public List<Link_flair_richtext> mod_reports;
		public Boolean author_patreon_flair;
		public String permalink;
		public String parent_whitelist_status;
		public Boolean stickied;
		public String url;
		public Integer subreddit_subscribers;
		public Double created_utc;
		public Integer num_crossposts;
		public Boolean is_video;
	}

	public class Children {
		public String kind;
		public Data data;
	}

	public class Secure_media {
		public Reddit_video reddit_video;
	}

	public class Reddit_video {
		public Integer bitrate_kbps;
		public String fallback_url;
		public Integer height;
		public Integer width;
		public String scrubber_media_url;
		public String dash_url;
		public Integer duration;
		public String hls_url;
		public Boolean is_gif;
		public String transcoding_status;
	}

	public class Source {
		public String url;
		public Integer width;
		public Integer height;
	}
}