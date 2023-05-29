package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.RecentChatsController;
import com.iMe.fork.enums.DrawStatusType;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Cells.BaseCell;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.p044ui.Components.BackupImageView;
import org.telegram.p044ui.Components.CounterView;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: AvatarDrawableCell.kt */
/* renamed from: com.iMe.fork.ui.view.AvatarDrawableCell */
/* loaded from: classes3.dex */
public final class AvatarDrawableCell extends FrameLayout {
    private final AvatarDrawable avatarDrawable;
    private int backgroundColorKey;
    private final Lazy counterView$delegate;
    private final int currentAccount;
    private TLRPC$Chat currentChat;
    private TLRPC$User currentUser;
    private long dialogId;
    private final Lazy imageView$delegate;
    private float innerProgress;
    private int lastUnreadCount;
    private final Lazy pinnedImageView$delegate;
    private int progressStage;
    private final RecentChatsController recentChatsController;
    private float showCallProgress;
    private float showMentionProgress;
    private float showOnlineProgress;
    private float showReactionProgress;

    public final int getCurrentAccount() {
        return this.currentAccount;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarDrawableCell(Context context, int i) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        this.currentAccount = i;
        lazy = LazyKt__LazyJVMKt.lazy(new AvatarDrawableCell$imageView$2(this));
        this.imageView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new AvatarDrawableCell$pinnedImageView$2(this));
        this.pinnedImageView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new AvatarDrawableCell$counterView$2(this));
        this.counterView$delegate = lazy3;
        this.avatarDrawable = new AvatarDrawable();
        this.backgroundColorKey = Theme.key_windowBackgroundGray;
        this.progressStage = 5;
        this.recentChatsController = RecentChatsController.Companion.getInstance(i);
        addView(getImageView(), LayoutHelper.createFrame(40, 40, 17));
        addView(getPinnedImageView(), LayoutHelper.createFrame(20, 20, 53, 0, 5, 0, 0));
        addView(getCounterView(), LayoutHelper.createFrame(-2, -2, 85));
        updateColors();
    }

    private final BackupImageView getImageView() {
        return (BackupImageView) this.imageView$delegate.getValue();
    }

    private final ImageView getPinnedImageView() {
        return (ImageView) this.pinnedImageView$delegate.getValue();
    }

    private final CounterView getCounterView() {
        return (CounterView) this.counterView$delegate.getValue();
    }

    public final void updateColors() {
        ImageView pinnedImageView = getPinnedImageView();
        int alpha = Theme.dialogs_pinnedDrawable.getAlpha();
        Theme.dialogs_pinnedDrawable.setAlpha(255);
        pinnedImageView.setBackground(Theme.createCircleDrawable(20, Theme.getColor(this.backgroundColorKey)));
        pinnedImageView.setColorFilter(Theme.getColor(Theme.key_chats_pinnedIcon));
        pinnedImageView.setImageResource(C3290R.C3292drawable.list_pin);
        Theme.dialogs_pinnedDrawable.setAlpha(alpha);
        CounterView counterView = getCounterView();
        counterView.setColors(Theme.key_chats_unreadCounterText, Theme.key_chats_unreadCounter);
        counterView.setGravity(5);
    }

    public final void update() {
        getImageView().invalidate();
        getCounterView().invalidate();
        invalidate();
    }

    public final void setDialog(long j, boolean z) {
        if (this.dialogId != j) {
            invalidate();
        }
        this.dialogId = j;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        getImageView().setRoundRadius(AndroidUtilities.m54dp(messagesController.isForum(j) ? 10 : 20));
        if (DialogObject.isUserDialog(j)) {
            TLRPC$User user = messagesController.getUser(Long.valueOf(j));
            this.currentUser = user;
            this.currentChat = null;
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

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        boolean drawChild = super.drawChild(canvas, view, j);
        TLRPC$Dialog tLRPC$Dialog = MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.dialogId);
        currentChatOrUser();
        drawOnline(canvas);
        if (tLRPC$Dialog != null) {
            drawReaction(canvas, tLRPC$Dialog);
            drawMention(canvas, tLRPC$Dialog);
            TLRPC$Chat tLRPC$Chat = this.currentChat;
            if (tLRPC$Chat != null) {
                Intrinsics.checkNotNull(tLRPC$Chat, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.Chat");
                if (tLRPC$Chat.forum) {
                    drawCount(MessagesController.getInstance(this.currentAccount).getTopicsController().getForumUnreadCount(tLRPC$Chat.f1433id)[0]);
                } else {
                    drawCount(tLRPC$Dialog.unread_count);
                }
            } else {
                drawCount(tLRPC$Dialog.unread_count);
            }
        } else {
            drawCount(0);
        }
        return drawChild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BackupImageView initBackupImageView() {
        return new BackupImageView(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initPinnedImageView() {
        ImageView imageView = new ImageView(getContext());
        ViewExtKt.gone$default(imageView, false, 1, null);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CounterView initCounterView() {
        return new CounterView(getContext(), null);
    }

    private final void currentChatOrUser() {
        if (DialogObject.isUserDialog(this.dialogId)) {
            this.currentUser = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialogId));
            this.currentChat = null;
        } else if (DialogObject.isChatDialog(this.dialogId)) {
            this.currentChat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
            this.currentUser = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void drawOnline(android.graphics.Canvas r18) {
        /*
            Method dump skipped, instructions count: 680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p024ui.view.AvatarDrawableCell.drawOnline(android.graphics.Canvas):void");
    }

    private final void drawReaction(Canvas canvas, TLRPC$Dialog tLRPC$Dialog) {
        if (this.recentChatsController.isDrawStatusType(DrawStatusType.REACTION)) {
            this.showReactionProgress = tLRPC$Dialog.unread_reactions_count != 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            RectF rectF = new RectF();
            int i = this.lastUnreadCount;
            int measuredHeight = getImageView().getMeasuredHeight() - AndroidUtilities.m54dp(5);
            int measuredWidth = this.lastUnreadCount == 0 ? getImageView().getMeasuredWidth() - AndroidUtilities.m54dp(10) : 0;
            float f = measuredWidth;
            float f2 = measuredHeight;
            rectF.set(f, f2, AndroidUtilities.m54dp(20) + f, AndroidUtilities.m54dp(20) + f2);
            Paint paint = Theme.dialogs_reactionsCountPaint;
            canvas.save();
            float f3 = this.showReactionProgress;
            canvas.scale(f3, f3, rectF.centerX(), rectF.centerY());
            float f4 = AndroidUtilities.density;
            canvas.drawRoundRect(rectF, f4 * 11.5f, f4 * 11.5f, paint);
            Theme.dialogs_reactionsCountPaint.setAlpha((int) ((1.0f - this.showReactionProgress) * 255));
            BaseCell.setDrawableBounds(Theme.dialogs_reactionsMentionDrawable, measuredWidth + AndroidUtilities.m55dp(3.5f), measuredHeight + AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(12));
            Theme.dialogs_reactionsMentionDrawable.draw(canvas);
            canvas.restore();
        }
    }

    private final void drawMention(Canvas canvas, TLRPC$Dialog tLRPC$Dialog) {
        if (this.recentChatsController.isDrawStatusType(DrawStatusType.MENTIONS)) {
            this.showMentionProgress = tLRPC$Dialog.unread_mentions_count != 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            RectF rectF = new RectF();
            int measuredHeight = getImageView().getMeasuredHeight() - AndroidUtilities.m54dp(5);
            float f = 0;
            float f2 = measuredHeight;
            rectF.set(f, f2, AndroidUtilities.m54dp(20) + f, AndroidUtilities.m54dp(20) + f2);
            Paint paint = Theme.dialogs_countPaint;
            canvas.save();
            float f3 = this.showMentionProgress;
            canvas.scale(f3, f3, rectF.centerX(), rectF.centerY());
            float f4 = AndroidUtilities.density;
            canvas.drawRoundRect(rectF, f4 * 11.5f, f4 * 11.5f, paint);
            BaseCell.setDrawableBounds(Theme.dialogs_mentionDrawable, AndroidUtilities.m54dp(4) + 0, measuredHeight + AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(12), AndroidUtilities.m54dp(12));
            Theme.dialogs_mentionDrawable.draw(canvas);
            canvas.restore();
        }
    }

    private final void drawCount(int i) {
        if (this.recentChatsController.isDrawStatusType(DrawStatusType.UNREAD_COUNT_CHATS) && i != 0) {
            if (this.lastUnreadCount != i) {
                this.lastUnreadCount = i;
                getCounterView().setCountResentChats(true, MessagesController.getInstance(this.currentAccount).isDialogMuted(this.dialogId, 100), getImageView().getMeasuredWidth() - AndroidUtilities.m54dp(10), getImageView().getMeasuredHeight() - AndroidUtilities.m54dp(5));
                if (this.lastUnreadCount > 99) {
                    this.lastUnreadCount = 99;
                }
                getCounterView().setCount(this.lastUnreadCount, false);
                getCounterView().counterDrawable.textPaint.setTextSize(AndroidUtilities.m54dp(10));
                return;
            }
            return;
        }
        float f = 0;
        getCounterView().setCountResentChats(true, MessagesController.getInstance(this.currentAccount).isDialogMuted(this.dialogId, 100), f, f);
        this.lastUnreadCount = 0;
        getCounterView().setCount(0, false);
    }
}
