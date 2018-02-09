package com.atits.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity(name = "t_profile")
public class Profile {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@OneToOne(targetEntity = Person.class,cascade={CascadeType.ALL})
	@JoinColumn(name="person_id",referencedColumnName="id")
	private Person person;// 必填，人员基础表

	@Column(name = "sex")
	private String sex;// 性别

	@Column(name = "nation")
	private String nation;// 民族

	@Column(name = "birthdate")
	private String birthdate;// 出生日期

	@Column(name = "politics_status")
	private String politicsStatus;// 政治面貌

	@Column(name = "education")
	private String education;// 文化程度 education

	@Column(name = "degree")
	private String degree;// 学位 degree

	@Column(name = "graduate_institutions")
	private String graduateInstitutions;// 毕业学校

	@Column(name = "graduation_date")
	private String graduationDate;// 毕业时间 Graduation Date

	@Column(name = "major")
	private String major; // 所学专业 major

	@Column(name = "undertake")
	private String undertake;// 从事专业

	@Column(name = "administrative_function")
	private String administrativeFunction;// 行政职务 administrative function

	@Column(name = "technical_title")
	private String technicalTitle;// 技术职称 technical title

	@Column(name = "ministerial_expert")
	private String ministerialExpert;// 部级专家 ministerial expert

	@Column(name = "provincial_expert")
	private String provincialExpert;// 省级专家 provincial expert

	@Column(name = "postal_code")
	private String postalCode;// 邮政编码 postal code

	@Column(name = "address")
	private String address;// 通讯地址 address

	@Column(name = "professional_affiliations")
	private String professionalAffiliations;// 社会兼职情况 Professional affiliations

	@Column(name = "professional_expertise")
	private String professionalExpertise; // 专业特长 professional expertise

	@Column(name = "participate", length = 100000)
	private String participate;// 主持或参与重大课题或重大项目情况（近十年）

	@Column(name = "achievement", length = 100000)
	private String achievement; // 主要业绩

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getPoliticsStatus() {
		return politicsStatus;
	}

	public void setPoliticsStatus(String politicsStatus) {
		this.politicsStatus = politicsStatus;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getGraduateInstitutions() {
		return graduateInstitutions;
	}

	public void setGraduateInstitutions(String graduateInstitutions) {
		this.graduateInstitutions = graduateInstitutions;
	}

	public String getGraduationDate() {
		return graduationDate;
	}

	public void setGraduationDate(String graduationDate) {
		this.graduationDate = graduationDate;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getUndertake() {
		return undertake;
	}

	public void setUndertake(String undertake) {
		this.undertake = undertake;
	}

	public String getAdministrativeFunction() {
		return administrativeFunction;
	}

	public void setAdministrativeFunction(String administrativeFunction) {
		this.administrativeFunction = administrativeFunction;
	}

	public String getTechnicalTitle() {
		return technicalTitle;
	}

	public void setTechnicalTitle(String technicalTitle) {
		this.technicalTitle = technicalTitle;
	}

	public String getMinisterialExpert() {
		return ministerialExpert;
	}

	public void setMinisterialExpert(String ministerialExpert) {
		this.ministerialExpert = ministerialExpert;
	}

	public String getProvincialExpert() {
		return provincialExpert;
	}

	public void setProvincialExpert(String provincialExpert) {
		this.provincialExpert = provincialExpert;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getProfessionalAffiliations() {
		return professionalAffiliations;
	}

	public void setProfessionalAffiliations(String professionalAffiliations) {
		this.professionalAffiliations = professionalAffiliations;
	}

	public String getProfessionalExpertise() {
		return professionalExpertise;
	}

	public void setProfessionalExpertise(String professionalExpertise) {
		this.professionalExpertise = professionalExpertise;
	}

	public String getParticipate() {
		return participate;
	}

	public void setParticipate(String participate) {
		this.participate = participate;
	}

	public String getAchievement() {
		return achievement;
	}

	public void setAchievement(String achievement) {
		this.achievement = achievement;
	}

	@Override
	public String toString() {
		return "Profile{" +
				"id=" + id +
				", person=" + person.getId() +
				", sex='" + sex + '\'' +
				", nation='" + nation + '\'' +
				", birthdate='" + birthdate + '\'' +
				", politicsStatus='" + politicsStatus + '\'' +
				", education='" + education + '\'' +
				", degree='" + degree + '\'' +
				", graduateInstitutions='" + graduateInstitutions + '\'' +
				", graduationDate='" + graduationDate + '\'' +
				", major='" + major + '\'' +
				", undertake='" + undertake + '\'' +
				", administrativeFunction='" + administrativeFunction + '\'' +
				", technicalTitle='" + technicalTitle + '\'' +
				", ministerialExpert='" + ministerialExpert + '\'' +
				", provincialExpert='" + provincialExpert + '\'' +
				", postalCode='" + postalCode + '\'' +
				", address='" + address + '\'' +
				", professionalAffiliations='" + professionalAffiliations + '\'' +
				", professionalExpertise='" + professionalExpertise + '\'' +
				", participate='" + participate + '\'' +
				", achievement='" + achievement + '\'' +
				'}';
	}
}
