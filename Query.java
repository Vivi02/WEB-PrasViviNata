/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Query {

    Connection connection;
    DataBaseConnection database = new DataBaseConnection();
    PreparedStatement statement;
    Statement stmt;
    ResultSet resultSet;

    public ArrayList<Mahasiswa> bio(String username) throws SQLException, Exception {
        ArrayList<Mahasiswa> mhs = new ArrayList<Mahasiswa>();

        try {
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT nim, nama, desen_pemb, "
                    + "email, ipk, ips FROM mahasiswa WHERE username = '" + username + "'");
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Mahasiswa id = new Mahasiswa();
                id.setNim(resultSet.getString("nim"));
                id.setNama(resultSet.getString("nama"));
                id.setDosen(resultSet.getString("desen_pemb"));
                id.setEmail(resultSet.getString("email"));
                id.setIps(resultSet.getString("ips"));
                id.setIpk(resultSet.getString("ipk"));
                id.setSKS(Double.parseDouble(id.getIps()));
                mhs.add(id);
            }
        } catch (SQLException ignore) {
        }

        return mhs;
    }

    public ArrayList<MataKuliah> makul() throws SQLException {
        ArrayList<MataKuliah> mataKuliah = new ArrayList<MataKuliah>();

        try {
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM makul");
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                MataKuliah mk = new MataKuliah();
                mk.setKodeMakul(resultSet.getString("kode_makul"));
                mk.setNamaMakul(resultSet.getString("nama_makul"));
                mk.setWaktu(resultSet.getString("waktu"));
                mk.setSks(resultSet.getString("sks"));
                mk.setDosen(resultSet.getString("pengampu"));
                mk.setTarif(resultSet.getString("tarif"));
                mk.setRuang(resultSet.getString("ruang"));
                mataKuliah.add(mk);
            }
        } catch (SQLException ignore) {
        }

        return mataKuliah;
    }

    public void closeConn() {
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException ignore) {
            }
        }
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException ignore) {
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException ignore) {
            }
        }
    }
}
 