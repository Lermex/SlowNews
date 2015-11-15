package net.lermex.slownews.model;

public class NewsItem {
    private String title;
    private String imageLink;
    private String body;

    public NewsItem() {
    }

    public NewsItem(String title, String imageLink, String body) {
        this.title = title;
        this.imageLink = imageLink;
        this.body = body;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }
}
