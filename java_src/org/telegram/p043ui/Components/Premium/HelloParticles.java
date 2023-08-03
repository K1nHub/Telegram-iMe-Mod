package org.telegram.p043ui.Components.Premium;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
/* renamed from: org.telegram.ui.Components.Premium.HelloParticles */
/* loaded from: classes6.dex */
public class HelloParticles {
    private static String[] hellos = {"Hello", "Привіт", "Привет", "Bonjour", "Hola", "Ciao", "Olá", "여보세요", "你好", "Salve", "Sveiki", "Halo", "გამარჯობა", "Hallå", "Salam", "Tere", "Dia dhuit", "こんにちは", "Сайн уу", "Bongu", "Ahoj", "γεια", "Zdravo", "नमस्ते", "Habari", "Hallo", "ជំរាបសួរ", "مرحبًا", "ನಮಸ್ಕಾರ", "Салам", "Silav li wir", "سڵاو", "Kif inti", "Talofa", "Thobela", "हॅलो", "ሰላም", "Здраво", "ഹലോ", "ہیلو", "ꯍꯦꯜꯂꯣ", "Alô", "வணக்கம்", "Mhoro", "Moni", "Alo", "สวัสดี", "Salom", "Բարեւ"};

    /* renamed from: org.telegram.ui.Components.Premium.HelloParticles$Drawable */
    /* loaded from: classes6.dex */
    public static class Drawable {
        private float bitmapScale;
        public final int count;
        public boolean paused;
        long pausedTime;
        private TextPaint textPaint = new TextPaint(1);
        private HashMap<String, Bitmap> bitmaps = new HashMap<>();
        public RectF rect = new RectF();
        public RectF screenRect = new RectF();
        private Paint paint = new Paint();
        ArrayList<Particle> particles = new ArrayList<>();
        public float speedScale = 1.0f;

        /* renamed from: dt */
        private final float f1803dt = 1000.0f / AndroidUtilities.screenRefreshRate;

        public Drawable(int i) {
            this.bitmapScale = 1.0f;
            this.count = i;
            this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textPaint.setColor(-1);
            int devicePerformanceClass = SharedConfig.getDevicePerformanceClass();
            if (devicePerformanceClass == 0) {
                this.bitmapScale = 0.25f;
            } else if (devicePerformanceClass == 1) {
                this.bitmapScale = 0.5f;
            } else {
                this.bitmapScale = 0.75f;
            }
            this.textPaint.setTextSize(AndroidUtilities.m73dp(this.bitmapScale * 24.0f));
            this.paint.setColor(-1);
        }

        public void init() {
            if (this.particles.isEmpty()) {
                for (int i = 0; i < this.count; i++) {
                    this.particles.add(new Particle());
                }
            }
        }

        public void resetPositions() {
            long currentTimeMillis = System.currentTimeMillis();
            for (int i = 0; i < this.particles.size(); i++) {
                this.particles.get(i).genPosition(currentTimeMillis, i, true);
            }
        }

        public void onDraw(Canvas canvas) {
            long currentTimeMillis = System.currentTimeMillis();
            for (int i = 0; i < this.particles.size(); i++) {
                Particle particle = this.particles.get(i);
                if (this.paused) {
                    particle.draw(canvas, i, this.pausedTime);
                } else {
                    particle.draw(canvas, i, currentTimeMillis);
                }
                if (particle.inProgress >= 1.0f) {
                    particle.genPosition(currentTimeMillis, i, false);
                }
            }
        }

        public void recycle() {
            for (Bitmap bitmap : this.bitmaps.values()) {
                bitmap.recycle();
            }
            this.bitmaps.clear();
        }

        /* renamed from: org.telegram.ui.Components.Premium.HelloParticles$Drawable$Particle */
        /* loaded from: classes6.dex */
        private class Particle {
            private int alpha;
            private Bitmap bitmap;
            private long duration;

            /* renamed from: h */
            private int f1804h;
            float inProgress;

            /* renamed from: l */
            private int f1805l;
            private float scale;
            private boolean set;
            private StaticLayout staticLayout;

            /* renamed from: w */
            private int f1806w;

            /* renamed from: x */
            private float f1807x;

            /* renamed from: y */
            private float f1808y;

            private Particle() {
            }

            public void draw(Canvas canvas, int i, long j) {
                if (!Drawable.this.paused) {
                    AndroidUtilities.m72dp(4);
                    float unused = Drawable.this.f1803dt;
                    Drawable drawable = Drawable.this;
                    float f = drawable.speedScale;
                    float f2 = this.inProgress;
                    if (f2 != 1.0f) {
                        float f3 = f2 + (drawable.f1803dt / ((float) this.duration));
                        this.inProgress = f3;
                        if (f3 > 1.0f) {
                            this.inProgress = 1.0f;
                        }
                    }
                }
                if (this.bitmap != null) {
                    canvas.save();
                    float pow = 1.0f - (((float) Math.pow(this.inProgress - 0.5f, 2.0d)) * 4.0f);
                    float f4 = (this.scale / Drawable.this.bitmapScale) * ((0.4f * pow) + 0.7f);
                    canvas.translate(this.f1807x - (this.f1806w / 2.0f), this.f1808y - (this.f1804h / 2.0f));
                    canvas.scale(f4, f4, this.f1806w / 2.0f, this.f1804h / 2.0f);
                    Drawable.this.paint.setAlpha((int) (this.alpha * pow));
                    canvas.drawBitmap(this.bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, Drawable.this.paint);
                    canvas.restore();
                }
            }

            public void genPosition(long j, int i, boolean z) {
                this.duration = Math.abs(Utilities.fastRandom.nextLong() % 2250) + 2250;
                this.scale = (Math.abs(Utilities.fastRandom.nextFloat()) * 0.45f) + 0.6f;
                String str = HelloParticles.hellos[Math.abs(Utilities.fastRandom.nextInt() % HelloParticles.hellos.length)];
                if (str.length() > 7) {
                    this.scale *= 0.6f;
                } else if (str.length() > 5) {
                    this.scale *= 0.75f;
                }
                StaticLayout staticLayout = new StaticLayout(str, Drawable.this.textPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.staticLayout = staticLayout;
                int i2 = 0;
                if (staticLayout.getLineCount() <= 0) {
                    this.f1804h = 0;
                    this.f1806w = 0;
                    this.f1805l = 0;
                } else {
                    this.f1805l = (int) this.staticLayout.getLineLeft(0);
                    this.f1806w = (int) this.staticLayout.getLineWidth(0);
                    this.f1804h = this.staticLayout.getHeight();
                }
                Bitmap bitmap = (Bitmap) Drawable.this.bitmaps.get(str);
                this.bitmap = bitmap;
                if (bitmap == null) {
                    this.bitmap = Bitmap.createBitmap(Math.max(1, this.f1806w - Math.max(0, this.f1805l)), Math.max(1, this.f1804h), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(this.bitmap);
                    canvas.translate(-this.f1805l, BitmapDescriptorFactory.HUE_RED);
                    this.staticLayout.draw(canvas);
                    Drawable.this.bitmaps.put(str, this.bitmap);
                }
                RectF rectF = Drawable.this.rect;
                float f = rectF.left;
                int i3 = this.f1806w;
                float f2 = f + (i3 / 4.0f);
                float f3 = rectF.right - (i3 / 4.0f);
                if (i % 2 == 0) {
                    f3 = rectF.centerX() - (this.f1806w / 2.0f);
                } else {
                    f2 = (this.f1806w / 2.0f) + rectF.centerX();
                }
                float f4 = f3 - f2;
                float abs = Math.abs(Utilities.fastRandom.nextInt() % f4) + f2;
                float abs2 = Drawable.this.rect.top + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.height());
                int i4 = 0;
                float f5 = 0.0f;
                while (i4 < 10) {
                    float abs3 = Math.abs(Utilities.fastRandom.nextInt() % f4) + f2;
                    float abs4 = Drawable.this.rect.top + Math.abs(Utilities.fastRandom.nextInt() % Drawable.this.rect.height());
                    float f6 = 2.14748365E9f;
                    for (int i5 = i2; i5 < Drawable.this.particles.size(); i5++) {
                        Particle particle = Drawable.this.particles.get(i5);
                        if (particle.set) {
                            float min = Math.min(Math.abs((particle.f1807x + ((particle.f1806w * (this.scale / Drawable.this.bitmapScale)) * 1.1f)) - abs3), Math.abs(particle.f1807x - abs3));
                            float f7 = particle.f1808y - abs4;
                            float f8 = (min * min) + (f7 * f7);
                            if (f8 < f6) {
                                f6 = f8;
                            }
                        }
                    }
                    if (f6 > f5) {
                        abs = abs3;
                        abs2 = abs4;
                        f5 = f6;
                    }
                    i4++;
                    i2 = 0;
                }
                this.f1807x = abs;
                this.f1808y = abs2;
                double atan2 = Math.atan2(abs - Drawable.this.rect.centerX(), this.f1808y - Drawable.this.rect.centerY());
                Math.sin(atan2);
                Math.cos(atan2);
                this.alpha = (int) (((Utilities.fastRandom.nextInt(50) + 50) / 100.0f) * 255.0f);
                this.inProgress = z ? Math.abs((Utilities.fastRandom.nextFloat() % 1.0f) * 0.9f) : BitmapDescriptorFactory.HUE_RED;
                this.set = true;
            }
        }
    }
}
