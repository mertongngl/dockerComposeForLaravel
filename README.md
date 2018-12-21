# Docker Compose Laravel Workspace

## For containers up:


### # Mysql konteynırı test amaçlı bulunmaktadır. Eğer Kullanılacak ise yapılması gereken adımlar:
#### &nbsp;&nbsp;&nbsp;&nbsp;work_dir_to_workspace/docker-compose.yml dosyasında mysql konteynırı ile ilgili bölümlerin yorum satırlarını kaldırın.
#### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1) work_dir_to_workspace/docker/mysql/ dizinine sql yedek dosyası atılmalıdır.
#### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2) Ardından "docker-compose build" ve "docker-compose up -d" komutları çalıştırılmalıdır. Eğer "docker-compose ps" komutu çalıştırıldıktan sonra mysql container exit oldu ise tekrar "docker-compose up -d" komutu çalıştırılmalıdır.
#### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3) Mysql konteynırının terminaline "docker exec -it mysql bash" komutu ile düşülür.
#### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4) Mysql konteynırının terminalinde "mysql -u root -p -D DATABASE_NAME < /path/to/sql/file" ardından veritabanımızı oluşturmuş oluyoruz.
#### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5) Bu adımların ardından mysql konteynırı kullanıma hazırdır.


### # docker-compose build && docker-compose up -d && docker-compose ps komutları workspace'in bulunduğu dizinde çalıştırılır.

### # Konteynırları ayağa kaldırdıktan sonra "docker exec -it app bash" komutu ile app konteynırının terminaline düşüyoruz. Ardından "compose update --ignore-platform-reqs" komutunu çalıştırıyoruz.

### # Test için:
#### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~ Lokal makineninizin 80 portundan laravel uygulamanıza erişebilirsiniz.

### # Projede kullanmak için yapılması gerekenler:
#### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~ .env dosyasında gerekli düzenlemeler yapıldıktan sonra set-variable.sh script'i çalıştırılmalıdır.
