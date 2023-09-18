package org.telegram.p043ui.Cells;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RadioButton;
/* renamed from: org.telegram.ui.Cells.RadioColorCell */
/* loaded from: classes3.dex */
public class RadioColorCell extends FrameLayout {
    private RadioButton radioButton;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView text2View;
    private TextView textView;

    public RadioColorCell(Context context) {
        this(context, null);
    }

    public RadioColorCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        RadioButton radioButton = new RadioButton(context);
        this.radioButton = radioButton;
        radioButton.setSize(AndroidUtilities.m72dp(20));
        this.radioButton.setColor(getThemedColor(Theme.key_dialogRadioBackground), getThemedColor(Theme.key_dialogRadioBackgroundChecked));
        RadioButton radioButton2 = this.radioButton;
        boolean z = LocaleController.isRTL;
        addView(radioButton2, LayoutHelper.createFrame(22, 22, (z ? 5 : 3) | 48, z ? 0 : 18, 14, z ? 18 : 0, 0));
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        TextView textView2 = this.textView;
        boolean z2 = LocaleController.isRTL;
        addView(textView2, LayoutHelper.createFrame(-2, -2, (z2 ? 5 : 3) | 48, z2 ? 21 : 51, 13, z2 ? 51 : 21, 0));
        TextView textView3 = new TextView(context);
        this.text2View = textView3;
        textView3.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        this.text2View.setTextSize(1, 14.0f);
        this.text2View.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.text2View.setVisibility(8);
        TextView textView4 = this.text2View;
        boolean z3 = LocaleController.isRTL;
        addView(textView4, LayoutHelper.createFrame(-2, -2, (z3 ? 5 : 3) | 48, z3 ? 21 : 51, 37, z3 ? 51 : 21, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.text2View.getVisibility() == 0) {
            this.text2View.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i) - AndroidUtilities.m72dp(72), 1073741824), i2);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(50) + (this.text2View.getVisibility() == 0 ? AndroidUtilities.m72dp(4) + this.text2View.getMeasuredHeight() : 0), 1073741824));
    }

    public void setCheckColor(int i, int i2) {
        this.radioButton.setColor(i, i2);
    }

    public void setTextAndValue(CharSequence charSequence, boolean z) {
        this.textView.setText(charSequence);
        this.text2View.setVisibility(8);
        this.radioButton.setChecked(z, false);
    }

    public void setTextAndText2AndValue(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        this.textView.setText(charSequence);
        this.text2View.setVisibility(0);
        this.text2View.setText(charSequence2);
        this.radioButton.setChecked(z, false);
    }

    public void setChecked(boolean z, boolean z2) {
        this.radioButton.setChecked(z, z2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.RadioButton");
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.radioButton.isChecked());
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
