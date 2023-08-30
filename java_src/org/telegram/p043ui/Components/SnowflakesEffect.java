package org.telegram.p043ui.Components;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.view.View;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.SnowflakesEffect */
/* loaded from: classes6.dex */
public class SnowflakesEffect {
    private int color;
    private long lastAnimationTime;
    Bitmap particleBitmap;
    private Paint particlePaint;
    private Paint particleThinPaint;
    private int viewType;
    private Paint bitmapPaint = new Paint();
    private int colorKey = Theme.key_actionBarDefaultTitle;
    private ArrayList<Particle> particles = new ArrayList<>();
    private ArrayList<Particle> freeParticles = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SnowflakesEffect$Particle */
    /* loaded from: classes6.dex */
    public class Particle {
        float alpha;
        float currentTime;
        float lifeTime;
        float scale;
        int type;
        float velocity;

        /* renamed from: vx */
        float f1868vx;

        /* renamed from: vy */
        float f1869vy;

        /* renamed from: x */
        float f1870x;

        /* renamed from: y */
        float f1871y;

        private Particle() {
        }

        public void draw(Canvas canvas) {
            if (this.type == 0) {
                SnowflakesEffect.this.particlePaint.setAlpha((int) (this.alpha * 255.0f));
                canvas.drawPoint(this.f1870x, this.f1871y, SnowflakesEffect.this.particlePaint);
                return;
            }
            float f = -1.5707964f;
            SnowflakesEffect snowflakesEffect = SnowflakesEffect.this;
            if (snowflakesEffect.particleBitmap == null) {
                snowflakesEffect.particleThinPaint.setAlpha(255);
                SnowflakesEffect.this.particleBitmap = Bitmap.createBitmap(AndroidUtilities.m72dp(16), AndroidUtilities.m72dp(16), Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(SnowflakesEffect.this.particleBitmap);
                float dpf2 = AndroidUtilities.dpf2(2.0f) * 2.0f;
                float f2 = (-AndroidUtilities.dpf2(0.57f)) * 2.0f;
                float dpf22 = 2.0f * AndroidUtilities.dpf2(1.55f);
                int i = 0;
                while (i < 6) {
                    float m72dp = AndroidUtilities.m72dp(8);
                    float m72dp2 = AndroidUtilities.m72dp(8);
                    double d = f;
                    float cos = ((float) Math.cos(d)) * dpf2;
                    float sin = ((float) Math.sin(d)) * dpf2;
                    float f3 = cos * 0.66f;
                    canvas2.drawLine(m72dp, m72dp2, m72dp + cos, m72dp2 + sin, SnowflakesEffect.this.particleThinPaint);
                    double d2 = (float) (d - 1.5707963267948966d);
                    double d3 = f2;
                    Canvas canvas3 = canvas2;
                    double d4 = dpf22;
                    float f4 = m72dp + f3;
                    float f5 = m72dp2 + (sin * 0.66f);
                    canvas3.drawLine(f4, f5, m72dp + ((float) ((Math.cos(d2) * d3) - (Math.sin(d2) * d4))), m72dp2 + ((float) ((Math.sin(d2) * d3) + (Math.cos(d2) * d4))), SnowflakesEffect.this.particleThinPaint);
                    canvas3.drawLine(f4, f5, m72dp + ((float) (((-Math.cos(d2)) * d3) - (Math.sin(d2) * d4))), m72dp2 + ((float) (((-Math.sin(d2)) * d3) + (Math.cos(d2) * d4))), SnowflakesEffect.this.particleThinPaint);
                    f += 1.0471976f;
                    i++;
                    canvas2 = canvas3;
                }
            }
            SnowflakesEffect.this.bitmapPaint.setAlpha((int) (this.alpha * 255.0f));
            canvas.save();
            float f6 = this.scale;
            canvas.scale(f6, f6, this.f1870x, this.f1871y);
            SnowflakesEffect snowflakesEffect2 = SnowflakesEffect.this;
            canvas.drawBitmap(snowflakesEffect2.particleBitmap, this.f1870x, this.f1871y, snowflakesEffect2.bitmapPaint);
            canvas.restore();
        }
    }

    public SnowflakesEffect(int i) {
        this.viewType = i;
        Paint paint = new Paint(1);
        this.particlePaint = paint;
        paint.setStrokeWidth(AndroidUtilities.m73dp(1.5f));
        this.particlePaint.setStrokeCap(Paint.Cap.ROUND);
        this.particlePaint.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.particleThinPaint = paint2;
        paint2.setStrokeWidth(AndroidUtilities.m73dp(0.5f));
        this.particleThinPaint.setStrokeCap(Paint.Cap.ROUND);
        this.particleThinPaint.setStyle(Paint.Style.STROKE);
        updateColors();
        for (int i2 = 0; i2 < 20; i2++) {
            this.freeParticles.add(new Particle());
        }
    }

    public void setColorKey(int i) {
        this.colorKey = i;
        updateColors();
    }

    public void updateColors() {
        int color = Theme.getColor(this.colorKey) & (-1644826);
        if (this.color != color) {
            this.color = color;
            this.particlePaint.setColor(color);
            this.particleThinPaint.setColor(color);
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
                if (this.viewType == 0) {
                    if (f < 200.0f) {
                        particle.alpha = AndroidUtilities.accelerateInterpolator.getInterpolation(f / 200.0f);
                    } else {
                        particle.alpha = 1.0f - AndroidUtilities.decelerateInterpolator.getInterpolation((f - 200.0f) / (f2 - 200.0f));
                    }
                } else if (f < 200.0f) {
                    particle.alpha = AndroidUtilities.accelerateInterpolator.getInterpolation(f / 200.0f);
                } else if (f2 - f < 2000.0f) {
                    particle.alpha = AndroidUtilities.decelerateInterpolator.getInterpolation((f2 - f) / 2000.0f);
                }
                float f3 = particle.f1870x;
                float f4 = particle.f1868vx;
                float f5 = particle.velocity;
                float f6 = (float) j;
                particle.f1870x = f3 + (((f4 * f5) * f6) / 500.0f);
                particle.f1871y += ((particle.f1869vy * f5) * f6) / 500.0f;
                particle.currentTime += f6;
            }
            i++;
        }
    }

    public void onDraw(View view, Canvas canvas) {
        Particle particle;
        if (view == null || canvas == null || !LiteMode.isEnabled(32)) {
            return;
        }
        int size = this.particles.size();
        for (int i = 0; i < size; i++) {
            this.particles.get(i).draw(canvas);
        }
        int i2 = this.viewType;
        int i3 = i2 == 0 ? 100 : 300;
        int i4 = i2 == 0 ? 1 : 10;
        if (this.particles.size() < i3) {
            for (int i5 = 0; i5 < i4; i5++) {
                if (this.particles.size() < i3 && Utilities.random.nextFloat() > 0.7f) {
                    int i6 = Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0;
                    float nextFloat = Utilities.random.nextFloat() * view.getMeasuredWidth();
                    float nextFloat2 = i6 + (Utilities.random.nextFloat() * ((view.getMeasuredHeight() - AndroidUtilities.m72dp(20)) - i6));
                    double nextInt = ((Utilities.random.nextInt(40) - 20) + 90) * 0.017453292519943295d;
                    float cos = (float) Math.cos(nextInt);
                    float sin = (float) Math.sin(nextInt);
                    if (!this.freeParticles.isEmpty()) {
                        particle = this.freeParticles.get(0);
                        this.freeParticles.remove(0);
                    } else {
                        particle = new Particle();
                    }
                    particle.f1870x = nextFloat;
                    particle.f1871y = nextFloat2;
                    particle.f1868vx = cos;
                    particle.f1869vy = sin;
                    particle.alpha = BitmapDescriptorFactory.HUE_RED;
                    particle.currentTime = BitmapDescriptorFactory.HUE_RED;
                    particle.scale = Utilities.random.nextFloat() * 1.2f;
                    particle.type = Utilities.random.nextInt(2);
                    if (this.viewType == 0) {
                        particle.lifeTime = Utilities.random.nextInt(100) + 2000;
                    } else {
                        particle.lifeTime = Utilities.random.nextInt(2000) + AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
                    }
                    particle.velocity = (Utilities.random.nextFloat() * 4.0f) + 20.0f;
                    this.particles.add(particle);
                }
            }
        }
        long currentTimeMillis = System.currentTimeMillis();
        updateParticles(Math.min(17L, currentTimeMillis - this.lastAnimationTime));
        this.lastAnimationTime = currentTimeMillis;
        view.invalidate();
    }
}
