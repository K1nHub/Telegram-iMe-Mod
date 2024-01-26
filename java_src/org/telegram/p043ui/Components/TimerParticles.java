package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.SystemClock;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
/* renamed from: org.telegram.ui.Components.TimerParticles */
/* loaded from: classes6.dex */
public class TimerParticles {
    public boolean big;
    private ArrayList<Particle> freeParticles;
    private boolean hasLast;
    private long lastAnimationTime;
    private float lastCx;
    private float lastCy;
    private ArrayList<Particle> particles;
    private final int particlesCount;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.TimerParticles$Particle */
    /* loaded from: classes6.dex */
    public static class Particle {
        float alpha;
        float currentTime;
        float lifeTime;
        float velocity;

        /* renamed from: vx */
        float f1973vx;

        /* renamed from: vy */
        float f1974vy;

        /* renamed from: x */
        float f1975x;

        /* renamed from: y */
        float f1976y;

        private Particle() {
        }
    }

    public TimerParticles() {
        this(40);
    }

    public TimerParticles(int i) {
        this.particles = new ArrayList<>();
        this.freeParticles = new ArrayList<>();
        this.particlesCount = i;
        for (int i2 = 0; i2 < i; i2++) {
            this.freeParticles.add(new Particle());
        }
    }

    private void updateParticles(long j) {
        int size = this.particles.size();
        int i = 0;
        while (i < size) {
            Particle particle = this.particles.get(i);
            float f = particle.currentTime;
            float f2 = particle.lifeTime;
            if (f >= f2) {
                if (this.freeParticles.size() < this.particlesCount) {
                    this.freeParticles.add(particle);
                }
                this.particles.remove(i);
                i--;
                size--;
            } else {
                particle.alpha = 1.0f - AndroidUtilities.decelerateInterpolator.getInterpolation(f / f2);
                float f3 = particle.f1975x;
                float f4 = particle.f1973vx;
                float f5 = particle.velocity;
                float f6 = (float) j;
                particle.f1975x = f3 + (((f4 * f5) * f6) / 200.0f);
                particle.f1976y += ((particle.f1974vy * f5) * f6) / 200.0f;
                particle.currentTime += f6;
            }
            i++;
        }
    }

    public void draw(Canvas canvas, Paint paint, RectF rectF, float f, float f2) {
        Particle particle;
        int size = this.particles.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Particle particle2 = this.particles.get(i2);
            paint.setAlpha((int) (particle2.alpha * 255.0f * f2));
            canvas.drawPoint(particle2.f1975x, particle2.f1976y, paint);
        }
        double d = 0.017453292519943295d;
        double d2 = (f - 90.0f) * 0.017453292519943295d;
        double sin = Math.sin(d2);
        double d3 = -Math.cos(d2);
        double width = rectF.width() / 2.0f;
        float centerX = (float) (((-d3) * width) + rectF.centerX());
        float centerY = (float) ((width * sin) + rectF.centerY());
        int clamp = Utilities.clamp(this.freeParticles.size() / 12, 3, 1);
        int i3 = 0;
        while (i3 < clamp) {
            if (!this.freeParticles.isEmpty()) {
                particle = this.freeParticles.get(i);
                this.freeParticles.remove(i);
            } else {
                particle = new Particle();
            }
            if (this.big && this.hasLast) {
                float f3 = (i3 + 1) / clamp;
                particle.f1975x = AndroidUtilities.lerp(this.lastCx, centerX, f3);
                particle.f1976y = AndroidUtilities.lerp(this.lastCy, centerY, f3);
            } else {
                particle.f1975x = centerX;
                particle.f1976y = centerY;
            }
            double nextInt = (Utilities.random.nextInt(140) - 70) * d;
            if (nextInt < 0.0d) {
                nextInt += 6.283185307179586d;
            }
            particle.f1973vx = (float) ((Math.cos(nextInt) * sin) - (Math.sin(nextInt) * d3));
            particle.f1974vy = (float) ((Math.sin(nextInt) * sin) + (Math.cos(nextInt) * d3));
            particle.alpha = 1.0f;
            particle.currentTime = BitmapDescriptorFactory.HUE_RED;
            if (this.big) {
                particle.lifeTime = Utilities.random.nextInt(200) + 600;
                particle.velocity = (Utilities.random.nextFloat() * 20.0f) + 30.0f;
            } else {
                particle.lifeTime = Utilities.random.nextInt(100) + 400;
                particle.velocity = (Utilities.random.nextFloat() * 4.0f) + 20.0f;
            }
            this.particles.add(particle);
            i3++;
            i = 0;
            d = 0.017453292519943295d;
        }
        this.hasLast = true;
        this.lastCx = centerX;
        this.lastCy = centerY;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        updateParticles(Math.min(20L, elapsedRealtime - this.lastAnimationTime));
        this.lastAnimationTime = elapsedRealtime;
    }
}
