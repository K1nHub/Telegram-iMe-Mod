package com.iMe.fork.p023ui.view;

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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.BaseCell;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CounterView;
import org.telegram.p043ui.Components.LayoutHelper;
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

    static {
        new Companion(null);
    }

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
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<BackupImageView>() { // from class: com.iMe.fork.ui.view.AvatarDrawableCell$imageView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final BackupImageView invoke() {
                BackupImageView initBackupImageView;
                initBackupImageView = AvatarDrawableCell.this.initBackupImageView();
                return initBackupImageView;
            }
        });
        this.imageView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.fork.ui.view.AvatarDrawableCell$pinnedImageView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initPinnedImageView;
                initPinnedImageView = AvatarDrawableCell.this.initPinnedImageView();
                return initPinnedImageView;
            }
        });
        this.pinnedImageView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<CounterView>() { // from class: com.iMe.fork.ui.view.AvatarDrawableCell$counterView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CounterView invoke() {
                CounterView initCounterView;
                initCounterView = AvatarDrawableCell.this.initCounterView();
                return initCounterView;
            }
        });
        this.counterView$delegate = lazy3;
        this.avatarDrawable = new AvatarDrawable();
        this.backgroundColorKey = Theme.key_windowBackgroundGray;
        this.progressStage = 5;
        this.recentChatsController = RecentChatsController.Companion.getInstance(i);
        addView(getImageView());
        addView(getPinnedImageView());
        addView(getCounterView());
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
        pinnedImageView.setImageResource(C3632R.C3634drawable.list_pin);
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
        getImageView().setRoundRadius(AndroidUtilities.m107dp(messagesController.isForum(j) ? 10 : 20));
        if (DialogObject.isUserDialog(j)) {
            TLRPC$User user = messagesController.getUser(Long.valueOf(j));
            this.currentUser = user;
            this.currentChat = null;
            if (UserObject.isUserSelf(user)) {
                this.avatarDrawable.setCompactMode(SharedConfig.isDialogsCompactModeEnabled);
                this.avatarDrawable.setAvatarType(1);
                getImageView().setForUserOrChat(null, this.avatarDrawable);
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

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = SharedConfig.isDialogsCompactModeEnabled ? 30 : 40;
        getImageView().setLayoutParams(LayoutHelper.createFrame(i3, i3, 17));
        getPinnedImageView().setLayoutParams(LayoutHelper.createFrame(20, 20, 53, 0, SharedConfig.isDialogsCompactModeEnabled ? 1 : 5, 0, 0));
        getCounterView().setLayoutParams(LayoutHelper.createFrame(-2, -2, 85));
        super.onMeasure(i, i2);
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
                    drawCount(MessagesController.getInstance(this.currentAccount).getTopicsController().getForumUnreadCount(tLRPC$Chat.f1602id)[0]);
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

    /* JADX WARN: Removed duplicated region for block: B:67:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void drawOnline(android.graphics.Canvas r18) {
        /*
            Method dump skipped, instructions count: 686
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p023ui.view.AvatarDrawableCell.drawOnline(android.graphics.Canvas):void");
    }

    private final void drawReaction(Canvas canvas, TLRPC$Dialog tLRPC$Dialog) {
        if (this.recentChatsController.isDrawStatusType(DrawStatusType.REACTION)) {
            this.showReactionProgress = tLRPC$Dialog.unread_reactions_count != 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            RectF rectF = new RectF();
            int measuredHeight = getImageView().getMeasuredHeight() - AndroidUtilities.m107dp(5);
            int measuredWidth = this.lastUnreadCount == 0 ? getImageView().getMeasuredWidth() : 0;
            if (!SharedConfig.isDialogsCompactModeEnabled) {
                measuredWidth -= this.lastUnreadCount == 0 ? AndroidUtilities.m107dp(10) : 0;
            }
            float f = measuredWidth;
            float f2 = measuredHeight;
            rectF.set(f, f2, AndroidUtilities.m107dp(20) + f, AndroidUtilities.m107dp(20) + f2);
            Paint paint = Theme.dialogs_reactionsCountPaint;
            canvas.save();
            float f3 = this.showReactionProgress;
            canvas.scale(f3, f3, rectF.centerX(), rectF.centerY());
            float f4 = AndroidUtilities.density;
            canvas.drawRoundRect(rectF, f4 * 11.5f, f4 * 11.5f, paint);
            BaseCell.setDrawableBounds(Theme.dialogs_reactionsMentionDrawable, measuredWidth + AndroidUtilities.m108dp(3.5f), measuredHeight + AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12));
            Theme.dialogs_reactionsMentionDrawable.draw(canvas);
            canvas.restore();
        }
    }

    private final void drawMention(Canvas canvas, TLRPC$Dialog tLRPC$Dialog) {
        if (this.recentChatsController.isDrawStatusType(DrawStatusType.MENTIONS)) {
            this.showMentionProgress = tLRPC$Dialog.unread_mentions_count != 0 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            RectF rectF = new RectF();
            int measuredHeight = getImageView().getMeasuredHeight() - AndroidUtilities.m107dp(5);
            float f = 0;
            float f2 = measuredHeight;
            rectF.set(f, f2, AndroidUtilities.m107dp(20) + f, AndroidUtilities.m107dp(20) + f2);
            Paint paint = Theme.dialogs_countPaint;
            canvas.save();
            float f3 = this.showMentionProgress;
            canvas.scale(f3, f3, rectF.centerX(), rectF.centerY());
            float f4 = AndroidUtilities.density;
            canvas.drawRoundRect(rectF, f4 * 11.5f, f4 * 11.5f, paint);
            BaseCell.setDrawableBounds(Theme.dialogs_mentionDrawable, AndroidUtilities.m107dp(4) + 0, measuredHeight + AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12));
            Theme.dialogs_mentionDrawable.draw(canvas);
            canvas.restore();
        }
    }

    private final void drawCount(int i) {
        if (this.recentChatsController.isDrawStatusType(DrawStatusType.UNREAD_COUNT_CHATS) && i != 0) {
            this.lastUnreadCount = i;
            int measuredHeight = getImageView().getMeasuredHeight() - AndroidUtilities.m107dp(5);
            int measuredWidth = getImageView().getMeasuredWidth();
            if (!SharedConfig.isDialogsCompactModeEnabled) {
                measuredWidth -= AndroidUtilities.m107dp(10);
            }
            getCounterView().setCountResentChats(true, MessagesController.getInstance(this.currentAccount).isDialogMuted(this.dialogId, 100L), measuredWidth, measuredHeight);
            if (this.lastUnreadCount > 99) {
                this.lastUnreadCount = 99;
            }
            getCounterView().setCount(this.lastUnreadCount, false);
            getCounterView().counterDrawable.textPaint.setTextSize(AndroidUtilities.m107dp(10));
            return;
        }
        float f = 0;
        getCounterView().setCountResentChats(true, MessagesController.getInstance(this.currentAccount).isDialogMuted(this.dialogId, 100L), f, f);
        this.lastUnreadCount = 0;
        getCounterView().setCount(0, false);
    }

    /* compiled from: AvatarDrawableCell.kt */
    /* renamed from: com.iMe.fork.ui.view.AvatarDrawableCell$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
