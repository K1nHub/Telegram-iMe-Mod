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
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.DialogsHintCell */
/* loaded from: classes5.dex */
public class DialogsHintCell extends FrameLayout {
    private final ImageView chevronView;
    private final ImageView closeView;
    private final LinearLayout contentView;
    private int height;
    private final TextView messageView;
    private final TextView titleView;

    public DialogsHintCell(Context context) {
        super(context);
        setWillNotDraw(false);
        setPadding(AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(8));
        LinearLayout linearLayout = new LinearLayout(context);
        this.contentView = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setPadding(LocaleController.isRTL ? AndroidUtilities.m107dp(24) : 0, 0, LocaleController.isRTL ? 0 : AndroidUtilities.m107dp(24), 0);
        addView(linearLayout, LayoutHelper.createFrame(-1, -1));
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTextSize(1, 15.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setSingleLine();
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, BitmapDescriptorFactory.HUE_RED, (LocaleController.isRTL ? 5 : 3) | 48));
        TextView textView2 = new TextView(context);
        this.messageView = textView2;
        textView2.setTextSize(1, 14.0f);
        textView2.setMaxLines(2);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 48));
        ImageView imageView = new ImageView(context);
        this.chevronView = imageView;
        imageView.setImageResource(C3632R.C3634drawable.arrow_newchat);
        addView(imageView, LayoutHelper.createFrame(16, 16, (LocaleController.isRTL ? 3 : 5) | 16));
        ImageView imageView2 = new ImageView(context);
        this.closeView = imageView2;
        imageView2.setImageResource(C3632R.C3634drawable.msg_close);
        imageView2.setPadding(AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6));
        boolean z = LocaleController.isRTL;
        addView(imageView2, LayoutHelper.createFrame(-2, -2, (z ? 3 : 5) | 16, z ? -15 : 0, 0, z ? 0 : -15, 0));
        imageView2.setVisibility(8);
        setClipToPadding(false);
        updateColors();
    }

    public void updateColors() {
        this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        TextView textView = this.messageView;
        int i = Theme.key_windowBackgroundWhiteGrayText;
        textView.setTextColor(Theme.getColor(i));
        this.chevronView.setColorFilter(Theme.getColor(i), PorterDuff.Mode.SRC_IN);
        this.closeView.setColorFilter(Theme.getColor(i), PorterDuff.Mode.SRC_IN);
        this.closeView.setBackground(Theme.AdaptiveRipple.filledCircle());
        setBackground(Theme.AdaptiveRipple.filledRect());
    }

    public void setText(CharSequence charSequence, CharSequence charSequence2) {
        this.titleView.setText(charSequence);
        this.titleView.setCompoundDrawables(null, null, null, null);
        this.messageView.setText(charSequence2);
        this.chevronView.setVisibility(0);
        this.closeView.setVisibility(8);
    }

    public void setChristmasStyle(View.OnClickListener onClickListener) {
        this.chevronView.setVisibility(4);
        this.closeView.setVisibility(0);
        this.closeView.setOnClickListener(onClickListener);
        Emoji.EmojiDrawable emojiDrawable = Emoji.getEmojiDrawable("🎄");
        if (emojiDrawable != null) {
            emojiDrawable.setBounds(AndroidUtilities.m107dp(2), -AndroidUtilities.m107dp(2), Emoji.drawImgSize + AndroidUtilities.m107dp(2), Emoji.drawImgSize - AndroidUtilities.m107dp(2));
            this.titleView.setCompoundDrawables(null, null, emojiDrawable, null);
        }
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
            this.height = AndroidUtilities.m107dp(72) + 1;
        }
        return this.height;
    }
}
