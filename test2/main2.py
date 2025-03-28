import tabula.io as tabula
import csv
import pandas as pd
import shutil

tables = tabula.read_pdf(
  './test1/pdf-files/anexo-1.pdf', 
  pages='3-181',
  multiple_tables=True,
  lattice=True,
  stream=True,
  guess=False,
  pandas_options={'header': 0}
  )

def substitute_name(initial_name):
  if (initial_name == "OD"):
    return "Seg. Odontológica"
  elif (initial_name == "AMB"):
    return "Seg. Ambulatorial"
  else: 
    return initial_name

def write_table_row(row):
  cleaned_row = [cell.replace('\n', '').replace('\r', '') if isinstance(cell, str) else cell for cell in row]
  cleaned_row[3] = substitute_name(cleaned_row[3])
  cleaned_row[4] = substitute_name(cleaned_row[4])
  writer.writerow(cleaned_row)

with open('./test2/csv/output.csv', 'w', newline='', encoding="utf-8") as csvfile:
  writer = csv.writer(csvfile)
  header_written = False
  for table in tables:
    if isinstance(table, pd.DataFrame):
      if not header_written:
          write_table_row(table.columns.tolist())
          header_written = True
          
      for row in table.values.tolist():
        write_table_row(row)

shutil.make_archive('./test2/zip/Teste_eliel_silva', 'zip', './test2/csv')
