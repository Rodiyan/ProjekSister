# Menggunakan image Nginx yang ringan
FROM nginx:alpine

# Hapus config default Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copy config Nginx kita
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy semua file web (index.html, js, css, dll) ke folder html
COPY . /usr/share/nginx/html

# Expose port 80 di dalam container
EXPOSE 80

# Jalankan Nginx di foreground
CMD ["nginx", "-g", "daemon off;"]
