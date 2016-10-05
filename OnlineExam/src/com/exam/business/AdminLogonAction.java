//管理员登陆类
package com.exam.business;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.exam.dao.ExamineeDAO;

public class AdminLogonAction
    extends Action {
  public ActionForward execute(ActionMapping actionMapping,
                               ActionForm actionForm,
                               HttpServletRequest httpServletRequest,
                               HttpServletResponse httpServletResponse) {

    LogonForm logonForm = (LogonForm) actionForm;
    ExamineeDAO eDAO =new ExamineeDAO();
       if(eDAO.isAdminUser(logonForm)){
        	return (actionMapping.findForward("admin"));
    }
    return (actionMapping.findForward("failure"));     //返回错误信息

  }
}
