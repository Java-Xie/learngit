package com.chu.xieproject.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class UsersLog {
    @Id
    @Column(name="id")
    private Integer id;
    @Column(name="u_id")
    private Integer uId;
    @Column(name="log_date")
    private Date logDate;
    @Column(name="log_type")
    private Integer logType;
    @Column(name="u_pwd_old")
    private String uPwdOld;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public Date getLogDate() {
        return logDate;
    }

    public void setLogDate(Date logDate) {
        this.logDate = logDate;
    }

    public Integer getLogType() {
        return logType;
    }

    public void setLogType(Integer logType) {
        this.logType = logType;
    }

    public String getuPwdOld() {
        return uPwdOld;
    }

    public void setuPwdOld(String uPwdOld) {
        this.uPwdOld = uPwdOld;
    }
}
