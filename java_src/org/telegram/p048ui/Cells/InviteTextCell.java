package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Cells.InviteTextCell */
/* loaded from: classes5.dex */
public class InviteTextCell extends FrameLayout {
    private ImageView imageView;
    private SimpleTextView textView;

    public InviteTextCell(Context context) {
        super(context);
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.textView.setTextSize(17);
        this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
        addView(this.textView);
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.MULTIPLY));
        addView(this.imageView);
    }

    public SimpleTextView getTextView() {
        return this.textView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int m50dp = AndroidUtilities.m50dp(72);
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(95), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
        this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m50dp, Integer.MIN_VALUE));
        setMeasuredDimension(size, AndroidUtilities.m50dp(72));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i4 - i2;
        int i6 = i3 - i;
        int textHeight = (i5 - this.textView.getTextHeight()) / 2;
        int m50dp = AndroidUtilities.m50dp(!LocaleController.isRTL ? 71 : 24);
        SimpleTextView simpleTextView = this.textView;
        simpleTextView.layout(m50dp, textHeight, simpleTextView.getMeasuredWidth() + m50dp, this.textView.getMeasuredHeight() + textHeight);
        int measuredHeight = (i5 - this.imageView.getMeasuredHeight()) / 2;
        int m50dp2 = !LocaleController.isRTL ? AndroidUtilities.m50dp(20) : (i6 - this.imageView.getMeasuredWidth()) - AndroidUtilities.m50dp(20);
        ImageView imageView = this.imageView;
        imageView.layout(m50dp2, measuredHeight, imageView.getMeasuredWidth() + m50dp2, this.imageView.getMeasuredHeight() + measuredHeight);
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    public void setTextAndIcon(String str, int i) {
        this.textView.setText(str);
        this.imageView.setImageResource(i);
    }
}
