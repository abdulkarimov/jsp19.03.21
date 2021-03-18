package org.itstep.jsp.model;

public class Student {
    private String name;
    private String surname;
    private String age;
    private String city;
    private String address;
    private String phone;
    private String univ;
    private String facul;
    private String course;

    public Student() {
    }

    public Student(String name, String surname, String age, String city, String address, String phone, String univ, String facul, String course) {
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.city = city;
        this.address = address;
        this.phone = phone;
        this.univ = univ;
        this.facul = facul;
        this.course = course;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setUniv(String univ) {
        this.univ = univ;
    }

    public void setFacul(String facul) {
        this.facul = facul;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", age='" + age + '\'' +
                ", city='" + city + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", univ='" + univ + '\'' +
                ", facul='" + facul + '\'' +
                ", course='" + course + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getAge() {
        return age;
    }

    public String getCity() {
        return city;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public String getUniv() {
        return univ;
    }

    public String getFacul() {
        return facul;
    }

    public String getCourse() {
        return course;
    }
}
