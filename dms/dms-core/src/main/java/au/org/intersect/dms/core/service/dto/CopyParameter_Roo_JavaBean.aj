// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.org.intersect.dms.core.service.dto;

import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.List;

privileged aspect CopyParameter_Roo_JavaBean {
    
    public Long CopyParameter.getJobId() {
        return this.jobId;
    }
    
    public void CopyParameter.setJobId(Long jobId) {
        this.jobId = jobId;
    }
    
    public Integer CopyParameter.getFromConnectionId() {
        return this.fromConnectionId;
    }
    
    public void CopyParameter.setFromConnectionId(Integer fromConnectionId) {
        this.fromConnectionId = fromConnectionId;
    }
    
    public List<String> CopyParameter.getFromFiles() {
        return this.fromFiles;
    }
    
    public void CopyParameter.setFromFiles(List<String> fromFiles) {
        this.fromFiles = fromFiles;
    }
    
    public Integer CopyParameter.getToConnectionId() {
        return this.toConnectionId;
    }
    
    public void CopyParameter.setToConnectionId(Integer toConnectionId) {
        this.toConnectionId = toConnectionId;
    }
    
    public String CopyParameter.getToDir() {
        return this.toDir;
    }
    
    public void CopyParameter.setToDir(String toDir) {
        this.toDir = toDir;
    }
    
    public String CopyParameter.getUsername() {
        return this.username;
    }
    
    public void CopyParameter.setUsername(String username) {
        this.username = username;
    }
    
}
