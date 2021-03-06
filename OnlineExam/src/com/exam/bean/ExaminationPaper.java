/**
 * @author 乔至威            记得写注释！！！不然改的时候又看不懂了！！！
 */
//考试试卷类
package com.exam.bean; 

import java.io.Serializable;

public class ExaminationPaper implements Serializable{

  private long e_id;              //试卷编号
  private String e_name;          //试卷名称
  private String e_type;          //试卷类型
  private int e_timer;            //试卷时间
  private String e_idlist;        //试卷List属性
  private String e_begin;         //试卷开始时间
  private String e_end;           //试卷结束时间
  private float e_passvalue;      
  private float e_total;
  private String e_state;
  private String e_examineeList;
  private ExaminationPaper examinationPaper;
  private String t_begin;         //考试开始
  private String t_end;           //考试结束
  private String e_typeName;      //类型名
  private String e_stateName;     //试卷有效状态

  public ExaminationPaper(){
    this.e_begin = "2013-05-01";        //考试开始有效时间
    this.e_end = "2013-05-20";          //考试结束时间
  }

  public String getE_begin() {
    return e_begin;
  }

  public String getE_end() {
    return e_end;
  }

  public long getE_id() {
    return e_id;
  }

  public String getE_idlist() {
    return e_idlist;
  }

  public String getE_name() {
    return e_name;
  }

  public String getE_state() {
    return e_state;
  }

  public float getE_passvalue() {
    return e_passvalue;
  }

  public String getE_type() {
    return e_type;
  }

  public float getE_total() {

    return e_total;
  }

  public int getE_timer() {
    return e_timer;
  }

  public String getE_examineeList() {
    return e_examineeList;
  }

  public ExaminationPaper getExaminationPaper() {
    return examinationPaper;
  }

  public String getT_begin() {
    return t_begin;
  }

  public String getT_end() {
    return t_end;
  }

  public String getE_typeName() {
    return e_typeName;
  }

  public void setE_begin(String e_begin) {
    this.e_begin = e_begin;
  }

  public void setE_end(String e_end) {
    this.e_end = e_end;
  }

  public void setE_id(long e_id) {
    this.e_id = e_id;
  }

  public void setE_idlist(String e_idlist) {
    this.e_idlist = e_idlist;
  }

  public void setE_passvalue(float e_passvalue) {
    this.e_passvalue = e_passvalue;
  }

  public void setE_name(String e_name) {
    this.e_name = e_name;
  }

  public void setE_state(String e_state) {
    this.e_state = e_state;
  }

  public void setE_timer(int e_timer) {
    this.e_timer = e_timer;
  }

  public void setE_total(float e_total) {

    this.e_total = e_total;
  }

  public void setE_type(String e_type) {
    this.e_type = e_type;
  }

  public void setE_examineeList(String e_examineeList) {
    this.e_examineeList = e_examineeList;
  }

  public void setExaminationPaper(ExaminationPaper examinationPaper) {
    this.e_id = examinationPaper.getE_id();
    this.e_name = examinationPaper.getE_name();
    this.e_type = examinationPaper.getE_type();
    this.e_timer = examinationPaper.getE_timer();
    this.e_idlist = examinationPaper.getE_idlist();
    this.e_begin = examinationPaper.getE_begin();
    this.e_end = examinationPaper.getE_end();
    this.e_passvalue = examinationPaper.getE_passvalue();
    this.e_total = examinationPaper.getE_total();
    this.e_state = examinationPaper.getE_state();
    this.e_examineeList = examinationPaper.getE_examineeList();
  }

  public void setT_begin(String t_begin) {
    this.t_begin = t_begin;
  }

  public void setT_end(String t_end) {
    this.t_end = t_end;
  }

  public void setE_typeName(String e_typeName) {
    this.e_typeName = e_typeName;
  }
  public String getE_stateName() {
    return e_stateName;
  }
  public void setE_stateName(String e_stateName) {
    this.e_stateName = e_stateName;
  }

}
