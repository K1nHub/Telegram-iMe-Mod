package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.text.TextPaint;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.TooManyCommunitiesHintCell */
/* loaded from: classes5.dex */
public class TooManyCommunitiesHintCell extends FrameLayout {
    private TextView headerTextView;
    private FrameLayout imageLayout;
    private ImageView imageView;
    private TextView messageTextView;

    public TooManyCommunitiesHintCell(Context context) {
        super(context);
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_nameMessage_threeLines"), PorterDuff.Mode.MULTIPLY));
        TextView textView = new TextView(context);
        this.headerTextView = textView;
        textView.setTextColor(Theme.getColor("chats_nameMessage_threeLines"));
        this.headerTextView.setTextSize(1, 20.0f);
        this.headerTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.headerTextView.setGravity(17);
        addView(this.headerTextView, LayoutHelper.createFrame(-1, -2, 51, 52, 75, 52, 0));
        TextView textView2 = new TextView(context);
        this.messageTextView = textView2;
        textView2.setTextColor(Theme.getColor("chats_message"));
        this.messageTextView.setTextSize(1, 14.0f);
        this.messageTextView.setGravity(17);
        addView(this.messageTextView, LayoutHelper.createFrame(-1, -2, 51, 36, 110, 36, 0));
        final TextPaint textPaint = new TextPaint(1);
        textPaint.setColor(-1);
        textPaint.setTextSize(AndroidUtilities.m50dp(12));
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        final Paint paint = new Paint(1);
        FrameLayout frameLayout = new FrameLayout(this, context) { // from class: org.telegram.ui.Cells.TooManyCommunitiesHintCell.1
            RectF rect = new RectF();

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                paint.setColor(Theme.getColor("windowBackgroundWhiteRedText"));
                canvas.save();
                canvas.translate((getMeasuredWidth() - textPaint.measureText(r5)) - AndroidUtilities.m50dp(8), AndroidUtilities.dpf2(7.0f));
                this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, textPaint.measureText(r5), textPaint.getTextSize());
                this.rect.inset(-AndroidUtilities.m50dp(6), -AndroidUtilities.m50dp(3));
                float textSize = (textPaint.getTextSize() / 2.0f) + AndroidUtilities.m50dp(3);
                canvas.drawRoundRect(this.rect, textSize, textSize, paint);
                canvas.drawText(r5, BitmapDescriptorFactory.HUE_RED, textPaint.getTextSize() - AndroidUtilities.dpf2(2.0f), textPaint);
                canvas.restore();
            }
        };
        this.imageLayout = frameLayout;
        frameLayout.setWillNotDraw(false);
        this.imageLayout.addView(this.imageView, LayoutHelper.createFrame(-2, -2, 1));
        addView(this.imageLayout, LayoutHelper.createFrame(-2, -2, 49, 0, 12, 0, 6));
        this.headerTextView.setText(LocaleController.getString("TooManyCommunities", C3316R.string.TooManyCommunities));
        this.imageView.setImageResource(C3316R.C3318drawable.groups_limit1);
    }

    public void setMessageText(String str) {
        this.messageTextView.setText(str);
    }
}
