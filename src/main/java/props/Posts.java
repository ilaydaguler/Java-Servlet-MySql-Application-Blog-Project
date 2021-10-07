package props;

public class Posts {
    public Posts(){

    }
    public Posts(int pid,String title,String explanation,String detail){
        this.pid=pid;
        this.title=title;
        this.explanation=explanation;
        this.detail=detail;
    }

    private int pid;
    private String title;

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getExplanation() {
        return explanation;
    }

    public void setExplanation(String explanation) {
        this.explanation = explanation;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String explanation;
    private String detail;
    private int id;
}
