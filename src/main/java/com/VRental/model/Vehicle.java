package com.VRental.model;

public class Vehicle {
	
	private int vcpkm,vmileage,vprice;
	private String vrn,vname,vfueltype,vtype,img;
	
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getVtype() {
		return vtype;
	}
	public void setVtype(String vtype) {
		this.vtype = vtype;
	}
	public String getVrn() {
		return vrn;
	}
	public void setVrn(String vrn) {
		this.vrn = vrn;
	}
	public int getVcpkm() {
		return vcpkm;
	}
	public void setVcpkm(int vcpkm) {
		this.vcpkm = vcpkm;
	}
	public int getVmileage() {
		return vmileage;
	}
	public void setVmileage(int vmileage) {
		this.vmileage = vmileage;
	}
	public int getVprice() {
		return vprice;
	}
	public void setVprice(int vprice) {
		this.vprice = vprice;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public String getVfueltype() {
		return vfueltype;
	}
	public void setVfueltype(String vfueltype) {
		this.vfueltype = vfueltype;
	}

}
