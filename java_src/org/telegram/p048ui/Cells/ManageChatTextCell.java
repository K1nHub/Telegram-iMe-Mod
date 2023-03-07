package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Cells.ManageChatTextCell */
/* loaded from: classes5.dex */
public class ManageChatTextCell extends FrameLayout {
    private boolean divider;
    private String dividerColor;
    private ImageView imageView;
    private SimpleTextView textView;
    private SimpleTextView valueTextView;

    public ManageChatTextCell(Context context) {
        super(context);
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.textView.setTextSize(16);
        this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
        addView(this.textView);
        SimpleTextView simpleTextView2 = new SimpleTextView(context);
        this.valueTextView = simpleTextView2;
        simpleTextView2.setTextColor(Theme.getColor("windowBackgroundWhiteValueText"));
        this.valueTextView.setTextSize(16);
        this.valueTextView.setGravity(LocaleController.isRTL ? 3 : 5);
        addView(this.valueTextView);
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.MULTIPLY));
        addView(this.imageView);
    }

    public SimpleTextView getTextView() {
        return this.textView;
    }

    public SimpleTextView getValueTextView() {
        return this.valueTextView;
    }

    public void setDividerColor(String str) {
        this.dividerColor = str;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int m50dp = AndroidUtilities.m50dp(48);
        this.valueTextView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(24), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(95), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
        this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m50dp, Integer.MIN_VALUE));
        setMeasuredDimension(size, AndroidUtilities.m50dp(56) + (this.divider ? 1 : 0));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i4 - i2;
        int i6 = i3 - i;
        int textHeight = (i5 - this.valueTextView.getTextHeight()) / 2;
        int m50dp = LocaleController.isRTL ? AndroidUtilities.m50dp(24) : 0;
        SimpleTextView simpleTextView = this.valueTextView;
        simpleTextView.layout(m50dp, textHeight, simpleTextView.getMeasuredWidth() + m50dp, this.valueTextView.getMeasuredHeight() + textHeight);
        int textHeight2 = (i5 - this.textView.getTextHeight()) / 2;
        int m50dp2 = !LocaleController.isRTL ? AndroidUtilities.m50dp(71) : AndroidUtilities.m50dp(24);
        SimpleTextView simpleTextView2 = this.textView;
        simpleTextView2.layout(m50dp2, textHeight2, simpleTextView2.getMeasuredWidth() + m50dp2, this.textView.getMeasuredHeight() + textHeight2);
        int m50dp3 = AndroidUtilities.m50dp(9);
        int m50dp4 = !LocaleController.isRTL ? AndroidUtilities.m50dp(21) : (i6 - this.imageView.getMeasuredWidth()) - AndroidUtilities.m50dp(21);
        ImageView imageView = this.imageView;
        imageView.layout(m50dp4, m50dp3, imageView.getMeasuredWidth() + m50dp4, this.imageView.getMeasuredHeight() + m50dp3);
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    public void setColors(String str, String str2) {
        this.textView.setTextColor(Theme.getColor(str2));
        this.textView.setTag(str2);
        this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(str), PorterDuff.Mode.MULTIPLY));
        this.imageView.setTag(str);
    }

    public void setText(String str, String str2, int i, boolean z) {
        setText(str, str2, i, 5, z);
    }

    public void setText(String str, String str2, int i, int i2, boolean z) {
        this.textView.setText(str);
        if (str2 != null) {
            this.valueTextView.setText(str2);
            this.valueTextView.setVisibility(0);
        } else {
            this.valueTextView.setVisibility(4);
        }
        this.imageView.setPadding(0, AndroidUtilities.m50dp(i2), 0, 0);
        this.imageView.setImageResource(i);
        this.divider = z;
        setWillNotDraw(!z);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.divider) {
            String str = this.dividerColor;
            if (str != null) {
                Theme.dividerExtraPaint.setColor(Theme.getColor(str));
            }
            canvas.drawLine(AndroidUtilities.m50dp(71), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, this.dividerColor != null ? Theme.dividerExtraPaint : Theme.dividerPaint);
        }
    }
}
