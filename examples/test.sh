echo "CDN"
curl -K curl.config https://cdn.shopify.com/s/files/1/0079/0459/1990/files/{Hero_Carousel_03_19447c3f-5142-4906-a0c4-d5152ba9a816_2048x.jpg,mod-tech_bs_1920x.jpg?v=1553024091} | grep lookup
echo "ImageEngine"
curl -K curl.config https://images.volcom.ca/s/files/1/0079/0459/1990/files/{Hero_Carousel_03_19447c3f-5142-4906-a0c4-d5152ba9a816_2048x.jpg,mod-tech_bs_1920x.jpg?v=1553024091} | grep lookup
