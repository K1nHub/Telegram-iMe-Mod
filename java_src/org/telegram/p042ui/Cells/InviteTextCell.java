package org.telegram.p042ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p042ui.ActionBar.SimpleTextView;
import org.telegram.p042ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Cells.InviteTextCell */
/* loaded from: classes5.dex */
public class InviteTextCell extends FrameLayout {
    private ImageView imageView;
    private SimpleTextView textView;

    public InviteTextCell(Context context) {
        super(context);
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.textView.setTextSize(17);
        this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
        addView(this.textView);
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
        addView(this.imageView);
    }

    public SimpleTextView getTextView() {
        return this.textView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int m102dp = AndroidUtilities.m102dp(72);
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m102dp(95), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(20), 1073741824));
        this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m102dp, Integer.MIN_VALUE));
        setMeasuredDimension(size, AndroidUtilities.m102dp(72));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i4 - i2;
        int i6 = i3 - i;
        int textHeight = (i5 - this.textView.getTextHeight()) / 2;
        int m102dp = AndroidUtilities.m102dp(!LocaleController.isRTL ? 71 : 24);
        SimpleTextView simpleTextView = this.textView;
        simpleTextView.layout(m102dp, textHeight, simpleTextView.getMeasuredWidth() + m102dp, this.textView.getMeasuredHeight() + textHeight);
        int measuredHeight = (i5 - this.imageView.getMeasuredHeight()) / 2;
        int m102dp2 = !LocaleController.isRTL ? AndroidUtilities.m102dp(20) : (i6 - this.imageView.getMeasuredWidth()) - AndroidUtilities.m102dp(20);
        ImageView imageView = this.imageView;
        imageView.layout(m102dp2, measuredHeight, imageView.getMeasuredWidth() + m102dp2, this.imageView.getMeasuredHeight() + measuredHeight);
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    public void setTextAndIcon(String str, int i) {
        this.textView.setText(str);
        this.imageView.setImageResource(i);
    }
}
