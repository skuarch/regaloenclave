package model.beans;

import javax.validation.constraints.NotNull;

/**
 *
 * @author skuarch-lap
 */
public class Partner {

    @NotNull
    private String name;
    @NotNull
    private String lastName;
    private String phone;
    @NotNull
    private String email;
    @NotNull
    private String password;
    @NotNull
    private byte gender;
    
    public Partner() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public byte getGender() {
        return gender;
    }

    public void setGender(byte gender) {
        this.gender = gender;
    }
    
}
