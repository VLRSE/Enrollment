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
public class subject {
    public String subjcode;
    public String description;
    public int units;

    public String getSubjectCode() {
        return subjcode;
    }

    public void setSubjectCode(String subjcode) {
        this.subjcode = subjcode;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getUnits() {
        return units;
    }

    public void setUnits(int units) {
        this.units = units;
    }
    
}
