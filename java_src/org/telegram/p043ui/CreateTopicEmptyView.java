package org.telegram.p043ui;

import android.content.Context;
import android.graphics.Paint;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$Document;
/* renamed from: org.telegram.ui.CreateTopicEmptyView */
/* loaded from: classes5.dex */
public class CreateTopicEmptyView extends LinearLayout {
    BackupImageView backupImageView;
    private final Theme.ResourcesProvider resourcesProvider;

    public CreateTopicEmptyView(Context context, FrameLayout frameLayout, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        setBackground(Theme.createServiceDrawable(AndroidUtilities.m72dp(18), this, frameLayout, getThemedPaint("paintChatActionBackground")));
        setPadding(AndroidUtilities.m72dp(16), AndroidUtilities.m72dp(12), AndroidUtilities.m72dp(16), AndroidUtilities.m72dp(12));
        setOrientation(1);
        this.backupImageView = new BackupImageView(context);
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 15.0f);
        int i = Theme.key_chat_serviceText;
        textView.setTextColor(getThemedColor(i));
        textView.setGravity(1);
        textView.setMaxWidth(AndroidUtilities.m72dp(210));
        textView.setText(LocaleController.getString(C3419R.string.AlmostDone));
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 13.0f);
        textView2.setTextColor(getThemedColor(i));
        textView2.setGravity(1);
        textView2.setMaxWidth(AndroidUtilities.m72dp(160));
        textView2.setText(LocaleController.getString(C3419R.string.TopicEmptyViewDescription));
        addView(this.backupImageView, LayoutHelper.createLinear(58, 58, 1, 0, 8, 0, 8));
        addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 2, 0));
        addView(textView2, LayoutHelper.createLinear(-2, -2, 1));
        setSticker();
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    private void setSticker() {
        TLRPC$Document emojiAnimatedSticker = MediaDataController.getInstance(UserConfig.selectedAccount).getEmojiAnimatedSticker("🥳");
        if (emojiAnimatedSticker != null) {
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(emojiAnimatedSticker.thumbs, Theme.key_emptyListPlaceholder, 0.2f);
            if (svgThumb != null) {
                svgThumb.overrideWidthAndHeight(512, 512);
            }
            this.backupImageView.setImage(ImageLocation.getForDocument(emojiAnimatedSticker), (String) null, "tgs", svgThumb, (Object) null);
        }
    }
}
