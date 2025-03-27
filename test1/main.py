from bs4 import BeautifulSoup
import requests
import shutil

def fetch_files_urls(url): 
  try:
    page = requests.get(url).content
    page_content = BeautifulSoup(page, 'html.parser')
    page_elements = page_content.find_all("a", class_="internal-link", href=lambda x: x and x.endswith(".pdf"), limit=2)
    
    urls = []
    for page_element in page_elements:
      urls.append(page_element.get("href"))
      
    return urls
  except requests.exceptions.RequestException as e:
    print("Error while fetching data from specified url.") 
    return None

def download_pdfs(links):
  try:
    index = 1
    for link in links:
      response = requests.get(link)
      pdf = open("./test1/pdf-files/anexo-"+str(index)+".pdf", 'wb')
      pdf.write(response.content)
      pdf.close()
      print("File ", index, " downloaded")
      index += 1
  except OSError as e:
    print("Error while downloading or saving files.")


pdf_links = fetch_files_urls("https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-da-sociedade/atualizacao-do-rol-de-procedimentos")
download_pdfs(pdf_links)
shutil.make_archive('./test1/zip/my_folder_archive', 'zip', './test1/pdf-files')










