package lk.ijse.gdse.Dto;

public class ComplaintDto {
     private String cid, uname, subject,  date , description,status;


    public ComplaintDto() {

    }

    public ComplaintDto(String cid,String uname,  String subject,  String date, String description,String status) {

        this.cid = cid;
        this.uname = uname;
        this.subject = subject;
        this.date = date;
        this.description = description;
        this.status = status;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
