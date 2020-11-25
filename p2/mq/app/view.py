# coding: utf-8

import codecs
import os.path
import string

from mako.template import Template
from mako.lookup import TemplateLookup

from mako import exceptions

#----------------------------------------------------------
class View_cl(object):
#----------------------------------------------------------

   #-------------------------------------------------------
   def __init__(self):
   #-------------------------------------------------------
      self.lookup_o = TemplateLookup('./templates')

   #-------------------------------------------------------
   def createList_px(self, data_opl, listform):
   #-------------------------------------------------------
      if listform == "tabelle":
         template_o = self.lookup_o.get_template('startseite.tpl')
         markup_s = template_o.render(data_o = data_opl, listform = listform)
         return markup_s
      elif listform == "auf":
         try:
            template_o = self.lookup_o.get_template('list2.tpl')
            markup_s = template_o.render(data_o = data_opl, listform = listform) 
            return markup_s
         except:
            return exceptions.html_error_template().render()
   #-------------------------------------------------------
   def createForm_px(self,listform ,id_spl, data_opl):
   #-------------------------------------------------------
      template_o = self.lookup_o.get_template('form.tpl')
      markup_s = template_o.render(data_o = data_opl, key_s = id_spl, listform = listform)
      return markup_s

   #-------------------------------------------------------
   def readFile_p(self, fileName_spl):
   #-------------------------------------------------------
      content_s = ''
      with codecs.open(os.path.join('templates', fileName_spl), 'r', 'utf-8') as fp_o:
         content_s = fp_o.read()
      return content_s
# EOF