// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.org.intersect.dms.core.service.dto;

import java.lang.String;

privileged aspect CopyParameter_Roo_ToString {
    
    public String CopyParameter.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FromConnectionId: ").append(getFromConnectionId()).append(", ");
        sb.append("FromFiles: ").append(getFromFiles() == null ? "null" : getFromFiles().size()).append(", ");
        sb.append("JobId: ").append(getJobId()).append(", ");
        sb.append("ToConnectionId: ").append(getToConnectionId()).append(", ");
        sb.append("ToDir: ").append(getToDir()).append(", ");
        sb.append("Username: ").append(getUsername());
        return sb.toString();
    }
    
}
