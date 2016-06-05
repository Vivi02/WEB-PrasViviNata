package bean;

import java.sql.SQLException;

/**
 *
 * @author Natalia Ari Chrismiyati
 */
public class Mahasiswa {

    private String nim;
    private String nama;
    private String email;
    private String dosen;
    private String ips;
    private String ipk;
    private String SKS;
    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public int getSKS(double ips) {
        if (ips >= 3.0) {
            return 24;
        } else if (ips >= 2.5 && ips < 3.0) {
            return 22;
        } else if (ips > 2.0 && ips < 2.5) {
            return 20;
        } else {
            return 18;
        }
    }

    public String getSKS() {
        return SKS;
    }

    public void setSKS(double ips) {
        if (ips >= 3.0) {
            this.SKS = "24";
        } else if (ips >= 2.5 && ips < 3.0) {
            this.SKS = "22";
        } else if (ips > 2.0 && ips < 2.5) {
            this.SKS = "20";
        } else {
            this.SKS = "18";
        }
    }

    public int createNim() throws SQLException {
        DataBaseConnection conn = new DataBaseConnection();
        String query = "select MAX(nim) from mahasiswa";
        java.sql.Statement statement = conn.getConnection().createStatement();
        java.sql.ResultSet result = statement.executeQuery(query);
        int getNim1 = 0;
//        int index = 45;
//
//        while (result.next()) {
//            index++;
//        }
//
//        String getNim = "145314" + index;
//        return getNim;
        if (result.next()) {
            int getNim = result.getInt(1);
            getNim1 = getNim + 1;
        }
        return getNim1;
    }
    
}
