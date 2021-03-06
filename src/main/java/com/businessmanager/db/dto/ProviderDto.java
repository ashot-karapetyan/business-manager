package com.businessmanager.db.dto;

public class ProviderDto {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column provider.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column provider.name
     *
     * @mbggenerated
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column provider.address_id
     *
     * @mbggenerated
     */
    private Integer addressId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column provider.manager_name
     *
     * @mbggenerated
     */
    private String managerName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column provider.manager_phone
     *
     * @mbggenerated
     */
    private String managerPhone;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column provider.id
     *
     * @return the value of provider.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column provider.id
     *
     * @param id the value for provider.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column provider.name
     *
     * @return the value of provider.name
     *
     * @mbggenerated
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column provider.name
     *
     * @param name the value for provider.name
     *
     * @mbggenerated
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column provider.address_id
     *
     * @return the value of provider.address_id
     *
     * @mbggenerated
     */
    public Integer getAddressId() {
        return addressId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column provider.address_id
     *
     * @param addressId the value for provider.address_id
     *
     * @mbggenerated
     */
    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column provider.manager_name
     *
     * @return the value of provider.manager_name
     *
     * @mbggenerated
     */
    public String getManagerName() {
        return managerName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column provider.manager_name
     *
     * @param managerName the value for provider.manager_name
     *
     * @mbggenerated
     */
    public void setManagerName(String managerName) {
        this.managerName = managerName == null ? null : managerName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column provider.manager_phone
     *
     * @return the value of provider.manager_phone
     *
     * @mbggenerated
     */
    public String getManagerPhone() {
        return managerPhone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column provider.manager_phone
     *
     * @param managerPhone the value for provider.manager_phone
     *
     * @mbggenerated
     */
    public void setManagerPhone(String managerPhone) {
        this.managerPhone = managerPhone == null ? null : managerPhone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", addressId=").append(addressId);
        sb.append(", managerName=").append(managerName);
        sb.append(", managerPhone=").append(managerPhone);
        sb.append("]");
        return sb.toString();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        ProviderDto other = (ProviderDto) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()));
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table provider
     *
     * @mbggenerated
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        return result;
    }
}