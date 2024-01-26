package org.telegram.p043ui.Components.Premium;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextPaint;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.Premium.MatrixParticlesDrawable */
/* loaded from: classes6.dex */
public class MatrixParticlesDrawable {
    MatrixTextParticle[][] matrixTextParticles;
    ArrayList<Particle>[] particles;
    int size;
    RectF excludeRect = new RectF();
    Bitmap[] bitmaps = new Bitmap[16];
    Rect drawingRect = new Rect();
    Paint paint = new Paint();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void init() {
        this.size = AndroidUtilities.m107dp(16);
        TextPaint textPaint = new TextPaint(65);
        textPaint.setTypeface(AndroidUtilities.getTypeface("fonts/rcondensedbold.ttf"));
        textPaint.setTextSize(this.size);
        textPaint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_premiumStartSmallStarsColor2), 30));
        textPaint.setTextAlign(Paint.Align.CENTER);
        int i = 0;
        while (i < 16) {
            int i2 = i < 10 ? i + 48 : (i - 10) + 65;
            Bitmap[] bitmapArr = this.bitmaps;
            int i3 = this.size;
            bitmapArr[i] = Bitmap.createBitmap(i3, i3, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.bitmaps[i]);
            String ch = Character.toString((char) i2);
            int i4 = this.size;
            canvas.drawText(ch, i4 >> 1, i4, textPaint);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        Particle particle;
        int width = this.drawingRect.width() / this.size;
        int height = this.drawingRect.height() / this.size;
        if (width == 0 || height == 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList<Particle>[] arrayListArr = this.particles;
        C54251 c54251 = null;
        int i4 = 0;
        if (arrayListArr == null || arrayListArr.length != width + 1) {
            this.particles = new ArrayList[width + 1];
            for (int i5 = 0; i5 <= width; i5++) {
                this.particles[i5] = new ArrayList<>();
                Particle particle2 = new Particle();
                particle2.init(height, currentTimeMillis);
                this.particles[i5].add(particle2);
            }
        }
        MatrixTextParticle[][] matrixTextParticleArr = this.matrixTextParticles;
        if (matrixTextParticleArr == null || matrixTextParticleArr.length != width + 1 || matrixTextParticleArr[0].length != height + 1) {
            this.matrixTextParticles = new MatrixTextParticle[width + 1];
            for (int i6 = 0; i6 <= width; i6++) {
                this.matrixTextParticles[i6] = new MatrixTextParticle[height + 1];
                for (int i7 = 0; i7 <= height; i7++) {
                    this.matrixTextParticles[i6][i7] = new MatrixTextParticle();
                    this.matrixTextParticles[i6][i7].init(currentTimeMillis);
                }
            }
        }
        int i8 = 0;
        while (i8 <= width) {
            ArrayList<Particle> arrayList = this.particles[i8];
            int i9 = i4;
            while (i9 < arrayList.size()) {
                Particle particle3 = arrayList.get(i9);
                int i10 = 1;
                if (currentTimeMillis - particle3.time > 50) {
                    int i11 = particle3.f1912y + 1;
                    particle3.f1912y = i11;
                    particle3.time = currentTimeMillis;
                    if (i11 - particle3.len >= height) {
                        if (arrayList.size() == 1) {
                            particle3.reset(currentTimeMillis);
                        } else {
                            arrayList.remove(particle3);
                            i9--;
                        }
                    }
                    if (particle3.f1912y > particle3.len && i9 == arrayList.size() - 1 && Math.abs(Utilities.fastRandom.nextInt(4)) == 0) {
                        Particle particle4 = new Particle();
                        particle4.reset(currentTimeMillis);
                        arrayList.add(particle4);
                    }
                }
                int i12 = i9;
                int min = Math.min(particle3.f1912y, height + 1);
                int max = Math.max(i4, particle3.f1912y - particle3.len);
                while (max < min) {
                    int i13 = this.size;
                    float f = i13 * i8;
                    float f2 = i13 * max;
                    if (this.excludeRect.contains(f, f2)) {
                        i = max;
                        i2 = i10;
                        i3 = min;
                        particle = particle3;
                    } else {
                        i = max;
                        i2 = i10;
                        i3 = min;
                        particle = particle3;
                        this.matrixTextParticles[i8][max].draw(canvas, f, f2, currentTimeMillis, Utilities.clamp(((1.0f - ((particle3.f1912y - max) / (particle3.len - i10))) * 0.8f) + 0.2f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
                    }
                    max = i + 1;
                    min = i3;
                    i10 = i2;
                    particle3 = particle;
                }
                i9 = i12 + 1;
                c54251 = null;
                i4 = 0;
            }
            i8++;
            c54251 = null;
            i4 = 0;
        }
    }

    /* renamed from: org.telegram.ui.Components.Premium.MatrixParticlesDrawable$Particle */
    /* loaded from: classes6.dex */
    private class Particle {
        int len;
        long time;

        /* renamed from: y */
        int f1912y;

        private Particle(MatrixParticlesDrawable matrixParticlesDrawable) {
            this.len = 5;
        }

        public void init(int i, long j) {
            this.f1912y = Math.abs(Utilities.fastRandom.nextInt() % i);
            this.time = j;
            this.len = Math.abs(Utilities.fastRandom.nextInt() % 6) + 4;
        }

        public void reset(long j) {
            this.f1912y = 0;
            this.time = j;
            this.len = Math.abs(Utilities.fastRandom.nextInt() % 6) + 4;
        }
    }

    /* renamed from: org.telegram.ui.Components.Premium.MatrixParticlesDrawable$MatrixTextParticle */
    /* loaded from: classes6.dex */
    private class MatrixTextParticle {
        int index;
        int nextIndex;
        long nextUpdateTime;

        private MatrixTextParticle() {
        }

        public void init(long j) {
            this.index = Math.abs(Utilities.fastRandom.nextInt() % 16);
            this.nextIndex = Math.abs(Utilities.fastRandom.nextInt() % 16);
            this.nextUpdateTime = j + Math.abs(Utilities.fastRandom.nextInt() % 300) + 150;
        }

        public void draw(Canvas canvas, float f, float f2, long j, float f3) {
            long j2 = this.nextUpdateTime;
            if (j2 - j < 150) {
                float clamp = Utilities.clamp(1.0f - (((float) (j2 - j)) / 150.0f), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                MatrixParticlesDrawable.this.paint.setAlpha((int) ((1.0f - clamp) * f3 * 255.0f));
                MatrixParticlesDrawable matrixParticlesDrawable = MatrixParticlesDrawable.this;
                canvas.drawBitmap(matrixParticlesDrawable.bitmaps[this.index], f, f2, matrixParticlesDrawable.paint);
                MatrixParticlesDrawable.this.paint.setAlpha((int) (f3 * clamp * 255.0f));
                MatrixParticlesDrawable matrixParticlesDrawable2 = MatrixParticlesDrawable.this;
                canvas.drawBitmap(matrixParticlesDrawable2.bitmaps[this.nextIndex], f, f2, matrixParticlesDrawable2.paint);
                MatrixParticlesDrawable.this.paint.setAlpha(255);
                if (clamp >= 1.0f) {
                    this.index = this.nextIndex;
                    this.nextIndex = Math.abs(Utilities.fastRandom.nextInt() % 16);
                    this.nextUpdateTime = j + Math.abs(Utilities.fastRandom.nextInt() % 300) + 150;
                    return;
                }
                return;
            }
            MatrixParticlesDrawable.this.paint.setAlpha((int) (f3 * 255.0f));
            MatrixParticlesDrawable matrixParticlesDrawable3 = MatrixParticlesDrawable.this;
            canvas.drawBitmap(matrixParticlesDrawable3.bitmaps[this.index], f, f2, matrixParticlesDrawable3.paint);
        }
    }
}
