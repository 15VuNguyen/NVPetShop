/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author trana
 */
public class Pet {
    private int PetID;
    private String PetName;
    private int CategoryID;
    private int CusID;

    public Pet() {
    }

    public int getPetID() {
        return PetID;
    }

    public void setPetID(int PetID) {
        this.PetID = PetID;
    }

    public String getPetName() {
        return PetName;
    }

    public void setPetName(String PetName) {
        this.PetName = PetName;
    }

    public int getCategoryID() {
        return CategoryID;
    }

    public void setCategoryID(int CategoryID) {
        this.CategoryID = CategoryID;
    }

    public Pet(int PetID, String PetName, int CategoryID) {
        this.PetID = PetID;
        this.PetName = PetName;
        this.CategoryID = CategoryID;
    }

    public Pet(int PetID, String PetName, int CategoryID, int CusID) {
        this.PetID = PetID;
        this.PetName = PetName;
        this.CategoryID = CategoryID;
        this.CusID = CusID;
    }
    
}
