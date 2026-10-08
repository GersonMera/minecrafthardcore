import os
import zipfile
import hashlib

def zip_directory(folder_path, output_zip):
    with zipfile.ZipFile(output_zip, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, dirs, files in os.walk(folder_path):
            for file in files:
                file_path = os.path.join(root, file)
                # Keep relative path inside the zip file
                arcname = os.path.relpath(file_path, folder_path)
                zipf.write(file_path, arcname)
    print(f"Creado con éxito: {output_zip}")

def get_sha1(file_path):
    h = hashlib.sha1()
    with open(file_path, 'rb') as f:
        while chunk := f.read(8192):
            h.update(chunk)
    return h.hexdigest()

if __name__ == '__main__':
    base_dir = os.path.dirname(os.path.abspath(__file__))
    
    datapack_src = os.path.join(base_dir, 'hardcore_peru_datapack')
    datapack_zip = os.path.join(base_dir, 'hardcore_peru_datapack.zip')
    
    resourcepack_src = os.path.join(base_dir, 'hardcore_peru_resourcepack')
    resourcepack_zip = os.path.join(base_dir, 'hardcore_peru_resourcepack.zip')
    
    print("Empaquetando Datapack...")
    zip_directory(datapack_src, datapack_zip)
    
    print("Empaquetando Resource Pack...")
    zip_directory(resourcepack_src, resourcepack_zip)
    
    sha1 = get_sha1(resourcepack_zip)
    print(f"\n--- INFORMACIÓN PARA ATERNOS ---")
    print(f"SHA-1 del Resource Pack: {sha1}")
    print("---------------------------------")
