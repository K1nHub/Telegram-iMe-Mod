package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.Switch;
/* renamed from: org.telegram.ui.Cells.NotificationsCheckCell */
/* loaded from: classes5.dex */
public class NotificationsCheckCell extends FrameLayout {
    private boolean animationsEnabled;
    private Switch checkBox;
    private int currentHeight;
    private boolean drawLine;
    private ImageView imageView;
    private boolean isMultiline;
    private boolean needDivider;
    private Theme.ResourcesProvider resourcesProvider;
    private TextView textView;
    private TextView valueTextView;

    public boolean isInSwitch(float f) {
        int m54dp = AndroidUtilities.m54dp(76);
        boolean z = LocaleController.isRTL;
        return (z && f <= ((float) m54dp)) || (!z && f >= ((float) (getMeasuredWidth() - m54dp)));
    }

    public void toggleCheckBox() {
        setChecked(!isChecked());
    }

    public NotificationsCheckCell(Context context) {
        this(context, 21, 70, false, null);
    }

    public NotificationsCheckCell(Context context, int i, int i2, boolean z) {
        this(context, i, i2, z, null);
    }

    public NotificationsCheckCell(Context context, int i, int i2, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.drawLine = true;
        this.resourcesProvider = resourcesProvider;
        setWillNotDraw(false);
        this.currentHeight = i2;
        if (z) {
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setFocusable(false);
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.imageView, LayoutHelper.createFrame(48, 48, (LocaleController.isRTL ? 5 : 3) | 16, 8, 0, 8, 0));
        }
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView2 = this.textView;
        boolean z2 = LocaleController.isRTL;
        int i3 = 64;
        addView(textView2, LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 48, z2 ? 80 : z ? 64 : i, ((this.currentHeight - 70) / 2) + 13, z2 ? z ? 64 : i : 80, 0));
        TextView textView3 = new TextView(context);
        this.valueTextView = textView3;
        textView3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        this.valueTextView.setTextSize(1, 13.0f);
        this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.valueTextView.setLines(1);
        this.valueTextView.setMaxLines(1);
        this.valueTextView.setSingleLine(true);
        this.valueTextView.setPadding(0, 0, 0, 0);
        this.valueTextView.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView4 = this.valueTextView;
        boolean z3 = LocaleController.isRTL;
        int i4 = (z3 ? 5 : 3) | 48;
        int i5 = z3 ? 80 : z ? 64 : i;
        int i6 = (38 - (z ? 2 : 0)) + ((this.currentHeight - 70) / 2);
        if (!z3) {
            i3 = 80;
        } else if (!z) {
            i3 = i;
        }
        addView(textView4, LayoutHelper.createFrame(-2, -2, i4, i5, i6, i3, 0));
        Switch r3 = new Switch(context, resourcesProvider);
        this.checkBox = r3;
        int i7 = Theme.key_switchTrack;
        int i8 = Theme.key_switchTrackChecked;
        int i9 = Theme.key_windowBackgroundWhite;
        r3.setColors(i7, i8, i9, i9);
        addView(this.checkBox, LayoutHelper.createFrame(37, 40, (LocaleController.isRTL ? 3 : 5) | 16, 21, 0, 21, 0));
        this.checkBox.setFocusable(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.isMultiline) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(this.currentHeight), 1073741824));
        }
    }

    public void setTextAndValueAndCheck(String str, CharSequence charSequence, boolean z, boolean z2) {
        setTextAndValueAndCheck(str, charSequence, z, 0, false, z2);
    }

    public void setTextAndValueAndCheck(String str, CharSequence charSequence, boolean z, int i, boolean z2) {
        setTextAndValueAndCheck(str, charSequence, z, i, false, z2);
    }

    public void setTextAndValueAndCheck(String str, CharSequence charSequence, boolean z, int i, boolean z2, boolean z3) {
        setTextAndValueAndIconAndCheck(str, charSequence, 0, z, i, z2, z3);
    }

    public void setTextAndValueAndIconAndCheck(String str, CharSequence charSequence, int i, boolean z, int i2, boolean z2, boolean z3) {
        this.textView.setText(str);
        this.valueTextView.setText(charSequence);
        ImageView imageView = this.imageView;
        if (imageView != null) {
            imageView.setImageResource(i);
            this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogIcon), PorterDuff.Mode.MULTIPLY));
        }
        this.checkBox.setChecked(z, i2, this.animationsEnabled);
        this.valueTextView.setVisibility(0);
        this.needDivider = z3;
        this.isMultiline = z2;
        if (z2) {
            this.valueTextView.setLines(0);
            this.valueTextView.setMaxLines(0);
            this.valueTextView.setSingleLine(false);
            this.valueTextView.setEllipsize(null);
            this.valueTextView.setPadding(0, 0, 0, AndroidUtilities.m54dp(14));
        } else {
            this.valueTextView.setLines(1);
            this.valueTextView.setMaxLines(1);
            this.valueTextView.setSingleLine(true);
            this.valueTextView.setEllipsize(TextUtils.TruncateAt.END);
            this.valueTextView.setPadding(0, 0, 0, 0);
        }
        this.checkBox.setContentDescription(str);
    }

    public void setDrawLine(boolean z) {
        this.drawLine = z;
    }

    public void setChecked(boolean z) {
        this.checkBox.setChecked(z, true);
    }

    public void setChecked(boolean z, int i) {
        this.checkBox.setChecked(z, i, true);
    }

    public boolean isChecked() {
        return this.checkBox.isChecked();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int measuredHeight;
        float m54dp;
        int i;
        if (this.needDivider) {
            if (LocaleController.isRTL) {
                m54dp = BitmapDescriptorFactory.HUE_RED;
            } else {
                m54dp = AndroidUtilities.m54dp(this.imageView != null ? 64 : 20);
            }
            float f = m54dp;
            float measuredHeight2 = getMeasuredHeight() - 1;
            int measuredWidth = getMeasuredWidth();
            if (LocaleController.isRTL) {
                i = AndroidUtilities.m54dp(this.imageView == null ? 20 : 64);
            } else {
                i = 0;
            }
            canvas.drawLine(f, measuredHeight2, measuredWidth - i, getMeasuredHeight() - 1, Theme.dividerPaint);
        }
        if (this.drawLine) {
            int m54dp2 = LocaleController.isRTL ? AndroidUtilities.m54dp(76) : (getMeasuredWidth() - AndroidUtilities.m54dp(76)) - 1;
            canvas.drawRect(m54dp2, (getMeasuredHeight() - AndroidUtilities.m54dp(22)) / 2, m54dp2 + 2, measuredHeight + AndroidUtilities.m54dp(22), Theme.dividerPaint);
        }
    }

    public void setAnimationsEnabled(boolean z) {
        this.animationsEnabled = z;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        StringBuilder sb = new StringBuilder();
        sb.append(this.textView.getText());
        TextView textView = this.valueTextView;
        if (textView != null && !TextUtils.isEmpty(textView.getText())) {
            sb.append("\n");
            sb.append(this.valueTextView.getText());
        }
        accessibilityNodeInfo.setContentDescription(sb);
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.checkBox.isChecked());
    }
}
