package org.telegram.p042ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.p042ui.ActionBar.SimpleTextView;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.AnimatedEmojiDrawable;
import org.telegram.p042ui.Components.AvatarDrawable;
import org.telegram.p042ui.Components.BackupImageView;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Components.MessageSeenCheckDrawable;
import org.telegram.p042ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p042ui.Components.StatusBadgeComponent;
import org.telegram.p042ui.Stories.StoriesUtilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatPhoto;
import org.telegram.tgnet.TLRPC$MessagePeerReaction;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$TL_availableReaction;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserProfilePhoto;
/* renamed from: org.telegram.ui.Cells.ReactedUserHolderView */
/* loaded from: classes5.dex */
public class ReactedUserHolderView extends FrameLayout {
    public static int STYLE_DEFAULT = 0;
    public static int STYLE_STORY = 1;
    public static final MessageSeenCheckDrawable reactDrawable;
    public static final MessageSeenCheckDrawable seenDrawable;
    private ValueAnimator alphaAnimator;
    private float alphaInternal;
    AvatarDrawable avatarDrawable;
    public BackupImageView avatarView;
    int currentAccount;
    public long dialogId;
    public boolean drawDivider;
    View overlaySelectorView;
    public StoriesUtilities.AvatarStoryParams params;
    BackupImageView reactView;
    Theme.ResourcesProvider resourcesProvider;
    StatusBadgeComponent statusBadgeComponent;
    int style;
    SimpleTextView subtitleView;
    SimpleTextView titleView;

    public void openStory(long j, Runnable runnable) {
    }

    static {
        int i = C3630R.C3632drawable.msg_mini_checks;
        int i2 = Theme.key_windowBackgroundWhiteGrayText;
        seenDrawable = new MessageSeenCheckDrawable(i, i2);
        reactDrawable = new MessageSeenCheckDrawable(C3630R.C3632drawable.msg_reactions, i2, 16, 16, 5.66f);
    }

    public ReactedUserHolderView(int i, int i2, Context context, Theme.ResourcesProvider resourcesProvider) {
        this(i, i2, context, resourcesProvider, true);
    }

    public ReactedUserHolderView(final int i, int i2, Context context, Theme.ResourcesProvider resourcesProvider, boolean z) {
        super(context);
        this.avatarDrawable = new AvatarDrawable();
        this.alphaInternal = 1.0f;
        this.style = i;
        this.currentAccount = i2;
        this.resourcesProvider = resourcesProvider;
        this.params = new StoriesUtilities.AvatarStoryParams(false, resourcesProvider) { // from class: org.telegram.ui.Cells.ReactedUserHolderView.1
            @Override // org.telegram.p042ui.Stories.StoriesUtilities.AvatarStoryParams
            public void openStory(long j, Runnable runnable) {
                ReactedUserHolderView.this.openStory(j, runnable);
            }
        };
        setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m102dp(50)));
        int i3 = i == STYLE_STORY ? 48 : 34;
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Cells.ReactedUserHolderView.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p042ui.Components.BackupImageView, android.view.View
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
        backupImageView.setRoundRadius(AndroidUtilities.m102dp(i3));
        float f = i3;
        addView(this.avatarView, LayoutHelper.createFrameRelatively(f, f, 8388627, 10.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        if (i == STYLE_STORY) {
            setClipChildren(false);
        }
        SimpleTextView simpleTextView = new SimpleTextView(this, context) { // from class: org.telegram.ui.Cells.ReactedUserHolderView.3
            @Override // org.telegram.p042ui.ActionBar.SimpleTextView
            public boolean setText(CharSequence charSequence) {
                return super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), AndroidUtilities.m102dp(14), false));
            }
        };
        this.titleView = simpleTextView;
        NotificationCenter.listenEmojiLoading(simpleTextView);
        this.titleView.setTextSize(16);
        this.titleView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, resourcesProvider));
        this.titleView.setEllipsizeByGradient(true);
        this.titleView.setImportantForAccessibility(2);
        this.titleView.setRightPadding(AndroidUtilities.m102dp(30));
        SimpleTextView simpleTextView2 = this.titleView;
        boolean z2 = LocaleController.isRTL;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        simpleTextView2.setTranslationX(z2 ? AndroidUtilities.m102dp(30) : 0.0f);
        this.titleView.setRightDrawableOutside(true);
        int i4 = STYLE_STORY;
        float f3 = i == i4 ? 7.66f : 5.33f;
        float f4 = i == i4 ? 73.0f : 55.0f;
        addView(this.titleView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 55, f4, f3, 12.0f, BitmapDescriptorFactory.HUE_RED));
        this.statusBadgeComponent = new StatusBadgeComponent(this);
        this.titleView.setDrawablePadding(AndroidUtilities.m102dp(3));
        this.titleView.setRightDrawable(this.statusBadgeComponent.getDrawable());
        SimpleTextView simpleTextView3 = new SimpleTextView(context);
        this.subtitleView = simpleTextView3;
        simpleTextView3.setTextSize(13);
        this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        this.subtitleView.setEllipsizeByGradient(true);
        this.subtitleView.setImportantForAccessibility(2);
        this.subtitleView.setTranslationX(LocaleController.isRTL ? AndroidUtilities.m102dp(30) : f2);
        addView(this.subtitleView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 55, f4, i == STYLE_STORY ? 24.0f : 19.0f, 20.0f, BitmapDescriptorFactory.HUE_RED));
        BackupImageView backupImageView2 = new BackupImageView(context);
        this.reactView = backupImageView2;
        addView(backupImageView2, LayoutHelper.createFrameRelatively(24.0f, 24.0f, 8388629, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED));
        if (z) {
            View view = new View(context);
            this.overlaySelectorView = view;
            view.setBackground(Theme.getSelectorDrawable(false));
            addView(this.overlaySelectorView, LayoutHelper.createFrame(-1, -1));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setUserReaction(TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, TLRPC$Reaction tLRPC$Reaction, boolean z, long j, boolean z2, boolean z3) {
        TLRPC$ChatPhoto tLRPC$ChatPhoto;
        Drawable drawable;
        String formatString;
        boolean z4;
        TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto;
        TLRPC$User tLRPC$User2 = tLRPC$User == null ? tLRPC$Chat : tLRPC$User;
        if (tLRPC$User2 == null) {
            return;
        }
        this.statusBadgeComponent.updateDrawable(tLRPC$User, tLRPC$Chat, Theme.getColor(this.style == STYLE_STORY ? Theme.key_windowBackgroundWhiteBlackText : Theme.key_chats_verifiedBackground, this.resourcesProvider), false);
        this.avatarDrawable.setInfo((TLObject) tLRPC$User2);
        if (tLRPC$User != null) {
            this.dialogId = tLRPC$User.f1762id;
            this.titleView.setText(UserObject.getUserName(tLRPC$User));
        } else {
            this.dialogId = tLRPC$Chat.f1600id;
            this.titleView.setText(tLRPC$Chat.title);
        }
        Drawable drawable2 = this.avatarDrawable;
        if (tLRPC$User == null ? !((tLRPC$ChatPhoto = tLRPC$Chat.photo) == null || (drawable = tLRPC$ChatPhoto.strippedBitmap) == null) : !((tLRPC$UserProfilePhoto = tLRPC$User.photo) == null || (drawable = tLRPC$UserProfilePhoto.strippedBitmap) == null)) {
            drawable2 = drawable;
        }
        this.avatarView.setImage(ImageLocation.getForUserOrChat(tLRPC$User2, 1), "50_50", drawable2, tLRPC$User2);
        if (z) {
            this.reactView.setAnimatedEmojiDrawable(null);
            Drawable mutate = ContextCompat.getDrawable(getContext(), C3630R.C3632drawable.media_like_active).mutate();
            this.reactView.setColorFilter(new PorterDuffColorFilter(-53704, PorterDuff.Mode.MULTIPLY));
            this.reactView.setImageDrawable(mutate);
            formatString = LocaleController.formatString("AccDescrLike", C3630R.string.AccDescrLike, new Object[0]);
            z4 = true;
        } else if (tLRPC$Reaction != null) {
            ReactionsLayoutInBubble.VisibleReaction fromTLReaction = ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(tLRPC$Reaction);
            if (fromTLReaction.emojicon != null) {
                this.reactView.setAnimatedEmojiDrawable(null);
                TLRPC$TL_availableReaction tLRPC$TL_availableReaction = MediaDataController.getInstance(this.currentAccount).getReactionsMap().get(fromTLReaction.emojicon);
                if (tLRPC$TL_availableReaction != null) {
                    this.reactView.setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.center_icon), "40_40_lastreactframe", "webp", DocumentObject.getSvgThumb(tLRPC$TL_availableReaction.static_icon.thumbs, Theme.key_windowBackgroundGray, 1.0f), tLRPC$TL_availableReaction);
                    z4 = true;
                } else {
                    this.reactView.setImageDrawable(null);
                    z4 = false;
                }
                this.reactView.setColorFilter(null);
            } else {
                AnimatedEmojiDrawable animatedEmojiDrawable = new AnimatedEmojiDrawable(0, this.currentAccount, fromTLReaction.documentId);
                animatedEmojiDrawable.setColorFilter(Theme.getAnimatedEmojiColorFilter(this.resourcesProvider));
                this.reactView.setAnimatedEmojiDrawable(animatedEmojiDrawable);
                z4 = true;
            }
            int i = C3630R.string.AccDescrReactedWith;
            Object[] objArr = new Object[2];
            objArr[0] = this.titleView.getText();
            Object obj = fromTLReaction.emojicon;
            if (obj == null) {
                obj = tLRPC$Reaction;
            }
            objArr[1] = obj;
            formatString = LocaleController.formatString("AccDescrReactedWith", i, objArr);
        } else {
            this.reactView.setAnimatedEmojiDrawable(null);
            this.reactView.setImageDrawable(null);
            formatString = LocaleController.formatString("AccDescrPersonHasSeen", C3630R.string.AccDescrPersonHasSeen, this.titleView.getText());
            z4 = false;
        }
        int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i2 != 0) {
            formatString = formatString + " " + LocaleController.formatSeenDate(j);
        }
        setContentDescription(formatString);
        float f = BitmapDescriptorFactory.HUE_RED;
        if (i2 != 0) {
            this.subtitleView.setVisibility(0);
            this.subtitleView.setText(TextUtils.concat((z2 ? seenDrawable : reactDrawable).getSpanned(getContext(), this.resourcesProvider), LocaleController.formatSeenDate(j)));
            this.subtitleView.setTranslationY(!z2 ? AndroidUtilities.m102dp(-1) : 0.0f);
            this.titleView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            if (z3) {
                this.titleView.setTranslationY(AndroidUtilities.m102dp(9));
                this.titleView.animate().translationY(BitmapDescriptorFactory.HUE_RED);
                this.subtitleView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.subtitleView.animate().alpha(1.0f);
            }
        } else {
            this.subtitleView.setVisibility(8);
            this.titleView.setTranslationY(AndroidUtilities.m102dp(9));
        }
        this.titleView.setRightPadding(AndroidUtilities.m102dp(z4 ? 30 : 0));
        this.titleView.setTranslationX((z4 && LocaleController.isRTL) ? AndroidUtilities.m102dp(30) : 0.0f);
        ((ViewGroup.MarginLayoutParams) this.subtitleView.getLayoutParams()).rightMargin = AndroidUtilities.m102dp((!z4 || LocaleController.isRTL) ? 12 : 36);
        SimpleTextView simpleTextView = this.subtitleView;
        if (z4 && LocaleController.isRTL) {
            f = AndroidUtilities.m102dp(30);
        }
        simpleTextView.setTranslationX(f);
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
        setUserReaction(tLRPC$User, chat, tLRPC$MessagePeerReaction.reaction, false, tLRPC$MessagePeerReaction.date, tLRPC$MessagePeerReaction.dateIsSeen, false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(this.style == STYLE_DEFAULT ? 50 : 58), 1073741824));
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setEnabled(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.statusBadgeComponent.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.statusBadgeComponent.onDetachedFromWindow();
        this.params.onDetachFromWindow();
    }

    public void animateAlpha(final float f, boolean z) {
        ValueAnimator valueAnimator = this.alphaAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.alphaAnimator = null;
        }
        if (z) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.alphaInternal, f);
            this.alphaAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.ReactedUserHolderView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ReactedUserHolderView.this.lambda$animateAlpha$0(valueAnimator2);
                }
            });
            this.alphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ReactedUserHolderView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ReactedUserHolderView.this.alphaInternal = f;
                    ReactedUserHolderView.this.invalidate();
                }
            });
            this.alphaAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.alphaAnimator.setDuration(420L);
            this.alphaAnimator.start();
            return;
        }
        this.alphaInternal = f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateAlpha$0(ValueAnimator valueAnimator) {
        this.alphaInternal = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public float getAlphaInternal() {
        return this.alphaInternal;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        boolean z;
        if (this.alphaInternal < 1.0f) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (this.alphaInternal * 255.0f), 31);
            z = true;
        } else {
            z = false;
        }
        super.dispatchDraw(canvas);
        if (this.drawDivider) {
            float m102dp = AndroidUtilities.m102dp(this.style == STYLE_STORY ? 73 : 55);
            if (LocaleController.isRTL) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth() - m102dp, getMeasuredHeight() - 1, Theme.getThemePaint("paintDivider", this.resourcesProvider));
            } else {
                canvas.drawLine(m102dp, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.getThemePaint("paintDivider", this.resourcesProvider));
            }
        }
        if (z) {
            canvas.restore();
        }
    }

    public Theme.ResourcesProvider getResourcesProvider() {
        return this.resourcesProvider;
    }
}
