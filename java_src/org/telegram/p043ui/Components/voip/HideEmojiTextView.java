package org.telegram.p043ui.Components.voip;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
/* renamed from: org.telegram.ui.Components.voip.HideEmojiTextView */
/* loaded from: classes6.dex */
public class HideEmojiTextView extends TextView {
    private final VoIPBackgroundProvider backgroundProvider;
    private final RectF bgRect;

    public HideEmojiTextView(Context context, VoIPBackgroundProvider voIPBackgroundProvider) {
        super(context);
        this.bgRect = new RectF();
        this.backgroundProvider = voIPBackgroundProvider;
        voIPBackgroundProvider.attach(this);
        int i = C3632R.string.VoipHideEmoji;
        setText(LocaleController.getString("VoipHideEmoji", i));
        setContentDescription(LocaleController.getString("VoipHideEmoji", i));
        setTextColor(-1);
        setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        setPadding(AndroidUtilities.m107dp(14), AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(14), AndroidUtilities.m107dp(4));
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.bgRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
        this.backgroundProvider.setDarkTranslation(getX() + ((View) getParent()).getX(), getY() + ((View) getParent()).getY());
        canvas.drawRoundRect(this.bgRect, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), this.backgroundProvider.getDarkPaint());
        super.onDraw(canvas);
    }
}
