package model.position;

import java.io.Serializable;
import java.util.LinkedHashSet;
import java.util.Set;

import utils.UserType;
import model.Course;
import model.Experiment;
import model.User;

public class Student extends Position implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public UserType getUserType() {
		// TODO Auto-generated method stub
		return UserType.STUDENT;
	}

	@Override
	public void applyCourse(Course course, String id, String name) {
		// TODO Auto-generated method stub
		if(appliedCourses == null){
			appliedCourses = new LinkedHashSet<Course>();
		}
		course.addApplicationNum();
		course.addApplicationID(id);
		course.addApplicantName(name);
		appliedCourses.add(course);
	}

	@Override
	public void removeAppliedCourse(Course course){
		if(appliedCourses != null){
			appliedCourses.remove(course);
		}
	}
	
	@Override
	public Set<Course> getAppliedCourses() {
		// TODO Auto-generated method stub
		if(appliedCourses == null){
			appliedCourses = new LinkedHashSet<Course>();
		}
		return appliedCourses;
	}

	@Override
	public void setAppliedCourses(Set<Course> appliedCourses) {
		// TODO Auto-generated method stub
		this.appliedCourses = appliedCourses;
	}

	@Override
	public void submitReport(Experiment experiment, String reportLink, String id) {
		// TODO Auto-generated method stub
		experiment.addReportLink(reportLink);
	}

	@Override
	public void createCourse(User user, Course course) {
		// TODO Auto-generated method stub
		
	}
	
	public void removeCreatedCourse(Course course){
		
	}
	
	@Override
	public Set<Course> getCreatedCourses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setCreatedCourses(Set<Course> createdCourses) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void createExperiment(Course course, Experiment experiment) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Set<Long> getReportedExpIds() {
		// TODO Auto-generated method stub
		if(this.reportExpIDs == null){
			this.reportExpIDs = new LinkedHashSet<Long>();
		}
		return this.reportExpIDs;
	}

	@Override
	public void setReportedExpIds(Set<Long> reportedExpIds) {
		// TODO Auto-generated method stub
		this.reportExpIDs = reportedExpIds;
	}

	@Override
	public void addReportedExpId(Long id) {
		// TODO Auto-generated method stub
		if(this.reportExpIDs == null){
			this.reportExpIDs = new LinkedHashSet<Long>();
		}
		this.reportExpIDs.add(id);
	}

}
