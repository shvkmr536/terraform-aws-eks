# ==============================
# Stage 1 - Build Stage
# ==============================

FROM node:20-alpine AS builder

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy source code
COPY . .

# Build application
RUN npm run build || echo "No build step"

# ==============================
# Stage 2 - Production Stage
# ==============================

FROM node:20-alpine

WORKDIR /app

# Copy only required files
COPY --from=builder /app ./

# Expose application port
EXPOSE 3000

# Set production environment
ENV NODE_ENV=production

# Run application
CMD ["npm", "start"]