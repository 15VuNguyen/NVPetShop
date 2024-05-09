/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.sql.Date;

/**
 *
 * @author trana
 */
public class Feedback {
    private int FeedbackID;
    private Date FeedbackDate;
    private String Description;
    private String Reply;
    private int AccID;

    public Feedback() {
    }

    public Feedback(int FeedbackID, Date FeedbackDate, String Description, String Reply, int AccID) {
        this.FeedbackID = FeedbackID;
        this.FeedbackDate = FeedbackDate;
        this.Description = Description;
        this.Reply = Reply;
        this.AccID = AccID;
    }

    public int getFeedbackID() {
        return FeedbackID;
    }

    public void setFeedbackID(int FeedbackID) {
        this.FeedbackID = FeedbackID;
    }

    public Date getFeedbackDate() {
        return FeedbackDate;
    }

    public void setFeedbackDate(Date FeedbackDate) {
        this.FeedbackDate = FeedbackDate;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getReply() {
        return Reply;
    }

    public void setReply(String Reply) {
        this.Reply = Reply;
    }

    public int getAccID() {
        return AccID;
    }

    public void setAccID(int AccID) {
        this.AccID = AccID;
    }
    
    
    
    
    
}
