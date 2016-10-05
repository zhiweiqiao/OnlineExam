package com.exam.business.program;

import org.apache.struts.action.*;

import com.exam.bean.ExaminationPaper;
import com.exam.dao.ExaminationPaperDAO;
import com.exam.dao.TestPaperDAO;

import javax.servlet.http.*;

public class ReAttandExamAction extends Action {
  public ActionForward execute(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {

    String t_idStr = httpServletRequest.getParameter("t_id");
    String e_idStr = httpServletRequest.getParameter("e_id");
    String t_state = "096";
    String t_begin = "";
    String t_end = "";

    //¸üÐÂÊÔ¾íÄÚÈÝ
    TestPaperDAO testPaperDAO = null;
    testPaperDAO = new TestPaperDAO();
    testPaperDAO.updateT_state(java.lang.Long.parseLong(t_idStr),t_state,t_begin,t_end);

    
    httpServletRequest.setAttribute("E_ID",e_idStr);
    String page = "1";
    httpServletRequest.setAttribute("page",page);
    return actionMapping.findForward("controlaction");
  }
}
