package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.FireworksEffect */
/* loaded from: classes6.dex */
public class FireworksEffect {
    private long lastAnimationTime;
    private Paint particlePaint;
    private ArrayList<Particle> particles = new ArrayList<>();
    private ArrayList<Particle> freeParticles = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.FireworksEffect$Particle */
    /* loaded from: classes6.dex */
    public class Particle {
        float alpha;
        int color;
        float currentTime;
        float lifeTime;
        float scale;
        int type;
        float velocity;

        /* renamed from: vx */
        float f1852vx;

        /* renamed from: vy */
        float f1853vy;

        /* renamed from: x */
        float f1854x;

        /* renamed from: y */
        float f1855y;

        private Particle() {
        }

        public void draw(Canvas canvas) {
            if (this.type != 0) {
                return;
            }
            FireworksEffect.this.particlePaint.setColor(this.color);
            FireworksEffect.this.particlePaint.setStrokeWidth(AndroidUtilities.m108dp(1.5f) * this.scale);
            FireworksEffect.this.particlePaint.setAlpha((int) (this.alpha * 255.0f));
            canvas.drawPoint(this.f1854x, this.f1855y, FireworksEffect.this.particlePaint);
        }
    }

    public FireworksEffect() {
        Paint paint = new Paint(1);
        this.particlePaint = paint;
        paint.setStrokeWidth(AndroidUtilities.m108dp(1.5f));
        this.particlePaint.setColor(Theme.getColor(Theme.key_actionBarDefaultTitle) & (-1644826));
        this.particlePaint.setStrokeCap(Paint.Cap.ROUND);
        this.particlePaint.setStyle(Paint.Style.STROKE);
        for (int i = 0; i < 20; i++) {
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
                float f3 = particle.f1854x;
                float f4 = particle.f1852vx;
                float f5 = particle.velocity;
                float f6 = (float) j;
                particle.f1854x = f3 + (((f4 * f5) * f6) / 500.0f);
                float f7 = particle.f1855y;
                float f8 = particle.f1853vy;
                particle.f1855y = f7 + (((f5 * f8) * f6) / 500.0f);
                particle.f1853vy = f8 + (f6 / 100.0f);
                particle.currentTime += f6;
            }
            i++;
        }
    }

    public void onDraw(View view, Canvas canvas) {
        Particle particle;
        if (view == null || canvas == null) {
            return;
        }
        int size = this.particles.size();
        for (int i = 0; i < size; i++) {
            this.particles.get(i).draw(canvas);
        }
        if (Utilities.random.nextBoolean() && this.particles.size() + 8 < 150) {
            int i2 = Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0;
            float nextFloat = Utilities.random.nextFloat() * view.getMeasuredWidth();
            float nextFloat2 = i2 + (Utilities.random.nextFloat() * ((view.getMeasuredHeight() - AndroidUtilities.m107dp(20)) - i2));
            int nextInt = Utilities.random.nextInt(4);
            int i3 = nextInt != 0 ? nextInt != 1 ? nextInt != 2 ? nextInt != 3 ? -5752 : -15088582 : -207021 : -843755 : -13357350;
            for (int i4 = 0; i4 < 8; i4++) {
                double nextInt2 = (Utilities.random.nextInt(270) - 225) * 0.017453292519943295d;
                float cos = (float) Math.cos(nextInt2);
                float sin = (float) Math.sin(nextInt2);
                if (!this.freeParticles.isEmpty()) {
                    particle = this.freeParticles.get(0);
                    this.freeParticles.remove(0);
                } else {
                    particle = new Particle();
                }
                particle.f1854x = nextFloat;
                particle.f1855y = nextFloat2;
                particle.f1852vx = cos * 1.5f;
                particle.f1853vy = sin;
                particle.color = i3;
                particle.alpha = 1.0f;
                particle.currentTime = BitmapDescriptorFactory.HUE_RED;
                particle.scale = Math.max(1.0f, Utilities.random.nextFloat() * 1.5f);
                particle.type = 0;
                particle.lifeTime = Utilities.random.nextInt(1000) + 1000;
                particle.velocity = (Utilities.random.nextFloat() * 4.0f) + 20.0f;
                this.particles.add(particle);
            }
        }
        long currentTimeMillis = System.currentTimeMillis();
        updateParticles(Math.min(17L, currentTimeMillis - this.lastAnimationTime));
        this.lastAnimationTime = currentTimeMillis;
        view.invalidate();
    }
}
