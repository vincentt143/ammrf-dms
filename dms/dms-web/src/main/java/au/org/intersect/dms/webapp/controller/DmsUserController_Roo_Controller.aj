// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.org.intersect.dms.webapp.controller;

import au.org.intersect.dms.webapp.domain.DmsUser;
import java.io.UnsupportedEncodingException;
import java.lang.Long;
import java.lang.String;
import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.core.convert.support.GenericConversionService;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect DmsUserController_Roo_Controller {
    
    @Autowired
    private GenericConversionService DmsUserController.conversionService;
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String DmsUserController.show(@PathVariable("id") Long id, Model model) {
        model.addAttribute("dmsuser", DmsUser.findDmsUser(id));
        model.addAttribute("itemId", id);
        return "admin/dmsusers/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String DmsUserController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            model.addAttribute("dmsusers", DmsUser.findDmsUserEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) DmsUser.countDmsUsers() / sizeNo;
            model.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            model.addAttribute("dmsusers", DmsUser.findAllDmsUsers());
        }
        return "admin/dmsusers/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String DmsUserController.update(@Valid DmsUser dmsUser, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("dmsUser", dmsUser);
            return "admin/dmsusers/update";
        }
        dmsUser.merge();
        return "redirect:/admin/dmsusers/" + encodeUrlPathSegment(dmsUser.getId().toString(), request);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String DmsUserController.updateForm(@PathVariable("id") Long id, Model model) {
        model.addAttribute("dmsUser", DmsUser.findDmsUser(id));
        return "admin/dmsusers/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String DmsUserController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model model) {
        DmsUser.findDmsUser(id).remove();
        model.addAttribute("page", (page == null) ? "1" : page.toString());
        model.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/admin/dmsusers?page=" + ((page == null) ? "1" : page.toString()) + "&size=" + ((size == null) ? "10" : size.toString());
    }
    
    Converter<DmsUser, String> DmsUserController.getDmsUserConverter() {
        return new Converter<DmsUser, String>() {
            public String convert(DmsUser dmsUser) {
                return new StringBuilder().append(dmsUser.getUsername()).toString();
            }
        };
    }
    
    @PostConstruct
    void DmsUserController.registerConverters() {
        conversionService.addConverter(getDmsUserConverter());
    }
    
    private String DmsUserController.encodeUrlPathSegment(String pathSegment, HttpServletRequest request) {
        String enc = request.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
