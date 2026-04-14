#!/bin/bash
echo "🚀 HYPER+ APK Builder Starting..."

# Install Capacitor CLI
echo "📦 Installing Capacitor..."
npm install

# Create www folder and copy HTML
echo "📁 Setting up web directory..."
mkdir -p www
cp index.html www/

# Add Android platform
echo "🤖 Adding Android platform..."
npx cap add android

# Sync files
echo "🔄 Syncing files..."
npx cap sync android

# Build APK
echo "🔨 Building APK (this takes 2-5 minutes)..."
cd android
chmod +x gradlew
./gradlew assembleDebug

echo ""
echo "✅ DONE! Your APK is here:"
echo "👉 android/app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "Right-click the file in the explorer panel → Download"
