package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.SearchCounterView */
/* loaded from: classes6.dex */
public class SearchCounterView extends View {
    int animationType;
    private StaticLayout countAnimationInLayout;
    private boolean countAnimationIncrement;
    private StaticLayout countAnimationStableLayout;
    private StaticLayout countAnimationStableLayout2;
    private ValueAnimator countAnimator;
    private float countChangeProgress;
    private StaticLayout countLayout;
    float countLeft;
    private StaticLayout countOldLayout;
    private int countWidth;
    private int countWidthOld;
    int currentCount;
    String currentString;

    /* renamed from: dx */
    float f1944dx;
    int gravity;
    public float horizontalPadding;
    int lastH;
    RectF rectF;
    private final Theme.ResourcesProvider resourcesProvider;
    private int textColor;
    private int textColorKey;
    TextPaint textPaint;

    /* renamed from: x */
    float f1945x;

    public SearchCounterView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.textPaint = new TextPaint(1);
        this.rectF = new RectF();
        this.countChangeProgress = 1.0f;
        this.textColorKey = Theme.key_chat_searchPanelText;
        this.gravity = 17;
        this.f1944dx = BitmapDescriptorFactory.HUE_RED;
        this.resourcesProvider = resourcesProvider;
        this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textPaint.setTextSize(AndroidUtilities.m104dp(15));
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getMeasuredHeight() != this.lastH) {
            int i3 = this.currentCount;
            String str = this.currentString;
            this.currentString = null;
            setCount(str, i3, false);
            this.lastH = getMeasuredHeight();
        }
    }

    public void setCount(String str, int i, boolean z) {
        boolean z2;
        String str2 = str;
        String str3 = this.currentString;
        if (str3 == null || !str3.equals(str2)) {
            ValueAnimator valueAnimator = this.countAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            boolean z3 = (this.currentCount == 0 || i <= 0 || str2 == null || LocaleController.isRTL || TextUtils.isEmpty(str)) ? false : z;
            if (z3 && str2 != null && !str2.contains("**")) {
                z3 = false;
            }
            int i2 = 12;
            if (!z3) {
                if (str2 != null) {
                    str2 = str2.replaceAll("\\*\\*", "");
                }
                this.currentCount = i;
                if (str2 == null) {
                    this.countWidth = 0;
                    this.countLayout = null;
                } else {
                    this.countWidth = Math.max(AndroidUtilities.m104dp(12), (int) Math.ceil(this.textPaint.measureText(str2)));
                    this.countLayout = new StaticLayout(str2, this.textPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                }
                invalidate();
            }
            this.f1944dx = BitmapDescriptorFactory.HUE_RED;
            if (z3) {
                ValueAnimator valueAnimator2 = this.countAnimator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                this.countChangeProgress = BitmapDescriptorFactory.HUE_RED;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.countAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SearchCounterView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        SearchCounterView.this.lambda$setCount$0(valueAnimator3);
                    }
                });
                this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SearchCounterView.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SearchCounterView searchCounterView = SearchCounterView.this;
                        searchCounterView.animationType = -1;
                        searchCounterView.countChangeProgress = 1.0f;
                        SearchCounterView.this.countOldLayout = null;
                        SearchCounterView.this.countAnimationStableLayout = null;
                        SearchCounterView.this.countAnimationInLayout = null;
                        SearchCounterView.this.invalidate();
                    }
                });
                this.countAnimator.setDuration(200L);
                this.countAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                if (this.countLayout != null) {
                    String str4 = this.currentString;
                    int indexOf = str2.indexOf("**");
                    if (indexOf >= 0) {
                        str2 = str2.replaceAll("\\*\\*", "");
                    } else {
                        indexOf = 0;
                    }
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str4);
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(str2);
                    SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(str2);
                    boolean z4 = Integer.toString(this.currentCount).length() != Integer.toString(i).length();
                    int min = Math.min(str4.length(), str2.length());
                    if (indexOf > 0) {
                        spannableStringBuilder.setSpan(new EmptyStubSpan(), 0, Math.min(spannableStringBuilder.length(), indexOf), 33);
                        spannableStringBuilder2.setSpan(new EmptyStubSpan(), 0, Math.min(spannableStringBuilder2.length(), indexOf), 33);
                        spannableStringBuilder3.setSpan(new EmptyStubSpan(), 0, Math.min(spannableStringBuilder3.length(), indexOf), 33);
                    }
                    int i3 = 0;
                    boolean z5 = false;
                    boolean z6 = false;
                    int i4 = 0;
                    int i5 = indexOf;
                    while (i5 < min) {
                        if (!z5 && !z6) {
                            if (z4) {
                                spannableStringBuilder3.setSpan(new EmptyStubSpan(), i5, i5 + 1, 33);
                            } else if (str4.charAt(i5) == str2.charAt(i5)) {
                                int i6 = i5 + 1;
                                spannableStringBuilder.setSpan(new EmptyStubSpan(), i5, i6, 33);
                                spannableStringBuilder2.setSpan(new EmptyStubSpan(), i5, i6, 33);
                            } else {
                                spannableStringBuilder3.setSpan(new EmptyStubSpan(), i5, i5 + 1, 33);
                            }
                        }
                        if (!Character.isDigit(str2.charAt(i5))) {
                            spannableStringBuilder2.setSpan(new EmptyStubSpan(), i5, str2.length(), 33);
                            i4 = i5;
                            z5 = true;
                        }
                        if (!Character.isDigit(str4.charAt(i5))) {
                            spannableStringBuilder.setSpan(new EmptyStubSpan(), i5, str4.length(), 33);
                            i3 = i5;
                            z6 = true;
                        }
                        i5++;
                        i2 = 12;
                    }
                    int i7 = i2;
                    int max = Math.max(AndroidUtilities.m104dp(i7), (int) Math.ceil(this.textPaint.measureText(str4)));
                    int max2 = Math.max(AndroidUtilities.m104dp(i7), (int) Math.ceil(this.textPaint.measureText(str2)));
                    this.countOldLayout = new StaticLayout(spannableStringBuilder, this.textPaint, max, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.countAnimationStableLayout = new StaticLayout(spannableStringBuilder3, this.textPaint, max2, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.countAnimationInLayout = new StaticLayout(spannableStringBuilder2, this.textPaint, max2, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    if (indexOf > 0) {
                        SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(str2);
                        z2 = false;
                        spannableStringBuilder4.setSpan(new EmptyStubSpan(), indexOf, str2.length(), 0);
                        this.countAnimationStableLayout2 = new StaticLayout(spannableStringBuilder4, this.textPaint, max2, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    } else {
                        z2 = false;
                        this.countAnimationStableLayout2 = null;
                    }
                    this.f1944dx = this.countOldLayout.getPrimaryHorizontal(i3) - this.countAnimationStableLayout.getPrimaryHorizontal(i4);
                } else {
                    z2 = false;
                }
                this.countWidthOld = this.countWidth;
                this.countAnimationIncrement = i < this.currentCount ? true : z2;
                this.countAnimator.start();
            }
            if (i > 0) {
                this.countWidth = Math.max(AndroidUtilities.m104dp(12), (int) Math.ceil(this.textPaint.measureText(str2)));
                this.countLayout = new StaticLayout(str2, this.textPaint, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            this.currentCount = i;
            invalidate();
            this.currentString = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCount$0(ValueAnimator valueAnimator) {
        this.countChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        int color = Theme.getColor(this.textColorKey, this.resourcesProvider);
        if (this.textColor != color) {
            this.textColor = color;
            this.textPaint.setColor(color);
        }
        if (this.countChangeProgress != 1.0f) {
            float measuredHeight = (getMeasuredHeight() - AndroidUtilities.m104dp(23)) / 2.0f;
            int i = this.countWidth;
            int i2 = this.countWidthOld;
            if (i == i2) {
                f = i;
            } else {
                float f2 = this.countChangeProgress;
                f = (i * f2) + (i2 * (1.0f - f2));
            }
            updateX(f);
            RectF rectF = this.rectF;
            float f3 = this.f1945x;
            rectF.set(f3, measuredHeight, f + f3 + AndroidUtilities.m104dp(11), AndroidUtilities.m104dp(23) + measuredHeight);
            boolean z = this.countAnimationIncrement;
            if (this.countAnimationInLayout != null) {
                canvas.save();
                float f4 = this.countLeft;
                float m104dp = AndroidUtilities.m104dp(2) + measuredHeight;
                int m104dp2 = AndroidUtilities.m104dp(13);
                if (!z) {
                    m104dp2 = -m104dp2;
                }
                canvas.translate(f4, m104dp + (m104dp2 * (1.0f - this.countChangeProgress)));
                this.textPaint.setAlpha((int) (this.countChangeProgress * 255.0f));
                this.countAnimationInLayout.draw(canvas);
                canvas.restore();
            } else if (this.countLayout != null) {
                canvas.save();
                float f5 = this.countLeft;
                float m104dp3 = AndroidUtilities.m104dp(2) + measuredHeight;
                int m104dp4 = AndroidUtilities.m104dp(13);
                if (!z) {
                    m104dp4 = -m104dp4;
                }
                canvas.translate(f5, m104dp3 + (m104dp4 * (1.0f - this.countChangeProgress)));
                this.textPaint.setAlpha((int) (this.countChangeProgress * 255.0f));
                this.countLayout.draw(canvas);
                canvas.restore();
            }
            if (this.countOldLayout != null) {
                canvas.save();
                canvas.translate(this.countLeft, AndroidUtilities.m104dp(2) + measuredHeight + ((z ? -AndroidUtilities.m104dp(13) : AndroidUtilities.m104dp(13)) * this.countChangeProgress));
                this.textPaint.setAlpha((int) ((1.0f - this.countChangeProgress) * 255.0f));
                this.countOldLayout.draw(canvas);
                canvas.restore();
            }
            if (this.countAnimationStableLayout != null) {
                canvas.save();
                canvas.translate(this.countLeft + (this.f1944dx * (1.0f - this.countChangeProgress)), AndroidUtilities.m104dp(2) + measuredHeight);
                this.textPaint.setAlpha(255);
                this.countAnimationStableLayout.draw(canvas);
                canvas.restore();
            }
            if (this.countAnimationStableLayout2 != null) {
                canvas.save();
                canvas.translate(this.countLeft, measuredHeight + AndroidUtilities.m104dp(2));
                this.textPaint.setAlpha(255);
                this.countAnimationStableLayout2.draw(canvas);
                canvas.restore();
            }
            this.textPaint.setAlpha(255);
            return;
        }
        drawInternal(canvas);
    }

    private void updateX(float f) {
        int i = this.gravity;
        if (i == 5) {
            float measuredWidth = getMeasuredWidth() - AndroidUtilities.m105dp(5.5f);
            this.countLeft = measuredWidth;
            float f2 = this.horizontalPadding;
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                this.countLeft = measuredWidth - Math.max(f2 + (f / 2.0f), f);
            } else {
                this.countLeft = measuredWidth - f;
            }
        } else if (i == 3) {
            this.countLeft = AndroidUtilities.m105dp(5.5f);
        } else {
            this.countLeft = (int) ((getMeasuredWidth() - f) / 2.0f);
        }
        this.f1945x = this.countLeft - AndroidUtilities.m105dp(5.5f);
    }

    private void drawInternal(Canvas canvas) {
        float measuredHeight = (getMeasuredHeight() - AndroidUtilities.m104dp(23)) / 2.0f;
        updateX(this.countWidth);
        if (this.countLayout != null) {
            canvas.save();
            canvas.translate(this.countLeft, measuredHeight + AndroidUtilities.m104dp(2));
            this.countLayout.draw(canvas);
            canvas.restore();
        }
    }

    public void setGravity(int i) {
        this.gravity = i;
    }
}
