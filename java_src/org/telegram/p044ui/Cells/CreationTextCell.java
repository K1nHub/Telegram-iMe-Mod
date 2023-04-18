package org.telegram.p044ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.SimpleTextView;
import org.telegram.p044ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Cells.CreationTextCell */
/* loaded from: classes5.dex */
public class CreationTextCell extends FrameLayout {
    boolean divider;
    private ImageView imageView;
    public int startPadding;
    private SimpleTextView textView;

    public CreationTextCell(Context context) {
        this(context, null);
    }

    public CreationTextCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.startPadding = 70;
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setTextSize(16);
        this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlueText2", resourcesProvider));
        this.textView.setTag("windowBackgroundWhiteBlueText2");
        addView(this.textView);
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        addView(this.imageView);
        setWillNotDraw(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        AndroidUtilities.m50dp(48);
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(94), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
        this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(50), 1073741824));
        setMeasuredDimension(size, AndroidUtilities.m50dp(50));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int m50dp;
        int i5 = i3 - i;
        int textHeight = ((i4 - i2) - this.textView.getTextHeight()) / 2;
        if (LocaleController.isRTL) {
            m50dp = (getMeasuredWidth() - this.textView.getMeasuredWidth()) - AndroidUtilities.m50dp(this.imageView.getVisibility() == 0 ? this.startPadding : 25);
        } else {
            m50dp = AndroidUtilities.m50dp(this.imageView.getVisibility() == 0 ? this.startPadding : 25);
        }
        SimpleTextView simpleTextView = this.textView;
        simpleTextView.layout(m50dp, textHeight, simpleTextView.getMeasuredWidth() + m50dp, this.textView.getMeasuredHeight() + textHeight);
        int m50dp2 = !LocaleController.isRTL ? (AndroidUtilities.m50dp(this.startPadding) - this.imageView.getMeasuredWidth()) / 2 : (i5 - this.imageView.getMeasuredWidth()) - AndroidUtilities.m50dp(25);
        ImageView imageView = this.imageView;
        imageView.layout(m50dp2, 0, imageView.getMeasuredWidth() + m50dp2, this.imageView.getMeasuredHeight());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.divider) {
            canvas.drawLine(AndroidUtilities.m50dp(this.startPadding), getMeasuredHeight() - 1, getMeasuredWidth() + AndroidUtilities.m50dp(23), getMeasuredHeight(), Theme.dividerPaint);
        }
    }

    public void setTextAndIcon(String str, Drawable drawable, boolean z) {
        this.textView.setText(str);
        this.imageView.setImageDrawable(drawable);
        this.divider = z;
    }
}