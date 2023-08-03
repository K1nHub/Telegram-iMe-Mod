package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.MessageSeenCheckDrawable;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$MessagePeerReaction;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.ReactedUserHolderView */
/* loaded from: classes5.dex */
public class ReactedUserHolderView extends FrameLayout {
    public static int STYLE_DEFAULT = 0;
    public static int STYLE_STORY = 1;
    public static final MessageSeenCheckDrawable reactDrawable;
    public static final MessageSeenCheckDrawable seenDrawable;
    AvatarDrawable avatarDrawable;
    public BackupImageView avatarView;
    int currentAccount;
    public long dialogId;
    View overlaySelectorView;
    public StoriesUtilities.AvatarStoryParams params;
    BackupImageView reactView;
    Theme.ResourcesProvider resourcesProvider;
    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable rightDrawable;
    int style;
    SimpleTextView subtitleView;
    SimpleTextView titleView;

    public void openStory(long j, Runnable runnable) {
    }

    static {
        int i = C3419R.C3421drawable.msg_mini_checks;
        int i2 = Theme.key_windowBackgroundWhiteGrayText;
        seenDrawable = new MessageSeenCheckDrawable(i, i2);
        reactDrawable = new MessageSeenCheckDrawable(C3419R.C3421drawable.msg_reactions, i2, 16, 16, 5.66f);
    }

    public ReactedUserHolderView(final int i, int i2, Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.avatarDrawable = new AvatarDrawable();
        this.params = new StoriesUtilities.AvatarStoryParams(false) { // from class: org.telegram.ui.Cells.ReactedUserHolderView.1
            @Override // org.telegram.p043ui.Stories.StoriesUtilities.AvatarStoryParams
            public void openStory(long j, Runnable runnable) {
                ReactedUserHolderView.this.openStory(j, runnable);
            }
        };
        this.style = i;
        this.currentAccount = i2;
        this.resourcesProvider = resourcesProvider;
        setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m72dp(50)));
        int i3 = i == STYLE_STORY ? 48 : 34;
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Cells.ReactedUserHolderView.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
            public void onDraw(Canvas canvas) {
                if (i == ReactedUserHolderView.STYLE_STORY) {
                    ReactedUserHolderView.this.params.originalAvatarRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                    StoriesUtilities.drawAvatarWithStory(ReactedUserHolderView.this.dialogId, canvas, getImageReceiver(), ReactedUserHolderView.this.params);
                    return;
                }
                super.onDraw(canvas);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return ReactedUserHolderView.this.params.checkOnTouchEvent(motionEvent, this);
            }
        };
        this.avatarView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m72dp(i3));
        float f = i3;
        addView(this.avatarView, LayoutHelper.createFrameRelatively(f, f, 8388627, 10.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        if (i == STYLE_STORY) {
            setClipChildren(false);
        }
        SimpleTextView simpleTextView = new SimpleTextView(this, context) { // from class: org.telegram.ui.Cells.ReactedUserHolderView.3
            @Override // org.telegram.p043ui.ActionBar.SimpleTextView
            public boolean setText(CharSequence charSequence) {
                return super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), AndroidUtilities.m72dp(14), false));
            }
        };
        this.titleView = simpleTextView;
        NotificationCenter.listenEmojiLoading(simpleTextView);
        this.titleView.setTextSize(16);
        this.titleView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, resourcesProvider));
        this.titleView.setEllipsizeByGradient(true);
        this.titleView.setImportantForAccessibility(2);
        this.titleView.setRightPadding(AndroidUtilities.m72dp(30));
        SimpleTextView simpleTextView2 = this.titleView;
        boolean z = LocaleController.isRTL;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        simpleTextView2.setTranslationX(z ? AndroidUtilities.m72dp(30) : 0.0f);
        this.titleView.setRightDrawableOutside(true);
        int i4 = STYLE_STORY;
        float f3 = i == i4 ? 7.66f : 5.33f;
        float f4 = i == i4 ? 73.0f : 55.0f;
        addView(this.titleView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 55, f4, f3, 12.0f, BitmapDescriptorFactory.HUE_RED));
        this.rightDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m72dp(18));
        this.titleView.setDrawablePadding(AndroidUtilities.m72dp(3));
        this.titleView.setRightDrawable(this.rightDrawable);
        SimpleTextView simpleTextView3 = new SimpleTextView(context);
        this.subtitleView = simpleTextView3;
        simpleTextView3.setTextSize(13);
        this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        this.subtitleView.setEllipsizeByGradient(true);
        this.subtitleView.setImportantForAccessibility(2);
        this.subtitleView.setTranslationX(LocaleController.isRTL ? AndroidUtilities.m72dp(30) : f2);
        addView(this.subtitleView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 55, f4, i == STYLE_STORY ? 24.0f : 19.0f, 20.0f, BitmapDescriptorFactory.HUE_RED));
        BackupImageView backupImageView2 = new BackupImageView(context);
        this.reactView = backupImageView2;
        addView(backupImageView2, LayoutHelper.createFrameRelatively(24.0f, 24.0f, 8388629, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED));
        View view = new View(context);
        this.overlaySelectorView = view;
        view.setBackground(Theme.getSelectorDrawable(false));
        addView(this.overlaySelectorView, LayoutHelper.createFrame(-1, -1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setUserReaction(org.telegram.tgnet.TLRPC$User r15, org.telegram.tgnet.TLRPC$Chat r16, org.telegram.tgnet.TLRPC$Reaction r17, long r18, boolean r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ReactedUserHolderView.setUserReaction(org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$Reaction, long, boolean, boolean):void");
    }

    public void setUserReaction(TLRPC$MessagePeerReaction tLRPC$MessagePeerReaction) {
        TLRPC$Chat chat;
        TLRPC$User tLRPC$User;
        if (tLRPC$MessagePeerReaction == null) {
            return;
        }
        long peerId = MessageObject.getPeerId(tLRPC$MessagePeerReaction.peer_id);
        if (peerId > 0) {
            tLRPC$User = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId));
            chat = null;
        } else {
            chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerId));
            tLRPC$User = null;
        }
        setUserReaction(tLRPC$User, chat, tLRPC$MessagePeerReaction.reaction, tLRPC$MessagePeerReaction.date, tLRPC$MessagePeerReaction.dateIsSeen, false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(this.style == STYLE_DEFAULT ? 50 : 58), 1073741824));
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setEnabled(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.rightDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.attach();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.rightDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.detach();
        }
        this.params.onDetachFromWindow();
    }
}
