// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.org.intersect.dms.instrument.harvester;

import java.lang.String;

privileged aspect MetadataField_Roo_ToString {
    
    public String MetadataField.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Name: ").append(getName()).append(", ");
        sb.append("Value: ").append(getValue());
        return sb.toString();
    }
    
}
