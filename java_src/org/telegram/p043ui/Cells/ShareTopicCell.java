package org.telegram.p043ui.Cells;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LetterDrawable;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
/* renamed from: org.telegram.ui.Cells.ShareTopicCell */
/* loaded from: classes5.dex */
public class ShareTopicCell extends FrameLayout {
    private int currentAccount;
    private long currentDialog;
    private long currentTopic;
    private BackupImageView imageView;
    private TextView nameTextView;
    private final Theme.ResourcesProvider resourcesProvider;

    public ShareTopicCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        this.resourcesProvider = resourcesProvider;
        setWillNotDraw(false);
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m107dp(28));
        addView(this.imageView, LayoutHelper.createFrame(56, 56, 49, 0, 7, 0, 0));
        TextView textView = new TextView(context);
        this.nameTextView = textView;
        textView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
        this.nameTextView.setTextSize(1, 12.0f);
        this.nameTextView.setMaxLines(2);
        this.nameTextView.setGravity(49);
        this.nameTextView.setLines(2);
        this.nameTextView.setEllipsize(TextUtils.TruncateAt.END);
        addView(this.nameTextView, LayoutHelper.createFrame(-1, -2, 51, 6, 66, 6, 0));
        setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector), AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2)));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(103), 1073741824));
    }

    public void setTopic(TLRPC$Dialog tLRPC$Dialog, TLRPC$TL_forumTopic tLRPC$TL_forumTopic, boolean z, CharSequence charSequence) {
        if (tLRPC$Dialog == null) {
            return;
        }
        TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tLRPC$Dialog.f1608id));
        if (charSequence != null) {
            this.nameTextView.setText(charSequence);
        } else if (chat != null) {
            this.nameTextView.setText(tLRPC$TL_forumTopic.title);
        } else {
            this.nameTextView.setText("");
        }
        if (tLRPC$TL_forumTopic.icon_emoji_id != 0) {
            this.imageView.setImageDrawable(null);
            this.imageView.setAnimatedEmojiDrawable(new AnimatedEmojiDrawable(13, UserConfig.selectedAccount, tLRPC$TL_forumTopic.icon_emoji_id));
        } else {
            this.imageView.setAnimatedEmojiDrawable(null);
            ForumBubbleDrawable forumBubbleDrawable = new ForumBubbleDrawable(tLRPC$TL_forumTopic.icon_color);
            LetterDrawable letterDrawable = new LetterDrawable(null, 1);
            String upperCase = tLRPC$TL_forumTopic.title.trim().toUpperCase();
            letterDrawable.setTitle(upperCase.length() >= 1 ? upperCase.substring(0, 1) : "");
            letterDrawable.scale = 1.8f;
            CombinedDrawable combinedDrawable = new CombinedDrawable(forumBubbleDrawable, letterDrawable, 0, 0);
            combinedDrawable.setFullsize(true);
            this.imageView.setImageDrawable(combinedDrawable);
        }
        this.imageView.setRoundRadius(AndroidUtilities.m107dp((chat == null || !chat.forum || z) ? 28 : 16));
        this.currentDialog = tLRPC$Dialog.f1608id;
        this.currentTopic = tLRPC$TL_forumTopic.f1658id;
    }

    public long getCurrentDialog() {
        return this.currentDialog;
    }

    public long getCurrentTopic() {
        return this.currentTopic;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
