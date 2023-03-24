package org.telegram.p048ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.CounterView;
/* renamed from: org.telegram.ui.Components.CounterView */
/* loaded from: classes6.dex */
public class CounterView extends View {
    public CounterDrawable counterDrawable;
    private final Theme.ResourcesProvider resourcesProvider;

    public void setCountResentChats(boolean z, boolean z2, float f, float f2) {
        this.counterDrawable.setCountResentChats(z, z2, f, f2);
    }

    public CounterView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        setVisibility(8);
        CounterDrawable counterDrawable = new CounterDrawable(this, true, resourcesProvider);
        this.counterDrawable = counterDrawable;
        counterDrawable.updateVisibility = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.counterDrawable.setSize(getMeasuredHeight(), getMeasuredWidth());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.counterDrawable.draw(canvas);
    }

    public void setColors(String str, String str2) {
        this.counterDrawable.textColorKey = str;
        this.counterDrawable.circleColorKey = str2;
    }

    public void setGravity(int i) {
        this.counterDrawable.gravity = i;
    }

    public void setReverse(boolean z) {
        this.counterDrawable.reverseAnimation = z;
    }

    public void setCount(int i, boolean z) {
        this.counterDrawable.setCount(i, z);
    }

    /* renamed from: org.telegram.ui.Components.CounterView$CounterDrawable */
    /* loaded from: classes6.dex */
    public static class CounterDrawable {
        public boolean addServiceGradient;
        private int circleColor;
        public Paint circlePaint;
        private StaticLayout countAnimationInLayout;
        private boolean countAnimationIncrement;
        private StaticLayout countAnimationStableLayout;
        private ValueAnimator countAnimator;
        private StaticLayout countLayout;
        float countLeft;
        private StaticLayout countOldLayout;
        private int countWidth;
        private int countWidthOld;
        int currentCount;

        /* renamed from: cx */
        private float f1698cx;

        /* renamed from: cy */
        private float f1699cy;
        private boolean drawBackground;
        public float horizontalPadding;
        int lastH;
        private boolean mute;
        private View parent;
        private boolean recentChatsMode;
        private final Theme.ResourcesProvider resourcesProvider;
        private boolean reverseAnimation;
        public boolean shortFormat;
        private int textColor;
        public boolean updateVisibility;
        int width;

        /* renamed from: x */
        float f1700x;
        public float circleScale = 1.0f;
        int animationType = -1;
        public TextPaint textPaint = new TextPaint(1);
        public RectF rectF = new RectF();
        public float countChangeProgress = 1.0f;
        private String textColorKey = "chat_goDownButtonCounter";
        private String circleColorKey = "chat_goDownButtonCounterBackground";
        public int gravity = 17;
        public float radius = 11.5f;
        int type = 0;

        public void setCountResentChats(boolean z, boolean z2, float f, float f2) {
            this.recentChatsMode = z;
            this.mute = z2;
            this.f1698cx = f;
            this.f1699cy = f2;
        }

        public CounterDrawable(View view, boolean z, Theme.ResourcesProvider resourcesProvider) {
            this.drawBackground = true;
            this.parent = view;
            this.resourcesProvider = resourcesProvider;
            this.drawBackground = z;
            if (z) {
                Paint paint = new Paint(1);
                this.circlePaint = paint;
                paint.setColor(-16777216);
            }
            this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            if (this.recentChatsMode) {
                this.textPaint.setTextSize(AndroidUtilities.m50dp(8));
            } else {
                this.textPaint.setTextSize(AndroidUtilities.m50dp(13));
            }
        }

        public void setSize(int i, int i2) {
            if (i != this.lastH) {
                int i3 = this.currentCount;
                this.currentCount = -1;
                setCount(i3, this.animationType == 0);
                this.lastH = i;
            }
            this.width = i2;
        }

        private void drawInternal(Canvas canvas) {
            float f = this.radius * 2.0f;
            float m51dp = (this.lastH - AndroidUtilities.m51dp(f)) / 2.0f;
            updateX(this.countWidth);
            if (this.recentChatsMode) {
                RectF rectF = this.rectF;
                float f2 = this.f1698cx;
                rectF.set(f2, this.f1699cy, AndroidUtilities.m50dp(20) + f2, this.f1699cy + AndroidUtilities.m50dp(20));
            } else {
                RectF rectF2 = this.rectF;
                float f3 = this.f1700x;
                rectF2.set(f3, m51dp, this.countWidth + f3 + AndroidUtilities.m51dp(this.radius - 0.5f), AndroidUtilities.m51dp(f) + m51dp);
            }
            if (this.circlePaint != null && this.drawBackground) {
                boolean z = false;
                if (this.circleScale != 1.0f) {
                    canvas.save();
                    float f4 = this.circleScale;
                    canvas.scale(f4, f4, this.rectF.centerX(), this.rectF.centerY());
                    z = true;
                }
                RectF rectF3 = this.rectF;
                float f5 = this.radius;
                float f6 = AndroidUtilities.density;
                canvas.drawRoundRect(rectF3, f5 * f6, f5 * f6, this.circlePaint);
                if (this.addServiceGradient && Theme.hasGradientService()) {
                    RectF rectF4 = this.rectF;
                    float f7 = this.radius;
                    float f8 = AndroidUtilities.density;
                    canvas.drawRoundRect(rectF4, f7 * f8, f7 * f8, Theme.chat_actionBackgroundGradientDarkenPaint);
                }
                if (z) {
                    canvas.restore();
                }
            }
            if (this.countLayout != null) {
                canvas.save();
                if (this.recentChatsMode) {
                    canvas.translate(this.f1698cx + AndroidUtilities.m50dp(4), this.f1699cy + AndroidUtilities.m51dp(4.5f));
                } else {
                    canvas.translate(this.countLeft, m51dp + AndroidUtilities.m50dp(4));
                }
                this.countLayout.draw(canvas);
                canvas.restore();
            }
        }

        public void setCount(int i, boolean z) {
            View view;
            View view2;
            if (i == this.currentCount) {
                return;
            }
            ValueAnimator valueAnimator = this.countAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            if (i > 0 && this.updateVisibility && (view2 = this.parent) != null) {
                view2.setVisibility(0);
            }
            boolean z2 = Math.abs(i - this.currentCount) > 99 ? false : z;
            if (!z2) {
                this.currentCount = i;
                if (i == 0) {
                    if (!this.updateVisibility || (view = this.parent) == null) {
                        return;
                    }
                    view.setVisibility(8);
                    return;
                }
                String stringOfCCount = getStringOfCCount(i);
                this.countWidth = Math.max(AndroidUtilities.m50dp(12), (int) Math.ceil(this.textPaint.measureText(stringOfCCount)));
                this.countLayout = new StaticLayout(stringOfCCount, this.textPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                View view3 = this.parent;
                if (view3 != null) {
                    view3.invalidate();
                    return;
                }
                return;
            }
            String stringOfCCount2 = getStringOfCCount(i);
            if (z2) {
                ValueAnimator valueAnimator2 = this.countAnimator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                this.countChangeProgress = BitmapDescriptorFactory.HUE_RED;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.countAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.CounterView$CounterDrawable$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        CounterView.CounterDrawable.this.lambda$setCount$0(valueAnimator3);
                    }
                });
                this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.CounterView.CounterDrawable.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        CounterDrawable counterDrawable = CounterDrawable.this;
                        counterDrawable.countChangeProgress = 1.0f;
                        counterDrawable.countOldLayout = null;
                        CounterDrawable.this.countAnimationStableLayout = null;
                        CounterDrawable.this.countAnimationInLayout = null;
                        if (CounterDrawable.this.parent != null) {
                            CounterDrawable counterDrawable2 = CounterDrawable.this;
                            if (counterDrawable2.currentCount == 0 && counterDrawable2.updateVisibility) {
                                counterDrawable2.parent.setVisibility(8);
                            }
                            CounterDrawable.this.parent.invalidate();
                        }
                        CounterDrawable.this.animationType = -1;
                    }
                });
                if (this.currentCount <= 0) {
                    this.animationType = 0;
                    this.countAnimator.setDuration(220L);
                    this.countAnimator.setInterpolator(new OvershootInterpolator());
                } else if (i == 0) {
                    this.animationType = 1;
                    this.countAnimator.setDuration(150L);
                    this.countAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                } else {
                    this.animationType = 2;
                    this.countAnimator.setDuration(430L);
                    this.countAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                }
                if (this.countLayout != null) {
                    String stringOfCCount3 = getStringOfCCount(this.currentCount);
                    if (stringOfCCount3.length() == stringOfCCount2.length()) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(stringOfCCount3);
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(stringOfCCount2);
                        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(stringOfCCount2);
                        for (int i2 = 0; i2 < stringOfCCount3.length(); i2++) {
                            if (stringOfCCount3.charAt(i2) == stringOfCCount2.charAt(i2)) {
                                int i3 = i2 + 1;
                                spannableStringBuilder.setSpan(new EmptyStubSpan(), i2, i3, 0);
                                spannableStringBuilder2.setSpan(new EmptyStubSpan(), i2, i3, 0);
                            } else {
                                spannableStringBuilder3.setSpan(new EmptyStubSpan(), i2, i2 + 1, 0);
                            }
                        }
                        int max = Math.max(AndroidUtilities.m50dp(12), (int) Math.ceil(this.textPaint.measureText(stringOfCCount3)));
                        this.countOldLayout = new StaticLayout(spannableStringBuilder, this.textPaint, max, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        this.countAnimationStableLayout = new StaticLayout(spannableStringBuilder3, this.textPaint, max, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        this.countAnimationInLayout = new StaticLayout(spannableStringBuilder2, this.textPaint, max, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    } else {
                        this.countOldLayout = this.countLayout;
                    }
                }
                this.countWidthOld = this.countWidth;
                this.countAnimationIncrement = i > this.currentCount;
                this.countAnimator.start();
            }
            if (i > 0) {
                this.countWidth = Math.max(AndroidUtilities.m50dp(12), (int) Math.ceil(this.textPaint.measureText(stringOfCCount2)));
                this.countLayout = new StaticLayout(stringOfCCount2, this.textPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            this.currentCount = i;
            View view4 = this.parent;
            if (view4 != null) {
                view4.invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setCount$0(ValueAnimator valueAnimator) {
            this.countChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            View view = this.parent;
            if (view != null) {
                view.invalidate();
            }
        }

        private String getStringOfCCount(int i) {
            if (this.shortFormat) {
                return AndroidUtilities.formatWholeNumber(i, 0);
            }
            return String.valueOf(i);
        }

        public void draw(Canvas canvas) {
            float f;
            boolean z;
            Paint paint;
            float interpolation;
            int i = this.type;
            if (i != 1 && i != 2) {
                int themedColor = getThemedColor(this.textColorKey);
                int themedColor2 = getThemedColor(this.circleColorKey);
                if (this.recentChatsMode) {
                    themedColor2 = (this.mute ? Theme.dialogs_countGrayPaint : Theme.dialogs_countPaint).getColor();
                }
                if (this.textColor != themedColor) {
                    this.textColor = themedColor;
                    this.textPaint.setColor(themedColor);
                }
                Paint paint2 = this.circlePaint;
                if (paint2 != null && this.circleColor != themedColor2) {
                    this.circleColor = themedColor2;
                    paint2.setColor(themedColor2);
                }
            }
            float f2 = this.countChangeProgress;
            if (f2 != 1.0f) {
                int i2 = this.animationType;
                if (i2 == 0 || i2 == 1) {
                    updateX(this.countWidth);
                    float f3 = this.countLeft + (this.countWidth / 2.0f);
                    float f4 = this.lastH / 2.0f;
                    canvas.save();
                    float f5 = this.animationType == 0 ? this.countChangeProgress : 1.0f - this.countChangeProgress;
                    canvas.scale(f5, f5, f3, f4);
                    drawInternal(canvas);
                    canvas.restore();
                    return;
                }
                float f6 = f2 * 2.0f;
                if (f6 > 1.0f) {
                    f6 = 1.0f;
                }
                float m51dp = (this.lastH - AndroidUtilities.m51dp(this.radius * 2.0f)) / 2.0f;
                int i3 = this.countWidth;
                int i4 = this.countWidthOld;
                float f7 = i3 == i4 ? i3 : (i3 * f6) + (i4 * (1.0f - f6));
                updateX(f7);
                if (this.countAnimationIncrement) {
                    float f8 = this.countChangeProgress;
                    if (f8 <= 0.5f) {
                        interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(f8 * 2.0f);
                    } else {
                        interpolation = CubicBezierInterpolator.EASE_IN.getInterpolation(1.0f - ((f8 - 0.5f) * 2.0f));
                    }
                    f = (interpolation * 0.1f) + 1.0f;
                } else {
                    f = 1.0f;
                }
                RectF rectF = this.rectF;
                float f9 = this.f1700x;
                rectF.set(f9, m51dp, f7 + f9 + AndroidUtilities.m51dp(this.radius - 0.5f), AndroidUtilities.m51dp(this.radius * 2.0f) + m51dp);
                canvas.save();
                canvas.scale(f, f, this.rectF.centerX(), this.rectF.centerY());
                if (this.circleScale != 1.0f) {
                    canvas.save();
                    float f10 = this.circleScale;
                    canvas.scale(f10, f10, this.rectF.centerX(), this.rectF.centerY());
                    z = true;
                } else {
                    z = false;
                }
                if (this.drawBackground && (paint = this.circlePaint) != null) {
                    RectF rectF2 = this.rectF;
                    float f11 = this.radius;
                    float f12 = AndroidUtilities.density;
                    canvas.drawRoundRect(rectF2, f11 * f12, f11 * f12, paint);
                    if (this.addServiceGradient && Theme.hasGradientService()) {
                        RectF rectF3 = this.rectF;
                        float f13 = this.radius;
                        float f14 = AndroidUtilities.density;
                        canvas.drawRoundRect(rectF3, f13 * f14, f13 * f14, Theme.chat_actionBackgroundGradientDarkenPaint);
                    }
                }
                if (z) {
                    canvas.restore();
                }
                canvas.clipRect(this.rectF);
                boolean z2 = this.reverseAnimation != this.countAnimationIncrement;
                if (this.countAnimationInLayout != null) {
                    canvas.save();
                    float f15 = this.countLeft;
                    float m50dp = AndroidUtilities.m50dp(4) + m51dp;
                    int m50dp2 = AndroidUtilities.m50dp(13);
                    if (!z2) {
                        m50dp2 = -m50dp2;
                    }
                    canvas.translate(f15, m50dp + (m50dp2 * (1.0f - f6)));
                    this.textPaint.setAlpha((int) (f6 * 255.0f));
                    this.countAnimationInLayout.draw(canvas);
                    canvas.restore();
                } else if (this.countLayout != null) {
                    canvas.save();
                    float f16 = this.countLeft;
                    float m50dp3 = AndroidUtilities.m50dp(4) + m51dp;
                    int m50dp4 = AndroidUtilities.m50dp(13);
                    if (!z2) {
                        m50dp4 = -m50dp4;
                    }
                    canvas.translate(f16, m50dp3 + (m50dp4 * (1.0f - f6)));
                    this.textPaint.setAlpha((int) (f6 * 255.0f));
                    this.countLayout.draw(canvas);
                    canvas.restore();
                }
                if (this.countOldLayout != null) {
                    canvas.save();
                    canvas.translate(this.countLeft, AndroidUtilities.m50dp(4) + m51dp + ((z2 ? -AndroidUtilities.m50dp(13) : AndroidUtilities.m50dp(13)) * f6));
                    this.textPaint.setAlpha((int) ((1.0f - f6) * 255.0f));
                    this.countOldLayout.draw(canvas);
                    canvas.restore();
                }
                if (this.countAnimationStableLayout != null) {
                    canvas.save();
                    canvas.translate(this.countLeft, m51dp + AndroidUtilities.m50dp(4));
                    this.textPaint.setAlpha(255);
                    this.countAnimationStableLayout.draw(canvas);
                    canvas.restore();
                }
                this.textPaint.setAlpha(255);
                canvas.restore();
                return;
            }
            drawInternal(canvas);
        }

        public void updateBackgroundRect() {
            float f = this.countChangeProgress;
            if (f != 1.0f) {
                int i = this.animationType;
                if (i == 0 || i == 1) {
                    updateX(this.countWidth);
                    float m51dp = (this.lastH - AndroidUtilities.m51dp(this.radius * 2.0f)) / 2.0f;
                    RectF rectF = this.rectF;
                    float f2 = this.f1700x;
                    rectF.set(f2, m51dp, this.countWidth + f2 + AndroidUtilities.m50dp(11), AndroidUtilities.m50dp(23) + m51dp);
                    return;
                }
                float f3 = f * 2.0f;
                if (f3 > 1.0f) {
                    f3 = 1.0f;
                }
                float m51dp2 = (this.lastH - AndroidUtilities.m51dp(this.radius * 2.0f)) / 2.0f;
                int i2 = this.countWidth;
                int i3 = this.countWidthOld;
                float f4 = i2 == i3 ? i2 : (i2 * f3) + (i3 * (1.0f - f3));
                updateX(f4);
                RectF rectF2 = this.rectF;
                float f5 = this.f1700x;
                rectF2.set(f5, m51dp2, f4 + f5 + AndroidUtilities.m50dp(11), AndroidUtilities.m50dp(23) + m51dp2);
                return;
            }
            updateX(this.countWidth);
            float m51dp3 = (this.lastH - AndroidUtilities.m51dp(this.radius * 2.0f)) / 2.0f;
            RectF rectF3 = this.rectF;
            float f6 = this.f1700x;
            rectF3.set(f6, m51dp3, this.countWidth + f6 + AndroidUtilities.m50dp(11), AndroidUtilities.m50dp(23) + m51dp3);
        }

        private void updateX(float f) {
            float m51dp = this.drawBackground ? AndroidUtilities.m51dp(5.5f) : 0.0f;
            int i = this.gravity;
            if (i == 5) {
                float f2 = this.width - m51dp;
                this.countLeft = f2;
                float f3 = this.horizontalPadding;
                if (f3 != BitmapDescriptorFactory.HUE_RED) {
                    this.countLeft = f2 - Math.max(f3 + (f / 2.0f), f);
                } else {
                    this.countLeft = f2 - f;
                }
            } else if (i == 3) {
                this.countLeft = m51dp;
            } else {
                this.countLeft = (int) ((this.width - f) / 2.0f);
            }
            this.f1700x = this.countLeft - m51dp;
        }

        public float getCenterX() {
            updateX(this.countWidth);
            return this.countLeft + (this.countWidth / 2.0f);
        }

        public void setType(int i) {
            this.type = i;
        }

        public void setParent(View view) {
            this.parent = view;
        }

        private int getThemedColor(String str) {
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
            return color != null ? color.intValue() : Theme.getColor(str);
        }

        public int getWidth() {
            if (this.currentCount == 0) {
                return 0;
            }
            return this.countWidth + AndroidUtilities.m51dp(this.radius - 0.5f);
        }
    }

    public float getEnterProgress() {
        int i;
        CounterDrawable counterDrawable = this.counterDrawable;
        float f = counterDrawable.countChangeProgress;
        if (f != 1.0f && ((i = counterDrawable.animationType) == 0 || i == 1)) {
            return i == 0 ? f : 1.0f - f;
        } else if (counterDrawable.currentCount == 0) {
            return BitmapDescriptorFactory.HUE_RED;
        } else {
            return 1.0f;
        }
    }

    public boolean isInOutAnimation() {
        int i = this.counterDrawable.animationType;
        return i == 0 || i == 1;
    }
}
