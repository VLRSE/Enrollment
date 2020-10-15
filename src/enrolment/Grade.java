/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enrolment;

/**
 *
 * @author CSC
 */
public class Grade {
    public int studID;
    public String schedID;
    public  float grade;

    public int getStudID() {
        return studID;
    }

    public void setStudID(int studID) {
        this.studID = studID;
    }

    public String getSchedID() {
        return schedID;
    }

    public void setSchedID(String schedID) {
        this.schedID = schedID;
    }

    public float getGrade() {
        return grade;
    }

    public void setGrade(float grade) {
        this.grade = grade;
    }
    
}
