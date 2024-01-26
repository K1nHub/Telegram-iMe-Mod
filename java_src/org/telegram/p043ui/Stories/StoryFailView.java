package org.telegram.p043ui.Stories;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.Stories.StoryFailView */
/* loaded from: classes6.dex */
public class StoryFailView extends FrameLayout {
    private final TextView button;
    private final Paint redPaint;
    private final TextView subtitleTextView;
    private final TextView titleTextView;
    private final Paint whitePaint;

    public StoryFailView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        Paint paint = new Paint(1);
        this.redPaint = paint;
        Paint paint2 = new Paint(1);
        this.whitePaint = paint2;
        paint.setColor(Theme.getColor(Theme.key_text_RedBold, resourcesProvider));
        paint2.setColor(-1);
        setWillNotDraw(false);
        TextView textView = new TextView(context);
        this.titleTextView = textView;
        textView.setTextSize(1, 14.0f);
        textView.setText(LocaleController.getString(C3632R.string.StoryError));
        textView.setTextColor(-1);
        addView(textView, LayoutHelper.createFrame(-2, -2, 19, 44, 0, 0, 0));
        TextView textView2 = new TextView(context);
        this.subtitleTextView = textView2;
        textView2.setTextSize(1, 8.0f);
        textView2.setTextColor(Theme.multAlpha(-1, 0.5f));
        textView2.setVisibility(8);
        textView2.setTranslationY(AndroidUtilities.m107dp(9));
        addView(textView2, LayoutHelper.createFrame(-2, -2, 19, 44, 0, 0, 0));
        TextView textView3 = new TextView(context);
        this.button = textView3;
        textView3.setPadding(AndroidUtilities.m107dp(13), 0, AndroidUtilities.m107dp(13), 0);
        textView3.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(16), 536870911, 956301311));
        textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView3.setText(LocaleController.getString(C3632R.string.TryAgain));
        textView3.setTextSize(1, 14.0f);
        textView3.setTextColor(-1);
        textView3.setGravity(17);
        addView(textView3, LayoutHelper.createFrame(-2, 32, 21, 0, 0, 12, 0));
    }

    public void set(TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null || TextUtils.isEmpty(tLRPC$TL_error.text)) {
            this.titleTextView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.subtitleTextView.setVisibility(8);
            return;
        }
        this.titleTextView.setTranslationY(-AndroidUtilities.dpf2(5.33f));
        this.subtitleTextView.setText(tLRPC$TL_error.text);
        this.subtitleTextView.setVisibility(0);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.button.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float m107dp = AndroidUtilities.m107dp(23);
        float height = getHeight() / 2.0f;
        canvas.drawCircle(m107dp, height, AndroidUtilities.m107dp(10), this.redPaint);
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(m107dp - AndroidUtilities.m107dp(1), height - AndroidUtilities.dpf2(4.6f), AndroidUtilities.m107dp(1) + m107dp, AndroidUtilities.dpf2(1.6f) + height);
        canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(3), AndroidUtilities.m107dp(3), this.whitePaint);
        rectF.set(m107dp - AndroidUtilities.m107dp(1), AndroidUtilities.dpf2(2.6f) + height, m107dp + AndroidUtilities.m107dp(1), height + AndroidUtilities.dpf2(4.6f));
        canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(3), AndroidUtilities.m107dp(3), this.whitePaint);
    }
}
