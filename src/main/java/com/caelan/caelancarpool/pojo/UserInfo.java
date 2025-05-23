package com.caelan.caelancarpool.pojo;

import java.util.List;

public class UserInfo {
    String id;
    String name;
    String address;
    String campus;
    public UserInfo() {
    }

    public UserInfo(String id, String name, String address) {
        this.id = id;
        this.name = name;
        this.address = address;
    }

    public UserInfo(String id, String name, String address, String campus) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.campus = campus;
    }

    /**
     * 获取
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    public String toString() {
        return "UserInfo{id = " + id + ", name = " + name + ", address = " + address + "}";
    }

    /**
     * 获取
     * @return campus
     */
    public String getCampus() {
        return campus;
    }

    /**
     * 设置
     * @param campus
     */
    public void setCampus(String campus) {
        this.campus = campus;
    }
}
