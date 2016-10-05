//保存修改过的考生信息
package com.exam.business.exam;

import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.exam.business.examinee.ExamineeActionForm;
import com.exam.dao.ExamineeDAO;


public class SaveEditExamineeAction
    extends Action {
  public ActionForward execute(ActionMapping actionMapping,
                               ActionForm actionForm,
                               HttpServletRequest httpServletRequest,
                               HttpServletResponse httpServletResponse) {

    ExamineeActionForm examineeActionForm = (ExamineeActionForm) actionForm;
    ExamineeDAO examineeDAO = null;
    examineeDAO = new ExamineeDAO();

    try {
      examineeDAO.updateExaminee(examineeActionForm);
    } catch (SQLException ex) {
      ex.printStackTrace();
      return (actionMapping.findForward("failure"));
    }

    return actionMapping.findForward("editexaminee");
  }
}
