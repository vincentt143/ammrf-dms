// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.org.intersect.dms.core.service.dto;

import java.lang.Object;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

privileged aspect IngestParameter_Roo_Equals {
    
    public boolean IngestParameter.equals(Object other) {
        if (other == null) { return false; }
        if (other == this) { return true; }
        if (other.getClass() != getClass()) {
            return false;
        }
        IngestParameter rhs = (IngestParameter) other;
        return new EqualsBuilder()
            .appendSuper(super.equals(rhs))
            .append(instrumentProfile, rhs.instrumentProfile)
            .append(copyToWorkstation, rhs.copyToWorkstation)
            .isEquals();
    }
    
    public int IngestParameter.hashCode() {
        return new HashCodeBuilder(43, 11)
            .appendSuper(super.hashCode())
            .append(instrumentProfile)
            .append(copyToWorkstation)
            .toHashCode();
    }
    
}
