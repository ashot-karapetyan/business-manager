package com.businessmanager.db.dto;

public class LogDto {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.business_id
     *
     * @mbggenerated
     */
    private Integer businessId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.action_type_id
     *
     * @mbggenerated
     */
    private Integer actionTypeId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.market_id
     *
     * @mbggenerated
     */
    private Integer marketId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.product_id
     *
     * @mbggenerated
     */
    private Integer productId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.quantity
     *
     * @mbggenerated
     */
    private Double quantity;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column log.price
     *
     * @mbggenerated
     */
    private Double price;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.id
     *
     * @return the value of log.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.id
     *
     * @param id the value for log.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.business_id
     *
     * @return the value of log.business_id
     *
     * @mbggenerated
     */
    public Integer getBusinessId() {
        return businessId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.business_id
     *
     * @param businessId the value for log.business_id
     *
     * @mbggenerated
     */
    public void setBusinessId(Integer businessId) {
        this.businessId = businessId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.action_type_id
     *
     * @return the value of log.action_type_id
     *
     * @mbggenerated
     */
    public Integer getActionTypeId() {
        return actionTypeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.action_type_id
     *
     * @param actionTypeId the value for log.action_type_id
     *
     * @mbggenerated
     */
    public void setActionTypeId(Integer actionTypeId) {
        this.actionTypeId = actionTypeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.market_id
     *
     * @return the value of log.market_id
     *
     * @mbggenerated
     */
    public Integer getMarketId() {
        return marketId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.market_id
     *
     * @param marketId the value for log.market_id
     *
     * @mbggenerated
     */
    public void setMarketId(Integer marketId) {
        this.marketId = marketId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.product_id
     *
     * @return the value of log.product_id
     *
     * @mbggenerated
     */
    public Integer getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.product_id
     *
     * @param productId the value for log.product_id
     *
     * @mbggenerated
     */
    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.quantity
     *
     * @return the value of log.quantity
     *
     * @mbggenerated
     */
    public Double getQuantity() {
        return quantity;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.quantity
     *
     * @param quantity the value for log.quantity
     *
     * @mbggenerated
     */
    public void setQuantity(Double quantity) {
        this.quantity = quantity;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column log.price
     *
     * @return the value of log.price
     *
     * @mbggenerated
     */
    public Double getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column log.price
     *
     * @param price the value for log.price
     *
     * @mbggenerated
     */
    public void setPrice(Double price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table log
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
        sb.append(", businessId=").append(businessId);
        sb.append(", actionTypeId=").append(actionTypeId);
        sb.append(", marketId=").append(marketId);
        sb.append(", productId=").append(productId);
        sb.append(", quantity=").append(quantity);
        sb.append(", price=").append(price);
        sb.append("]");
        return sb.toString();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table log
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
        LogDto other = (LogDto) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()));
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table log
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