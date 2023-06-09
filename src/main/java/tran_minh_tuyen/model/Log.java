package tran_minh_tuyen.model;

import org.jdbi.v3.core.Jdbi;

import java.io.Serializable;
import java.sql.Timestamp;

public class Log extends AbBean implements Serializable {

    private String user_id;
    private String src;
    private String content;
    private String ip_address;
    private String web_browser;
    private Timestamp create_at;
    private String status;


    public Log(String user_id, String src, String content, String ip_address, String web_browser, String status) {
        this.user_id = user_id;
        this.src = src;
        this.content = content;
        this.ip_address = ip_address;
        this.web_browser = web_browser;
        this.status = status;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getIp_address() {
        return ip_address;
    }

    public void setIp_address(String ip_address) {
        this.ip_address = ip_address;
    }

    public String getWeb_browser() {
        return web_browser;
    }

    public void setWeb_browser(String web_browser) {
        this.web_browser = web_browser;
    }

    public Timestamp getCreate_at() {
        return create_at;
    }

    public void setCreate_at(Timestamp create_at) {
        this.create_at = create_at;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Log() {
    }

    public boolean insert(Jdbi db) {
        Integer i = db.withHandle(handle ->
                handle.execute("INSERT INTO logs( `user_id`, src, content, ip_address, web_browser, create_at, `status`)  VALUES(?,?,?,?,?,NOW(),?)",
                        getUser_id().equals("-1") ? null : getUser_id(), this.src, this.content, this.ip_address
                        , this.web_browser, this.status)
        );
        return i == 1;
    }

    @Override
    public boolean delete(Jdbi db) {
        return false;
    }

    @Override
    public boolean update(Jdbi db) {
        return false;
    }

}
