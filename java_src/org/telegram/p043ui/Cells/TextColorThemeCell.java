package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.TextColorThemeCell */
/* loaded from: classes5.dex */
public class TextColorThemeCell extends FrameLayout {
    private static Paint colorPaint;
    private float alpha;
    private int currentColor;
    private boolean needDivider;
    private TextView textView;

    public TextColorThemeCell(Context context) {
        super(context);
        this.alpha = 1.0f;
        if (colorPaint == null) {
            colorPaint = new Paint(1);
        }
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(-14606047);
        this.textView.setTextSize(1, 16.0f);
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setPadding(0, 0, 0, AndroidUtilities.m72dp(3));
        TextView textView2 = this.textView;
        boolean z = LocaleController.isRTL;
        addView(textView2, LayoutHelper.createFrame(-1, -1, (z ? 5 : 3) | 48, z ? 21 : 57, 0, z ? 57 : 21, 0));
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        this.alpha = f;
        invalidate();
    }

    @Override // android.view.View
    public float getAlpha() {
        return this.alpha;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(50) + (this.needDivider ? 1 : 0), 1073741824));
    }

    public void setTextAndColor(CharSequence charSequence, int i) {
        this.textView.setText(charSequence);
        this.currentColor = i;
        setWillNotDraw(!this.needDivider && i == 0);
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i = this.currentColor;
        if (i != 0) {
            colorPaint.setColor(i);
            colorPaint.setAlpha((int) (this.alpha * 255.0f));
            canvas.drawCircle(!LocaleController.isRTL ? AndroidUtilities.m72dp(28) : getMeasuredWidth() - AndroidUtilities.m72dp(28), getMeasuredHeight() / 2, AndroidUtilities.m72dp(10), colorPaint);
        }
    }
}
