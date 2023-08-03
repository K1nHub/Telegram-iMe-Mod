package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CheckBoxSquare;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.TextCheckBoxCell */
/* loaded from: classes5.dex */
public class TextCheckBoxCell extends FrameLayout {
    private CheckBoxSquare checkBox;
    private boolean needDivider;
    private TextView textView;

    public TextCheckBoxCell(Context context) {
        this(context, null);
    }

    public TextCheckBoxCell(Context context, boolean z, boolean z2) {
        this(context, z, z2, null);
    }

    public TextCheckBoxCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, false, false, resourcesProvider);
    }

    public TextCheckBoxCell(Context context, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        boolean z3 = LocaleController.isRTL;
        z3 = z2 ? !z3 : z3;
        TextView textView = new TextView(context);
        this.textView = textView;
        if (resourcesProvider != null) {
            textView.setTextColor(resourcesProvider.getColor(z ? Theme.key_dialogTextBlack : Theme.key_windowBackgroundWhiteBlackText));
        } else {
            textView.setTextColor(Theme.getColor(z ? Theme.key_dialogTextBlack : Theme.key_windowBackgroundWhiteBlackText));
        }
        this.textView.setTextSize(1, 16.0f);
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        addView(this.textView, LayoutHelper.createFrame(-1, -1, (z3 ? 5 : 3) | 48, z3 ? 66 : 21, 0, z3 ? 21 : 66, 0));
        CheckBoxSquare checkBoxSquare = new CheckBoxSquare(context, z, resourcesProvider);
        this.checkBox = checkBoxSquare;
        checkBoxSquare.setDuplicateParentStateEnabled(false);
        this.checkBox.setFocusable(false);
        this.checkBox.setFocusableInTouchMode(false);
        this.checkBox.setClickable(false);
        addView(this.checkBox, LayoutHelper.createFrame(18, 18, (z3 ? 3 : 5) | 16, 21, 0, 21, 0));
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.checkBox.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(50) + (this.needDivider ? 1 : 0), 1073741824));
    }

    public void setTextAndCheck(String str, boolean z, boolean z2) {
        this.textView.setText(str);
        this.checkBox.setChecked(z, false);
        this.needDivider = z2;
        setWillNotDraw(!z2);
    }

    public void setChecked(boolean z) {
        this.checkBox.setChecked(z, true);
    }

    public boolean isChecked() {
        return this.checkBox.isChecked();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m72dp(20), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m72dp(20) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.CheckBox");
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(isChecked());
    }
}
