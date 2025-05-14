package com.caelan.caelancarpool.pojo;

public class AddressList {
    private int id;
    String livingPlace;
    String campus;

    public AddressList() {
    }

    public AddressList(int id, String livingPlace, String campus) {
        this.id = id;
        this.livingPlace = livingPlace;
        this.campus = campus;
    }

    /**
     * 获取
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * 获取
     * @return livingPlace
     */
    public String getLivingPlace() {
        return livingPlace;
    }

    /**
     * 设置
     * @param livingPlace
     */
    public void setLivingPlace(String livingPlace) {
        this.livingPlace = livingPlace;
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

    public String toString() {
        return "AddressList{id = " + id + ", livingPlace = " + livingPlace + ", campus = " + campus + "}";
    }
}
