/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.SQLException;

public class Mahasiswa {

    private String username;
    private String password1;
    private String password2;
    private String nim;
    private String nama;
    private String email;
    private String dosen;
    private String ips;
    private String ipk;
    private String SKS;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) throws Exception {
        this.username = username;
    }

    public String getNim() {
        return nim;
    }

    public void setNim(String nim) {
        this.nim = nim;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) throws Exception {
        this.nama = nama;
    }

    public String getDosen() {
        return dosen;
    }

    public void setDosen(String dosen) throws Exception {
        this.dosen = dosen;
    }

    public String getIps() {
        return ips;
    }

    public void setIps(String ips) throws Exception {
        this.ips = ips;
    }

    public String getIpk() {
        return ipk;
    }

    public void setIpk(String ipk) throws Exception {
        this.ipk = ipk;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) throws Exception {
        this.email = email;
    }

    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) throws Exception {
        this.password1 = password1;
    }

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) throws Exception {
        this.password2 = password2;
    }

    public String createNim() throws SQLException {
        DataBaseConnection conn = new DataBaseConnection();
        String query = "select * from mahasiswa";
        java.sql.Statement statement = conn.getConnection().createStatement();
        java.sql.ResultSet result = statement.executeQuery(query);

        int index = 1;

        while (result.next()) {
            index++;
        }

        String getNim = "145314" + index;
        return getNim;
    }
    
    public int getSKS(double ips) {
        if(ips >= 3.0) {
            return 24;
        }
        else if (ips >= 2.5 && ips < 3.0) {
            return 22;
        }
        else if(ips > 2.0 && ips < 2.5) {
            return 20;
        }
        else {
            return 18;
        }
    }

    public String getSKS() {
        return SKS;
    }

    public void setSKS(double ips) {
        if(ips >= 3.0) {
            this.SKS = "24";
        }
        else if (ips >= 2.5 && ips < 3.0) {
            this.SKS = "22";
        }
        else if(ips > 2.0 && ips < 2.5) {
            this.SKS = "20";
        }
        else {
            this.SKS = "18";
        }
    }
}
