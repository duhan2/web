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
   #Parameter für history Funktion
      if listform == "startseite":
         template_o = self.lookup_o.get_template('Startseite.tpl')
         markup_s = template_o.render(data_o = data_opl, listform = listform)
         return markup_s
      elif listform == "pflegemitarbeiterdaten":
         try:
            template_o = self.lookup_o.get_template('Pflege_Mitarbeiterdaten.tpl')
            markup_s = template_o.render(data_o = data_opl, listform = listform) 
            return markup_s
         except:
            return exceptions.html_error_template().render()
      elif listform == "pflegeweiterbildungen":
         try:
            template_o = self.lookup_o.get_template('Pflege_Weiterbildungen.tpl')
            markup_s = template_o.render(data_o = data_opl, listform = listform) 
            return markup_s
         except:
            return exceptions.html_error_template().render()
      elif listform == "sichtweisemitarbeiter":
         try:
            template_o = self.lookup_o.get_template('Sichtweise_Mitarbeiter.tpl')
            markup_s = template_o.render(data_o = data_opl, listform = listform) 
            return markup_s
         except:
            return exceptions.html_error_template().render()
      elif listform == "sichtweiseweiterbildungen":
         try:
            template_o = self.lookup_o.get_template('Sichtweise_Weiterbildungen.tpl')
            markup_s = template_o.render(data_o = data_opl, listform = listform) 
            return markup_s
         except:
            return exceptions.html_error_template().render()
      elif listform == "mitarbeiter":
         try:
            template_o = self.lookup_o.get_template('Mitarbeiter.tpl')
            markup_s = template_o.render(data_o = data_opl, listform = listform) 
            return markup_s
         except:
            return exceptions.html_error_template().render()
      elif listform == "weiterbildungen":
         try:
            template_o = self.lookup_o.get_template('Weiterbildungen.tpl')
            markup_s = template_o.render(data_o = data_opl, listform = listform) 
            return markup_s
         except:
            return exceptions.html_error_template().render()
      elif listform == "zertifikate":
         try:
            template_o = self.lookup_o.get_template('Zertifikate.tpl')
            markup_s = template_o.render(data_o = data_opl, listform = listform) 
            return markup_s
         except:
            return exceptions.html_error_template().render()                    
   #-------------------------------------------------------
   def createForm_px(self,listform ,id_spl, data_opl):
   #-------------------------------------------------------
   #Bestimmung des Formulars
      if listform == "pflegemitarbeiterdaten":
         template_o = self.lookup_o.get_template('form_Pflege_Mitarbeiterdaten.tpl')
         markup_s = template_o.render(data_o = data_opl, key_s = id_spl, listform = listform)
         return markup_s
      elif listform == "pflegeweiterbildungen":
         template_o = self.lookup_o.get_template('form_Pflege_Weiterbildungen.tpl')
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