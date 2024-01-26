package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.SystemClock;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.Components.SeekBar;
/* renamed from: org.telegram.ui.Components.SeekBarWaveform */
/* loaded from: classes6.dex */
public class SeekBarWaveform {
    private static Paint paintInner;
    private static Paint paintOuter;
    private Path alphaPath;
    private ArrayList<Float> animatedValues;
    private SeekBar.SeekBarDelegate delegate;
    public float explodeProgress;
    public float explosionRate;
    private float[] fromHeights;
    private int fromWidth;
    private int height;
    private float[] heights;
    private int innerColor;
    private boolean isUnread;
    private boolean loading;
    private Paint loadingPaint;
    private int loadingPaintColor1;
    private int loadingPaintColor2;
    private float loadingPaintWidth;
    private long loadingStart;
    private MessageObject messageObject;
    private int outerColor;
    private View parentView;
    private Particles particles;
    private Path path;
    private float progress;
    private boolean selected;
    private int selectedColor;
    private float startX;
    private float[] toHeights;
    private int toWidth;
    private byte[] waveformBytes;
    private int width;
    private int thumbX = 0;
    private int thumbDX = 0;
    private boolean startDraging = false;
    private boolean pressed = false;
    private float alpha = 1.0f;
    private float clearProgress = 1.0f;
    private AnimatedFloat appearFloat = new AnimatedFloat(125, 600, CubicBezierInterpolator.EASE_OUT_QUINT);
    private float waveScaling = 1.0f;
    private AnimatedFloat loadingFloat = new AnimatedFloat(150, CubicBezierInterpolator.DEFAULT);
    private boolean exploding = false;

    public SeekBarWaveform(Context context) {
        if (paintInner == null) {
            paintInner = new Paint(1);
            paintOuter = new Paint(1);
            paintInner.setStyle(Paint.Style.FILL);
            paintOuter.setStyle(Paint.Style.FILL);
        }
    }

    public void setDelegate(SeekBar.SeekBarDelegate seekBarDelegate) {
        this.delegate = seekBarDelegate;
    }

    public void setColors(int i, int i2, int i3) {
        this.innerColor = i;
        this.outerColor = i2;
        this.selectedColor = i3;
    }

    public void setWaveform(byte[] bArr) {
        this.waveformBytes = bArr;
        this.heights = calculateHeights((int) (this.width / AndroidUtilities.dpf2(3.0f)));
        if (this.delegate.isSeekBarDragAllowed()) {
            return;
        }
        this.progress = 1.0f;
    }

    public void setSelected(boolean z) {
        this.selected = z;
    }

    public void setMessageObject(MessageObject messageObject) {
        MessageObject messageObject2;
        if (this.animatedValues != null && (messageObject2 = this.messageObject) != null && messageObject != null && messageObject2.getId() != messageObject.getId()) {
            this.animatedValues.clear();
        }
        this.messageObject = messageObject;
    }

    public void setAlpha(float f) {
        this.alpha = f;
    }

    public void setParentView(View view) {
        this.parentView = view;
        this.loadingFloat.setParent(view);
        this.appearFloat.setParent(view);
    }

    public void invalidate() {
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    public boolean isStartDraging() {
        return this.startDraging;
    }

    public boolean onTouch(int i, float f, float f2) {
        SeekBar.SeekBarDelegate seekBarDelegate;
        if (!this.delegate.isSeekBarDragAllowed()) {
            this.progress = 1.0f;
            return false;
        }
        if (i == 0) {
            if (BitmapDescriptorFactory.HUE_RED <= f && f <= this.width && f2 >= BitmapDescriptorFactory.HUE_RED && f2 <= this.height) {
                this.startX = f;
                this.pressed = true;
                this.thumbDX = (int) (f - this.thumbX);
                this.startDraging = false;
                this.delegate.onSeekBarPressed();
                return true;
            }
        } else if (i == 1 || i == 3) {
            if (this.pressed) {
                if (i == 1 && (seekBarDelegate = this.delegate) != null) {
                    seekBarDelegate.onSeekBarDrag(this.thumbX / this.width);
                }
                this.pressed = false;
                this.delegate.onSeekBarReleased();
                return true;
            }
        } else if (i == 2 && this.pressed) {
            if (this.startDraging) {
                int i2 = (int) (f - this.thumbDX);
                this.thumbX = i2;
                if (i2 < 0) {
                    this.thumbX = 0;
                } else {
                    int i3 = this.width;
                    if (i2 > i3) {
                        this.thumbX = i3;
                    }
                }
                this.progress = this.thumbX / this.width;
            }
            float f3 = this.startX;
            if (f3 != -1.0f && Math.abs(f - f3) > AndroidUtilities.getPixelsInCM(0.2f, true)) {
                View view = this.parentView;
                if (view != null && view.getParent() != null) {
                    this.parentView.getParent().requestDisallowInterceptTouchEvent(true);
                }
                this.startDraging = true;
                this.startX = -1.0f;
            }
            return true;
        }
        return false;
    }

    public float getProgress() {
        return this.thumbX / this.width;
    }

    public void setProgress(float f) {
        setProgress(f, false);
    }

    public void setProgress(float f, boolean z) {
        if (!this.delegate.isSeekBarDragAllowed()) {
            this.progress = 1.0f;
            return;
        }
        boolean z2 = this.isUnread;
        this.progress = z2 ? 1.0f : f;
        int i = z2 ? this.width : this.thumbX;
        if (z && i != 0 && f == BitmapDescriptorFactory.HUE_RED) {
            this.clearProgress = BitmapDescriptorFactory.HUE_RED;
        } else if (!z) {
            this.clearProgress = 1.0f;
        }
        int ceil = (int) Math.ceil(this.width * f);
        this.thumbX = ceil;
        if (ceil < 0) {
            this.thumbX = 0;
            return;
        }
        int i2 = this.width;
        if (ceil > i2) {
            this.thumbX = i2;
        }
    }

    public boolean isDragging() {
        return this.pressed;
    }

    public void setSize(int i, int i2) {
        setSize(i, i2, i, i);
    }

    public void setSize(int i, int i2, int i3, int i4) {
        this.width = i;
        this.height = i2;
        float[] fArr = this.heights;
        if (fArr == null || fArr.length != ((int) (i / AndroidUtilities.dpf2(3.0f)))) {
            this.heights = calculateHeights((int) (this.width / AndroidUtilities.dpf2(3.0f)));
        }
        if (i3 == i4 || (this.fromWidth == i3 && this.toWidth == i4)) {
            if (i3 == i4) {
                this.toHeights = null;
                this.fromHeights = null;
                return;
            }
            return;
        }
        this.fromWidth = i3;
        this.toWidth = i4;
        this.fromHeights = calculateHeights((int) (i3 / AndroidUtilities.dpf2(3.0f)));
        this.toHeights = calculateHeights((int) (this.toWidth / AndroidUtilities.dpf2(3.0f)));
    }

    public void setSent() {
        this.appearFloat.set(BitmapDescriptorFactory.HUE_RED, true);
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    private float[] calculateHeights(int i) {
        int i2;
        byte[] bArr = this.waveformBytes;
        if (bArr == null || i <= 0) {
            return null;
        }
        float[] fArr = new float[i];
        int i3 = 5;
        int length = (bArr.length * 8) / 5;
        float f = length / i;
        float f2 = 0.0f;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < length) {
            if (i4 == i5) {
                int i7 = i5;
                int i8 = 0;
                while (i5 == i7) {
                    f2 += f;
                    i7 = (int) f2;
                    i8++;
                }
                int i9 = i4 * 5;
                int i10 = i9 / 8;
                int i11 = i9 - (i10 * 8);
                int i12 = 5 - (8 - i11);
                byte min = (byte) ((this.waveformBytes[i10] >> i11) & ((2 << (Math.min(i3, i2) - 1)) - 1));
                if (i12 > 0) {
                    int i13 = i10 + 1;
                    byte[] bArr2 = this.waveformBytes;
                    if (i13 < bArr2.length) {
                        min = (byte) (((byte) (min << i12)) | (bArr2[i13] & ((2 << (i12 - 1)) - 1)));
                    }
                }
                int i14 = 0;
                while (i14 < i8) {
                    if (i6 >= i) {
                        return fArr;
                    }
                    fArr[i6] = Math.max((float) BitmapDescriptorFactory.HUE_RED, (min * 7) / 31.0f);
                    i14++;
                    i6++;
                }
                i5 = i7;
            }
            i4++;
            i3 = 5;
        }
        return fArr;
    }

    public void explodeAt(float f) {
        this.exploding = true;
        this.explodeProgress = f;
        invalidate();
    }

    public void setExplosionRate(float f) {
        this.explosionRate = f;
        invalidate();
    }

    public void draw(Canvas canvas, View view) {
        int i;
        float f;
        float f2;
        float[] fArr;
        float[] fArr2;
        int i2;
        int i3;
        int i4;
        if (this.waveformBytes == null || (i = this.width) == 0 || this.alpha <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        float dpf2 = i / AndroidUtilities.dpf2(3.0f);
        if (dpf2 <= 0.1f) {
            return;
        }
        float f3 = this.clearProgress;
        if (f3 != 1.0f) {
            float f4 = f3 + 0.10666667f;
            this.clearProgress = f4;
            if (f4 > 1.0f) {
                this.clearProgress = 1.0f;
            } else {
                view.invalidate();
            }
        }
        float f5 = this.appearFloat.set(1.0f);
        Path path = this.path;
        if (path == null) {
            this.path = new Path();
        } else {
            path.reset();
        }
        Path path2 = this.alphaPath;
        if (path2 == null) {
            this.alphaPath = new Path();
        } else {
            path2.reset();
        }
        SeekBar.SeekBarDelegate seekBarDelegate = this.delegate;
        boolean z = seekBarDelegate != null && seekBarDelegate.reverseWaveform();
        float[] fArr3 = this.fromHeights;
        if (fArr3 != null && (fArr2 = this.toHeights) != null) {
            int i5 = this.width;
            int i6 = this.fromWidth;
            float f6 = (i5 - i6) / (this.toWidth - i6);
            int max = Math.max(fArr3.length, fArr2.length);
            int min = Math.min(this.fromHeights.length, this.toHeights.length);
            float[] fArr4 = this.fromHeights;
            int length = fArr4.length;
            float[] fArr5 = this.toHeights;
            float[] fArr6 = length < fArr5.length ? fArr4 : fArr5;
            float[] fArr7 = fArr4.length < fArr5.length ? fArr5 : fArr4;
            if (fArr4.length >= fArr5.length) {
                f6 = 1.0f - f6;
            }
            int i7 = -1;
            f = BitmapDescriptorFactory.HUE_RED;
            int i8 = 0;
            while (i8 < max) {
                float f7 = i8;
                int i9 = max;
                int clamp = MathUtils.clamp((int) Math.floor((f7 / max) * min), 0, min - 1);
                if (i7 < clamp) {
                    float lerp = AndroidUtilities.lerp(clamp, f7, f6) * AndroidUtilities.dpf2(3.0f);
                    if (z) {
                        i3 = 1;
                        i4 = (fArr6.length - 1) - clamp;
                    } else {
                        i3 = 1;
                        i4 = clamp;
                    }
                    addBar(this.path, lerp, AndroidUtilities.dpf2(AndroidUtilities.lerp(fArr6[i4], fArr7[z ? (fArr7.length - i3) - i8 : i8], f6)));
                    i7 = clamp;
                } else {
                    float lerp2 = AndroidUtilities.lerp(clamp, f7, f6) * AndroidUtilities.dpf2(3.0f);
                    if (z) {
                        i2 = 1;
                        clamp = (fArr6.length - 1) - clamp;
                    } else {
                        i2 = 1;
                    }
                    addBar(this.alphaPath, lerp2, AndroidUtilities.dpf2(AndroidUtilities.lerp(fArr6[clamp], fArr7[z ? (fArr7.length - i2) - i8 : i8], f6)));
                    f = f6;
                }
                i8++;
                max = i9;
            }
        } else {
            if (this.heights != null) {
                int i10 = 0;
                while (true) {
                    float f8 = i10;
                    if (f8 >= dpf2 || i10 >= this.heights.length) {
                        break;
                    }
                    float dpf22 = AndroidUtilities.dpf2(3.0f) * f8;
                    float clamp2 = MathUtils.clamp((f5 * dpf2) - f8, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                    float[] fArr8 = this.heights;
                    addBar(this.path, dpf22, (AndroidUtilities.dpf2(fArr8[z ? (fArr8.length - 1) - i10 : i10]) * clamp2) - (AndroidUtilities.dpf2(1.0f) * (1.0f - clamp2)));
                    i10++;
                }
            }
            f = BitmapDescriptorFactory.HUE_RED;
        }
        if (this.exploding || this.explosionRate > BitmapDescriptorFactory.HUE_RED) {
            canvas.save();
            f2 = BitmapDescriptorFactory.HUE_RED;
            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(3.0f) * dpf2 * (1.0f - (this.explodeProgress * this.explosionRate)), this.height);
        } else {
            f2 = BitmapDescriptorFactory.HUE_RED;
        }
        if (f > f2) {
            canvas.save();
            canvas.clipPath(this.alphaPath);
            drawFill(canvas, f * this.alpha);
            canvas.restore();
        }
        canvas.save();
        canvas.clipPath(this.path);
        drawFill(canvas, this.alpha);
        canvas.restore();
        if (this.exploding || this.explosionRate > BitmapDescriptorFactory.HUE_RED) {
            canvas.restore();
            if (this.particles == null) {
                this.particles = new Particles(250, new Runnable() { // from class: org.telegram.ui.Components.SeekBarWaveform$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SeekBarWaveform.this.invalidate();
                    }
                });
            }
            RectF rectF = null;
            float f9 = this.explodeProgress;
            if (f9 < 0.99f && (fArr = this.heights) != null) {
                int i11 = (int) ((1.0f - f9) * dpf2);
                if (z) {
                    i11 = (int) ((dpf2 - 1.0f) - i11);
                }
                if (i11 >= 0 && i11 < fArr.length) {
                    float dpf23 = AndroidUtilities.dpf2(this.heights[i11]) * MathUtils.clamp((f5 * dpf2) - i11, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                    rectF = AndroidUtilities.rectTmp;
                    float dpf24 = dpf2 * (1.0f - this.explodeProgress) * AndroidUtilities.dpf2(3.0f);
                    float dpf25 = AndroidUtilities.dpf2(2.0f);
                    int m107dp = (this.height - AndroidUtilities.m107dp(14)) / 2;
                    float f10 = dpf23 * this.waveScaling;
                    float f11 = dpf25 / 2.0f;
                    rectF.set((AndroidUtilities.dpf2(1.0f) + dpf24) - f11, AndroidUtilities.m107dp(7) + m107dp + ((-f10) - f11), dpf24 + AndroidUtilities.dpf2(1.0f) + f11, m107dp + AndroidUtilities.m107dp(7) + f10 + f11);
                }
            }
            this.particles.setColor(this.outerColor).setEmitArea(rectF).draw(canvas, this.explosionRate);
        }
    }

    private void drawFill(Canvas canvas, float f) {
        Paint paint;
        Paint paint2;
        float dpf2 = AndroidUtilities.dpf2(2.0f);
        MessageObject messageObject = this.messageObject;
        boolean z = messageObject != null && messageObject.isContentUnread() && !this.messageObject.isOut() && this.progress <= BitmapDescriptorFactory.HUE_RED;
        this.isUnread = z;
        paintInner.setColor(z ? this.outerColor : this.selected ? this.selectedColor : this.innerColor);
        paintOuter.setColor(this.outerColor);
        this.loadingFloat.setParent(this.parentView);
        float f2 = this.loadingFloat.set((!this.loading || MediaController.getInstance().isPlayingMessage(this.messageObject)) ? 0.0f : 1.0f);
        Paint paint3 = paintInner;
        paint3.setColor(ColorUtils.blendARGB(paint3.getColor(), this.innerColor, f2));
        float f3 = 1.0f - f2;
        paintOuter.setAlpha((int) (paint.getAlpha() * f3 * f));
        paintInner.setAlpha((int) (paint2.getAlpha() * f));
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.width + dpf2, this.height, paintInner);
        if (f2 < 1.0f) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.progress * (this.width + dpf2) * f3, this.height, paintOuter);
        }
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            if (this.loadingPaint == null || Math.abs(this.loadingPaintWidth - this.width) > AndroidUtilities.m107dp(8) || this.loadingPaintColor1 != this.innerColor || this.loadingPaintColor2 != this.outerColor) {
                if (this.loadingPaint == null) {
                    this.loadingPaint = new Paint(1);
                }
                this.loadingPaintColor1 = this.innerColor;
                this.loadingPaintColor2 = this.outerColor;
                Paint paint4 = this.loadingPaint;
                float f4 = this.width;
                this.loadingPaintWidth = f4;
                int i = this.loadingPaintColor1;
                paint4.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, f4, (float) BitmapDescriptorFactory.HUE_RED, new int[]{i, this.loadingPaintColor2, i}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.2f, 0.4f}, Shader.TileMode.CLAMP));
            }
            this.loadingPaint.setAlpha((int) (f2 * 255.0f * f));
            canvas.save();
            float pow = ((((float) Math.pow(((float) (SystemClock.elapsedRealtime() - this.loadingStart)) / 270.0f, 0.75d)) % 1.6f) - 0.6f) * this.loadingPaintWidth;
            canvas.translate(pow, BitmapDescriptorFactory.HUE_RED);
            canvas.drawRect(-pow, BitmapDescriptorFactory.HUE_RED, (this.width + 5) - pow, this.height, this.loadingPaint);
            canvas.restore();
            View view = this.parentView;
            if (view != null) {
                view.invalidate();
            }
        }
    }

    private void addBar(Path path, float f, float f2) {
        float dpf2 = AndroidUtilities.dpf2(2.0f);
        int m107dp = (this.height - AndroidUtilities.m107dp(14)) / 2;
        float f3 = f2 * this.waveScaling;
        RectF rectF = AndroidUtilities.rectTmp;
        float f4 = dpf2 / 2.0f;
        rectF.set((AndroidUtilities.dpf2(1.0f) + f) - f4, AndroidUtilities.m107dp(7) + m107dp + ((-f3) - f4), f + AndroidUtilities.dpf2(1.0f) + f4, m107dp + AndroidUtilities.m107dp(7) + f3 + f4);
        path.addRoundRect(rectF, dpf2, dpf2, Path.Direction.CW);
    }

    public void setWaveScaling(float f) {
        this.waveScaling = f;
    }

    public void setLoading(boolean z) {
        if (!this.loading && z && this.loadingFloat.get() <= BitmapDescriptorFactory.HUE_RED) {
            this.loadingStart = SystemClock.elapsedRealtime();
        }
        this.loading = z;
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* renamed from: org.telegram.ui.Components.SeekBarWaveform$Particles */
    /* loaded from: classes6.dex */
    public static class Particles {
        private final int count;
        private RectF emitArea;
        private Runnable invalidate;
        private long lastTime;
        private final Paint paint;
        private final ArrayList<Particle> particles = new ArrayList<>(50);
        private final ArrayList<Particle> deadParticles = new ArrayList<>(50);

        public Particles(int i, Runnable runnable) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.count = i;
            this.invalidate = runnable;
            paint.setStrokeWidth(AndroidUtilities.m108dp(1.33f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.SeekBarWaveform$Particles$Particle */
        /* loaded from: classes6.dex */
        public class Particle {

            /* renamed from: d */
            float f1958d;

            /* renamed from: t */
            float f1959t;

            /* renamed from: v */
            float f1960v;

            /* renamed from: vx */
            float f1961vx;

            /* renamed from: vy */
            float f1962vy;

            /* renamed from: x */
            float f1963x;

            /* renamed from: y */
            float f1964y;

            private Particle(Particles particles) {
            }
        }

        public Particles setColor(int i) {
            this.paint.setColor(i);
            return this;
        }

        public Particles setEmitArea(RectF rectF) {
            this.emitArea = rectF;
            return this;
        }

        public void draw(Canvas canvas, float f) {
            long currentTimeMillis = System.currentTimeMillis();
            long min = Math.min(20L, currentTimeMillis - this.lastTime);
            this.lastTime = currentTimeMillis;
            int i = 0;
            while (i < this.particles.size()) {
                Particle particle = this.particles.get(i);
                float f2 = (float) min;
                float f3 = particle.f1959t - (f2 / particle.f1958d);
                particle.f1959t = f3;
                if (f3 < BitmapDescriptorFactory.HUE_RED) {
                    this.deadParticles.add(particle);
                    this.particles.remove(i);
                    i--;
                } else {
                    float f4 = particle.f1963x;
                    float f5 = particle.f1961vx;
                    float f6 = particle.f1960v;
                    particle.f1963x = f4 + (((f5 * f6) * f2) / 500.0f);
                    float f7 = particle.f1964y;
                    float f8 = particle.f1962vy;
                    particle.f1964y = f7 + (((f6 * f8) * f2) / 500.0f);
                    particle.f1962vy = f8 - (((float) (AndroidUtilities.m108dp(0.33f) * min)) / 500.0f);
                }
                i++;
            }
            if (this.emitArea != null) {
                int min2 = Math.min(4, this.count - this.particles.size());
                for (int i2 = 0; i2 < min2; i2++) {
                    Particle particle2 = this.deadParticles.isEmpty() ? new Particle() : this.deadParticles.remove(0);
                    RectF rectF = this.emitArea;
                    particle2.f1963x = rectF.left + (rectF.width() * Utilities.random.nextFloat());
                    RectF rectF2 = this.emitArea;
                    particle2.f1964y = rectF2.top + (rectF2.height() * Utilities.random.nextFloat());
                    double nextInt = (Utilities.random.nextInt(200) - 125) * 0.017453292519943295d;
                    particle2.f1961vx = ((float) (Math.cos(nextInt) - Math.sin(nextInt))) * 0.8f;
                    particle2.f1962vy = ((float) (Math.sin(nextInt) + Math.cos(nextInt))) - 0.2f;
                    particle2.f1959t = 1.0f;
                    particle2.f1960v = AndroidUtilities.m108dp((Utilities.random.nextFloat() * 7.0f) + 10.0f);
                    particle2.f1958d = AndroidUtilities.lerp(420, 550, Utilities.random.nextFloat());
                    this.particles.add(particle2);
                }
            }
            for (int i3 = 0; i3 < this.particles.size(); i3++) {
                Particle particle3 = this.particles.get(i3);
                this.paint.setAlpha((int) (255.0f * f * particle3.f1959t));
                canvas.drawPoint(particle3.f1963x, particle3.f1964y, this.paint);
            }
            Runnable runnable = this.invalidate;
            if (runnable != null) {
                runnable.run();
            }
        }
    }
}
