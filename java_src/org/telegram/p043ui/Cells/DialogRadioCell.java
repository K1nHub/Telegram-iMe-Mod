package org.telegram.p043ui.Cells;

import android.graphics.Canvas;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.RadioButton;
/* renamed from: org.telegram.ui.Cells.DialogRadioCell */
/* loaded from: classes5.dex */
public class DialogRadioCell extends FrameLayout {
    private boolean needDivider;
    private RadioButton radioButton;
    private TextView textView;

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m107dp(50) + (this.needDivider ? 1 : 0));
        int measuredWidth = ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - AndroidUtilities.m107dp(34);
        this.radioButton.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(22), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(22), 1073741824));
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(AndroidUtilities.m107dp(LocaleController.isRTL ? 0 : 60), getHeight() - 1, getMeasuredWidth() - AndroidUtilities.m107dp(LocaleController.isRTL ? 60 : 0), getHeight() - 1, Theme.dividerPaint);
        }
    }
}
