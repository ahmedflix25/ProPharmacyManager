﻿using PharmacyProManager.Database;
using System;
using System.Windows.Forms;

namespace PharmacyProManager
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }
        private AccountTable.AccountState State;

        public void SaveLogin()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand(MySqlCommandType.INSERT);
                cmd.Insert("logs")
                    .Insert("Account", UN.Text).Insert("LoginDate", DateTime.Now.ToString()).Execute();
            }
            catch (Exception e)
            {
                MessageBox.Show(e.ToString());
            }
        }
        public void UserLogin()
        {
            try
            {
                MySqlCommand cmd = new MySqlCommand(MySqlCommandType.SELECT);
                cmd.Select("accounts").Where("Username", UN.Text).And("Password", UP.Text);
                MySqlReader r = new MySqlReader(cmd);
                while (r.Read())
                {
                    this.State = (AccountTable.AccountState)r.ReadByte("State");
                    if (State == AccountTable.AccountState.Manager)
                    {
                        Manager ma = new Manager();
                        ma.Show();
                        this.Hide();
                        SaveLogin();
                    }
                    else if (State == AccountTable.AccountState.Employee)
                    {
                        CPanal gui = new CPanal();
                        gui.Show();
                        this.Hide();
                        SaveLogin();
                    }
                    else
                    {
                        MessageBox.Show("من انت؟ هل تعمل فى هذه الصيدليه؟");
                    }
                }
                UNPW.Visible = true;

            }
            catch (Exception ll)
            {
                MessageBox.Show(ll.ToString());
            }
        }

        private void LoginB_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("هل انت متاكد؟", "الخروج", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                Environment.Exit(0);
            }
            else if (dialogResult == DialogResult.No)
            {

            }
        }

        private void Login_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("هل انت متاكد؟", "الخروج", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                Environment.Exit(0);
            }
            else if (dialogResult == DialogResult.No)
            {
                e.Cancel = true;
            }
        }

        private void ExitB_Click(object sender, EventArgs e)
        {
            if (UN.Text == "")
            {
                MessageBox.Show("لم تدخل اسم المستخدم");
            }
            else if (UP.Text == "")
            {
                MessageBox.Show("لم تدخل كلمه المرور");
            }
            else
            {
                UserLogin();
            }
        }

        private void Login_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            About ab = new About();
            ab.ShowDialog();
        }
    }
}
