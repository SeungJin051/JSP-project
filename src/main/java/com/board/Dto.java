package com.board;

public class Dto {
    private String num;
    private String topik;
    private String title;
    private String img;
    private String content;
    
    // Default constructor
    public Dto() {
        
    }
    
    // Getter and setter methods for 'num'
    public String getnum() {
        return num;
    }
    
    public void setnum(String num) {
        this.num = num;
    }
    
    // Getter and setter methods for 'topik'
    public String gettopik() {
        return topik;
    }
    
    public void settopik(String topik) {
        this.topik = topik;
    }
    
    // Getter and setter methods for 'title'
    public String gettitle() {
        return title;
    }
    
    public void settitle(String title) {
        this.title = title;
    }
    
    // Getter and setter methods for 'img'
    public String getimg() {
        return img;
    }
    
    public void setimg(String img) {
        this.img = img;
    }
    
    // Getter and setter methods for 'content'
    public String getcontent() {
        return content;
    }
    
    public void setcontent(String content) {
        this.content = content;
    }
    
    // Parameterized constructor
    public Dto(String num, String topik, String title, String img, String content) {
        super();
        this.num = num;
        this.topik = topik;
        this.title = title;
        this.img = img;
        this.content = content;
    }
}
