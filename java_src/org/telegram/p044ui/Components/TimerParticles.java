package org.telegram.p044ui.Components;

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
    private long lastAnimationTime;
    private ArrayList<Particle> particles = new ArrayList<>();
    private ArrayList<Particle> freeParticles = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.TimerParticles$Particle */
    /* loaded from: classes6.dex */
    public static class Particle {
        float alpha;
        float currentTime;
        float lifeTime;
        float velocity;

        /* renamed from: vx */
        float f1745vx;

        /* renamed from: vy */
        float f1746vy;

        /* renamed from: x */
        float f1747x;

        /* renamed from: y */
        float f1748y;

        private Particle() {
        }
    }

    public TimerParticles() {
        for (int i = 0; i < 40; i++) {
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
                if (this.freeParticles.size() < 40) {
                    this.freeParticles.add(particle);
                }
                this.particles.remove(i);
                i--;
                size--;
            } else {
                particle.alpha = 1.0f - AndroidUtilities.decelerateInterpolator.getInterpolation(f / f2);
                float f3 = particle.f1747x;
                float f4 = particle.f1745vx;
                float f5 = particle.velocity;
                float f6 = (float) j;
                particle.f1747x = f3 + (((f4 * f5) * f6) / 500.0f);
                particle.f1748y += ((particle.f1746vy * f5) * f6) / 500.0f;
                particle.currentTime += f6;
            }
            i++;
        }
    }

    public void draw(Canvas canvas, Paint paint, RectF rectF, float f, float f2) {
        Particle particle;
        int size = this.particles.size();
        for (int i = 0; i < size; i++) {
            Particle particle2 = this.particles.get(i);
            paint.setAlpha((int) (particle2.alpha * 255.0f * f2));
            canvas.drawPoint(particle2.f1747x, particle2.f1748y, paint);
        }
        double d = (f - 90.0f) * 0.017453292519943295d;
        double sin = Math.sin(d);
        double d2 = -Math.cos(d);
        double width = rectF.width() / 2.0f;
        float centerX = (float) (((-d2) * width) + rectF.centerX());
        float centerY = (float) ((width * sin) + rectF.centerY());
        for (int i2 = 0; i2 < 1; i2++) {
            if (!this.freeParticles.isEmpty()) {
                particle = this.freeParticles.get(0);
                this.freeParticles.remove(0);
            } else {
                particle = new Particle();
            }
            particle.f1747x = centerX;
            particle.f1748y = centerY;
            double nextInt = (Utilities.random.nextInt(140) - 70) * 0.017453292519943295d;
            if (nextInt < 0.0d) {
                nextInt += 6.283185307179586d;
            }
            particle.f1745vx = (float) ((Math.cos(nextInt) * sin) - (Math.sin(nextInt) * d2));
            particle.f1746vy = (float) ((Math.sin(nextInt) * sin) + (Math.cos(nextInt) * d2));
            particle.alpha = 1.0f;
            particle.currentTime = BitmapDescriptorFactory.HUE_RED;
            particle.lifeTime = Utilities.random.nextInt(100) + 400;
            particle.velocity = (Utilities.random.nextFloat() * 4.0f) + 20.0f;
            this.particles.add(particle);
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        updateParticles(Math.min(20L, elapsedRealtime - this.lastAnimationTime));
        this.lastAnimationTime = elapsedRealtime;
    }
}
