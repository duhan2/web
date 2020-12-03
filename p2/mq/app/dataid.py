# coding: utf-8

import os
import os.path
import codecs
import json

#----------------------------------------------------------
class DataId_cl(object):
#----------------------------------------------------------

   #-------------------------------------------------------
   def __init__(self,listform = None):
   #-------------------------------------------------------
      self.maxId_i = 0
      self.readMaxId_p(listform)

   #-------------------------------------------------------
   def create_px(self,listform):
   #-------------------------------------------------------
      self.maxId_i += 1
      self.saveMaxId_p(listform)
      return str(self.maxId_i)

   #-------------------------------------------------------
   def read_px(self):
   #-------------------------------------------------------
      return str(self.maxId_i)

   #-------------------------------------------------------
   def readMaxId_p(self,listform):
   #-------------------------------------------------------
      if listform == "pflegeweiterbildungen":
         try:
            fp_o = codecs.open(os.path.join('data', 'weiterbildungen_maxid.json'), 'r', 'utf-8')
         except:
            self.maxId_i = 0
            self.saveMaxId_p(listform)
         else:
            with fp_o:
               self.maxId_i = json.load(fp_o)
         return
      elif listform == "pflegemitarbeiterdaten" or listform == "sichtweisemitarbeiter":
         try:
            fp_o = codecs.open(os.path.join('data', 'mitarbeiterdaten_maxid.json'), 'r', 'utf-8')
         except:
            self.maxId_i = 0
            self.saveMaxId_p(listform)
         else:
            with fp_o:
               self.maxId_i = json.load(fp_o)
         return
      else:
         return

   #-------------------------------------------------------
   def saveMaxId_p(self,listform):
   #-------------------------------------------------------
      if listform == "pflegeweiterbildungen":
         with codecs.open(os.path.join('data', 'weiterbildungen_maxid.json'), 'w', 'utf-8') as fp_o:
            json.dump(self.maxId_i, fp_o)
      elif listform == "pflegemitarbeiterdaten" or listform == "sichtweisemitarbeiter":
         with codecs.open(os.path.join('data', 'mitarbeiterdaten_maxid.json'), 'w', 'utf-8') as fp_o:
            json.dump(self.maxId_i, fp_o)
      else:            
         return
# EOF