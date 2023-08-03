package org.telegram.p043ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimationProperties;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.Switch;
/* renamed from: org.telegram.ui.Cells.TextCheckCell */
/* loaded from: classes5.dex */
public class TextCheckCell extends FrameLayout {
    public static final Property<TextCheckCell, Float> ANIMATION_PROGRESS = new AnimationProperties.FloatProperty<TextCheckCell>("animationProgress") { // from class: org.telegram.ui.Cells.TextCheckCell.1
        @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
        public void setValue(TextCheckCell textCheckCell, float f) {
            textCheckCell.setAnimationProgress(f);
            textCheckCell.invalidate();
        }

        @Override // android.util.Property
        public Float get(TextCheckCell textCheckCell) {
            return Float.valueOf(textCheckCell.animationProgress);
        }
    };
    private int animatedColorBackground;
    private Paint animationPaint;
    private float animationProgress;
    private ObjectAnimator animator;
    boolean attached;
    private Switch checkBox;
    private boolean drawCheckRipple;
    private boolean drawSwitchDivider;
    private int height;
    ImageView imageView;
    private boolean isAnimatingToThumbInsteadOfTouch;
    private boolean isMultiline;
    private boolean isRTL;
    private float lastTouchX;
    private boolean needDivider;
    private int padding;
    private Theme.ResourcesProvider resourcesProvider;
    private final int switchWidth;
    private TextView textView;
    private int type;
    private TextView valueTextView;

    public void setDrawSwitchDivider(boolean z) {
        this.drawSwitchDivider = z;
    }

    public boolean isInSwitch(float f) {
        float switchDividerX = getSwitchDividerX();
        if (LocaleController.isRTL) {
            if (f < switchDividerX) {
                return true;
            }
        } else if (f >= switchDividerX) {
            return true;
        }
        return false;
    }

    public int getSwitchDividerX() {
        return LocaleController.isRTL ? this.switchWidth : getMeasuredWidth() - this.switchWidth;
    }

    public void setType(int i) {
        this.type = i;
        if (i == 1) {
            this.height = 56;
            setDrawCheckRipple(true);
            setColors(Theme.key_windowBackgroundCheckText, Theme.key_switchTrackBlue, Theme.key_switchTrackBlueChecked, Theme.key_switchTrackBlueThumb, Theme.key_switchTrackBlueThumbChecked);
            setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        } else if (i == 0) {
            this.height = 50;
            setDrawCheckRipple(false);
            int i2 = Theme.key_windowBackgroundWhiteBlackText;
            int i3 = Theme.key_switchTrack;
            int i4 = Theme.key_switchTrackChecked;
            int i5 = Theme.key_windowBackgroundWhite;
            setColors(i2, i3, i4, i5, i5);
            setTypeface(Typeface.DEFAULT);
        }
    }

    public void toggleCheckBox() {
        setChecked(!isChecked());
        if (this.type == 1) {
            int i = isChecked() ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked;
            setBackgroundColorAnimated(isChecked(), Theme.getColor(i));
            setTag(Integer.valueOf(i));
        }
    }

    public TextCheckCell(Context context) {
        this(context, 21);
    }

    public TextCheckCell(Context context, int i) {
        this(context, i, false, null);
    }

    public TextCheckCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, 21, false, resourcesProvider);
    }

    public TextCheckCell(Context context, int i, boolean z) {
        this(context, i, z, null);
    }

    public TextCheckCell(Context context, int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.type = -1;
        this.height = 50;
        this.resourcesProvider = resourcesProvider;
        this.padding = i;
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(z ? Theme.key_dialogTextBlack : Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView2 = this.textView;
        boolean z2 = LocaleController.isRTL;
        addView(textView2, LayoutHelper.createFrame(-1, -1, (z2 ? 5 : 3) | 48, z2 ? 70 : i, 0, z2 ? i : 70, 0));
        TextView textView3 = new TextView(context);
        this.valueTextView = textView3;
        textView3.setTextColor(Theme.getColor(z ? Theme.key_dialogIcon : Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        this.valueTextView.setTextSize(1, 13.0f);
        this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.valueTextView.setLines(1);
        this.valueTextView.setMaxLines(1);
        this.valueTextView.setSingleLine(true);
        this.valueTextView.setPadding(0, 0, 0, 0);
        this.valueTextView.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView4 = this.valueTextView;
        boolean z3 = LocaleController.isRTL;
        addView(textView4, LayoutHelper.createFrame(-2, -2, (z3 ? 5 : 3) | 48, z3 ? 70 : i, 35, z3 ? i : 70, 0));
        Switch r3 = new Switch(context, resourcesProvider);
        this.checkBox = r3;
        int i2 = Theme.key_switchTrack;
        int i3 = Theme.key_switchTrackChecked;
        int i4 = Theme.key_windowBackgroundWhite;
        r3.setColors(i2, i3, i4, i4);
        addView(this.checkBox, LayoutHelper.createFrame(37, 20, (LocaleController.isRTL ? 3 : 5) | 16, 22, 0, 22, 0));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.checkBox.getLayoutParams();
        this.switchWidth = layoutParams.width + layoutParams.leftMargin + layoutParams.rightMargin;
        setClipChildren(false);
        this.isRTL = LocaleController.isRTL;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.checkBox.setEnabled(z);
    }

    public void setCheckBoxIcon(int i) {
        this.checkBox.setIcon(i);
    }

    public Switch getCheckBox() {
        return this.checkBox;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.isMultiline) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(this.valueTextView.getVisibility() == 0 ? 64 : this.height) + (this.needDivider ? 1 : 0), 1073741824));
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.lastTouchX = motionEvent.getX();
        return super.onTouchEvent(motionEvent);
    }

    public void setDivider(boolean z) {
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public void setTextAndCheck(CharSequence charSequence, boolean z, boolean z2) {
        this.textView.setText(charSequence);
        this.isMultiline = false;
        this.checkBox.setVisibility(0);
        this.checkBox.setChecked(z, this.attached);
        int i = this.type;
        if (i == 1) {
            int i2 = z ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked;
            setTag(Integer.valueOf(i2));
            setBackgroundColor(Theme.getColor(i2));
            this.checkBox.setOverrideColor(z ? 1 : 2);
        } else if (i == 0) {
            int i3 = Theme.key_windowBackgroundWhite;
            setTag(Integer.valueOf(i3));
            setBackgroundColor(Theme.getColor(i3));
            this.checkBox.setOverrideColor(0);
        }
        this.needDivider = z2;
        this.valueTextView.setVisibility(8);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        layoutParams.height = -1;
        layoutParams.topMargin = 0;
        this.textView.setLayoutParams(layoutParams);
        setWillNotDraw(!z2);
    }

    public void updateRTL() {
        boolean z = this.isRTL;
        boolean z2 = LocaleController.isRTL;
        if (z == z2) {
            return;
        }
        this.isRTL = z2;
        this.textView.setGravity((z2 ? 5 : 3) | 16);
        removeView(this.textView);
        TextView textView = this.textView;
        boolean z3 = LocaleController.isRTL;
        addView(textView, LayoutHelper.createFrame(-1, -1, (z3 ? 5 : 3) | 48, z3 ? 70 : this.padding, 0, z3 ? this.padding : 70, 0));
        this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        removeView(this.valueTextView);
        TextView textView2 = this.valueTextView;
        boolean z4 = LocaleController.isRTL;
        addView(textView2, LayoutHelper.createFrame(-2, -2, (z4 ? 5 : 3) | 48, z4 ? 64 : this.padding, 36, z4 ? this.padding : 64, 0));
        removeView(this.checkBox);
        addView(this.checkBox, LayoutHelper.createFrame(37, 20, (LocaleController.isRTL ? 3 : 5) | 16, 22, 0, 22, 0));
    }

    public void setColors(int i, int i2, int i3, int i4, int i5) {
        this.textView.setTextColor(Theme.getColor(i, this.resourcesProvider));
        this.checkBox.setColors(i2, i3, i4, i5);
        this.textView.setTag(Integer.valueOf(i));
    }

    public void setTypeface(Typeface typeface) {
        this.textView.setTypeface(typeface);
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setDrawCheckRipple(boolean z) {
        this.drawCheckRipple = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.drawCheckRipple) {
            this.checkBox.setDrawRipple(z);
        }
        super.setPressed(z);
    }

    public void setTextAndValueAndCheck(String str, String str2, boolean z, boolean z2, boolean z3) {
        this.textView.setText(str);
        this.valueTextView.setText(str2);
        this.checkBox.setVisibility(0);
        this.checkBox.setChecked(z, false);
        this.needDivider = z3;
        this.valueTextView.setVisibility(0);
        this.isMultiline = z2;
        if (z2) {
            this.valueTextView.setLines(0);
            this.valueTextView.setMaxLines(0);
            this.valueTextView.setSingleLine(false);
            this.valueTextView.setEllipsize(null);
            this.valueTextView.setPadding(0, 0, 0, AndroidUtilities.m72dp(11));
        } else {
            this.valueTextView.setLines(1);
            this.valueTextView.setMaxLines(1);
            this.valueTextView.setSingleLine(true);
            this.valueTextView.setEllipsize(TextUtils.TruncateAt.END);
            this.valueTextView.setPadding(0, 0, 0, 0);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        layoutParams.height = -2;
        layoutParams.topMargin = AndroidUtilities.m72dp(10);
        this.textView.setLayoutParams(layoutParams);
        setWillNotDraw(true ^ z3);
    }

    public void setEnabled(boolean z, ArrayList<Animator> arrayList) {
        super.setEnabled(z);
        if (arrayList != null) {
            TextView textView = this.textView;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : 0.5f;
            arrayList.add(ObjectAnimator.ofFloat(textView, property, fArr));
            Switch r2 = this.checkBox;
            Property property2 = View.ALPHA;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 1.0f : 0.5f;
            arrayList.add(ObjectAnimator.ofFloat(r2, property2, fArr2));
            if (this.valueTextView.getVisibility() == 0) {
                TextView textView2 = this.valueTextView;
                Property property3 = View.ALPHA;
                float[] fArr3 = new float[1];
                fArr3[0] = z ? 1.0f : 0.5f;
                arrayList.add(ObjectAnimator.ofFloat(textView2, property3, fArr3));
                return;
            }
            return;
        }
        this.textView.setAlpha(z ? 1.0f : 0.5f);
        this.checkBox.setAlpha(z ? 1.0f : 0.5f);
        if (this.valueTextView.getVisibility() == 0) {
            this.valueTextView.setAlpha(z ? 1.0f : 0.5f);
        }
    }

    public void setChecked(boolean z) {
        this.checkBox.setChecked(z, true);
    }

    public boolean isChecked() {
        return this.checkBox.isChecked();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        clearAnimation();
        this.animatedColorBackground = 0;
        super.setBackgroundColor(i);
    }

    public void setBackgroundColorAnimated(boolean z, int i) {
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.animator = null;
        }
        int i2 = this.animatedColorBackground;
        if (i2 != 0) {
            setBackgroundColor(i2);
        }
        if (this.animationPaint == null) {
            this.animationPaint = new Paint(1);
        }
        this.checkBox.setOverrideColor(z ? 1 : 2);
        this.animatedColorBackground = i;
        this.animationPaint.setColor(i);
        this.animationProgress = BitmapDescriptorFactory.HUE_RED;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, ANIMATION_PROGRESS, BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.animator = ofFloat;
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.TextCheckCell.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TextCheckCell textCheckCell = TextCheckCell.this;
                textCheckCell.setBackgroundColor(textCheckCell.animatedColorBackground);
                TextCheckCell.this.animatedColorBackground = 0;
                TextCheckCell.this.invalidate();
            }
        });
        this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.animator.setDuration(240L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAnimationProgress(float f) {
        this.animationProgress = f;
        float lastTouchX = getLastTouchX();
        this.checkBox.setOverrideColorProgress(lastTouchX, getMeasuredHeight() / 2, (Math.max(lastTouchX, getMeasuredWidth() - lastTouchX) + AndroidUtilities.m72dp(40)) * this.animationProgress);
    }

    public void setBackgroundColorAnimatedReverse(final int i) {
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.animator = null;
        }
        int i2 = this.animatedColorBackground;
        if (i2 == 0) {
            i2 = getBackground() instanceof ColorDrawable ? ((ColorDrawable) getBackground()).getColor() : 0;
        }
        if (this.animationPaint == null) {
            this.animationPaint = new Paint(1);
        }
        this.animationPaint.setColor(i2);
        setBackgroundColor(i);
        this.checkBox.setOverrideColor(1);
        this.animatedColorBackground = i;
        ObjectAnimator duration = ObjectAnimator.ofFloat(this, ANIMATION_PROGRESS, 1.0f, BitmapDescriptorFactory.HUE_RED).setDuration(240L);
        this.animator = duration;
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.TextCheckCell.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TextCheckCell.this.setBackgroundColor(i);
                TextCheckCell.this.animatedColorBackground = 0;
                TextCheckCell.this.invalidate();
            }
        });
        this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.animator.start();
    }

    private float getLastTouchX() {
        if (this.isAnimatingToThumbInsteadOfTouch) {
            return LocaleController.isRTL ? AndroidUtilities.m72dp(22) : getMeasuredWidth() - AndroidUtilities.m72dp(42);
        }
        return this.lastTouchX;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int switchDividerX;
        int measuredHeight;
        if (this.drawSwitchDivider) {
            int m72dp = AndroidUtilities.m72dp(this.height / 3);
            canvas.drawRect(getSwitchDividerX(), (getMeasuredHeight() - m72dp) / 2, switchDividerX + 2, measuredHeight + m72dp, Theme.dividerPaint);
        }
        if (this.animatedColorBackground != 0) {
            float lastTouchX = getLastTouchX();
            canvas.drawCircle(lastTouchX, getMeasuredHeight() / 2, (Math.max(lastTouchX, getMeasuredWidth() - lastTouchX) + AndroidUtilities.m72dp(40)) * this.animationProgress, this.animationPaint);
        }
        if (this.needDivider) {
            ImageView imageView = this.imageView;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (imageView != null) {
                if (!LocaleController.isRTL) {
                    f = this.padding;
                }
                canvas.drawLine(f, getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? this.padding : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
                return;
            }
            if (!LocaleController.isRTL) {
                f = AndroidUtilities.m72dp(20);
            }
            canvas.drawLine(f, getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m72dp(20) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    public void setAnimatingToThumbInsteadOfTouch(boolean z) {
        this.isAnimatingToThumbInsteadOfTouch = z;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.checkBox.isChecked());
        StringBuilder sb = new StringBuilder();
        sb.append(this.textView.getText());
        if (!TextUtils.isEmpty(this.valueTextView.getText())) {
            sb.append('\n');
            sb.append(this.valueTextView.getText());
        }
        accessibilityNodeInfo.setContentDescription(sb);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
    }

    public void setColorfullIcon(int i, int i2) {
        if (this.imageView == null) {
            RLottieImageView rLottieImageView = new RLottieImageView(getContext());
            this.imageView = rLottieImageView;
            rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.imageView, LayoutHelper.createFrame(29, 29, (LocaleController.isRTL ? 5 : 3) | 16, 19, 0, 19, 0));
            this.padding = AndroidUtilities.m72dp(65);
            ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).leftMargin = LocaleController.isRTL ? 70 : this.padding;
            ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).rightMargin = LocaleController.isRTL ? this.padding : 70;
        }
        this.imageView.setVisibility(0);
        this.imageView.setPadding(AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2));
        this.imageView.setImageResource(i2);
        this.imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        this.imageView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m72dp(9), i));
    }
}
