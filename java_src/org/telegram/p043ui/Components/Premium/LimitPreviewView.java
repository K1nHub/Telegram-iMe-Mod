package org.telegram.p043ui.Components.Premium;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.RectF;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.math.MathUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EmptyStubSpan;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.LimitPreviewView;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_boostsStatus;
/* renamed from: org.telegram.ui.Components.Premium.LimitPreviewView */
/* loaded from: classes6.dex */
public class LimitPreviewView extends LinearLayout {
    private boolean animateIncrease;
    private int animateIncreaseWidth;
    boolean animationCanPlay;
    private int currentValue;
    TextView defaultCount;
    private final TextView defaultText;
    public int gradientTotalHeight;
    int gradientYOffset;
    int icon;
    boolean inc;
    public boolean invalidationEnabled;
    private boolean isBoostsStyle;
    public boolean isStatistic;
    CounterView limitIcon;
    float limitIconRotation;
    FrameLayout limitsContainer;
    private View parentVideForGradient;
    private float percent;
    private float position;
    TextView premiumCount;
    private boolean premiumLocked;
    private final TextView premiumText;
    float progress;
    Theme.ResourcesProvider resourcesProvider;
    PremiumGradient.PremiumGradientTools staticGradient;
    boolean wasAnimation;
    boolean wasHaptic;
    int width1;

    public LimitPreviewView(Context context, int i, int i2, int i3, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, i2, i3, 0.5f, resourcesProvider);
    }

    public LimitPreviewView(Context context, int i, int i2, int i3, float f, final Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.animationCanPlay = true;
        this.invalidationEnabled = true;
        this.resourcesProvider = resourcesProvider;
        this.percent = MathUtils.clamp(f, 0.1f, 0.9f);
        this.icon = i;
        this.currentValue = i2;
        setOrientation(1);
        setClipChildren(false);
        setClipToPadding(false);
        if (i != 0) {
            setPadding(0, AndroidUtilities.m107dp(16), 0, 0);
            this.limitIcon = new CounterView(context);
            setIconValue(i2, false);
            this.limitIcon.setPadding(AndroidUtilities.m107dp(19), AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(19), AndroidUtilities.m107dp(14));
            addView(this.limitIcon, LayoutHelper.createLinear(-2, -2, BitmapDescriptorFactory.HUE_RED, 3));
        }
        final FrameLayout frameLayout = new FrameLayout(context);
        TextView textView = new TextView(context);
        this.defaultText = textView;
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setText(LocaleController.getString("LimitFree", C3632R.string.LimitFree));
        textView.setGravity(16);
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i4, resourcesProvider));
        TextView textView2 = new TextView(context);
        this.defaultCount = textView2;
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.defaultCount.setText(String.format("%d", Integer.valueOf(i3)));
        this.defaultCount.setGravity(16);
        this.defaultCount.setTextColor(Theme.getColor(i4, resourcesProvider));
        if (LocaleController.isRTL) {
            frameLayout.addView(textView, LayoutHelper.createFrame(-1, 30, 5, 12, 0, 12, 0));
            frameLayout.addView(this.defaultCount, LayoutHelper.createFrame(-2, 30, 3, 12, 0, 12, 0));
        } else {
            frameLayout.addView(textView, LayoutHelper.createFrame(-1, 30, 3, 12, 0, 12, 0));
            frameLayout.addView(this.defaultCount, LayoutHelper.createFrame(-2, 30, 5, 12, 0, 12, 0));
        }
        final FrameLayout frameLayout2 = new FrameLayout(context);
        TextView textView3 = new TextView(context);
        this.premiumText = textView3;
        textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView3.setText(LocaleController.getString("LimitPremium", C3632R.string.LimitPremium));
        textView3.setGravity(16);
        textView3.setTextColor(-1);
        TextView textView4 = new TextView(context);
        this.premiumCount = textView4;
        textView4.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.premiumCount.setText(String.format("%d", Integer.valueOf(i3)));
        this.premiumCount.setGravity(16);
        this.premiumCount.setTextColor(-1);
        if (LocaleController.isRTL) {
            frameLayout2.addView(textView3, LayoutHelper.createFrame(-1, 30, 5, 12, 0, 12, 0));
            frameLayout2.addView(this.premiumCount, LayoutHelper.createFrame(-2, 30, 3, 12, 0, 12, 0));
        } else {
            frameLayout2.addView(textView3, LayoutHelper.createFrame(-1, 30, 3, 12, 0, 12, 0));
            frameLayout2.addView(this.premiumCount, LayoutHelper.createFrame(-2, 30, 5, 12, 0, 12, 0));
        }
        FrameLayout frameLayout3 = new FrameLayout(context) { // from class: org.telegram.ui.Components.Premium.LimitPreviewView.1
            Paint grayPaint = new Paint();

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                LimitPreviewView limitPreviewView;
                if (LimitPreviewView.this.isBoostsStyle) {
                    if (LimitPreviewView.this.isStatistic) {
                        this.grayPaint.setColor(Theme.getColor(Theme.key_listSelector, resourcesProvider));
                    } else {
                        this.grayPaint.setColor(Theme.getColor(Theme.key_graySection, resourcesProvider));
                    }
                } else {
                    this.grayPaint.setColor(Theme.getColor(Theme.key_windowBackgroundGray, resourcesProvider));
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), this.grayPaint);
                canvas.save();
                if (!LimitPreviewView.this.isBoostsStyle) {
                    canvas.clipRect(LimitPreviewView.this.width1, 0, getMeasuredWidth(), getMeasuredHeight());
                }
                Paint mainGradientPaint = PremiumGradient.getInstance().getMainGradientPaint();
                if (LimitPreviewView.this.parentVideForGradient != null) {
                    View view = LimitPreviewView.this.parentVideForGradient;
                    PremiumGradient.PremiumGradientTools premiumGradientTools = LimitPreviewView.this.staticGradient;
                    if (premiumGradientTools == null) {
                        float f2 = 0.0f;
                        for (View view2 = this; view2 != view; view2 = (View) view2.getParent()) {
                            f2 += view2.getY();
                        }
                        PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), LimitPreviewView.this.getGlobalXOffset() - getLeft(), -f2);
                    } else {
                        mainGradientPaint = premiumGradientTools.paint;
                        premiumGradientTools.gradientMatrixLinear(limitPreviewView.gradientTotalHeight, -limitPreviewView.gradientYOffset);
                    }
                } else {
                    PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, LimitPreviewView.this.getMeasuredWidth(), LimitPreviewView.this.getMeasuredHeight(), LimitPreviewView.this.getGlobalXOffset() - getLeft(), -getTop());
                }
                if (LimitPreviewView.this.isBoostsStyle) {
                    AndroidUtilities.rectTmp.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, LimitPreviewView.this.width1, getMeasuredHeight());
                }
                canvas.drawRoundRect(AndroidUtilities.rectTmp, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), mainGradientPaint);
                canvas.restore();
                LimitPreviewView limitPreviewView2 = LimitPreviewView.this;
                if (limitPreviewView2.staticGradient == null && limitPreviewView2.invalidationEnabled) {
                    invalidate();
                }
                super.dispatchDraw(canvas);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i5, int i6) {
                if (getChildCount() == 2) {
                    int size = View.MeasureSpec.getSize(i5);
                    int size2 = View.MeasureSpec.getSize(i6);
                    frameLayout.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
                    int max = Math.max(frameLayout.getMeasuredWidth(), AndroidUtilities.m107dp(24) + LimitPreviewView.this.defaultText.getMeasuredWidth() + (LimitPreviewView.this.defaultCount.getVisibility() == 0 ? AndroidUtilities.m107dp(24) + LimitPreviewView.this.defaultCount.getMeasuredWidth() : 0));
                    frameLayout2.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
                    if (LimitPreviewView.this.isBoostsStyle) {
                        if (LimitPreviewView.this.percent != BitmapDescriptorFactory.HUE_RED) {
                            if (LimitPreviewView.this.percent < 1.0f) {
                                float measuredWidth = frameLayout.getMeasuredWidth() - AndroidUtilities.m107dp(8);
                                LimitPreviewView limitPreviewView = LimitPreviewView.this;
                                limitPreviewView.width1 = (int) (measuredWidth + (((size - measuredWidth) - (frameLayout2.getMeasuredWidth() - AndroidUtilities.m107dp(8))) * limitPreviewView.percent));
                                LimitPreviewView.this.premiumCount.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
                                LimitPreviewView.this.defaultText.setTextColor(-1);
                            } else {
                                LimitPreviewView limitPreviewView2 = LimitPreviewView.this;
                                limitPreviewView2.width1 = size;
                                limitPreviewView2.premiumCount.setTextColor(-1);
                                LimitPreviewView.this.defaultText.setTextColor(-1);
                            }
                        } else {
                            LimitPreviewView limitPreviewView3 = LimitPreviewView.this;
                            limitPreviewView3.width1 = 0;
                            TextView textView5 = limitPreviewView3.premiumCount;
                            int i7 = Theme.key_windowBackgroundWhiteBlackText;
                            textView5.setTextColor(Theme.getColor(i7, resourcesProvider));
                            LimitPreviewView.this.defaultText.setTextColor(Theme.getColor(i7, resourcesProvider));
                        }
                    } else {
                        int max2 = Math.max(frameLayout2.getMeasuredWidth(), AndroidUtilities.m107dp(24) + LimitPreviewView.this.premiumText.getMeasuredWidth() + (LimitPreviewView.this.premiumCount.getVisibility() == 0 ? AndroidUtilities.m107dp(24) + LimitPreviewView.this.premiumCount.getMeasuredWidth() : 0));
                        LimitPreviewView limitPreviewView4 = LimitPreviewView.this;
                        limitPreviewView4.width1 = (int) Utilities.clamp(size * limitPreviewView4.percent, size - max2, max);
                        frameLayout.measure(View.MeasureSpec.makeMeasureSpec(LimitPreviewView.this.width1, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
                        frameLayout2.measure(View.MeasureSpec.makeMeasureSpec(size - LimitPreviewView.this.width1, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
                    }
                    setMeasuredDimension(size, size2);
                    return;
                }
                super.onMeasure(i5, i6);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i5, int i6, int i7, int i8) {
                if (getChildCount() == 2) {
                    View childAt = getChildAt(0);
                    View childAt2 = getChildAt(1);
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i9 = i8 - i6;
                    childAt.layout(0, 0, measuredWidth, i9);
                    childAt2.layout(measuredWidth, 0, i7 - i5, i9);
                    return;
                }
                super.onLayout(z, i5, i6, i7, i8);
            }
        };
        this.limitsContainer = frameLayout3;
        frameLayout3.addView(frameLayout, LayoutHelper.createFrame(-1, 30));
        this.limitsContainer.addView(frameLayout2, LayoutHelper.createFrame(-1, 30));
        addView(this.limitsContainer, LayoutHelper.createLinear(-1, 30, BitmapDescriptorFactory.HUE_RED, 0, 14, i != 0 ? 12 : 0, 14, 0));
    }

    public void setIconValue(int i, boolean z) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "d").setSpan(new ColoredImageSpan(this.icon), 0, 1, 0);
        spannableStringBuilder.append((CharSequence) " ").setSpan(new RelativeSizeSpan(0.8f), 1, 2, 0);
        spannableStringBuilder.append((CharSequence) Integer.toString(i));
        this.limitIcon.setText(spannableStringBuilder, z);
        this.limitIcon.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getGlobalXOffset() {
        return (((-getMeasuredWidth()) * 0.1f) * this.progress) - (getMeasuredWidth() * 0.2f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.staticGradient == null) {
            if (this.inc) {
                float f = this.progress + 0.016f;
                this.progress = f;
                if (f > 3.0f) {
                    this.inc = false;
                }
            } else {
                float f2 = this.progress - 0.016f;
                this.progress = f2;
                if (f2 < 1.0f) {
                    this.inc = true;
                }
            }
            invalidate();
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        CounterView counterView;
        CounterView counterView2;
        int m107dp;
        super.onLayout(z, i, i2, i3, i4);
        float f3 = 0.5f;
        if (this.animateIncrease || (!this.wasAnimation && this.limitIcon != null && this.animationCanPlay && !this.premiumLocked)) {
            int m107dp2 = AndroidUtilities.m107dp(14);
            final boolean z2 = this.animateIncrease;
            this.animateIncrease = false;
            float translationX = z2 ? this.limitIcon.getTranslationX() : 0.0f;
            float f4 = m107dp2;
            float max = (Math.max(this.width1, (getMeasuredWidth() - (m107dp2 * 2)) * this.position) + f4) - (this.limitIcon.getMeasuredWidth() / 2.0f);
            if (max < f4) {
                f3 = 0.0f;
            } else {
                f4 = max;
            }
            final float f5 = f3;
            if (f4 > (getMeasuredWidth() - m107dp2) - this.limitIcon.getMeasuredWidth()) {
                f = (getMeasuredWidth() - m107dp2) - this.limitIcon.getMeasuredWidth();
                f2 = 1.0f;
            } else {
                f = f4;
                f2 = f3;
            }
            this.limitIcon.setAlpha(1.0f);
            this.limitIcon.setTranslationX(translationX);
            this.limitIcon.setPivotX(counterView.getMeasuredWidth() / 2.0f);
            this.limitIcon.setPivotY(counterView2.getMeasuredHeight());
            if (!z2) {
                this.limitIcon.setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.limitIcon.setScaleY(BitmapDescriptorFactory.HUE_RED);
                this.limitIcon.createAnimationLayouts();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            final float f6 = this.width1;
            if (z2) {
                this.width1 = this.animateIncreaseWidth;
            }
            final float f7 = translationX;
            final float f8 = f;
            final float f9 = f2;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    LimitPreviewView.this.lambda$onLayout$0(f7, f8, f5, f9, z2, f6, valueAnimator);
                }
            });
            ofFloat.setInterpolator(new OvershootInterpolator());
            if (z2) {
                ValueAnimator ofFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        LimitPreviewView.this.lambda$onLayout$1(valueAnimator);
                    }
                });
                ofFloat2.setDuration(500L);
                ofFloat2.start();
                ofFloat.setDuration(600L);
            } else {
                ofFloat.setDuration(1000L);
                ofFloat.setStartDelay(200L);
            }
            ofFloat.start();
            this.wasAnimation = true;
        } else if (this.isBoostsStyle) {
            this.limitIcon.setAlpha(1.0f);
            this.limitIcon.setScaleX(1.0f);
            this.limitIcon.setScaleY(1.0f);
        } else if (this.premiumLocked) {
            float m107dp3 = (AndroidUtilities.m107dp(14) + ((getMeasuredWidth() - (m107dp * 2)) * 0.5f)) - (this.limitIcon.getMeasuredWidth() / 2.0f);
            boolean z3 = this.wasAnimation;
            if (!z3 && this.animationCanPlay) {
                this.wasAnimation = true;
                this.limitIcon.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(200L).setInterpolator(new OvershootInterpolator()).start();
            } else if (!z3) {
                this.limitIcon.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.limitIcon.setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.limitIcon.setScaleY(BitmapDescriptorFactory.HUE_RED);
            } else {
                this.limitIcon.setAlpha(1.0f);
                this.limitIcon.setScaleX(1.0f);
                this.limitIcon.setScaleY(1.0f);
            }
            this.limitIcon.setTranslationX(m107dp3);
        } else {
            CounterView counterView3 = this.limitIcon;
            if (counterView3 != null) {
                counterView3.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLayout$0(float f, float f2, float f3, float f4, boolean z, float f5, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float min = Math.min(1.0f, floatValue);
        if (floatValue > 1.0f) {
            if (!this.wasHaptic) {
                this.wasHaptic = true;
                this.limitIcon.performHapticFeedback(3);
            }
            this.limitIcon.setRotation(this.limitIconRotation + ((floatValue - 1.0f) * 60.0f));
        } else {
            this.limitIcon.setRotation(this.limitIconRotation);
        }
        float f6 = 1.0f - min;
        this.limitIcon.setTranslationX((f * f6) + (f2 * min));
        float f7 = (f3 * f6) + (f4 * min);
        this.limitIcon.setArrowCenter(f7);
        float min2 = Math.min(1.0f, 2.0f * min);
        if (!z) {
            this.limitIcon.setScaleX(min2);
            this.limitIcon.setScaleY(min2);
        } else {
            this.width1 = (int) AndroidUtilities.lerp(this.animateIncreaseWidth, f5, min);
            this.limitsContainer.invalidate();
        }
        CounterView counterView = this.limitIcon;
        counterView.setPivotX(counterView.getMeasuredWidth() * f7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLayout$1(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.limitIconRotation = floatValue < 0.5f ? (floatValue / 0.5f) * (-7.0f) : (1.0f - ((floatValue - 0.5f) / 0.5f)) * (-7.0f);
    }

    public void setType(int i) {
        if (i == 6) {
            if (this.limitIcon != null) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) "d ").setSpan(new ColoredImageSpan(this.icon), 0, 1, 0);
                spannableStringBuilder.append((CharSequence) (UserConfig.getInstance(UserConfig.selectedAccount).isPremium() ? "4 GB" : "2 GB"));
                this.limitIcon.setText(spannableStringBuilder, false);
            }
            this.premiumCount.setText("4 GB");
        } else if (i == 11) {
            if (this.limitIcon != null) {
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                spannableStringBuilder2.append((CharSequence) "d").setSpan(new ColoredImageSpan(this.icon), 0, 1, 0);
                this.limitIcon.setText(spannableStringBuilder2, false);
            }
            this.premiumCount.setText("");
        }
    }

    public void setBagePosition(float f) {
        this.position = MathUtils.clamp(f, 0.1f, 0.9f);
    }

    public void setParentViewForGradien(ViewGroup viewGroup) {
        this.parentVideForGradient = viewGroup;
    }

    public void setStaticGradinet(PremiumGradient.PremiumGradientTools premiumGradientTools) {
        this.staticGradient = premiumGradientTools;
    }

    public void setDelayedAnimation() {
        this.animationCanPlay = false;
    }

    public void startDelayedAnimation() {
        this.animationCanPlay = true;
        requestLayout();
    }

    public void setPremiumLocked() {
        this.limitsContainer.setVisibility(8);
        this.limitIcon.setPadding(AndroidUtilities.m107dp(24), AndroidUtilities.m107dp(3), AndroidUtilities.m107dp(24), AndroidUtilities.m107dp(3));
        this.premiumLocked = true;
    }

    public void setBoosts(TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus, boolean z) {
        int i;
        int i2 = tL_stories$TL_premium_boostsStatus.current_level_boosts;
        int i3 = tL_stories$TL_premium_boostsStatus.boosts;
        if (((i2 == i3) && z) || (i = tL_stories$TL_premium_boostsStatus.next_level_boosts) == 0) {
            this.percent = 1.0f;
            TextView textView = this.defaultText;
            int i4 = C3632R.string.BoostsLevel;
            textView.setText(LocaleController.formatString("BoostsLevel", i4, Integer.valueOf(tL_stories$TL_premium_boostsStatus.level - 1)));
            this.premiumCount.setText(LocaleController.formatString("BoostsLevel", i4, Integer.valueOf(tL_stories$TL_premium_boostsStatus.level)));
        } else {
            this.percent = MathUtils.clamp((i3 - i2) / (i - i2), (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
            TextView textView2 = this.defaultText;
            int i5 = C3632R.string.BoostsLevel;
            textView2.setText(LocaleController.formatString("BoostsLevel", i5, Integer.valueOf(tL_stories$TL_premium_boostsStatus.level)));
            this.premiumCount.setText(LocaleController.formatString("BoostsLevel", i5, Integer.valueOf(tL_stories$TL_premium_boostsStatus.level + 1)));
        }
        ((FrameLayout.LayoutParams) this.premiumCount.getLayoutParams()).gravity = 5;
        setType(17);
        this.defaultCount.setVisibility(8);
        this.premiumText.setVisibility(8);
        this.premiumCount.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
        this.defaultText.setTextColor(-1);
        setIconValue(tL_stories$TL_premium_boostsStatus.boosts, false);
        this.isBoostsStyle = true;
    }

    public void increaseCurrentValue(int i, int i2, int i3) {
        this.currentValue++;
        this.percent = MathUtils.clamp(i2 / i3, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.animateIncrease = true;
        this.animateIncreaseWidth = this.width1;
        setIconValue(i, true);
        this.limitsContainer.requestLayout();
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Premium.LimitPreviewView$CounterView */
    /* loaded from: classes6.dex */
    public class CounterView extends View {
        ArrayList<AnimatedLayout> animatedLayouts;
        StaticLayout animatedStableLayout;
        boolean animationInProgress;
        float arrowCenter;
        boolean invalidatePath;
        Path path;
        PathEffect pathEffect;
        CharSequence text;
        StaticLayout textLayout;
        TextPaint textPaint;
        float textWidth;

        public CounterView(Context context) {
            super(context);
            this.path = new Path();
            this.pathEffect = new CornerPathEffect(AndroidUtilities.m107dp(6));
            this.textPaint = new TextPaint(1);
            this.animatedLayouts = new ArrayList<>();
            this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textPaint.setTextSize(AndroidUtilities.m107dp(22));
            this.textPaint.setColor(-1);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            TextPaint textPaint = this.textPaint;
            CharSequence charSequence = this.text;
            this.textWidth = textPaint.measureText(charSequence, 0, charSequence.length());
            this.textLayout = new StaticLayout(this.text, this.textPaint, ((int) this.textWidth) + AndroidUtilities.m107dp(12), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            setMeasuredDimension((int) (this.textWidth + getPaddingRight() + getPaddingLeft()), AndroidUtilities.m107dp(44) + AndroidUtilities.m107dp(8));
            updatePath();
        }

        private void updatePath() {
            int measuredHeight = getMeasuredHeight() - AndroidUtilities.m107dp(8);
            float measuredWidth = getMeasuredWidth() * this.arrowCenter;
            float clamp = Utilities.clamp(AndroidUtilities.m107dp(8) + measuredWidth, getMeasuredWidth(), (float) BitmapDescriptorFactory.HUE_RED);
            float clamp2 = Utilities.clamp(AndroidUtilities.m107dp(10) + measuredWidth, getMeasuredWidth(), AndroidUtilities.m107dp(24));
            float clamp3 = Utilities.clamp(measuredWidth - AndroidUtilities.m107dp(24), getMeasuredWidth(), (float) BitmapDescriptorFactory.HUE_RED);
            float clamp4 = Utilities.clamp(measuredWidth - AndroidUtilities.m107dp(8), getMeasuredWidth(), (float) BitmapDescriptorFactory.HUE_RED);
            this.path.rewind();
            float f = measuredHeight;
            float f2 = f - (f / 2.0f);
            this.path.moveTo(clamp3, f2 - AndroidUtilities.m107dp(2));
            this.path.lineTo(clamp3, f);
            this.path.lineTo(clamp4, f);
            this.path.lineTo(measuredWidth, measuredHeight + AndroidUtilities.m107dp(8));
            if (this.arrowCenter < 0.7f) {
                this.path.lineTo(clamp, f);
            }
            this.path.lineTo(clamp2, f);
            this.path.lineTo(clamp2, f2 - AndroidUtilities.m107dp(2));
            this.path.close();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int measuredHeight = getMeasuredHeight() - AndroidUtilities.m107dp(8);
            if (LimitPreviewView.this.premiumLocked) {
                measuredHeight = getMeasuredHeight();
                PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, LimitPreviewView.this.getMeasuredWidth(), LimitPreviewView.this.getMeasuredHeight(), LimitPreviewView.this.getGlobalXOffset() - getX(), -getTop());
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(3), getMeasuredWidth(), measuredHeight - AndroidUtilities.m107dp(3));
                float f = measuredHeight / 2.0f;
                canvas.drawRoundRect(rectF, f, f, PremiumGradient.getInstance().getPremiumLocakedPaint());
            } else {
                if (this.invalidatePath) {
                    this.invalidatePath = false;
                    updatePath();
                }
                PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, LimitPreviewView.this.getMeasuredWidth(), LimitPreviewView.this.getMeasuredHeight(), LimitPreviewView.this.getGlobalXOffset() - getX(), -getTop());
                RectF rectF2 = AndroidUtilities.rectTmp;
                float f2 = measuredHeight;
                rectF2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), f2);
                float f3 = f2 / 2.0f;
                canvas.drawRoundRect(rectF2, f3, f3, PremiumGradient.getInstance().getMainGradientPaint());
                PremiumGradient.getInstance().getMainGradientPaint().setPathEffect(this.pathEffect);
                canvas.drawPath(this.path, PremiumGradient.getInstance().getMainGradientPaint());
                PremiumGradient.getInstance().getMainGradientPaint().setPathEffect(null);
                if (LimitPreviewView.this.invalidationEnabled) {
                    invalidate();
                }
            }
            float measuredWidth = (getMeasuredWidth() - this.textLayout.getWidth()) / 2.0f;
            float height = (measuredHeight - this.textLayout.getHeight()) / 2.0f;
            if (!this.animationInProgress) {
                if (this.textLayout != null) {
                    canvas.save();
                    canvas.translate(measuredWidth, height);
                    this.textLayout.draw(canvas);
                    canvas.restore();
                    return;
                }
                return;
            }
            canvas.save();
            canvas.clipRect(0, 0, getMeasuredWidth(), getMeasuredHeight() - AndroidUtilities.m107dp(8));
            if (this.animatedStableLayout != null) {
                canvas.save();
                canvas.translate(measuredWidth, height);
                this.animatedStableLayout.draw(canvas);
                canvas.restore();
            }
            for (int i = 0; i < this.animatedLayouts.size(); i++) {
                AnimatedLayout animatedLayout = this.animatedLayouts.get(i);
                canvas.save();
                if (animatedLayout.replace) {
                    canvas.translate(animatedLayout.f1911x + measuredWidth, ((measuredHeight * animatedLayout.progress) + height) - ((1 - animatedLayout.staticLayouts.size()) * measuredHeight));
                    for (int i2 = 0; i2 < animatedLayout.staticLayouts.size(); i2++) {
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, -measuredHeight);
                        animatedLayout.staticLayouts.get(i2).draw(canvas);
                    }
                } else if (animatedLayout.direction) {
                    canvas.translate(animatedLayout.f1911x + measuredWidth, (height - ((measuredHeight * 10) * animatedLayout.progress)) + ((10 - animatedLayout.staticLayouts.size()) * measuredHeight));
                    for (int i3 = 0; i3 < animatedLayout.staticLayouts.size(); i3++) {
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, measuredHeight);
                        animatedLayout.staticLayouts.get(i3).draw(canvas);
                    }
                } else {
                    canvas.translate(animatedLayout.f1911x + measuredWidth, (((measuredHeight * 10) * animatedLayout.progress) + height) - ((10 - animatedLayout.staticLayouts.size()) * measuredHeight));
                    for (int i4 = 0; i4 < animatedLayout.staticLayouts.size(); i4++) {
                        canvas.translate(BitmapDescriptorFactory.HUE_RED, -measuredHeight);
                        animatedLayout.staticLayouts.get(i4).draw(canvas);
                    }
                }
                canvas.restore();
            }
            canvas.restore();
        }

        @Override // android.view.View
        public void setTranslationX(float f) {
            if (f != getTranslationX()) {
                super.setTranslationX(f);
                invalidate();
            }
        }

        void createAnimationLayouts() {
            this.animatedLayouts.clear();
            if (LimitPreviewView.this.isBoostsStyle && LimitPreviewView.this.currentValue == 0) {
                return;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.text);
            int i = 0;
            boolean z = true;
            for (int i2 = 0; i2 < this.text.length(); i2++) {
                if (Character.isDigit(this.text.charAt(i2))) {
                    AnimatedLayout animatedLayout = new AnimatedLayout();
                    this.animatedLayouts.add(animatedLayout);
                    animatedLayout.f1911x = this.textLayout.getSecondaryHorizontal(i2);
                    animatedLayout.direction = z;
                    if (i >= 1) {
                        z = !z;
                        i = 0;
                    }
                    i++;
                    int charAt = this.text.charAt(i2) - '0';
                    if (charAt == 0) {
                        charAt = 10;
                    }
                    int i3 = 1;
                    while (i3 <= charAt) {
                        animatedLayout.staticLayouts.add(new StaticLayout("" + (i3 == 10 ? 0 : i3), this.textPaint, (int) this.textWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false));
                        i3++;
                    }
                    spannableStringBuilder.setSpan(new EmptyStubSpan(), i2, i2 + 1, 0);
                }
            }
            this.animatedStableLayout = new StaticLayout(spannableStringBuilder, this.textPaint, AndroidUtilities.m107dp(12) + ((int) this.textWidth), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            for (int i4 = 0; i4 < this.animatedLayouts.size(); i4++) {
                this.animationInProgress = true;
                final AnimatedLayout animatedLayout2 = this.animatedLayouts.get(i4);
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                animatedLayout2.valueAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView$CounterView$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        LimitPreviewView.CounterView.this.lambda$createAnimationLayouts$0(animatedLayout2, valueAnimator);
                    }
                });
                animatedLayout2.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView.CounterView.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        animatedLayout2.valueAnimator = null;
                        CounterView.this.checkAnimationComplete();
                    }
                });
                animatedLayout2.valueAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                animatedLayout2.valueAnimator.setDuration(750L);
                animatedLayout2.valueAnimator.setStartDelay(((this.animatedLayouts.size() - 1) - i4) * 60);
                animatedLayout2.valueAnimator.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createAnimationLayouts$0(AnimatedLayout animatedLayout, ValueAnimator valueAnimator) {
            animatedLayout.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        void createAnimationLayoutsDiff(CharSequence charSequence) {
            if (this.textLayout == null) {
                return;
            }
            this.animatedLayouts.clear();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.text);
            int length = this.text.length() - 1;
            int i = 0;
            while (length >= 0) {
                char charAt = length < charSequence.length() ? charSequence.charAt(length) : ' ';
                if (charAt != this.text.charAt(length) && Character.isDigit(this.text.charAt(length))) {
                    AnimatedLayout animatedLayout = new AnimatedLayout();
                    this.animatedLayouts.add(animatedLayout);
                    animatedLayout.f1911x = this.textLayout.getSecondaryHorizontal(length);
                    animatedLayout.replace = true;
                    if (i >= 1) {
                        i = 0;
                    }
                    i++;
                    animatedLayout.staticLayouts.add(new StaticLayout("" + charAt, this.textPaint, (int) this.textWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false));
                    animatedLayout.staticLayouts.add(new StaticLayout("" + this.text.charAt(length), this.textPaint, (int) this.textWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false));
                    spannableStringBuilder.setSpan(new EmptyStubSpan(), length, length + 1, 0);
                }
                length--;
            }
            this.animatedStableLayout = new StaticLayout(spannableStringBuilder, this.textPaint, AndroidUtilities.m107dp(12) + ((int) this.textWidth), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            for (int i2 = 0; i2 < this.animatedLayouts.size(); i2++) {
                this.animationInProgress = true;
                final AnimatedLayout animatedLayout2 = this.animatedLayouts.get(i2);
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                animatedLayout2.valueAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView$CounterView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        LimitPreviewView.CounterView.this.lambda$createAnimationLayoutsDiff$1(animatedLayout2, valueAnimator);
                    }
                });
                animatedLayout2.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.LimitPreviewView.CounterView.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        animatedLayout2.valueAnimator = null;
                        CounterView.this.checkAnimationComplete();
                    }
                });
                animatedLayout2.valueAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                animatedLayout2.valueAnimator.setDuration(250L);
                animatedLayout2.valueAnimator.setStartDelay(((this.animatedLayouts.size() - 1) - i2) * 60);
                animatedLayout2.valueAnimator.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createAnimationLayoutsDiff$1(AnimatedLayout animatedLayout, ValueAnimator valueAnimator) {
            animatedLayout.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void checkAnimationComplete() {
            for (int i = 0; i < this.animatedLayouts.size(); i++) {
                if (this.animatedLayouts.get(i).valueAnimator != null) {
                    return;
                }
            }
            this.animatedLayouts.clear();
            this.animationInProgress = false;
            invalidate();
        }

        public void setText(CharSequence charSequence, boolean z) {
            if (!z) {
                this.text = charSequence;
                return;
            }
            CharSequence charSequence2 = this.text;
            this.text = charSequence;
            createAnimationLayoutsDiff(charSequence2);
        }

        public void setArrowCenter(float f) {
            if (this.arrowCenter != f) {
                this.arrowCenter = f;
                this.invalidatePath = true;
                invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.Premium.LimitPreviewView$CounterView$AnimatedLayout */
        /* loaded from: classes6.dex */
        public class AnimatedLayout {
            public boolean direction;
            float progress;
            public boolean replace;
            ArrayList<StaticLayout> staticLayouts;
            ValueAnimator valueAnimator;

            /* renamed from: x */
            float f1911x;

            private AnimatedLayout(CounterView counterView) {
                this.staticLayouts = new ArrayList<>();
            }
        }
    }
}
