package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimationProperties;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RadioButton;
/* renamed from: org.telegram.ui.Cells.TextRadioCell */
/* loaded from: classes5.dex */
public class TextRadioCell extends FrameLayout {
    private int animatedColorBackground;
    private Paint animationPaint;
    private float animationProgress;
    private int height;
    private boolean isMultiline;
    private boolean isRTL;
    private float lastTouchX;
    private boolean needDivider;
    private int padding;
    private RadioButton radioButton;
    private TextView textView;
    private TextView valueTextView;

    static {
        new AnimationProperties.FloatProperty<TextRadioCell>("animationProgress") { // from class: org.telegram.ui.Cells.TextRadioCell.1
            @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
            public void setValue(TextRadioCell textRadioCell, float f) {
                textRadioCell.setAnimationProgress(f);
                textRadioCell.invalidate();
            }

            @Override // android.util.Property
            public Float get(TextRadioCell textRadioCell) {
                return Float.valueOf(textRadioCell.animationProgress);
            }
        };
    }

    public TextRadioCell(Context context) {
        this(context, 21);
    }

    public TextRadioCell(Context context, int i) {
        this(context, i, false);
    }

    public TextRadioCell(Context context, int i, boolean z) {
        super(context);
        this.height = 50;
        this.padding = i;
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(z ? Theme.key_dialogTextBlack : Theme.key_windowBackgroundWhiteBlackText));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView2 = this.textView;
        boolean z2 = LocaleController.isRTL;
        addView(textView2, LayoutHelper.createFrame(-1, -1, (z2 ? 5 : 3) | 48, z2 ? i : 64, 0, z2 ? 64 : i, 0));
        TextView textView3 = new TextView(context);
        this.valueTextView = textView3;
        textView3.setTextColor(Theme.getColor(z ? Theme.key_dialogIcon : Theme.key_windowBackgroundWhiteGrayText2));
        this.valueTextView.setTextSize(1, 13.0f);
        this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.valueTextView.setLines(1);
        this.valueTextView.setMaxLines(1);
        this.valueTextView.setSingleLine(true);
        this.valueTextView.setPadding(0, 0, 0, 0);
        this.valueTextView.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView4 = this.valueTextView;
        boolean z3 = LocaleController.isRTL;
        addView(textView4, LayoutHelper.createFrame(-2, -2, (z3 ? 5 : 3) | 48, z3 ? i : 64, 36, z3 ? 64 : i, 0));
        RadioButton radioButton = new RadioButton(context);
        this.radioButton = radioButton;
        radioButton.setSize(AndroidUtilities.m72dp(20));
        this.radioButton.setColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_radioBackgroundChecked));
        addView(this.radioButton, LayoutHelper.createFrame(20, 20, (LocaleController.isRTL ? 5 : 3) | 16, 22, 0, 22, 0));
        this.isRTL = LocaleController.isRTL;
        setClipChildren(false);
    }

    public void updateRTL() {
        boolean z = this.isRTL;
        boolean z2 = LocaleController.isRTL;
        if (z == z2) {
            return;
        }
        this.isRTL = z2;
        this.textView.setGravity((z2 ? 5 : 3) | 16);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        boolean z3 = LocaleController.isRTL;
        layoutParams.gravity = (z3 ? 5 : 3) | 48;
        layoutParams.leftMargin = AndroidUtilities.m72dp(z3 ? this.padding : 64);
        layoutParams.rightMargin = AndroidUtilities.m72dp(LocaleController.isRTL ? 64 : this.padding);
        this.textView.setLayoutParams(layoutParams);
        this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.valueTextView.getLayoutParams();
        boolean z4 = LocaleController.isRTL;
        layoutParams2.gravity = (z4 ? 5 : 3) | 48;
        layoutParams2.leftMargin = AndroidUtilities.m72dp(z4 ? this.padding : 64);
        layoutParams2.rightMargin = AndroidUtilities.m72dp(LocaleController.isRTL ? 64 : this.padding);
        this.valueTextView.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.radioButton.getLayoutParams();
        layoutParams3.gravity = (LocaleController.isRTL ? 5 : 3) | 16;
        this.radioButton.setLayoutParams(layoutParams3);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
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

    public void setTypeface(Typeface typeface) {
        this.textView.setTypeface(typeface);
    }

    public void setHeight(int i) {
        this.height = i;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
    }

    public void setTextAndValueAndCheck(String str, String str2, boolean z, boolean z2, boolean z3) {
        this.textView.setText(str);
        this.valueTextView.setText(str2);
        this.radioButton.setChecked(z, false);
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

    public void setChecked(boolean z) {
        this.radioButton.setChecked(z, true);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        clearAnimation();
        this.animatedColorBackground = 0;
        super.setBackgroundColor(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAnimationProgress(float f) {
        this.animationProgress = f;
        Math.max(this.lastTouchX, getMeasuredWidth() - this.lastTouchX);
        AndroidUtilities.m72dp(40);
        int measuredHeight = getMeasuredHeight() / 2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.animatedColorBackground != 0) {
            canvas.drawCircle(this.lastTouchX, getMeasuredHeight() / 2, (Math.max(this.lastTouchX, getMeasuredWidth() - this.lastTouchX) + AndroidUtilities.m72dp(40)) * this.animationProgress, this.animationPaint);
        }
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m72dp(64), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m72dp(64) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        String str;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.radioButton.isChecked());
        if (this.radioButton.isChecked()) {
            i = C3419R.string.NotificationsOn;
            str = "NotificationsOn";
        } else {
            i = C3419R.string.NotificationsOff;
            str = "NotificationsOff";
        }
        accessibilityNodeInfo.setContentDescription(LocaleController.getString(str, i));
        StringBuilder sb = new StringBuilder();
        sb.append(this.textView.getText());
        if (!TextUtils.isEmpty(this.valueTextView.getText())) {
            sb.append("\n");
            sb.append(this.valueTextView.getText());
        }
        accessibilityNodeInfo.setContentDescription(sb);
        accessibilityNodeInfo.setClassName("android.widget.RadioButton");
    }
}
