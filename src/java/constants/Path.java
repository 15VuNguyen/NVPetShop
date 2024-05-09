/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package constants;

/**
 *
 * @author acer
 */
public class Path {
    public static enum admin{
        ADMIN_HOME("adminHome");
        
        
        
        private final String path;

        private admin(String path) {
            this.path = path;
        }

        public String getPath() {
            return path;
        }

    }
    
    public static enum user{
        USER_HOME("userHome");
        
        
        
        private final String path;

        private user(String path) {
            this.path = path;
        }

        public String getPath() {
            return path;
        }

    }
    
    public static enum serverPage{
        LOGIN("login");
        
        
        
        private final String path;

        private serverPage(String path) {
            this.path = path;
        }

        public String getPath() {
            return path;
        }

    }
    
    
}
