package org.telegram.p044ui.Components.Premium;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.core.graphics.ColorUtils;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p044ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.Premium.SpeedLineParticles$Drawable */
/* loaded from: classes6.dex */
public class SpeedLineParticles$Drawable {
    public final int count;
    private int lastColor;
    private float[] lines;
    public boolean paused;
    long pausedTime;
    public RectF rect = new RectF();
    public RectF screenRect = new RectF();
    private Paint paint = new Paint();
    ArrayList<Particle> particles = new ArrayList<>();
    public float speedScale = 1.0f;
    public long minLifeTime = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;

    /* renamed from: dt */
    private final float f1706dt = 1000.0f / AndroidUtilities.screenRefreshRate;

    public SpeedLineParticles$Drawable(int i) {
        this.count = i;
        this.lines = new float[i * 4];
    }

    public void init() {
        if (this.particles.isEmpty()) {
            for (int i = 0; i < this.count; i++) {
                this.particles.add(new Particle());
            }
        }
        updateColors();
    }

    public void updateColors() {
        int alphaComponent = ColorUtils.setAlphaComponent(Theme.getColor("premiumStartSmallStarsColor2"), 80);
        if (this.lastColor != alphaComponent) {
            this.lastColor = alphaComponent;
            this.paint.setColor(alphaComponent);
        }
    }

    public void resetPositions() {
        long currentTimeMillis = System.currentTimeMillis();
        for (int i = 0; i < this.particles.size(); i++) {
            this.particles.get(i).genPosition(currentTimeMillis, true);
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
            if (currentTimeMillis > particle.lifeTime || !this.screenRect.contains(particle.f1707x, particle.f1708y)) {
                particle.genPosition(currentTimeMillis, false);
            }
        }
        canvas.drawLines(this.lines, this.paint);
    }

    /* renamed from: org.telegram.ui.Components.Premium.SpeedLineParticles$Drawable$Particle */
    /* loaded from: classes6.dex */
    private class Particle {
        float inProgress;
        private long lifeTime;
        private float vecX;
        private float vecY;

        /* renamed from: x */
        private float f1707x;

        /* renamed from: y */
        private float f1708y;

        private Particle() {
        }

        public void draw(Canvas canvas, int i, long j) {
            int i2 = i * 4;
            SpeedLineParticles$Drawable.this.lines[i2] = this.f1707x;
            SpeedLineParticles$Drawable.this.lines[i2 + 1] = this.f1708y;
            SpeedLineParticles$Drawable.this.lines[i2 + 2] = this.f1707x + (AndroidUtilities.m50dp(30) * this.vecX);
            SpeedLineParticles$Drawable.this.lines[i2 + 3] = this.f1708y + (AndroidUtilities.m50dp(30) * this.vecY);
            if (SpeedLineParticles$Drawable.this.paused) {
                return;
            }
            float m50dp = AndroidUtilities.m50dp(4) * (SpeedLineParticles$Drawable.this.f1706dt / 660.0f);
            SpeedLineParticles$Drawable speedLineParticles$Drawable = SpeedLineParticles$Drawable.this;
            float f = m50dp * speedLineParticles$Drawable.speedScale;
            this.f1707x += this.vecX * f;
            this.f1708y += this.vecY * f;
            float f2 = this.inProgress;
            if (f2 != 1.0f) {
                float f3 = f2 + (speedLineParticles$Drawable.f1706dt / 200.0f);
                this.inProgress = f3;
                if (f3 > 1.0f) {
                    this.inProgress = 1.0f;
                }
            }
        }

        public void genPosition(long j, boolean z) {
            this.lifeTime = j + SpeedLineParticles$Drawable.this.minLifeTime + Utilities.fastRandom.nextInt(1000);
            SpeedLineParticles$Drawable speedLineParticles$Drawable = SpeedLineParticles$Drawable.this;
            RectF rectF = z ? speedLineParticles$Drawable.screenRect : speedLineParticles$Drawable.rect;
            float abs = rectF.left + Math.abs(Utilities.fastRandom.nextInt() % rectF.width());
            this.f1707x = abs;
            this.f1708y = rectF.top + Math.abs(Utilities.fastRandom.nextInt() % rectF.height());
            double atan2 = Math.atan2(abs - SpeedLineParticles$Drawable.this.rect.centerX(), this.f1708y - SpeedLineParticles$Drawable.this.rect.centerY());
            this.vecX = (float) Math.sin(atan2);
            this.vecY = (float) Math.cos(atan2);
            Utilities.fastRandom.nextInt(50);
            this.inProgress = BitmapDescriptorFactory.HUE_RED;
        }
    }
}
