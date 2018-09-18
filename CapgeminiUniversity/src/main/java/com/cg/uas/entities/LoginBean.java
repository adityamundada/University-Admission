package com.cg.uas.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "Users")
public class LoginBean implements Serializable {

		
	private static final long serialVersionUID = 1L;
		@Id
		@Column(name="login_id")
		private String userName;
		@Column(name="password")
		private String password;
		@Column(name="role")
		private String role;
		public String getPassword() {
			return password;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getRole() {
			return role;
		}
		public void setRole(String role) {
			this.role = role;
		}
		@Override
		public String toString() {
			return "UserBean [userName=" + userName + ", password=" + password + ", role="
					+ role + "]";
		}
	}


