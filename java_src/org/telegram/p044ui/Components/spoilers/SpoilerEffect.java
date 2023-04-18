package org.telegram.p044ui.Components.spoilers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;
import android.text.style.ReplacementSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.Easings;
import org.telegram.p044ui.Components.TextStyleSpan;
/* renamed from: org.telegram.ui.Components.spoilers.SpoilerEffect */
/* loaded from: classes6.dex */
public class SpoilerEffect extends Drawable {
    private static Paint xRefPaint;
    public boolean drawPoints;
    private boolean enableAlpha;
    private boolean invalidateParent;
    private int lastColor;
    private long lastDrawTime;
    private int mAlpha;
    private View mParent;
    private int maxParticles;
    private Runnable onRippleEndCallback;
    private Paint[] particlePaints;
    float[][] particlePoints;
    private float[] particleRands;
    private ArrayList<Particle> particles;
    private Stack<Particle> particlesPool;
    private int[] renderCount;
    private boolean reverseAnimator;
    private ValueAnimator rippleAnimator;
    private TimeInterpolator rippleInterpolator;
    private float rippleMaxRadius;
    private float rippleProgress;
    private float rippleX;
    private float rippleY;
    private boolean shouldInvalidateColor;
    private List<RectF> spaces;
    private RectF visibleRect;
    public static final int MAX_PARTICLES_PER_ENTITY = measureMaxParticlesCount();
    public static final int PARTICLES_PER_CHARACTER = measureParticlesPerCharacter();
    public static final float[] ALPHAS = {0.3f, 0.6f, 1.0f};
    private static Path tempPath = new Path();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$new$0(float f) {
        return f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    private static int measureParticlesPerCharacter() {
        return SharedConfig.getDevicePerformanceClass() != 2 ? 10 : 30;
    }

    private static int measureMaxParticlesCount() {
        if (SharedConfig.getDevicePerformanceClass() != 2) {
            return 100;
        }
        return ImageReceiver.DEFAULT_CROSSFADE_DURATION;
    }

    public SpoilerEffect() {
        float[] fArr = ALPHAS;
        this.particlePaints = new Paint[fArr.length];
        this.particlesPool = new Stack<>();
        this.particlePoints = (float[][]) Array.newInstance(float.class, fArr.length, MAX_PARTICLES_PER_ENTITY * 2);
        this.particleRands = new float[14];
        this.renderCount = new int[fArr.length];
        this.particles = new ArrayList<>();
        this.rippleProgress = -1.0f;
        this.spaces = new ArrayList();
        this.mAlpha = 255;
        this.rippleInterpolator = SpoilerEffect$$ExternalSyntheticLambda0.INSTANCE;
        for (int i = 0; i < ALPHAS.length; i++) {
            this.particlePaints[i] = new Paint();
            if (i == 0) {
                this.particlePaints[i].setStrokeWidth(AndroidUtilities.m51dp(1.4f));
                this.particlePaints[i].setStyle(Paint.Style.STROKE);
                this.particlePaints[i].setStrokeCap(Paint.Cap.ROUND);
            } else {
                this.particlePaints[i].setStrokeWidth(AndroidUtilities.m51dp(1.2f));
                this.particlePaints[i].setStyle(Paint.Style.STROKE);
                this.particlePaints[i].setStrokeCap(Paint.Cap.ROUND);
            }
        }
        SharedConfig.getDevicePerformanceClass();
        this.enableAlpha = true;
        setColor(0);
    }

    public void setSuppressUpdates(boolean z) {
        invalidateSelf();
    }

    public void setInvalidateParent(boolean z) {
        this.invalidateParent = z;
    }

    public void updateMaxParticles() {
        int width = getBounds().width() / AndroidUtilities.m50dp(6);
        int i = PARTICLES_PER_CHARACTER;
        setMaxParticlesCount(MathUtils.clamp(width * i, i, MAX_PARTICLES_PER_ENTITY));
    }

    public void setOnRippleEndCallback(Runnable runnable) {
        this.onRippleEndCallback = runnable;
    }

    public void startRipple(float f, float f2, float f3) {
        startRipple(f, f2, f3, false);
    }

    public void startRipple(float f, float f2, float f3, boolean z) {
        this.rippleX = f;
        this.rippleY = f2;
        this.rippleMaxRadius = f3;
        this.rippleProgress = z ? 1.0f : 0.0f;
        this.reverseAnimator = z;
        ValueAnimator valueAnimator = this.rippleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final int alpha = this.reverseAnimator ? 255 : this.particlePaints[ALPHAS.length - 1].getAlpha();
        float[] fArr = new float[2];
        fArr[0] = this.rippleProgress;
        fArr[1] = z ? 0.0f : 1.0f;
        ValueAnimator duration = ValueAnimator.ofFloat(fArr).setDuration(MathUtils.clamp(this.rippleMaxRadius * 0.3f, 250.0f, 550.0f));
        this.rippleAnimator = duration;
        duration.setInterpolator(this.rippleInterpolator);
        this.rippleAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.spoilers.SpoilerEffect$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                SpoilerEffect.this.lambda$startRipple$1(alpha, valueAnimator2);
            }
        });
        this.rippleAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.spoilers.SpoilerEffect.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Iterator it = SpoilerEffect.this.particles.iterator();
                while (it.hasNext()) {
                    Particle particle = (Particle) it.next();
                    if (SpoilerEffect.this.particlesPool.size() < SpoilerEffect.this.maxParticles) {
                        SpoilerEffect.this.particlesPool.push(particle);
                    }
                    it.remove();
                }
                if (SpoilerEffect.this.onRippleEndCallback != null) {
                    SpoilerEffect.this.onRippleEndCallback.run();
                    SpoilerEffect.this.onRippleEndCallback = null;
                }
                SpoilerEffect.this.rippleAnimator = null;
                SpoilerEffect.this.invalidateSelf();
            }
        });
        this.rippleAnimator.start();
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRipple$1(int i, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.rippleProgress = floatValue;
        setAlpha((int) (i * (1.0f - floatValue)));
        this.shouldInvalidateColor = true;
        invalidateSelf();
    }

    public void setRippleInterpolator(TimeInterpolator timeInterpolator) {
        this.rippleInterpolator = timeInterpolator;
    }

    public void getRipplePath(Path path) {
        path.addCircle(this.rippleX, this.rippleY, this.rippleMaxRadius * MathUtils.clamp(this.rippleProgress, (float) BitmapDescriptorFactory.HUE_RED, 1.0f), Path.Direction.CW);
    }

    public float getRippleProgress() {
        return this.rippleProgress;
    }

    public boolean shouldInvalidateColor() {
        boolean z = this.shouldInvalidateColor;
        this.shouldInvalidateColor = false;
        return z;
    }

    public void setRippleProgress(float f) {
        ValueAnimator valueAnimator;
        this.rippleProgress = f;
        if (f == -1.0f && (valueAnimator = this.rippleAnimator) != null) {
            valueAnimator.cancel();
        }
        this.shouldInvalidateColor = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        Iterator<Particle> it = this.particles.iterator();
        while (it.hasNext()) {
            Particle next = it.next();
            if (!getBounds().contains((int) next.f1755x, (int) next.f1756y)) {
                it.remove();
            }
            if (this.particlesPool.size() < this.maxParticles) {
                this.particlesPool.push(next);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Particle particle;
        int i;
        float f;
        if (this.drawPoints) {
            long currentTimeMillis = System.currentTimeMillis();
            int min = (int) Math.min(currentTimeMillis - this.lastDrawTime, 34L);
            this.lastDrawTime = currentTimeMillis;
            int i2 = getBounds().left;
            int i3 = getBounds().top;
            int i4 = getBounds().right;
            int i5 = getBounds().bottom;
            int i6 = 0;
            for (int i7 = 0; i7 < ALPHAS.length; i7++) {
                this.renderCount[i7] = 0;
            }
            int i8 = 0;
            while (i8 < this.particles.size()) {
                Particle particle2 = this.particles.get(i8);
                float f2 = min;
                particle2.currentTime = Math.min(particle2.currentTime + f2, particle2.lifeTime);
                if (particle2.currentTime >= particle2.lifeTime || isOutOfBounds(i2, i3, i4, i5, particle2.f1755x, particle2.f1756y)) {
                    if (this.particlesPool.size() < this.maxParticles) {
                        this.particlesPool.push(particle2);
                    }
                    this.particles.remove(i8);
                    i8--;
                } else {
                    float f3 = (particle2.velocity * f2) / 500.0f;
                    Particle.access$516(particle2, particle2.vecX * f3);
                    Particle.access$616(particle2, particle2.vecY * f3);
                    int i9 = particle2.alpha;
                    this.particlePoints[i9][this.renderCount[i9] * 2] = particle2.f1755x;
                    this.particlePoints[i9][(this.renderCount[i9] * 2) + 1] = particle2.f1756y;
                    int[] iArr = this.renderCount;
                    iArr[i9] = iArr[i9] + 1;
                }
                i8++;
            }
            int size = this.particles.size();
            int i10 = this.maxParticles;
            if (size < i10) {
                int size2 = i10 - this.particles.size();
                float f4 = -1.0f;
                Arrays.fill(this.particleRands, -1.0f);
                int i11 = 0;
                while (i11 < size2) {
                    float[] fArr = this.particleRands;
                    int i12 = i11 % 14;
                    float f5 = fArr[i12];
                    if (f5 == f4) {
                        f5 = Utilities.fastRandom.nextFloat();
                        fArr[i12] = f5;
                    }
                    float f6 = f5;
                    Particle pop = !this.particlesPool.isEmpty() ? this.particlesPool.pop() : new Particle();
                    int i13 = i6;
                    while (true) {
                        generateRandomLocation(pop, i11);
                        int i14 = i13 + 1;
                        particle = pop;
                        i = size2;
                        f = f6;
                        if (isOutOfBounds(i2, i3, i4, i5, pop.f1755x, pop.f1756y) && i14 < 4) {
                            f6 = f;
                            pop = particle;
                            i13 = i14;
                            size2 = i;
                        }
                    }
                    double d = ((f * 3.141592653589793d) * 2.0d) - 3.141592653589793d;
                    particle.vecX = (float) Math.cos(d);
                    particle.vecY = (float) Math.sin(d);
                    particle.currentTime = BitmapDescriptorFactory.HUE_RED;
                    particle.lifeTime = Math.abs(Utilities.fastRandom.nextInt(2000)) + 1000;
                    particle.velocity = (f * 6.0f) + 4.0f;
                    particle.alpha = Utilities.fastRandom.nextInt(ALPHAS.length);
                    this.particles.add(particle);
                    int i15 = particle.alpha;
                    this.particlePoints[i15][this.renderCount[i15] * 2] = particle.f1755x;
                    this.particlePoints[i15][(this.renderCount[i15] * 2) + 1] = particle.f1756y;
                    int[] iArr2 = this.renderCount;
                    iArr2[i15] = iArr2[i15] + 1;
                    i11++;
                    size2 = i;
                    i6 = 0;
                    f4 = -1.0f;
                }
            }
            for (int length = this.enableAlpha ? 0 : ALPHAS.length - 1; length < ALPHAS.length; length++) {
                int i16 = 0;
                int i17 = 0;
                for (int i18 = 0; i18 < this.particles.size(); i18++) {
                    Particle particle3 = this.particles.get(i18);
                    RectF rectF = this.visibleRect;
                    if ((rectF == null || rectF.contains(particle3.f1755x, particle3.f1756y)) && (particle3.alpha == length || !this.enableAlpha)) {
                        int i19 = (i18 - i17) * 2;
                        this.particlePoints[length][i19] = particle3.f1755x;
                        this.particlePoints[length][i19 + 1] = particle3.f1756y;
                        i16 += 2;
                    } else {
                        i17++;
                    }
                }
                canvas.drawPoints(this.particlePoints[length], 0, i16, this.particlePaints[length]);
            }
            return;
        }
        SpoilerEffectBitmapFactory.getInstance().getPaint().setColorFilter(new PorterDuffColorFilter(this.lastColor, PorterDuff.Mode.SRC_IN));
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right, getBounds().bottom, SpoilerEffectBitmapFactory.getInstance().getPaint());
        if (LiteMode.isEnabled(128)) {
            invalidateSelf();
            SpoilerEffectBitmapFactory.getInstance().checkUpdate();
        }
    }

    public void setVisibleBounds(float f, float f2, float f3, float f4) {
        if (this.visibleRect == null) {
            this.visibleRect = new RectF();
        }
        RectF rectF = this.visibleRect;
        if (rectF.left == f && rectF.right == f3 && rectF.top == f2 && rectF.bottom == f4) {
            return;
        }
        rectF.left = f;
        rectF.top = f2;
        rectF.right = f3;
        rectF.bottom = f4;
        invalidateSelf();
    }

    private boolean isOutOfBounds(int i, int i2, int i3, int i4, float f, float f2) {
        if (f < i || f > i3 || f2 < i2 + AndroidUtilities.m51dp(2.5f) || f2 > i4 - AndroidUtilities.m51dp(2.5f)) {
            return true;
        }
        for (int i5 = 0; i5 < this.spaces.size(); i5++) {
            if (this.spaces.get(i5).contains(f, f2)) {
                return true;
            }
        }
        return false;
    }

    private void generateRandomLocation(Particle particle, int i) {
        particle.f1755x = getBounds().left + (Utilities.fastRandom.nextFloat() * getBounds().width());
        particle.f1756y = getBounds().top + (Utilities.fastRandom.nextFloat() * getBounds().height());
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        View view = this.mParent;
        if (view != null) {
            if (view.getParent() != null && this.invalidateParent) {
                ((View) view.getParent()).invalidate();
            } else {
                view.invalidate();
            }
        }
    }

    public void setParentView(View view) {
        this.mParent = view;
    }

    public View getParentView() {
        return this.mParent;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mAlpha = i;
        int i2 = 0;
        while (true) {
            float[] fArr = ALPHAS;
            if (i2 >= fArr.length) {
                return;
            }
            this.particlePaints[i2].setAlpha((int) (fArr[i2] * i));
            i2++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        for (Paint paint : this.particlePaints) {
            paint.setColorFilter(colorFilter);
        }
    }

    public void setColor(int i) {
        if (this.lastColor == i) {
            return;
        }
        int i2 = 0;
        while (true) {
            float[] fArr = ALPHAS;
            if (i2 < fArr.length) {
                this.particlePaints[i2].setColor(ColorUtils.setAlphaComponent(i, (int) (this.mAlpha * fArr[i2])));
                i2++;
            } else {
                this.lastColor = i;
                return;
            }
        }
    }

    public void setMaxParticlesCount(int i) {
        this.maxParticles = i;
        while (this.particlesPool.size() + this.particles.size() < i) {
            this.particlesPool.push(new Particle());
        }
    }

    public static void addSpoilers(TextView textView, Stack<SpoilerEffect> stack, List<SpoilerEffect> list) {
        addSpoilers(textView, textView.getLayout(), (Spanned) textView.getText(), stack, list);
    }

    public static void addSpoilers(View view, Layout layout, Stack<SpoilerEffect> stack, List<SpoilerEffect> list) {
        if (layout.getText() instanceof Spanned) {
            addSpoilers(view, layout, (Spanned) layout.getText(), stack, list);
        }
    }

    public static void addSpoilers(View view, Layout layout, Spanned spanned, Stack<SpoilerEffect> stack, List<SpoilerEffect> list) {
        int i;
        int i2;
        TextStyleSpan[] textStyleSpanArr;
        int i3;
        int i4;
        float f;
        float f2;
        int i5;
        int i6 = 0;
        while (i6 < layout.getLineCount()) {
            float lineLeft = layout.getLineLeft(i6);
            float lineTop = layout.getLineTop(i6);
            float lineRight = layout.getLineRight(i6);
            float lineBottom = layout.getLineBottom(i6);
            int lineStart = layout.getLineStart(i6);
            int lineEnd = layout.getLineEnd(i6);
            TextStyleSpan[] textStyleSpanArr2 = (TextStyleSpan[]) spanned.getSpans(lineStart, lineEnd, TextStyleSpan.class);
            int length = textStyleSpanArr2.length;
            int i7 = 0;
            while (i7 < length) {
                TextStyleSpan textStyleSpan = textStyleSpanArr2[i7];
                if (textStyleSpan.isSpoiler()) {
                    int spanStart = spanned.getSpanStart(textStyleSpan);
                    int spanEnd = spanned.getSpanEnd(textStyleSpan);
                    int max = Math.max(lineStart, spanStart);
                    int min = Math.min(lineEnd, spanEnd);
                    if (min - max != 0) {
                        i = i7;
                        i2 = length;
                        textStyleSpanArr = textStyleSpanArr2;
                        i3 = lineEnd;
                        i4 = lineStart;
                        f = lineBottom;
                        f2 = lineTop;
                        i5 = i6;
                        addSpoilersInternal(view, spanned, layout, lineStart, lineEnd, lineLeft, lineTop, lineRight, lineBottom, max, min, stack, list);
                        i7 = i + 1;
                        lineBottom = f;
                        lineTop = f2;
                        length = i2;
                        textStyleSpanArr2 = textStyleSpanArr;
                        lineEnd = i3;
                        lineStart = i4;
                        i6 = i5;
                    }
                }
                i = i7;
                i2 = length;
                textStyleSpanArr = textStyleSpanArr2;
                i3 = lineEnd;
                i4 = lineStart;
                f = lineBottom;
                f2 = lineTop;
                i5 = i6;
                i7 = i + 1;
                lineBottom = f;
                lineTop = f2;
                length = i2;
                textStyleSpanArr2 = textStyleSpanArr;
                lineEnd = i3;
                lineStart = i4;
                i6 = i5;
            }
            i6++;
        }
        if (!(view instanceof TextView) || stack == null) {
            return;
        }
        stack.clear();
    }

    private static void addSpoilersInternal(View view, Spanned spanned, Layout layout, int i, int i2, float f, float f2, float f3, float f4, int i3, int i4, Stack<SpoilerEffect> stack, List<SpoilerEffect> list) {
        int i5;
        int i6;
        int i7;
        SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(AndroidUtilities.replaceNewLines(new SpannableStringBuilder(spanned, i3, i4)));
        for (TextStyleSpan textStyleSpan : (TextStyleSpan[]) valueOf.getSpans(0, valueOf.length(), TextStyleSpan.class)) {
            valueOf.removeSpan(textStyleSpan);
        }
        for (URLSpan uRLSpan : (URLSpan[]) valueOf.getSpans(0, valueOf.length(), URLSpan.class)) {
            valueOf.removeSpan(uRLSpan);
        }
        if (valueOf.toString().trim().length() == 0) {
            return;
        }
        int ellipsizedWidth = layout.getEllipsizedWidth() > 0 ? layout.getEllipsizedWidth() : layout.getWidth();
        TextPaint textPaint = new TextPaint(layout.getPaint());
        textPaint.setColor(-16777216);
        if (Build.VERSION.SDK_INT >= 24) {
            StaticLayout.Builder.obtain(valueOf, 0, valueOf.length(), textPaint, ellipsizedWidth).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL).setLineSpacing(layout.getSpacingAdd(), layout.getSpacingMultiplier()).build();
            i5 = 1;
            i6 = 0;
        } else {
            i5 = 1;
            i6 = 0;
            new StaticLayout(valueOf, textPaint, ellipsizedWidth, Layout.Alignment.ALIGN_NORMAL, layout.getSpacingMultiplier(), layout.getSpacingAdd(), false);
        }
        int i8 = ((LocaleController.isRTLCharacter(valueOf.charAt(i6)) || LocaleController.isRTLCharacter(valueOf.charAt(valueOf.length() + (-1)))) && !LocaleController.isRTL) ? i5 : i6;
        SpoilerEffect spoilerEffect = (stack == null || stack.isEmpty()) ? new SpoilerEffect() : stack.remove(i6);
        spoilerEffect.setRippleProgress(-1.0f);
        float primaryHorizontal = i3 == i ? f : layout.getPrimaryHorizontal(i3);
        float primaryHorizontal2 = (i4 == i2 || (i8 != 0 && i4 == (i7 = i2 + (-1)) && spanned.charAt(i7) == 8230)) ? f3 : layout.getPrimaryHorizontal(i4);
        spoilerEffect.setBounds((int) Math.min(primaryHorizontal, primaryHorizontal2), (int) f2, (int) Math.max(primaryHorizontal, primaryHorizontal2), (int) f4);
        spoilerEffect.setColor(layout.getPaint().getColor());
        spoilerEffect.setRippleInterpolator(Easings.easeInQuad);
        spoilerEffect.updateMaxParticles();
        int i9 = i6;
        if (view != null) {
            spoilerEffect.setParentView(view);
        }
        spoilerEffect.spaces.clear();
        for (int i10 = i9; i10 < valueOf.length(); i10++) {
            if (valueOf.charAt(i10) == ' ') {
                RectF rectF = new RectF();
                int i11 = i3 + i10;
                int lineForOffset = layout.getLineForOffset(i11);
                rectF.top = layout.getLineTop(lineForOffset);
                rectF.bottom = layout.getLineBottom(lineForOffset);
                float primaryHorizontal3 = layout.getPrimaryHorizontal(i11);
                float primaryHorizontal4 = layout.getPrimaryHorizontal(i11 + 1);
                rectF.left = (int) Math.min(primaryHorizontal3, primaryHorizontal4);
                rectF.right = (int) Math.max(primaryHorizontal3, primaryHorizontal4);
                if (Math.abs(primaryHorizontal3 - primaryHorizontal4) <= AndroidUtilities.m50dp(20)) {
                    spoilerEffect.spaces.add(rectF);
                }
            }
        }
        list.add(spoilerEffect);
    }

    public static void clipOutCanvas(Canvas canvas, List<SpoilerEffect> list) {
        tempPath.rewind();
        for (SpoilerEffect spoilerEffect : list) {
            Rect bounds = spoilerEffect.getBounds();
            tempPath.addRect(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
        }
        canvas.clipPath(tempPath, Region.Op.DIFFERENCE);
    }

    public static void renderWithRipple(View view, boolean z, int i, int i2, AtomicReference<Layout> atomicReference, Layout layout, List<SpoilerEffect> list, Canvas canvas, boolean z2) {
        TextStyleSpan[] textStyleSpanArr;
        int i3;
        if (list.isEmpty()) {
            layout.draw(canvas);
            return;
        }
        Layout layout2 = atomicReference.get();
        int i4 = 0;
        if (layout2 == null || !layout.getText().toString().equals(layout2.getText().toString()) || layout.getWidth() != layout2.getWidth() || layout.getHeight() != layout2.getHeight()) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(layout.getText());
            if (layout.getText() instanceof Spannable) {
                Spannable spannable = (Spannable) layout.getText();
                TextStyleSpan[] textStyleSpanArr2 = (TextStyleSpan[]) spannable.getSpans(0, spannable.length(), TextStyleSpan.class);
                int length = textStyleSpanArr2.length;
                int i5 = 0;
                while (i5 < length) {
                    TextStyleSpan textStyleSpan = textStyleSpanArr2[i5];
                    if (textStyleSpan.isSpoiler()) {
                        Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) spannable.getSpans(spannable.getSpanStart(textStyleSpan), spannable.getSpanEnd(textStyleSpan), Emoji.EmojiSpan.class);
                        int length2 = emojiSpanArr.length;
                        int i6 = i4;
                        while (i6 < length2) {
                            final Emoji.EmojiSpan emojiSpan = emojiSpanArr[i6];
                            spannableStringBuilder.setSpan(new ReplacementSpan() { // from class: org.telegram.ui.Components.spoilers.SpoilerEffect.2
                                @Override // android.text.style.ReplacementSpan
                                public void draw(Canvas canvas2, CharSequence charSequence, int i7, int i8, float f, int i9, int i10, int i11, Paint paint) {
                                }

                                @Override // android.text.style.ReplacementSpan
                                public int getSize(Paint paint, CharSequence charSequence, int i7, int i8, Paint.FontMetricsInt fontMetricsInt) {
                                    return Emoji.EmojiSpan.this.getSize(paint, charSequence, i7, i8, fontMetricsInt);
                                }
                            }, spannable.getSpanStart(emojiSpan), spannable.getSpanEnd(emojiSpan), spannable.getSpanFlags(textStyleSpan));
                            spannableStringBuilder.removeSpan(emojiSpan);
                            i6++;
                            textStyleSpanArr2 = textStyleSpanArr2;
                            length = length;
                            emojiSpanArr = emojiSpanArr;
                        }
                        textStyleSpanArr = textStyleSpanArr2;
                        i3 = length;
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(0), spannable.getSpanStart(textStyleSpan), spannable.getSpanEnd(textStyleSpan), spannable.getSpanFlags(textStyleSpan));
                        spannableStringBuilder.removeSpan(textStyleSpan);
                    } else {
                        textStyleSpanArr = textStyleSpanArr2;
                        i3 = length;
                    }
                    i5++;
                    textStyleSpanArr2 = textStyleSpanArr;
                    length = i3;
                    i4 = 0;
                }
            }
            if (Build.VERSION.SDK_INT >= 24) {
                layout2 = StaticLayout.Builder.obtain(spannableStringBuilder, 0, spannableStringBuilder.length(), layout.getPaint(), layout.getWidth()).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL).setLineSpacing(layout.getSpacingAdd(), layout.getSpacingMultiplier()).build();
            } else {
                layout2 = new StaticLayout(spannableStringBuilder, layout.getPaint(), layout.getWidth(), layout.getAlignment(), layout.getSpacingMultiplier(), layout.getSpacingAdd(), false);
            }
            atomicReference.set(layout2);
        }
        if (!list.isEmpty()) {
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, i2);
            layout2.draw(canvas);
            canvas.restore();
        } else {
            layout.draw(canvas);
        }
        if (list.isEmpty()) {
            return;
        }
        tempPath.rewind();
        for (SpoilerEffect spoilerEffect : list) {
            Rect bounds = spoilerEffect.getBounds();
            tempPath.addRect(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
        }
        if (!list.isEmpty() && list.get(0).rippleProgress != -1.0f) {
            canvas.save();
            canvas.clipPath(tempPath);
            tempPath.rewind();
            if (!list.isEmpty()) {
                list.get(0).getRipplePath(tempPath);
            }
            canvas.clipPath(tempPath);
            canvas.translate(BitmapDescriptorFactory.HUE_RED, -view.getPaddingTop());
            layout.draw(canvas);
            canvas.restore();
        }
        boolean z3 = list.get(0).rippleProgress != -1.0f;
        if (z3) {
            int measuredWidth = view.getMeasuredWidth();
            if (z2 && (view.getParent() instanceof View)) {
                measuredWidth = ((View) view.getParent()).getMeasuredWidth();
            }
            canvas.saveLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, measuredWidth, view.getMeasuredHeight(), null, 31);
        } else {
            canvas.save();
        }
        canvas.translate(BitmapDescriptorFactory.HUE_RED, -view.getPaddingTop());
        for (SpoilerEffect spoilerEffect2 : list) {
            spoilerEffect2.setInvalidateParent(z);
            if (spoilerEffect2.getParentView() != view) {
                spoilerEffect2.setParentView(view);
            }
            if (spoilerEffect2.shouldInvalidateColor()) {
                spoilerEffect2.setColor(ColorUtils.blendARGB(i, Theme.chat_msgTextPaint.getColor(), Math.max((float) BitmapDescriptorFactory.HUE_RED, spoilerEffect2.getRippleProgress())));
            } else {
                spoilerEffect2.setColor(i);
            }
            spoilerEffect2.draw(canvas);
        }
        if (z3) {
            tempPath.rewind();
            list.get(0).getRipplePath(tempPath);
            if (xRefPaint == null) {
                Paint paint = new Paint(1);
                xRefPaint = paint;
                paint.setColor(-16777216);
                xRefPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            }
            canvas.drawPath(tempPath, xRefPaint);
        }
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.spoilers.SpoilerEffect$Particle */
    /* loaded from: classes6.dex */
    public static class Particle {
        private int alpha;
        private float currentTime;
        private float lifeTime;
        private float vecX;
        private float vecY;
        private float velocity;

        /* renamed from: x */
        private float f1755x;

        /* renamed from: y */
        private float f1756y;

        private Particle() {
        }

        static /* synthetic */ float access$516(Particle particle, float f) {
            float f2 = particle.f1755x + f;
            particle.f1755x = f2;
            return f2;
        }

        static /* synthetic */ float access$616(Particle particle, float f) {
            float f2 = particle.f1756y + f;
            particle.f1756y = f2;
            return f2;
        }
    }
}