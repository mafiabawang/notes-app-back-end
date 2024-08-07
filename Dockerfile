# Gunakan image Node.js
FROM node:20-alpine

# Atur direktori kerja di dalam container
WORKDIR /app

# Copy file
COPY . .

# Install dependencies
RUN npm install

# Set environment variables
ENV NODE_ENV=production
ENV PORT=8080

# Ekspose port yang akan digunakan aplikasi
EXPOSE 8080

# Jalankan aplikasi
CMD ["npm", "run", "start:prod"]