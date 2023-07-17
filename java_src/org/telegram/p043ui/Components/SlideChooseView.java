package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.os.Bundle;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.SlideChooseView */
/* loaded from: classes6.dex */
public class SlideChooseView extends View {
    private final SeekBarAccessibilityDelegate accessibilityDelegate;
    private Callback callback;
    private int circleSize;
    private int dashedFrom;
    private int gapSize;
    private int lastDash;
    private Paint linePaint;
    private int lineSize;
    private boolean moving;
    private AnimatedFloat movingAnimatedHolder;
    private int[] optionsSizes;
    private String[] optionsStr;
    private Paint paint;
    private final Theme.ResourcesProvider resourcesProvider;
    private int selectedIndex;
    private AnimatedFloat selectedIndexAnimatedHolder;
    private float selectedIndexTouch;
    private int sideSide;
    private boolean startMoving;
    private int startMovingPreset;
    private TextPaint textPaint;
    private float xTouchDown;
    private float yTouchDown;

    /* renamed from: org.telegram.ui.Components.SlideChooseView$Callback */
    /* loaded from: classes6.dex */
    public interface Callback {

        /* renamed from: org.telegram.ui.Components.SlideChooseView$Callback$-CC  reason: invalid class name */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static void $default$onTouchEnd(Callback callback) {
            }
        }

        void onOptionSelected(int i);

        void onTouchEnd();
    }

    public SlideChooseView(Context context) {
        this(context, null);
    }

    public SlideChooseView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.dashedFrom = -1;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        this.selectedIndexAnimatedHolder = new AnimatedFloat(this, 120L, cubicBezierInterpolator);
        this.movingAnimatedHolder = new AnimatedFloat(this, 150L, cubicBezierInterpolator);
        this.resourcesProvider = resourcesProvider;
        this.paint = new Paint(1);
        this.textPaint = new TextPaint(1);
        Paint paint = new Paint(1);
        this.linePaint = paint;
        paint.setStrokeWidth(AndroidUtilities.m54dp(2));
        this.linePaint.setStrokeCap(Paint.Cap.ROUND);
        this.textPaint.setTextSize(AndroidUtilities.m54dp(13));
        this.accessibilityDelegate = new IntSeekBarAccessibilityDelegate() { // from class: org.telegram.ui.Components.SlideChooseView.1
            @Override // org.telegram.p043ui.Components.IntSeekBarAccessibilityDelegate
            protected int getProgress() {
                return SlideChooseView.this.selectedIndex;
            }

            @Override // org.telegram.p043ui.Components.IntSeekBarAccessibilityDelegate
            protected void setProgress(int i) {
                SlideChooseView.this.setOption(i);
            }

            @Override // org.telegram.p043ui.Components.IntSeekBarAccessibilityDelegate
            protected int getMaxValue() {
                return SlideChooseView.this.optionsStr.length - 1;
            }

            @Override // org.telegram.p043ui.Components.SeekBarAccessibilityDelegate
            protected CharSequence getContentDescription(View view) {
                if (SlideChooseView.this.selectedIndex < SlideChooseView.this.optionsStr.length) {
                    return SlideChooseView.this.optionsStr[SlideChooseView.this.selectedIndex];
                }
                return null;
            }
        };
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    public void setOptions(int i, String... strArr) {
        this.optionsStr = strArr;
        this.selectedIndex = i;
        this.optionsSizes = new int[strArr.length];
        int i2 = 0;
        while (true) {
            String[] strArr2 = this.optionsStr;
            if (i2 < strArr2.length) {
                this.optionsSizes[i2] = (int) Math.ceil(this.textPaint.measureText(strArr2[i2]));
                i2++;
            } else {
                requestLayout();
                return;
            }
        }
    }

    public void setDashedFrom(int i) {
        this.dashedFrom = i;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        float clamp = MathUtils.clamp(((x - this.sideSide) + (this.circleSize / 2.0f)) / ((this.lineSize + (this.gapSize * 2)) + i), (float) BitmapDescriptorFactory.HUE_RED, this.optionsStr.length - 1);
        boolean z = Math.abs(clamp - ((float) Math.round(clamp))) < 0.35f;
        if (z) {
            clamp = Math.round(clamp);
        }
        if (motionEvent.getAction() == 0) {
            this.xTouchDown = x;
            this.yTouchDown = y;
            this.selectedIndexTouch = clamp;
            this.startMovingPreset = this.selectedIndex;
            this.startMoving = true;
            invalidate();
        } else if (motionEvent.getAction() == 2) {
            if (!this.moving && Math.abs(this.xTouchDown - x) > Math.abs(this.yTouchDown - y)) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (this.startMoving && Math.abs(this.xTouchDown - x) >= AndroidUtilities.touchSlop) {
                this.moving = true;
                this.startMoving = false;
            }
            if (this.moving) {
                this.selectedIndexTouch = clamp;
                invalidate();
                if (Math.round(this.selectedIndexTouch) != this.selectedIndex && z) {
                    setOption(Math.round(this.selectedIndexTouch));
                }
            }
            invalidate();
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (!this.moving) {
                this.selectedIndexTouch = clamp;
                if (motionEvent.getAction() == 1 && Math.round(this.selectedIndexTouch) != this.selectedIndex) {
                    setOption(Math.round(this.selectedIndexTouch));
                }
            } else {
                int i2 = this.selectedIndex;
                if (i2 != this.startMovingPreset) {
                    setOption(i2);
                }
            }
            Callback callback = this.callback;
            if (callback != null) {
                callback.onTouchEnd();
            }
            this.startMoving = false;
            this.moving = false;
            invalidate();
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOption(int i) {
        if (this.selectedIndex != i) {
            try {
                performHapticFeedback(9, 1);
            } catch (Exception unused) {
            }
        }
        this.selectedIndex = i;
        Callback callback = this.callback;
        if (callback != null) {
            callback.onOptionSelected(i);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(74), 1073741824));
        this.circleSize = AndroidUtilities.m54dp(6);
        this.gapSize = AndroidUtilities.m54dp(2);
        this.sideSide = AndroidUtilities.m54dp(22);
        int measuredWidth = getMeasuredWidth();
        int i3 = this.circleSize;
        String[] strArr = this.optionsStr;
        this.lineSize = (((measuredWidth - (i3 * strArr.length)) - ((this.gapSize * 2) * (strArr.length - 1))) - (this.sideSide * 2)) / (strArr.length - 1);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        int i;
        float f2;
        float f3;
        int m54dp;
        int m54dp2;
        float f4;
        int i2;
        int i3;
        float f5 = this.selectedIndexAnimatedHolder.set(this.selectedIndex);
        AnimatedFloat animatedFloat = this.movingAnimatedHolder;
        boolean z = this.moving;
        float f6 = BitmapDescriptorFactory.HUE_RED;
        float f7 = 1.0f;
        float f8 = animatedFloat.set(z ? 1.0f : 0.0f);
        int measuredHeight = (getMeasuredHeight() / 2) + AndroidUtilities.m54dp(11);
        int i4 = 0;
        while (i4 < this.optionsStr.length) {
            int i5 = this.sideSide;
            int i6 = this.lineSize + (this.gapSize * 2);
            int i7 = this.circleSize;
            int i8 = i5 + ((i6 + i7) * i4) + (i7 / 2);
            float f9 = i4;
            float f10 = f9 - f5;
            float max = Math.max(f6, f7 - Math.abs(f10));
            int blendARGB = ColorUtils.blendARGB(getThemedColor(Theme.key_switchTrack), getThemedColor(Theme.key_switchTrackChecked), MathUtils.clamp((f5 - f9) + f7, f6, f7));
            this.paint.setColor(blendARGB);
            this.linePaint.setColor(blendARGB);
            float f11 = measuredHeight;
            canvas.drawCircle(i8, f11, AndroidUtilities.lerp(this.circleSize / 2, AndroidUtilities.m54dp(6), max), this.paint);
            if (i4 != 0) {
                int i9 = (i8 - (this.circleSize / 2)) - this.gapSize;
                int i10 = this.lineSize;
                int i11 = i9 - i10;
                int i12 = this.dashedFrom;
                if (i12 != -1 && i4 - 1 >= i12) {
                    int m54dp3 = i11 + AndroidUtilities.m54dp(3);
                    int m54dp4 = (i10 - AndroidUtilities.m54dp(3)) / AndroidUtilities.m54dp(13);
                    if (this.lastDash != m54dp4) {
                        f4 = max;
                        i2 = i8;
                        i3 = 1;
                        this.linePaint.setPathEffect(new DashPathEffect(new float[]{AndroidUtilities.m54dp(6), (m54dp2 - (AndroidUtilities.m54dp(8) * m54dp4)) / (m54dp4 - 1)}, BitmapDescriptorFactory.HUE_RED));
                        this.lastDash = m54dp4;
                    } else {
                        f4 = max;
                        i2 = i8;
                        i3 = 1;
                    }
                    f = f4;
                    i = i2;
                    canvas.drawLine(AndroidUtilities.m54dp(i3) + m54dp3, f11, (m54dp3 + m54dp2) - AndroidUtilities.m54dp(i3), f11, this.linePaint);
                    f2 = 1.0f;
                    f3 = BitmapDescriptorFactory.HUE_RED;
                } else {
                    f = max;
                    i = i8;
                    f2 = 1.0f;
                    float f12 = f10 - 1.0f;
                    float clamp = MathUtils.clamp(1.0f - Math.abs(f12), (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                    int m54dp5 = (int) (i10 - (AndroidUtilities.m54dp(3) * MathUtils.clamp(1.0f - Math.min(Math.abs(f10), Math.abs(f12)), (float) BitmapDescriptorFactory.HUE_RED, 1.0f)));
                    f3 = 0.0f;
                    canvas.drawRect((int) (i11 + (AndroidUtilities.m54dp(3) * clamp)), measuredHeight - AndroidUtilities.m54dp(1), m54dp + m54dp5, AndroidUtilities.m54dp(1) + measuredHeight, this.paint);
                }
            } else {
                f = max;
                i = i8;
                f2 = 1.0f;
                f3 = BitmapDescriptorFactory.HUE_RED;
            }
            int i13 = this.optionsSizes[i4];
            String str = this.optionsStr[i4];
            this.textPaint.setColor(ColorUtils.blendARGB(getThemedColor(Theme.key_windowBackgroundWhiteGrayText), getThemedColor(Theme.key_windowBackgroundWhiteBlueText), f));
            if (i4 == 0) {
                canvas.drawText(str, AndroidUtilities.m54dp(22), AndroidUtilities.m54dp(28), this.textPaint);
            } else if (i4 == this.optionsStr.length - 1) {
                canvas.drawText(str, (getMeasuredWidth() - i13) - AndroidUtilities.m54dp(22), AndroidUtilities.m54dp(28), this.textPaint);
            } else {
                canvas.drawText(str, i - (i13 / 2), AndroidUtilities.m54dp(28), this.textPaint);
            }
            i4++;
            f7 = f2;
            f6 = f3;
        }
        int i14 = this.lineSize + (this.gapSize * 2);
        int i15 = this.circleSize;
        float f13 = this.sideSide + ((i14 + i15) * f5) + (i15 / 2);
        Paint paint = this.paint;
        int i16 = Theme.key_switchTrackChecked;
        paint.setColor(ColorUtils.setAlphaComponent(getThemedColor(i16), 80));
        float f14 = measuredHeight;
        canvas.drawCircle(f13, f14, AndroidUtilities.m55dp(f8 * 12.0f), this.paint);
        this.paint.setColor(getThemedColor(i16));
        canvas.drawCircle(f13, f14, AndroidUtilities.m54dp(6), this.paint);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.accessibilityDelegate.onInitializeAccessibilityNodeInfoInternal(this, accessibilityNodeInfo);
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return super.performAccessibilityAction(i, bundle) || this.accessibilityDelegate.performAccessibilityActionInternal(this, i, bundle);
    }

    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
