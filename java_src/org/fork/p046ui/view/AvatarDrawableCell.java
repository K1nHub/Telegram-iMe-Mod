package org.fork.p046ui.view;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AvatarDrawable;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: AvatarDrawableCell.kt */
/* renamed from: org.fork.ui.view.AvatarDrawableCell */
/* loaded from: classes4.dex */
public final class AvatarDrawableCell extends FrameLayout {
    private final AvatarDrawable avatarDrawable;
    private String backgroundColorKey;
    private final int currentAccount;
    private TLRPC$Chat currentChat;
    private TLRPC$User currentUser;
    private long dialogId;
    private final Lazy imageView$delegate;
    private final Lazy pinnedImageView$delegate;

    public final int getCurrentAccount() {
        return this.currentAccount;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarDrawableCell(Context context, int i) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        this.currentAccount = i;
        lazy = LazyKt__LazyJVMKt.lazy(new AvatarDrawableCell$imageView$2(this));
        this.imageView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new AvatarDrawableCell$pinnedImageView$2(this));
        this.pinnedImageView$delegate = lazy2;
        this.avatarDrawable = new AvatarDrawable();
        this.backgroundColorKey = "windowBackgroundGray";
        addView(getImageView(), LayoutHelper.createFrame(40, 40, 17));
        addView(getPinnedImageView(), LayoutHelper.createFrame(20, 20, 53, 0, 5, 0, 0));
        updateColors();
    }

    private final BackupImageView getImageView() {
        return (BackupImageView) this.imageView$delegate.getValue();
    }

    private final ImageView getPinnedImageView() {
        return (ImageView) this.pinnedImageView$delegate.getValue();
    }

    public final void updateColors() {
        ImageView pinnedImageView = getPinnedImageView();
        pinnedImageView.setBackground(Theme.createCircleDrawable(20, Theme.getColor(this.backgroundColorKey)));
        pinnedImageView.setColorFilter(Theme.getColor("chats_pinnedIcon"));
        pinnedImageView.setImageResource(C3158R.C3160drawable.widget_pin);
    }

    public final void update(int i) {
        if ((i & MessagesController.UPDATE_MASK_STATUS) == 0) {
            return;
        }
        if (DialogObject.isUserDialog(this.dialogId)) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialogId));
            this.currentUser = user;
            if (UserObject.isUserSelf(user)) {
                this.avatarDrawable.setAvatarType(1);
            } else {
                this.avatarDrawable.setAvatarType(0);
            }
        } else {
            TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
            this.currentChat = chat;
            this.avatarDrawable.setInfo(chat);
            this.currentUser = null;
        }
        getImageView().invalidate();
        invalidate();
    }

    public final void setDialog(long j, boolean z) {
        if (this.dialogId != j) {
            invalidate();
        }
        this.dialogId = j;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        getImageView().setRoundRadius(AndroidUtilities.m50dp(messagesController.isForum(j) ? 10 : 20));
        if (DialogObject.isUserDialog(j)) {
            this.currentChat = null;
            TLRPC$User user = messagesController.getUser(Long.valueOf(j));
            this.currentUser = user;
            if (UserObject.isUserSelf(user)) {
                this.avatarDrawable.setAvatarType(1);
                getImageView().setImageDrawable(this.avatarDrawable);
            } else {
                this.avatarDrawable.setAvatarType(0);
                this.avatarDrawable.setInfo(this.currentUser);
                getImageView().setForUserOrChat(this.currentUser, this.avatarDrawable);
            }
        } else {
            this.currentUser = null;
            TLRPC$Chat chat = messagesController.getChat(Long.valueOf(-j));
            this.currentChat = chat;
            this.avatarDrawable.setInfo(chat);
            getImageView().setForUserOrChat(this.currentChat, this.avatarDrawable);
        }
        getPinnedImageView().setVisibility(z ^ true ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BackupImageView initBackupImageView() {
        return new BackupImageView(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initPinnedImageView() {
        ImageView imageView = new ImageView(getContext());
        ViewExtKt.gone(imageView);
        return imageView;
    }
}
