package com.exam.business.program;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.exam.dao.ExaminationPaperDAO;
import com.exam.dao.ExamineeChooserDAO;
import com.exam.util.StrTokenConverter;
import com.exam.util.Transformer;

public class SaveChooseExamineeAction
    extends Action {
  public ActionForward execute(ActionMapping actionMapping,
                               ActionForm actionForm,
                               HttpServletRequest httpServletRequest,
                               HttpServletResponse httpServletResponse) {

    ChooseExamineeActionForm form = (ChooseExamineeActionForm) actionForm;
    //
    String[] list = null;
    list = form.getExamineeList();

    if (list == null || "".equals(list)) {
      list = new String[0];
    }

    Transformer transformer = new Transformer();
    String e_state = transformer.valueToId("已分配未进行");
    try {
      transformer.close();
    } catch (Exception ex1) {
    }
    long e_id = form.getE_id();
    String eList = "";
    if (list.length != 0) {
      eList = StrTokenConverter.convert(list);
    }

    String newList = form.getTempList();
    ExamineeChooserDAO ecDAO = new ExamineeChooserDAO();
    ecDAO.updateList(newList + eList, e_id);
    ExaminationPaperDAO eDao = new ExaminationPaperDAO();
    eDao.updateE_state(e_id, e_state);

    return actionMapping.findForward("success");
  }
}
