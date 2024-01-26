package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$Chat;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.ChatCell */
/* loaded from: classes6.dex */
public class ChatCell extends BaseCell {
    private ChatDeleteListener chatDeleteListener;
    private final ImageView deleteImageView;
    private boolean removable;

    /* renamed from: org.telegram.ui.Components.Premium.boosts.cells.ChatCell$ChatDeleteListener */
    /* loaded from: classes6.dex */
    public interface ChatDeleteListener {
        void onChatDeleted(TLRPC$Chat tLRPC$Chat);
    }

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    protected boolean needCheck() {
        return false;
    }

    public ChatCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        ImageView imageView = new ImageView(context);
        this.deleteImageView = imageView;
        imageView.setFocusable(false);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_stickers_menuSelector)));
        imageView.setImageResource(C3632R.C3634drawable.poll_remove);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
        imageView.setContentDescription(LocaleController.getString("Delete", C3632R.string.Delete));
        boolean z = LocaleController.isRTL;
        addView(imageView, LayoutHelper.createFrame(48, 50, (z ? 3 : 5) | 17, z ? 3 : 0, 0, z ? 0 : 3, 0));
        this.titleTextView.setPadding(AndroidUtilities.m107dp(LocaleController.isRTL ? 24 : 0), 0, AndroidUtilities.m107dp(LocaleController.isRTL ? 0 : 24), 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.deleteImageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824));
    }

    public void setChat(final TLRPC$Chat tLRPC$Chat, int i, boolean z) {
        this.removable = z;
        this.avatarDrawable.setInfo(tLRPC$Chat);
        this.imageView.setRoundRadius(AndroidUtilities.m107dp(20));
        this.imageView.setForUserOrChat(tLRPC$Chat, this.avatarDrawable);
        this.titleTextView.setText(Emoji.replaceEmoji(tLRPC$Chat.title, this.titleTextView.getPaint().getFontMetricsInt(), false));
        if (z) {
            setSubtitle(null);
        } else {
            setSubtitle(LocaleController.formatPluralString("BoostingChannelWillReceiveBoost", i, new Object[0]));
        }
        this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray3, this.resourcesProvider));
        setDivider(true);
        if (z) {
            this.deleteImageView.setVisibility(0);
        } else {
            this.deleteImageView.setVisibility(4);
        }
        this.deleteImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.ChatCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatCell.this.lambda$setChat$0(tLRPC$Chat, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setChat$0(TLRPC$Chat tLRPC$Chat, View view) {
        ChatDeleteListener chatDeleteListener = this.chatDeleteListener;
        if (chatDeleteListener != null) {
            chatDeleteListener.onChatDeleted(tLRPC$Chat);
        }
    }

    public void setChatDeleteListener(ChatDeleteListener chatDeleteListener) {
        this.chatDeleteListener = chatDeleteListener;
    }

    public void setCounter(int i) {
        if (this.removable) {
            setSubtitle(null);
        } else {
            setSubtitle(LocaleController.formatPluralString("BoostingChannelWillReceiveBoost", i, new Object[0]));
        }
    }
}
