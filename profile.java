/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package com.mycompany.aditya;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author aditya
 */
public class profile extends javax.swing.JFrame {
    Connection con;
    Statement st;
    PreparedStatement ps;
    ResultSet rs;
    String usid;
    String usname;
    String usty;
    /**
     * Creates new form profile
     */
    public profile() {
        initComponents();
    }
    public profile(Connection co,Statement s,PreparedStatement p,ResultSet r,String Userid, String Username) {
        initComponents();
        con =co;
        st = s;
        ps = p;
        rs = r;  
        usid = Userid;
        usname = Username;
        try {
        String sql = "select member_type,member_id,name,email,type,address,dept from student_faculty_details where member_id = '"+usid+"'";
                st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                //ps = con.prepareStatement(sql);
                //ps.setString(1, emp_id.getText());
                rs=st.executeQuery(sql);
                if(rs.next()){
                usty=rs.getString(1);
                userid.setText(rs.getString(2));
                username.setText(rs.getString(3));
                email.setText(rs.getString(4));
		usertype.setText(rs.getString(5));
		useraddress.setText(rs.getString(6));
                userdept.setText(rs.getString(7));
                }
                else{
                  JOptionPane.showMessageDialog(this,"Record not fetched!");  
                }
                }
    catch (SQLException ex) {
    Logger.getLogger(student.class.getName()).log(Level.SEVERE,null, ex);
    JOptionPane.showMessageDialog(this,ex.getMessage());
    }

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton4 = new javax.swing.JButton();
        jLabel19 = new javax.swing.JLabel();
        userid = new javax.swing.JLabel();
        username = new javax.swing.JLabel();
        email = new javax.swing.JLabel();
        usertype = new javax.swing.JLabel();
        useraddress = new javax.swing.JLabel();
        userdept = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton4.setText("Back");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton4, new org.netbeans.lib.awtextra.AbsoluteConstraints(710, 50, -1, -1));
        getContentPane().add(jLabel19, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 100, 130));

        userid.setText("jLabel3");
        getContentPane().add(userid, new org.netbeans.lib.awtextra.AbsoluteConstraints(660, 150, -1, -1));

        username.setText("jLabel3");
        getContentPane().add(username, new org.netbeans.lib.awtextra.AbsoluteConstraints(660, 190, -1, -1));

        email.setText("jLabel5");
        getContentPane().add(email, new org.netbeans.lib.awtextra.AbsoluteConstraints(660, 240, -1, 20));

        usertype.setText("jLabel3");
        getContentPane().add(usertype, new org.netbeans.lib.awtextra.AbsoluteConstraints(660, 280, -1, -1));

        useraddress.setText("jLabel3");
        getContentPane().add(useraddress, new org.netbeans.lib.awtextra.AbsoluteConstraints(660, 320, -1, -1));

        userdept.setText("jLabel5");
        getContentPane().add(userdept, new org.netbeans.lib.awtextra.AbsoluteConstraints(660, 370, -1, 20));

        jLabel6.setText("User type :");
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 280, -1, -1));

        jLabel7.setText("Address :");
        getContentPane().add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 320, -1, -1));

        jLabel8.setText("Department :");
        getContentPane().add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 370, -1, 20));

        jLabel5.setText("email :");
        getContentPane().add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 240, -1, 20));

        jLabel4.setText("Username :");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 190, -1, -1));

        jLabel3.setText("User_ID :");
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 150, -1, -1));

        jLabel2.setFont(new java.awt.Font("Times New Roman", 2, 48)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 51, 0));
        jLabel2.setText("Profile Info");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(440, 30, 230, -1));

        jPanel1.setBackground(new java.awt.Color(102, 153, 255));

        jButton2.setText("Delete");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("Update");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(111, 111, 111)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jButton3)
                    .addComponent(jButton2))
                .addContainerGap(117, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(319, Short.MAX_VALUE)
                .addComponent(jButton2)
                .addGap(18, 18, 18)
                .addComponent(jButton3)
                .addGap(137, 137, 137))
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 300, 520));

        jLabel1.setIcon(new javax.swing.ImageIcon("C:\\Users\\aditya\\OneDrive\\Desktop\\aditya.ssn\\new.jpg")); // NOI18N
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 860, 520));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        try{
        if(usty.equals("Faculty")){
        String sql = "{call delete_faculty_if_no_authors(?)}";
        ps = con.prepareStatement(sql);
        ps.setString(1, usid);
        ps.executeUpdate();
        JOptionPane.showMessageDialog(this,"Deleted!");
        }
        else if(usty.equals("Student")){
        String sql = "{call delete_student_if_no_authors(?)}";
        ps = con.prepareStatement(sql);
        ps.setString(1, usid);
        ps.executeUpdate();
        JOptionPane.showMessageDialog(this,"Deleted!");
        }
        register reg = new register();
        reg.setVisible(true);
        this.setVisible(false);
        }
         catch (SQLException ex) {
            Logger.getLogger(student.class.getName()).log(Level.SEVERE,null, ex);
            JOptionPane.showMessageDialog(this,ex.getMessage());
        }
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        // TODO add your handling code here:
        dashbord das = new dashbord(con,st,ps,rs,usid,usname);
             das.setVisible(true);
                this.setVisible(false); 
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        update_user uus = new update_user(con,st,ps,rs,usid,usname,usty);
             uus.setVisible(true);
                this.setVisible(false); 
    }//GEN-LAST:event_jButton3ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(profile.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(profile.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(profile.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(profile.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new profile().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel email;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel useraddress;
    private javax.swing.JLabel userdept;
    private javax.swing.JLabel userid;
    private javax.swing.JLabel username;
    private javax.swing.JLabel usertype;
    // End of variables declaration//GEN-END:variables
}