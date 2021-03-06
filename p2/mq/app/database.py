# coding: utf-8

import os
import os.path
import codecs
import json

from . import dataid

#----------------------------------------------------------
class Database_cl(object):
#----------------------------------------------------------

   #-------------------------------------------------------
   def __init__(self,listform = None):
   #-------------------------------------------------------
      self.data_o = None
      self.maxId_o = dataid.DataId_cl()
      self.readData_p(listform)

   #-------------------------------------------------------
   def create_px(self, data_opl,listform):
   #-------------------------------------------------------
      id_s = self.maxId_o.create_px(listform)
      self.data_o[str(id_s)] = data_opl
      self.saveData_p(listform)
      return str(id_s)

   #-------------------------------------------------------
   def read_px(self, id_spl = None):
   #-------------------------------------------------------
      data_o = None
      if id_spl == None:
         data_o = self.data_o
      else:
         if id_spl in self.data_o:
               data_o = self.data_o[id_spl]
      return data_o

   #-------------------------------------------------------
   def update_px(self, id_spl, data_opl,listform):
   #-------------------------------------------------------
      status_b = False
      if id_spl in self.data_o:
         self.data_o[id_spl] = data_opl
         self.saveData_p(listform)
         status_b = True
      return status_b

   #-------------------------------------------------------
   def delete_px(self, id_spl,listform):
   #-------------------------------------------------------
      status_b = False
      if self.data_o.pop(id_spl, None) != None:
         self.saveData_p(listform)
         status_b = True
      return status_b

   #-------------------------------------------------------
   def getDefault_px(self,listform):
   #-------------------------------------------------------
      if listform =="pflegemitarbeiterdaten":
         return ['', '', '', ''] # hier später Ergänzung!
      elif listform == "pflegeweiterbildungen":
         return ['', '', '', '', '', '','',''] # hier später Ergänzung!
      else:
         return

   #-------------------------------------------------------
   def readData_p(self, listform):
   #-------------------------------------------------------
      if listform == "pflegemitarbeiterdaten" or listform == "sichtweisemitarbeiter" :
         try:
            fp_o = codecs.open(os.path.join('data', 'mitarbeiterdaten.json'), 'r', 'utf-8')
         except:
            self.data_o = {}
            self.saveData_p(listform)
         else:
            with fp_o:
               self.data_o = json.load(fp_o)
         return

      elif listform == "pflegeweiterbildungen" or listform == "sichtweiseweiterbildungen":
         try:
            fp_o = codecs.open(os.path.join('data', 'weiterbildungen.json'), 'r', 'utf-8')
         except:
            self.data_o = {}
            self.saveData_p(listform)
         else:
            with fp_o:
               self.data_o = json.load(fp_o)
         return

      elif listform =="anzeigesichtweisemitarbeiter":

         fp_o = codecs.open(os.path.join('data', 'weiterbildungen.json'), 'r', 'utf-8')

         with fp_o:
            zusatz_data_o = json.load(fp_o)

         return zusatz_data_o

      elif listform =="anzeigesichtweiseweiterbildungen":

         fp_o = codecs.open(os.path.join('data', 'mitarbeiterdaten.json'), 'r', 'utf-8')

         with fp_o:
            zusatz_data_o = json.load(fp_o)

         return zusatz_data_o      

      else:
         return
   #-------------------------------------------------------
   def saveData_p(self,listform):
   #-------------------------------------------------------
      if listform == "pflegemitarbeiterdaten" or listform == "sichtweisemitarbeiter" :
         with codecs.open(os.path.join('data', 'mitarbeiterdaten.json'), 'w', 'utf-8') as fp_o:
            json.dump(self.data_o, fp_o, indent=3)
      elif listform == "pflegeweiterbildungen" or listform == "sichtweiseweiterbildungen":
         with codecs.open(os.path.join('data', 'weiterbildungen.json'), 'w', 'utf-8') as fp_o:
            json.dump(self.data_o, fp_o, indent=3)
      else:            
         return

# EOF