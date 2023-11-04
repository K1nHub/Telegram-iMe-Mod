package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.DialogsHintCell */
/* loaded from: classes5.dex */
public class DialogsHintCell extends FrameLayout {
    private ImageView chevronView;
    private LinearLayout contentView;
    private int height;
    private TextView messageView;
    private TextView titleView;

    public DialogsHintCell(Context context) {
        super(context);
        setWillNotDraw(false);
        setPadding(AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(8));
        LinearLayout linearLayout = new LinearLayout(context);
        this.contentView = linearLayout;
        linearLayout.setOrientation(1);
        this.contentView.setPadding(LocaleController.isRTL ? AndroidUtilities.m104dp(24) : 0, 0, LocaleController.isRTL ? 0 : AndroidUtilities.m104dp(24), 0);
        addView(this.contentView, LayoutHelper.createFrame(-1, -1));
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTextSize(1, 15.0f);
        this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleView.setSingleLine();
        this.contentView.addView(this.titleView, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 48));
        TextView textView2 = new TextView(context);
        this.messageView = textView2;
        textView2.setTextSize(1, 14.0f);
        this.messageView.setMaxLines(2);
        this.messageView.setEllipsize(TextUtils.TruncateAt.END);
        this.contentView.addView(this.messageView, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 48));
        ImageView imageView = new ImageView(context);
        this.chevronView = imageView;
        imageView.setImageResource(C3634R.C3636drawable.arrow_newchat);
        addView(this.chevronView, LayoutHelper.createFrame(16, 16, (LocaleController.isRTL ? 3 : 5) | 16));
        updateColors();
    }

    public void updateColors() {
        this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        TextView textView = this.messageView;
        int i = Theme.key_windowBackgroundWhiteGrayText;
        textView.setTextColor(Theme.getColor(i));
        this.chevronView.setColorFilter(Theme.getColor(i), PorterDuff.Mode.SRC_IN);
        setBackground(Theme.AdaptiveRipple.filledRect());
    }

    public void setText(CharSequence charSequence, CharSequence charSequence2) {
        this.titleView.setText(charSequence);
        this.messageView.setText(charSequence2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getHeight() - 1, getWidth(), getHeight() - 1, Theme.dividerPaint);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        if (size <= 0) {
            size = AndroidUtilities.displaySize.x;
        }
        this.contentView.measure(View.MeasureSpec.makeMeasureSpec((size - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.y, Integer.MIN_VALUE));
        int measuredHeight = this.contentView.getMeasuredHeight() + getPaddingTop() + getPaddingBottom() + 1;
        this.height = measuredHeight;
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public int height() {
        if (getVisibility() != 0) {
            return 0;
        }
        if (this.height <= 0) {
            this.height = AndroidUtilities.m104dp(72) + 1;
        }
        return this.height;
    }
}
