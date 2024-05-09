/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constants;

/**
 *
 * @author acer
 */
public class Message {
    public static enum msg{
        email_password_is_invalid("Email or Password is invalid");
        
        
        
        private final String message;

        private msg(String message) {
            this.message = message;
        }

        public String getMessage() {
            return message;
        }

    }
}
