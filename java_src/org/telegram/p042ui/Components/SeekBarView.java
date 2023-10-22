package org.telegram.p042ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Pair;
import android.util.StateSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.p042ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.SeekBarView */
/* loaded from: classes6.dex */
public class SeekBarView extends FrameLayout {
    private static Path tmpPath;
    private static float[] tmpRadii;
    private AnimatedFloat animatedThumbX;
    private float bufferedProgress;
    boolean captured;
    private float currentRadius;
    private int currentTimestamp;
    public SeekBarViewDelegate delegate;
    private Drawable hoverDrawable;
    private Paint innerPaint1;
    private CharSequence lastCaption;
    private long lastDuration;
    private long lastTimestampUpdate;
    private long lastUpdateTime;
    int lastValue;
    private float lastWidth;
    private int lineWidthDp;
    private Paint outerPaint1;
    private boolean pressed;
    private int[] pressedState;
    private float progressToSet;
    private RectF rect;
    private boolean reportChanges;
    private final Theme.ResourcesProvider resourcesProvider;
    private final SeekBarAccessibilityDelegate seekBarAccessibilityDelegate;
    private int selectorWidth;
    private int separatorsCount;

    /* renamed from: sx */
    float f1937sx;

    /* renamed from: sy */
    float f1938sy;
    private int thumbDX;
    private int thumbSize;
    private int thumbX;
    private int timestampChangeDirection;
    private float timestampChangeT;
    private StaticLayout[] timestampLabel;
    private TextPaint timestampLabelPaint;
    private ArrayList<Pair<Float, CharSequence>> timestamps;
    private float timestampsAppearing;
    private float transitionProgress;
    private int transitionThumbX;
    private boolean twoSided;

    /* renamed from: org.telegram.ui.Components.SeekBarView$SeekBarViewDelegate */
    /* loaded from: classes6.dex */
    public interface SeekBarViewDelegate {

        /* renamed from: org.telegram.ui.Components.SeekBarView$SeekBarViewDelegate$-CC */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static CharSequence $default$getContentDescription(SeekBarViewDelegate seekBarViewDelegate) {
                return null;
            }

            public static int $default$getStepsCount(SeekBarViewDelegate seekBarViewDelegate) {
                return 0;
            }
        }

        CharSequence getContentDescription();

        int getStepsCount();

        void onSeekBarDrag(boolean z, float f);

        void onSeekBarPressed(boolean z);
    }

    public /* synthetic */ void lambda$onTouch$0() {
    }

    public SeekBarView(Context context) {
        this(context, null);
    }

    public SeekBarView(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, false, resourcesProvider);
    }

    public SeekBarView(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.animatedThumbX = new AnimatedFloat(this, 0L, 80L, CubicBezierInterpolator.EASE_OUT);
        this.progressToSet = -100.0f;
        this.pressedState = new int[]{16842910, 16842919};
        this.transitionProgress = 1.0f;
        this.lineWidthDp = 3;
        this.timestampsAppearing = BitmapDescriptorFactory.HUE_RED;
        this.currentTimestamp = -1;
        this.timestampChangeT = 1.0f;
        this.lastWidth = -1.0f;
        this.rect = new RectF();
        this.resourcesProvider = resourcesProvider;
        setWillNotDraw(false);
        this.innerPaint1 = new Paint(1);
        Paint paint = new Paint(1);
        this.outerPaint1 = paint;
        int i = Theme.key_player_progress;
        paint.setColor(getThemedColor(i));
        this.selectorWidth = AndroidUtilities.m102dp(32);
        this.thumbSize = AndroidUtilities.m102dp(24);
        this.currentRadius = AndroidUtilities.m102dp(6);
        if (Build.VERSION.SDK_INT >= 21) {
            Drawable createSelectorDrawable = Theme.createSelectorDrawable(ColorUtils.setAlphaComponent(getThemedColor(i), 40), 1, AndroidUtilities.m102dp(16));
            this.hoverDrawable = createSelectorDrawable;
            createSelectorDrawable.setCallback(this);
            this.hoverDrawable.setVisible(true, false);
        }
        setImportantForAccessibility(1);
        FloatSeekBarAccessibilityDelegate floatSeekBarAccessibilityDelegate = new FloatSeekBarAccessibilityDelegate(z) { // from class: org.telegram.ui.Components.SeekBarView.1
            {
                SeekBarView.this = this;
            }

            @Override // org.telegram.p042ui.Components.FloatSeekBarAccessibilityDelegate
            public float getProgress() {
                return SeekBarView.this.getProgress();
            }

            @Override // org.telegram.p042ui.Components.FloatSeekBarAccessibilityDelegate
            public void setProgress(float f) {
                SeekBarView.this.pressed = true;
                SeekBarView.this.setProgress(f);
                SeekBarView.this.setSeekBarDrag(true, f);
                SeekBarView.this.pressed = false;
            }

            @Override // org.telegram.p042ui.Components.FloatSeekBarAccessibilityDelegate
            public float getDelta() {
                int stepsCount = SeekBarView.this.delegate.getStepsCount();
                return stepsCount > 0 ? 1.0f / stepsCount : super.getDelta();
            }

            @Override // org.telegram.p042ui.Components.SeekBarAccessibilityDelegate
            public CharSequence getContentDescription(View view) {
                SeekBarViewDelegate seekBarViewDelegate = SeekBarView.this.delegate;
                if (seekBarViewDelegate != null) {
                    return seekBarViewDelegate.getContentDescription();
                }
                return null;
            }
        };
        this.seekBarAccessibilityDelegate = floatSeekBarAccessibilityDelegate;
        setAccessibilityDelegate(floatSeekBarAccessibilityDelegate);
    }

    public void setSeparatorsCount(int i) {
        this.separatorsCount = i;
    }

    public void setTwoSided(boolean z) {
        this.twoSided = z;
    }

    public boolean isTwoSided() {
        return this.twoSided;
    }

    public void setInnerColor(int i) {
        this.innerPaint1.setColor(i);
    }

    public void setOuterColor(int i) {
        this.outerPaint1.setColor(i);
        Drawable drawable = this.hoverDrawable;
        if (drawable != null) {
            Theme.setSelectorDrawableColor(drawable, ColorUtils.setAlphaComponent(i, 40), true);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return onTouch(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return onTouch(motionEvent);
    }

    public void setReportChanges(boolean z) {
        this.reportChanges = z;
    }

    public void setDelegate(SeekBarViewDelegate seekBarViewDelegate) {
        this.delegate = seekBarViewDelegate;
    }

    public boolean onTouch(MotionEvent motionEvent) {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        if (motionEvent.getAction() == 0) {
            this.f1937sx = motionEvent.getX();
            this.f1938sy = motionEvent.getY();
            return true;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.captured = false;
            if (motionEvent.getAction() == 1) {
                if (Math.abs(motionEvent.getY() - this.f1938sy) < ViewConfiguration.get(getContext()).getScaledTouchSlop()) {
                    int measuredHeight = (getMeasuredHeight() - this.thumbSize) / 2;
                    if (this.thumbX - measuredHeight > motionEvent.getX() || motionEvent.getX() > this.thumbX + this.thumbSize + measuredHeight) {
                        int x = ((int) motionEvent.getX()) - (this.thumbSize / 2);
                        this.thumbX = x;
                        if (x < 0) {
                            this.thumbX = 0;
                        } else if (x > getMeasuredWidth() - this.selectorWidth) {
                            this.thumbX = getMeasuredWidth() - this.selectorWidth;
                        }
                    }
                    this.thumbDX = (int) (motionEvent.getX() - this.thumbX);
                    this.pressed = true;
                }
            }
            if (this.pressed) {
                if (motionEvent.getAction() == 1) {
                    if (this.twoSided) {
                        float measuredWidth = (getMeasuredWidth() - this.selectorWidth) / 2;
                        int i = this.thumbX;
                        if (i >= measuredWidth) {
                            setSeekBarDrag(false, (i - measuredWidth) / measuredWidth);
                        } else {
                            setSeekBarDrag(false, -Math.max(0.01f, 1.0f - ((measuredWidth - i) / measuredWidth)));
                        }
                    } else {
                        setSeekBarDrag(true, this.thumbX / (getMeasuredWidth() - this.selectorWidth));
                    }
                }
                if (Build.VERSION.SDK_INT >= 21 && (drawable = this.hoverDrawable) != null) {
                    drawable.setState(StateSet.NOTHING);
                }
                this.delegate.onSeekBarPressed(false);
                this.pressed = false;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SeekBarView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SeekBarView.this.lambda$onTouch$0();
                    }
                }, 50L);
                invalidate();
                return true;
            }
        } else if (motionEvent.getAction() == 2) {
            if (!this.captured) {
                ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
                if (Math.abs(motionEvent.getY() - this.f1938sy) <= viewConfiguration.getScaledTouchSlop() && Math.abs(motionEvent.getX() - this.f1937sx) > viewConfiguration.getScaledTouchSlop()) {
                    this.captured = true;
                    getParent().requestDisallowInterceptTouchEvent(true);
                    int measuredHeight2 = (getMeasuredHeight() - this.thumbSize) / 2;
                    if (motionEvent.getY() >= BitmapDescriptorFactory.HUE_RED && motionEvent.getY() <= getMeasuredHeight()) {
                        if (this.thumbX - measuredHeight2 > motionEvent.getX() || motionEvent.getX() > this.thumbX + this.thumbSize + measuredHeight2) {
                            int x2 = ((int) motionEvent.getX()) - (this.thumbSize / 2);
                            this.thumbX = x2;
                            if (x2 < 0) {
                                this.thumbX = 0;
                            } else if (x2 > getMeasuredWidth() - this.selectorWidth) {
                                this.thumbX = getMeasuredWidth() - this.selectorWidth;
                            }
                        }
                        this.thumbDX = (int) (motionEvent.getX() - this.thumbX);
                        this.pressed = true;
                        this.delegate.onSeekBarPressed(true);
                        if (Build.VERSION.SDK_INT >= 21 && (drawable3 = this.hoverDrawable) != null) {
                            drawable3.setState(this.pressedState);
                            this.hoverDrawable.setHotspot(motionEvent.getX(), motionEvent.getY());
                        }
                        invalidate();
                        return true;
                    }
                }
            } else if (this.pressed) {
                int x3 = (int) (motionEvent.getX() - this.thumbDX);
                this.thumbX = x3;
                if (x3 < 0) {
                    this.thumbX = 0;
                } else if (x3 > getMeasuredWidth() - this.selectorWidth) {
                    this.thumbX = getMeasuredWidth() - this.selectorWidth;
                }
                if (this.reportChanges) {
                    if (this.twoSided) {
                        float measuredWidth2 = (getMeasuredWidth() - this.selectorWidth) / 2;
                        int i2 = this.thumbX;
                        if (i2 >= measuredWidth2) {
                            setSeekBarDrag(false, (i2 - measuredWidth2) / measuredWidth2);
                        } else {
                            setSeekBarDrag(false, -Math.max(0.01f, 1.0f - ((measuredWidth2 - i2) / measuredWidth2)));
                        }
                    } else {
                        setSeekBarDrag(false, this.thumbX / (getMeasuredWidth() - this.selectorWidth));
                    }
                }
                if (Build.VERSION.SDK_INT >= 21 && (drawable2 = this.hoverDrawable) != null) {
                    drawable2.setHotspot(motionEvent.getX(), motionEvent.getY());
                }
                invalidate();
                return true;
            }
        }
        return false;
    }

    public void setLineWidth(int i) {
        this.lineWidthDp = i;
    }

    public void setSeekBarDrag(boolean z, float f) {
        SeekBarViewDelegate seekBarViewDelegate = this.delegate;
        if (seekBarViewDelegate != null) {
            seekBarViewDelegate.onSeekBarDrag(z, f);
        }
        int i = this.separatorsCount;
        if (i > 1) {
            int round = Math.round((i - 1) * f);
            if (!z && round != this.lastValue) {
                try {
                    performHapticFeedback(9, 1);
                } catch (Exception unused) {
                }
            }
            this.lastValue = round;
        }
    }

    public float getProgress() {
        if (getMeasuredWidth() == 0) {
            return this.progressToSet;
        }
        return this.thumbX / (getMeasuredWidth() - this.selectorWidth);
    }

    public void setProgress(float f) {
        setProgress(f, false);
    }

    public void setProgress(float f, boolean z) {
        double ceil;
        if (getMeasuredWidth() == 0) {
            this.progressToSet = f;
            return;
        }
        this.progressToSet = -100.0f;
        if (this.twoSided) {
            float measuredWidth = (getMeasuredWidth() - this.selectorWidth) / 2;
            if (f < BitmapDescriptorFactory.HUE_RED) {
                ceil = Math.ceil(measuredWidth + ((-(f + 1.0f)) * measuredWidth));
            } else {
                ceil = Math.ceil(measuredWidth + (f * measuredWidth));
            }
        } else {
            ceil = Math.ceil((getMeasuredWidth() - this.selectorWidth) * f);
        }
        int i = (int) ceil;
        int i2 = this.thumbX;
        if (i2 != i) {
            if (z) {
                this.transitionThumbX = i2;
                this.transitionProgress = BitmapDescriptorFactory.HUE_RED;
            }
            this.thumbX = i;
            if (i < 0) {
                this.thumbX = 0;
            } else if (i > getMeasuredWidth() - this.selectorWidth) {
                this.thumbX = getMeasuredWidth() - this.selectorWidth;
            }
            invalidate();
        }
    }

    public void setBufferedProgress(float f) {
        this.bufferedProgress = f;
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.progressToSet == -100.0f || getMeasuredWidth() <= 0) {
            return;
        }
        setProgress(this.progressToSet);
        this.progressToSet = -100.0f;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.hoverDrawable;
    }

    public boolean isDragging() {
        return this.pressed;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:111:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r16) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Components.SeekBarView.onDraw(android.graphics.Canvas):void");
    }

    public void clearTimestamps() {
        this.timestamps = null;
        this.currentTimestamp = -1;
        this.timestampsAppearing = BitmapDescriptorFactory.HUE_RED;
        StaticLayout[] staticLayoutArr = this.timestampLabel;
        if (staticLayoutArr != null) {
            staticLayoutArr[1] = null;
            staticLayoutArr[0] = null;
        }
        this.lastCaption = null;
        this.lastDuration = -1L;
    }

    public void updateTimestamps(MessageObject messageObject, Long l) {
        Integer parseInt;
        String str;
        if (messageObject == null) {
            clearTimestamps();
            return;
        }
        if (l == null) {
            l = Long.valueOf(((long) messageObject.getDuration()) * 1000);
        }
        if (l == null || l.longValue() < 0) {
            clearTimestamps();
            return;
        }
        CharSequence charSequence = messageObject.caption;
        if (messageObject.isYouTubeVideo()) {
            if (messageObject.youtubeDescription == null && (str = messageObject.messageOwner.media.webpage.description) != null) {
                messageObject.youtubeDescription = SpannableString.valueOf(str);
                MessageObject.addUrlsByPattern(messageObject.isOut(), messageObject.youtubeDescription, false, 3, (int) l.longValue(), false);
            }
            charSequence = messageObject.youtubeDescription;
        }
        if (charSequence == this.lastCaption && this.lastDuration == l.longValue()) {
            return;
        }
        this.lastCaption = charSequence;
        this.lastDuration = l.longValue();
        if (!(charSequence instanceof Spanned)) {
            this.timestamps = null;
            this.currentTimestamp = -1;
            this.timestampsAppearing = BitmapDescriptorFactory.HUE_RED;
            StaticLayout[] staticLayoutArr = this.timestampLabel;
            if (staticLayoutArr != null) {
                staticLayoutArr[1] = null;
                staticLayoutArr[0] = null;
                return;
            }
            return;
        }
        Spanned spanned = (Spanned) charSequence;
        try {
            URLSpanNoUnderline[] uRLSpanNoUnderlineArr = (URLSpanNoUnderline[]) spanned.getSpans(0, spanned.length(), URLSpanNoUnderline.class);
            this.timestamps = new ArrayList<>();
            this.timestampsAppearing = BitmapDescriptorFactory.HUE_RED;
            if (this.timestampLabelPaint == null) {
                TextPaint textPaint = new TextPaint(1);
                this.timestampLabelPaint = textPaint;
                textPaint.setTextSize(AndroidUtilities.m102dp(12));
                this.timestampLabelPaint.setColor(-1);
            }
            for (URLSpanNoUnderline uRLSpanNoUnderline : uRLSpanNoUnderlineArr) {
                if (uRLSpanNoUnderline != null && uRLSpanNoUnderline.getURL() != null && uRLSpanNoUnderline.label != null && uRLSpanNoUnderline.getURL().startsWith("audio?") && (parseInt = Utilities.parseInt((CharSequence) uRLSpanNoUnderline.getURL().substring(6))) != null && parseInt.intValue() >= 0) {
                    float intValue = ((float) (parseInt.intValue() * 1000)) / ((float) l.longValue());
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(uRLSpanNoUnderline.label);
                    Emoji.replaceEmoji(spannableStringBuilder, this.timestampLabelPaint.getFontMetricsInt(), AndroidUtilities.m102dp(14), false);
                    this.timestamps.add(new Pair<>(Float.valueOf(intValue), spannableStringBuilder));
                }
            }
            Collections.sort(this.timestamps, new Comparator() { // from class: org.telegram.ui.Components.SeekBarView$$ExternalSyntheticLambda1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$updateTimestamps$1;
                    lambda$updateTimestamps$1 = SeekBarView.lambda$updateTimestamps$1((Pair) obj, (Pair) obj2);
                    return lambda$updateTimestamps$1;
                }
            });
        } catch (Exception e) {
            FileLog.m97e(e);
            this.timestamps = null;
            this.currentTimestamp = -1;
            this.timestampsAppearing = BitmapDescriptorFactory.HUE_RED;
            StaticLayout[] staticLayoutArr2 = this.timestampLabel;
            if (staticLayoutArr2 != null) {
                staticLayoutArr2[1] = null;
                staticLayoutArr2[0] = null;
            }
        }
    }

    public static /* synthetic */ int lambda$updateTimestamps$1(Pair pair, Pair pair2) {
        if (((Float) pair.first).floatValue() > ((Float) pair2.first).floatValue()) {
            return 1;
        }
        return ((Float) pair2.first).floatValue() > ((Float) pair.first).floatValue() ? -1 : 0;
    }

    private void drawProgressBar(Canvas canvas, RectF rectF, Paint paint) {
        int i;
        float f;
        char c;
        float m102dp = AndroidUtilities.m102dp(2);
        ArrayList<Pair<Float, CharSequence>> arrayList = this.timestamps;
        if (arrayList == null || arrayList.isEmpty()) {
            canvas.drawRoundRect(rectF, m102dp, m102dp, paint);
            return;
        }
        float f2 = rectF.bottom;
        float f3 = this.selectorWidth / 2.0f;
        float measuredWidth = getMeasuredWidth() - (this.selectorWidth / 2.0f);
        AndroidUtilities.rectTmp.set(rectF);
        float m103dp = AndroidUtilities.m103dp(this.timestampsAppearing * 1.0f) / 2.0f;
        if (tmpPath == null) {
            tmpPath = new Path();
        }
        tmpPath.reset();
        float m102dp2 = AndroidUtilities.m102dp(4) / (measuredWidth - f3);
        int i2 = 0;
        while (true) {
            if (i2 >= this.timestamps.size()) {
                i2 = -1;
                break;
            } else if (((Float) this.timestamps.get(i2).first).floatValue() >= m102dp2) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int size = this.timestamps.size() - 1;
        while (true) {
            if (size < 0) {
                i = -1;
                break;
            } else if (1.0f - ((Float) this.timestamps.get(size).first).floatValue() >= m102dp2) {
                i = size + 1;
                break;
            } else {
                size--;
            }
        }
        if (i < 0) {
            i = this.timestamps.size();
        }
        int i3 = i2;
        while (i3 <= i) {
            float f4 = BitmapDescriptorFactory.HUE_RED;
            float floatValue = i3 == i2 ? 0.0f : ((Float) this.timestamps.get(i3 - 1).first).floatValue();
            float floatValue2 = i3 == i ? 1.0f : ((Float) this.timestamps.get(i3).first).floatValue();
            while (i3 != i && i3 != 0 && i3 < this.timestamps.size() - 1 && ((Float) this.timestamps.get(i3).first).floatValue() - floatValue <= m102dp2) {
                i3++;
                floatValue2 = ((Float) this.timestamps.get(i3).first).floatValue();
            }
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.left = AndroidUtilities.lerp(f3, measuredWidth, floatValue) + (i3 > 0 ? m103dp : 0.0f);
            float lerp = AndroidUtilities.lerp(f3, measuredWidth, floatValue2);
            if (i3 < i) {
                f4 = m103dp;
            }
            float f5 = lerp - f4;
            rectF2.right = f5;
            float f6 = rectF.right;
            boolean z = f5 > f6;
            if (z) {
                rectF2.right = f6;
            }
            float f7 = rectF2.right;
            float f8 = rectF.left;
            if (f7 < f8) {
                f = f3;
                c = 2;
            } else {
                if (rectF2.left < f8) {
                    rectF2.left = f8;
                }
                if (tmpRadii == null) {
                    tmpRadii = new float[8];
                }
                if (i3 == i2 || (z && rectF2.left >= rectF.left)) {
                    f = f3;
                    float[] fArr = tmpRadii;
                    fArr[7] = m102dp;
                    fArr[6] = m102dp;
                    fArr[1] = m102dp;
                    fArr[0] = m102dp;
                    float f9 = 0.7f * m102dp * this.timestampsAppearing;
                    fArr[5] = f9;
                    fArr[4] = f9;
                    fArr[3] = f9;
                    c = 2;
                    fArr[2] = f9;
                } else if (i3 >= i) {
                    float[] fArr2 = tmpRadii;
                    f = f3;
                    float f10 = 0.7f * m102dp * this.timestampsAppearing;
                    fArr2[7] = f10;
                    fArr2[6] = f10;
                    fArr2[1] = f10;
                    fArr2[0] = f10;
                    fArr2[5] = m102dp;
                    fArr2[4] = m102dp;
                    fArr2[3] = m102dp;
                    c = 2;
                    fArr2[2] = m102dp;
                } else {
                    f = f3;
                    float[] fArr3 = tmpRadii;
                    float f11 = this.timestampsAppearing * 0.7f * m102dp;
                    fArr3[5] = f11;
                    fArr3[4] = f11;
                    fArr3[3] = f11;
                    fArr3[2] = f11;
                    fArr3[7] = f11;
                    fArr3[6] = f11;
                    fArr3[1] = f11;
                    fArr3[0] = f11;
                    c = 2;
                }
                tmpPath.addRoundRect(rectF2, tmpRadii, Path.Direction.CW);
                if (z) {
                    break;
                }
            }
            i3++;
            f3 = f;
        }
        canvas.drawPath(tmpPath, paint);
    }

    private void drawTimestampLabel(Canvas canvas) {
        ArrayList<Pair<Float, CharSequence>> arrayList = this.timestamps;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        float progress = getProgress();
        int size = this.timestamps.size() - 1;
        while (true) {
            if (size < 0) {
                size = -1;
                break;
            } else if (((Float) this.timestamps.get(size).first).floatValue() - 0.001f <= progress) {
                break;
            } else {
                size--;
            }
        }
        if (this.timestampLabel == null) {
            this.timestampLabel = new StaticLayout[2];
        }
        float f = this.selectorWidth / 2.0f;
        float abs = Math.abs(f - ((getMeasuredWidth() - (this.selectorWidth / 2.0f)) - (this.lastDuration > 600000 ? AndroidUtilities.m102dp(36) : 0))) - AndroidUtilities.m102dp(66);
        float f2 = this.lastWidth;
        if (f2 > BitmapDescriptorFactory.HUE_RED && Math.abs(f2 - abs) > 0.01f) {
            StaticLayout[] staticLayoutArr = this.timestampLabel;
            if (staticLayoutArr[0] != null) {
                staticLayoutArr[0] = makeStaticLayout(staticLayoutArr[0].getText(), (int) abs);
            }
            StaticLayout[] staticLayoutArr2 = this.timestampLabel;
            if (staticLayoutArr2[1] != null) {
                staticLayoutArr2[1] = makeStaticLayout(staticLayoutArr2[1].getText(), (int) abs);
            }
        }
        this.lastWidth = abs;
        if (size != this.currentTimestamp) {
            StaticLayout[] staticLayoutArr3 = this.timestampLabel;
            staticLayoutArr3[1] = staticLayoutArr3[0];
            if (this.pressed) {
                try {
                    performHapticFeedback(9, 1);
                } catch (Exception unused) {
                }
            }
            if (size >= 0 && size < this.timestamps.size()) {
                CharSequence charSequence = (CharSequence) this.timestamps.get(size).second;
                if (charSequence == null) {
                    this.timestampLabel[0] = null;
                } else {
                    this.timestampLabel[0] = makeStaticLayout(charSequence, (int) abs);
                }
            } else {
                this.timestampLabel[0] = null;
            }
            this.timestampChangeT = BitmapDescriptorFactory.HUE_RED;
            if (size == -1) {
                this.timestampChangeDirection = -1;
            } else {
                int i = this.currentTimestamp;
                if (i == -1) {
                    this.timestampChangeDirection = 1;
                } else if (size < i) {
                    this.timestampChangeDirection = -1;
                } else if (size > i) {
                    this.timestampChangeDirection = 1;
                }
            }
            this.currentTimestamp = size;
        }
        if (this.timestampChangeT < 1.0f) {
            this.timestampChangeT = Math.min(this.timestampChangeT + (((float) Math.min(17L, Math.abs(SystemClock.elapsedRealtime() - this.lastTimestampUpdate))) / (this.timestamps.size() > 8 ? 160.0f : 220.0f)), 1.0f);
            invalidate();
            this.lastTimestampUpdate = SystemClock.elapsedRealtime();
        }
        if (this.timestampsAppearing < 1.0f) {
            this.timestampsAppearing = Math.min(this.timestampsAppearing + (((float) Math.min(17L, Math.abs(SystemClock.elapsedRealtime() - this.lastTimestampUpdate))) / 200.0f), 1.0f);
            invalidate();
            SystemClock.elapsedRealtime();
        }
        float interpolation = CubicBezierInterpolator.DEFAULT.getInterpolation(this.timestampChangeT);
        canvas.save();
        canvas.translate(f + AndroidUtilities.m102dp(25), (getMeasuredHeight() / 2.0f) + AndroidUtilities.m102dp(14));
        this.timestampLabelPaint.setColor(getThemedColor(Theme.key_player_time));
        if (this.timestampLabel[1] != null) {
            canvas.save();
            if (this.timestampChangeDirection != 0) {
                canvas.translate(AndroidUtilities.m102dp(8) + (AndroidUtilities.m102dp(16) * (-this.timestampChangeDirection) * interpolation), BitmapDescriptorFactory.HUE_RED);
            }
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (-this.timestampLabel[1].getHeight()) / 2.0f);
            this.timestampLabelPaint.setAlpha((int) ((1.0f - interpolation) * 255.0f * this.timestampsAppearing));
            this.timestampLabel[1].draw(canvas);
            canvas.restore();
        }
        if (this.timestampLabel[0] != null) {
            canvas.save();
            if (this.timestampChangeDirection != 0) {
                canvas.translate(AndroidUtilities.m102dp(8) + (AndroidUtilities.m102dp(16) * this.timestampChangeDirection * (1.0f - interpolation)), BitmapDescriptorFactory.HUE_RED);
            }
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (-this.timestampLabel[0].getHeight()) / 2.0f);
            this.timestampLabelPaint.setAlpha((int) (interpolation * 255.0f * this.timestampsAppearing));
            this.timestampLabel[0].draw(canvas);
            canvas.restore();
        }
        canvas.restore();
    }

    private StaticLayout makeStaticLayout(CharSequence charSequence, int i) {
        if (this.timestampLabelPaint == null) {
            TextPaint textPaint = new TextPaint(1);
            this.timestampLabelPaint = textPaint;
            textPaint.setTextSize(AndroidUtilities.m102dp(12));
        }
        this.timestampLabelPaint.setColor(getThemedColor(Theme.key_player_time));
        String str = charSequence == null ? "" : charSequence;
        if (Build.VERSION.SDK_INT >= 23) {
            return StaticLayout.Builder.obtain(str, 0, str.length(), this.timestampLabelPaint, i).setMaxLines(1).setAlignment(Layout.Alignment.ALIGN_CENTER).setEllipsize(TextUtils.TruncateAt.END).setEllipsizedWidth(Math.min(AndroidUtilities.m102dp(400), i)).build();
        }
        return new StaticLayout(str, 0, str.length(), this.timestampLabelPaint, i, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.END, Math.min(AndroidUtilities.m102dp(400), i));
    }

    public SeekBarAccessibilityDelegate getSeekBarAccessibilityDelegate() {
        return this.seekBarAccessibilityDelegate;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
