package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.ForkCommonController;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AutoDeletePopupWrapper;
import org.telegram.p043ui.Components.ChatAvatarContainer;
import org.telegram.p043ui.Components.SharedMediaLayout;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.p043ui.Stories.StoryViewer;
import org.telegram.p043ui.TopicsFragment;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$ChatParticipants;
import org.telegram.tgnet.TLRPC$EmojiStatus;
import org.telegram.tgnet.TLRPC$TL_channelFull;
import org.telegram.tgnet.TLRPC$TL_chatFull;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$UserStatus;
/* renamed from: org.telegram.ui.Components.ChatAvatarContainer */
/* loaded from: classes6.dex */
public class ChatAvatarContainer extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    public boolean allowDrawStories;
    public boolean allowShorterStatus;
    private AnimatedTextView animatedSubtitleTextView;
    private AvatarDrawable avatarDrawable;
    public BackupImageView avatarImageView;
    private int currentAccount;
    private int currentConnectionState;
    StatusDrawable currentTypingDrawable;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emojiStatusDrawable;
    private boolean[] isOnline;
    private int largerWidth;
    private CharSequence lastSubtitle;
    private int lastSubtitleColorKey;
    private int lastWidth;
    private int leftPadding;
    private boolean occupyStatusBar;
    private int onlineCount;
    private Integer overrideSubtitleColor;
    private ChatActivity parentFragment;
    private Drawable premiumStarDrawable;
    private Theme.ResourcesProvider resourcesProvider;
    private int rightAvatarPadding;
    private String rightDrawable2ContentDescription;
    private String rightDrawableContentDescription;
    private boolean rightDrawableIsScamOrVerified;
    private boolean secretChatTimer;
    private SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader;
    private StatusDrawable[] statusDrawables;
    public boolean[] statusMadeShorter;
    private Integer storiesForceState;
    private AtomicReference<SimpleTextView> subtitleTextLargerCopyView;
    private SimpleTextView subtitleTextView;
    private ImageView timeItem;
    private TimerDrawable timerDrawable;
    private AnimatorSet titleAnimation;
    private AtomicReference<SimpleTextView> titleTextLargerCopyView;
    private SimpleTextView titleTextView;

    protected boolean onAvatarClick() {
        return false;
    }

    protected boolean useAnimatedSubtitle() {
        return false;
    }

    public void hideSubtitle() {
        if (getSubtitleTextView() != null) {
            getSubtitleTextView().setVisibility(8);
        }
    }

    public void setStoriesForceState(Integer num) {
        this.storiesForceState = num;
    }

    /* renamed from: org.telegram.ui.Components.ChatAvatarContainer$SimpleTextConnectedView */
    /* loaded from: classes6.dex */
    private class SimpleTextConnectedView extends SimpleTextView {
        private AtomicReference<SimpleTextView> reference;

        public SimpleTextConnectedView(ChatAvatarContainer chatAvatarContainer, Context context, AtomicReference<SimpleTextView> atomicReference) {
            super(context);
            this.reference = atomicReference;
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            SimpleTextView simpleTextView;
            AtomicReference<SimpleTextView> atomicReference = this.reference;
            if (atomicReference != null && (simpleTextView = atomicReference.get()) != null) {
                simpleTextView.setTranslationY(f);
            }
            super.setTranslationY(f);
        }

        @Override // org.telegram.p043ui.ActionBar.SimpleTextView
        public boolean setText(CharSequence charSequence) {
            SimpleTextView simpleTextView;
            AtomicReference<SimpleTextView> atomicReference = this.reference;
            if (atomicReference != null && (simpleTextView = atomicReference.get()) != null) {
                simpleTextView.setText(charSequence);
            }
            return super.setText(charSequence);
        }
    }

    public ChatAvatarContainer(Context context, BaseFragment baseFragment, boolean z) {
        this(context, baseFragment, z, null);
    }

    public ChatAvatarContainer(Context context, BaseFragment baseFragment, boolean z, final Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.titleTextLargerCopyView = new AtomicReference<>();
        this.subtitleTextLargerCopyView = new AtomicReference<>();
        this.statusDrawables = new StatusDrawable[6];
        this.avatarDrawable = new AvatarDrawable();
        this.currentAccount = UserConfig.selectedAccount;
        this.occupyStatusBar = true;
        this.leftPadding = AndroidUtilities.m107dp(8);
        this.rightAvatarPadding = 0;
        this.lastWidth = -1;
        this.largerWidth = -1;
        this.isOnline = new boolean[1];
        this.statusMadeShorter = new boolean[1];
        this.onlineCount = -1;
        this.lastSubtitleColorKey = -1;
        this.allowShorterStatus = false;
        this.rightDrawableIsScamOrVerified = false;
        this.rightDrawableContentDescription = null;
        this.rightDrawable2ContentDescription = null;
        if (baseFragment != null) {
            this.currentAccount = baseFragment.getCurrentAccount();
        }
        this.resourcesProvider = resourcesProvider;
        boolean z2 = baseFragment instanceof ChatActivity;
        if (z2) {
            this.parentFragment = (ChatActivity) baseFragment;
        }
        ChatActivity chatActivity = this.parentFragment;
        boolean z3 = (chatActivity == null || chatActivity.getChatMode() != 0 || UserObject.isReplyUser(this.parentFragment.getCurrentUser()) || this.parentFragment.isTemplatesChannel(true, false)) ? false : true;
        this.avatarImageView = new C48671(context, baseFragment, z3, resourcesProvider);
        if (z2 || (baseFragment instanceof TopicsFragment)) {
            this.sharedMediaPreloader = new SharedMediaLayout.SharedMediaPreloader(baseFragment);
            ChatActivity chatActivity2 = this.parentFragment;
            if (chatActivity2 != null && (chatActivity2.isThreadChat() || this.parentFragment.getChatMode() == 2)) {
                this.avatarImageView.setVisibility(8);
            }
        }
        this.avatarImageView.setContentDescription(LocaleController.getString("AccDescrProfilePicture", C3632R.string.AccDescrProfilePicture));
        this.avatarImageView.setRoundRadius(AndroidUtilities.m107dp(21));
        addView(this.avatarImageView);
        if (z3) {
            this.avatarImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatAvatarContainer.this.lambda$new$0(view);
                }
            });
        }
        SimpleTextConnectedView simpleTextConnectedView = new SimpleTextConnectedView(this, context, this.titleTextLargerCopyView);
        this.titleTextView = simpleTextConnectedView;
        simpleTextConnectedView.setEllipsizeByGradient(true);
        this.titleTextView.setTextColor(getThemedColor(Theme.key_actionBarDefaultTitle));
        this.titleTextView.setTextSize(18);
        this.titleTextView.setGravity(3);
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleTextView.setLeftDrawableTopPadding(-AndroidUtilities.m108dp(1.3f));
        this.titleTextView.setCanHideRightDrawable(false);
        this.titleTextView.setRightDrawableOutside(true);
        this.titleTextView.setPadding(0, AndroidUtilities.m107dp(6), 0, AndroidUtilities.m107dp(12));
        addView(this.titleTextView);
        if (useAnimatedSubtitle()) {
            AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, true);
            this.animatedSubtitleTextView = animatedTextView;
            animatedTextView.setAnimationProperties(0.3f, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.animatedSubtitleTextView.setEllipsizeByGradient(true);
            AnimatedTextView animatedTextView2 = this.animatedSubtitleTextView;
            int i = Theme.key_actionBarDefaultSubtitle;
            animatedTextView2.setTextColor(getThemedColor(i));
            this.animatedSubtitleTextView.setTag(Integer.valueOf(i));
            this.animatedSubtitleTextView.setTextSize(AndroidUtilities.m107dp(14));
            this.animatedSubtitleTextView.setGravity(3);
            this.animatedSubtitleTextView.setPadding(0, 0, AndroidUtilities.m107dp(10), 0);
            this.animatedSubtitleTextView.setTranslationY(-AndroidUtilities.m107dp(1));
            addView(this.animatedSubtitleTextView);
        } else {
            SimpleTextConnectedView simpleTextConnectedView2 = new SimpleTextConnectedView(this, context, this.subtitleTextLargerCopyView);
            this.subtitleTextView = simpleTextConnectedView2;
            simpleTextConnectedView2.setEllipsizeByGradient(true);
            SimpleTextView simpleTextView = this.subtitleTextView;
            int i2 = Theme.key_actionBarDefaultSubtitle;
            simpleTextView.setTextColor(getThemedColor(i2));
            this.subtitleTextView.setTag(Integer.valueOf(i2));
            this.subtitleTextView.setTextSize(14);
            this.subtitleTextView.setGravity(3);
            this.subtitleTextView.setPadding(0, 0, AndroidUtilities.m107dp(10), 0);
            addView(this.subtitleTextView);
        }
        if (this.parentFragment != null) {
            ImageView imageView = new ImageView(context);
            this.timeItem = imageView;
            imageView.setPadding(AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(5), AndroidUtilities.m107dp(5));
            this.timeItem.setScaleType(ImageView.ScaleType.CENTER);
            this.timeItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.timeItem.setScaleY(BitmapDescriptorFactory.HUE_RED);
            this.timeItem.setScaleX(BitmapDescriptorFactory.HUE_RED);
            this.timeItem.setVisibility(8);
            ImageView imageView2 = this.timeItem;
            TimerDrawable timerDrawable = new TimerDrawable(context, resourcesProvider);
            this.timerDrawable = timerDrawable;
            imageView2.setImageDrawable(timerDrawable);
            addView(this.timeItem);
            this.secretChatTimer = z;
            this.timeItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatAvatarContainer.this.lambda$new$1(resourcesProvider, view);
                }
            });
            if (this.secretChatTimer) {
                this.timeItem.setContentDescription(LocaleController.getString("SetTimer", C3632R.string.SetTimer));
            } else {
                this.timeItem.setContentDescription(LocaleController.getString("AccAutoDeleteTimer", C3632R.string.AccAutoDeleteTimer));
            }
        }
        ChatActivity chatActivity3 = this.parentFragment;
        if (chatActivity3 != null && ((chatActivity3.getChatMode() == 0 || this.parentFragment.getChatMode() == 3) && !this.parentFragment.isTemplatesChannel(true, false))) {
            if ((!this.parentFragment.isThreadChat() || this.parentFragment.isTopic) && !UserObject.isReplyUser(this.parentFragment.getCurrentUser()) && this.parentFragment.getChatMode() != 3) {
                setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ChatAvatarContainer.this.lambda$new$2(view);
                    }
                });
            }
            TLRPC$Chat currentChat = this.parentFragment.getCurrentChat();
            this.statusDrawables[0] = new TypingDotsDrawable(true);
            this.statusDrawables[1] = new RecordStatusDrawable(true);
            this.statusDrawables[2] = new SendingFileDrawable(true);
            this.statusDrawables[3] = new PlayingGameDrawable(false, resourcesProvider);
            this.statusDrawables[4] = new RoundStatusDrawable(true);
            this.statusDrawables[5] = new ChoosingStickerStatusDrawable(true);
            int i3 = 0;
            while (true) {
                StatusDrawable[] statusDrawableArr = this.statusDrawables;
                if (i3 >= statusDrawableArr.length) {
                    break;
                }
                statusDrawableArr[i3].setIsChat(currentChat != null);
                i3++;
            }
        }
        this.emojiStatusDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.titleTextView, AndroidUtilities.m107dp(24));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.ChatAvatarContainer$1 */
    /* loaded from: classes6.dex */
    public class C48671 extends BackupImageView {
        StoriesUtilities.AvatarStoryParams params;
        final /* synthetic */ boolean val$avatarClickable;
        final /* synthetic */ BaseFragment val$baseFragment;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C48671(Context context, BaseFragment baseFragment, boolean z, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.val$baseFragment = baseFragment;
            this.val$avatarClickable = z;
            this.val$resourcesProvider = resourcesProvider;
            this.params = new C48681(true);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Components.ChatAvatarContainer$1$1 */
        /* loaded from: classes6.dex */
        public class C48681 extends StoriesUtilities.AvatarStoryParams {
            C48681(boolean z) {
                super(z);
            }

            @Override // org.telegram.p043ui.Stories.StoriesUtilities.AvatarStoryParams
            public void openStory(long j, Runnable runnable) {
                C48671.this.val$baseFragment.getOrCreateStoryViewer().open(C48671.this.getContext(), j, new StoryViewer.PlaceProvider() { // from class: org.telegram.ui.Components.ChatAvatarContainer$1$1$$ExternalSyntheticLambda0
                    @Override // org.telegram.p043ui.Stories.StoryViewer.PlaceProvider
                    public final boolean findView(long j2, int i, int i2, int i3, StoryViewer.TransitionViewHolder transitionViewHolder) {
                        boolean lambda$openStory$0;
                        lambda$openStory$0 = ChatAvatarContainer.C48671.C48681.this.lambda$openStory$0(j2, i, i2, i3, transitionViewHolder);
                        return lambda$openStory$0;
                    }

                    @Override // org.telegram.p043ui.Stories.StoryViewer.PlaceProvider
                    public /* synthetic */ void loadNext(boolean z) {
                        StoryViewer.PlaceProvider.CC.$default$loadNext(this, z);
                    }

                    @Override // org.telegram.p043ui.Stories.StoryViewer.PlaceProvider
                    public /* synthetic */ void preLayout(long j2, int i, Runnable runnable2) {
                        runnable2.run();
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ boolean lambda$openStory$0(long j, int i, int i2, int i3, StoryViewer.TransitionViewHolder transitionViewHolder) {
                C48671 c48671 = C48671.this;
                ImageReceiver imageReceiver = c48671.imageReceiver;
                transitionViewHolder.storyImage = imageReceiver;
                transitionViewHolder.crossfadeToAvatarImage = imageReceiver;
                transitionViewHolder.params = c48671.params;
                BackupImageView backupImageView = ChatAvatarContainer.this.avatarImageView;
                transitionViewHolder.view = backupImageView;
                transitionViewHolder.alpha = backupImageView.getAlpha();
                transitionViewHolder.clipTop = BitmapDescriptorFactory.HUE_RED;
                transitionViewHolder.clipBottom = AndroidUtilities.displaySize.y;
                transitionViewHolder.clipParent = (View) C48671.this.getParent();
                return true;
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            if (this.val$avatarClickable && getImageReceiver().hasNotThumb()) {
                accessibilityNodeInfo.setText(LocaleController.getString("AccDescrProfilePicture", C3632R.string.AccDescrProfilePicture));
                if (Build.VERSION.SDK_INT >= 21) {
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, LocaleController.getString("Open", C3632R.string.Open)));
                    return;
                }
                return;
            }
            accessibilityNodeInfo.setVisibleToUser(false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
        public void onDraw(Canvas canvas) {
            if (ChatAvatarContainer.this.allowDrawStories && this.animatedEmojiDrawable == null) {
                this.params.originalAvatarRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                StoriesUtilities.AvatarStoryParams avatarStoryParams = this.params;
                avatarStoryParams.drawSegments = true;
                avatarStoryParams.drawInside = true;
                avatarStoryParams.resourcesProvider = this.val$resourcesProvider;
                if (ChatAvatarContainer.this.storiesForceState != null) {
                    this.params.forceState = ChatAvatarContainer.this.storiesForceState.intValue();
                }
                StoriesUtilities.drawAvatarWithStory(ChatAvatarContainer.this.parentFragment != null ? ChatAvatarContainer.this.parentFragment.getDialogId() : 0L, canvas, this.imageReceiver, this.params);
                return;
            }
            super.onDraw(canvas);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (ChatAvatarContainer.this.allowDrawStories && this.params.checkOnTouchEvent(motionEvent, this)) {
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (onAvatarClick()) {
            return;
        }
        openProfile(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Theme.ResourcesProvider resourcesProvider, View view) {
        if (this.secretChatTimer) {
            this.parentFragment.showDialog(AlertsCreator.createTTLAlert(getContext(), this.parentFragment.getCurrentEncryptedChat(), resourcesProvider).create());
        } else {
            openSetTimer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        openProfile(false);
    }

    public void setTitleExpand(boolean z) {
        int m107dp = z ? AndroidUtilities.m107dp(10) : 0;
        if (this.titleTextView.getPaddingRight() != m107dp) {
            this.titleTextView.setPadding(0, AndroidUtilities.m107dp(6), m107dp, AndroidUtilities.m107dp(12));
            requestLayout();
            invalidate();
        }
    }

    public void setOverrideSubtitleColor(Integer num) {
        this.overrideSubtitleColor = num;
    }

    public boolean openSetTimer() {
        int i;
        if (this.parentFragment.getParentActivity() == null) {
            return false;
        }
        TLRPC$Chat currentChat = this.parentFragment.getCurrentChat();
        if (currentChat != null && !ChatObject.canUserDoAdminAction(currentChat, 13)) {
            if (this.timeItem.getTag() != null) {
                this.parentFragment.showTimerHint();
            }
            return false;
        }
        TLRPC$ChatFull currentChatInfo = this.parentFragment.getCurrentChatInfo();
        TLRPC$UserFull currentUserInfo = this.parentFragment.getCurrentUserInfo();
        if (currentUserInfo != null) {
            i = currentUserInfo.ttl_period;
        } else {
            i = currentChatInfo != null ? currentChatInfo.ttl_period : 0;
        }
        AutoDeletePopupWrapper autoDeletePopupWrapper = new AutoDeletePopupWrapper(getContext(), null, new AutoDeletePopupWrapper.Callback() { // from class: org.telegram.ui.Components.ChatAvatarContainer.2
            @Override // org.telegram.p043ui.Components.AutoDeletePopupWrapper.Callback
            public /* synthetic */ void showGlobalAutoDeleteScreen() {
                AutoDeletePopupWrapper.Callback.CC.$default$showGlobalAutoDeleteScreen(this);
            }

            @Override // org.telegram.p043ui.Components.AutoDeletePopupWrapper.Callback
            public void dismiss() {
                ActionBarPopupWindow[] actionBarPopupWindowArr = r2;
                if (actionBarPopupWindowArr[0] != null) {
                    actionBarPopupWindowArr[0].dismiss();
                }
            }

            @Override // org.telegram.p043ui.Components.AutoDeletePopupWrapper.Callback
            public void setAutoDeleteHistory(int i2, int i3) {
                UndoView undoView;
                if (ChatAvatarContainer.this.parentFragment == null) {
                    return;
                }
                ChatAvatarContainer.this.parentFragment.getMessagesController().setDialogHistoryTTL(ChatAvatarContainer.this.parentFragment.getDialogId(), i2);
                TLRPC$ChatFull currentChatInfo2 = ChatAvatarContainer.this.parentFragment.getCurrentChatInfo();
                TLRPC$UserFull currentUserInfo2 = ChatAvatarContainer.this.parentFragment.getCurrentUserInfo();
                if ((currentUserInfo2 == null && currentChatInfo2 == null) || (undoView = ChatAvatarContainer.this.parentFragment.getUndoView()) == null) {
                    return;
                }
                undoView.showWithAction(ChatAvatarContainer.this.parentFragment.getDialogId(), i3, ChatAvatarContainer.this.parentFragment.getCurrentUser(), Integer.valueOf(currentUserInfo2 != null ? currentUserInfo2.ttl_period : currentChatInfo2.ttl_period), (Runnable) null, (Runnable) null);
            }
        }, true, 0, this.resourcesProvider);
        autoDeletePopupWrapper.lambda$updateItems$7(i);
        final ActionBarPopupWindow[] actionBarPopupWindowArr = {new ActionBarPopupWindow(autoDeletePopupWrapper.windowLayout, -2, -2) { // from class: org.telegram.ui.Components.ChatAvatarContainer.3
            @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                if (ChatAvatarContainer.this.parentFragment != null) {
                    ChatAvatarContainer.this.parentFragment.dimBehindView(false);
                }
            }
        }};
        actionBarPopupWindowArr[0].setPauseNotifications(true);
        actionBarPopupWindowArr[0].setDismissAnimationDuration(220);
        actionBarPopupWindowArr[0].setOutsideTouchable(true);
        actionBarPopupWindowArr[0].setClippingEnabled(true);
        actionBarPopupWindowArr[0].setAnimationStyle(C3632R.style.PopupContextAnimation);
        actionBarPopupWindowArr[0].setFocusable(true);
        autoDeletePopupWrapper.windowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE));
        actionBarPopupWindowArr[0].setInputMethodMode(2);
        actionBarPopupWindowArr[0].getContentView().setFocusableInTouchMode(true);
        ActionBarPopupWindow actionBarPopupWindow = actionBarPopupWindowArr[0];
        BackupImageView backupImageView = this.avatarImageView;
        actionBarPopupWindow.showAtLocation(backupImageView, 0, (int) (backupImageView.getX() + getX()), (int) this.avatarImageView.getY());
        this.parentFragment.dimBehindView(true);
        return true;
    }

    public void openProfile(boolean z) {
        openProfile(z, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        if (r10.avatarImageView.getImageReceiver().hasNotThumb() != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void openProfile(boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatAvatarContainer.openProfile(boolean, boolean):void");
    }

    public void setOccupyStatusBar(boolean z) {
        this.occupyStatusBar = z;
    }

    public void setTitleColors(int i, int i2) {
        this.titleTextView.setTextColor(i);
        this.subtitleTextView.setTextColor(i2);
        this.subtitleTextView.setTag(Integer.valueOf(i2));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i) + this.titleTextView.getPaddingRight();
        int m107dp = size - AndroidUtilities.m107dp((this.avatarImageView.getVisibility() == 0 ? 54 : 0) + 16);
        this.avatarImageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(42), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(42), 1073741824));
        this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(m107dp, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(32) + this.titleTextView.getPaddingRight(), Integer.MIN_VALUE));
        SimpleTextView simpleTextView = this.subtitleTextView;
        if (simpleTextView != null) {
            simpleTextView.measure(View.MeasureSpec.makeMeasureSpec(m107dp, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(20), Integer.MIN_VALUE));
        } else {
            AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
            if (animatedTextView != null) {
                animatedTextView.measure(View.MeasureSpec.makeMeasureSpec(m107dp, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(20), Integer.MIN_VALUE));
            }
        }
        ImageView imageView = this.timeItem;
        if (imageView != null) {
            imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(34), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(34), 1073741824));
        }
        setMeasuredDimension(size, View.MeasureSpec.getSize(i2));
        int i3 = this.lastWidth;
        if (i3 != -1 && i3 != size && i3 > size) {
            fadeOutToLessWidth(i3);
        }
        SimpleTextView simpleTextView2 = this.titleTextLargerCopyView.get();
        if (simpleTextView2 != null) {
            simpleTextView2.measure(View.MeasureSpec.makeMeasureSpec(this.largerWidth - AndroidUtilities.m107dp((this.avatarImageView.getVisibility() != 0 ? 0 : 54) + 16), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(24), Integer.MIN_VALUE));
        }
        this.lastWidth = size;
    }

    private void fadeOutToLessWidth(int i) {
        this.largerWidth = i;
        View view = (SimpleTextView) this.titleTextLargerCopyView.get();
        if (view != null) {
            removeView(view);
        }
        SimpleTextView simpleTextView = new SimpleTextView(getContext());
        this.titleTextLargerCopyView.set(simpleTextView);
        simpleTextView.setTextColor(getThemedColor(Theme.key_actionBarDefaultTitle));
        simpleTextView.setTextSize(18);
        simpleTextView.setGravity(3);
        simpleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        simpleTextView.setLeftDrawableTopPadding(-AndroidUtilities.m108dp(1.3f));
        simpleTextView.setRightDrawable(this.titleTextView.getRightDrawable());
        simpleTextView.setRightDrawable2(this.titleTextView.getRightDrawable2());
        simpleTextView.setRightDrawableOutside(this.titleTextView.getRightDrawableOutside());
        simpleTextView.setLeftDrawable(this.titleTextView.getLeftDrawable());
        simpleTextView.setText(this.titleTextView.getText());
        ViewPropertyAnimator duration = simpleTextView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(350L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        duration.setInterpolator(cubicBezierInterpolator).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ChatAvatarContainer.this.lambda$fadeOutToLessWidth$3();
            }
        }).start();
        addView(simpleTextView);
        View view2 = (SimpleTextView) this.subtitleTextLargerCopyView.get();
        if (view2 != null) {
            removeView(view2);
        }
        SimpleTextView simpleTextView2 = new SimpleTextView(getContext());
        this.subtitleTextLargerCopyView.set(simpleTextView2);
        int i2 = Theme.key_actionBarDefaultSubtitle;
        simpleTextView2.setTextColor(getThemedColor(i2));
        simpleTextView2.setTag(Integer.valueOf(i2));
        simpleTextView2.setTextSize(14);
        simpleTextView2.setGravity(3);
        SimpleTextView simpleTextView3 = this.subtitleTextView;
        if (simpleTextView3 != null) {
            simpleTextView2.setText(simpleTextView3.getText());
        } else {
            AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
            if (animatedTextView != null) {
                simpleTextView2.setText(animatedTextView.getText());
            }
        }
        simpleTextView2.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(350L).setInterpolator(cubicBezierInterpolator).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ChatAvatarContainer.this.lambda$fadeOutToLessWidth$4();
            }
        }).start();
        addView(simpleTextView2);
        setClipChildren(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fadeOutToLessWidth$3() {
        SimpleTextView simpleTextView = this.titleTextLargerCopyView.get();
        if (simpleTextView != null) {
            removeView(simpleTextView);
            this.titleTextLargerCopyView.set(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fadeOutToLessWidth$4() {
        SimpleTextView simpleTextView = this.subtitleTextLargerCopyView.get();
        if (simpleTextView != null) {
            removeView(simpleTextView);
            this.subtitleTextLargerCopyView.set(null);
            if (this.allowDrawStories) {
                return;
            }
            setClipChildren(true);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int currentActionBarHeight = ((C3704ActionBar.getCurrentActionBarHeight() - AndroidUtilities.m107dp(42)) / 2) + ((Build.VERSION.SDK_INT < 21 || !this.occupyStatusBar) ? 0 : AndroidUtilities.statusBarHeight);
        BackupImageView backupImageView = this.avatarImageView;
        int i5 = this.leftPadding;
        int i6 = currentActionBarHeight + 1;
        backupImageView.layout(i5, i6, AndroidUtilities.m107dp(42) + i5, AndroidUtilities.m107dp(42) + i6);
        int m107dp = this.leftPadding + (this.avatarImageView.getVisibility() == 0 ? AndroidUtilities.m107dp(54) : 0) + this.rightAvatarPadding;
        SimpleTextView simpleTextView = this.titleTextLargerCopyView.get();
        if (getSubtitleTextView().getVisibility() != 8) {
            this.titleTextView.layout(m107dp, (AndroidUtilities.m108dp(1.3f) + currentActionBarHeight) - this.titleTextView.getPaddingTop(), this.titleTextView.getMeasuredWidth() + m107dp, (((this.titleTextView.getTextHeight() + currentActionBarHeight) + AndroidUtilities.m108dp(1.3f)) - this.titleTextView.getPaddingTop()) + this.titleTextView.getPaddingBottom());
            if (simpleTextView != null) {
                simpleTextView.layout(m107dp, AndroidUtilities.m108dp(1.3f) + currentActionBarHeight, simpleTextView.getMeasuredWidth() + m107dp, simpleTextView.getTextHeight() + currentActionBarHeight + AndroidUtilities.m108dp(1.3f));
            }
        } else {
            this.titleTextView.layout(m107dp, (AndroidUtilities.m107dp(11) + currentActionBarHeight) - this.titleTextView.getPaddingTop(), this.titleTextView.getMeasuredWidth() + m107dp, (((this.titleTextView.getTextHeight() + currentActionBarHeight) + AndroidUtilities.m107dp(11)) - this.titleTextView.getPaddingTop()) + this.titleTextView.getPaddingBottom());
            if (simpleTextView != null) {
                simpleTextView.layout(m107dp, AndroidUtilities.m107dp(11) + currentActionBarHeight, simpleTextView.getMeasuredWidth() + m107dp, simpleTextView.getTextHeight() + currentActionBarHeight + AndroidUtilities.m107dp(11));
            }
        }
        ImageView imageView = this.timeItem;
        if (imageView != null) {
            imageView.layout(this.leftPadding + AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(15) + currentActionBarHeight, this.leftPadding + AndroidUtilities.m107dp(50), AndroidUtilities.m107dp(49) + currentActionBarHeight);
        }
        SimpleTextView simpleTextView2 = this.subtitleTextView;
        if (simpleTextView2 != null) {
            simpleTextView2.layout(m107dp, AndroidUtilities.m107dp(24) + currentActionBarHeight, this.subtitleTextView.getMeasuredWidth() + m107dp, this.subtitleTextView.getTextHeight() + currentActionBarHeight + AndroidUtilities.m107dp(24));
        } else {
            AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
            if (animatedTextView != null) {
                animatedTextView.layout(m107dp, AndroidUtilities.m107dp(24) + currentActionBarHeight, this.animatedSubtitleTextView.getMeasuredWidth() + m107dp, this.animatedSubtitleTextView.getTextHeight() + currentActionBarHeight + AndroidUtilities.m107dp(24));
            }
        }
        SimpleTextView simpleTextView3 = this.subtitleTextLargerCopyView.get();
        if (simpleTextView3 != null) {
            simpleTextView3.layout(m107dp, AndroidUtilities.m107dp(24) + currentActionBarHeight, simpleTextView3.getMeasuredWidth() + m107dp, currentActionBarHeight + simpleTextView3.getTextHeight() + AndroidUtilities.m107dp(24));
        }
    }

    public void setLeftPadding(int i) {
        this.leftPadding = i;
    }

    public void setRightAvatarPadding(int i) {
        this.rightAvatarPadding = i;
    }

    public void showTimeItem(boolean z) {
        ImageView imageView = this.timeItem;
        if (imageView != null && imageView.getTag() == null && this.avatarImageView.getVisibility() == 0) {
            this.timeItem.clearAnimation();
            this.timeItem.setVisibility(0);
            this.timeItem.setTag(1);
            if (z) {
                this.timeItem.animate().setDuration(180L).alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setListener(null).start();
                return;
            }
            this.timeItem.setAlpha(1.0f);
            this.timeItem.setScaleY(1.0f);
            this.timeItem.setScaleX(1.0f);
        }
    }

    public void hideTimeItem(boolean z) {
        ImageView imageView = this.timeItem;
        if (imageView == null || imageView.getTag() == null) {
            return;
        }
        this.timeItem.clearAnimation();
        this.timeItem.setTag(null);
        if (z) {
            this.timeItem.animate().setDuration(180L).alpha(BitmapDescriptorFactory.HUE_RED).scaleX(BitmapDescriptorFactory.HUE_RED).scaleY(BitmapDescriptorFactory.HUE_RED).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAvatarContainer.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ChatAvatarContainer.this.timeItem.setVisibility(8);
                    super.onAnimationEnd(animator);
                }
            }).start();
            return;
        }
        this.timeItem.setVisibility(8);
        this.timeItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.timeItem.setScaleY(BitmapDescriptorFactory.HUE_RED);
        this.timeItem.setScaleX(BitmapDescriptorFactory.HUE_RED);
    }

    public void setTime(int i, boolean z) {
        if (this.timerDrawable == null) {
            return;
        }
        if (i != 0 || this.secretChatTimer) {
            showTimeItem(z);
            this.timerDrawable.setTime(i);
        }
    }

    public void setTitleIcons(Drawable drawable, Drawable drawable2) {
        this.titleTextView.setLeftDrawable(drawable);
        if (this.rightDrawableIsScamOrVerified) {
            return;
        }
        if (drawable2 != null) {
            this.rightDrawable2ContentDescription = LocaleController.getString("NotificationsMuted", C3632R.string.NotificationsMuted);
        } else {
            this.rightDrawable2ContentDescription = null;
        }
        this.titleTextView.setRightDrawable2(drawable2);
    }

    public void setTitle(CharSequence charSequence) {
        setTitle(charSequence, false, false, false, false, null, false);
    }

    public void setTitle(CharSequence charSequence, boolean z, boolean z2, boolean z3, boolean z4, TLRPC$EmojiStatus tLRPC$EmojiStatus, boolean z5) {
        if (charSequence != null) {
            charSequence = Emoji.replaceEmoji(charSequence, this.titleTextView.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(24), false);
        }
        boolean isShowPremiumBadgeEnabled = ForkCommonController.getInstance(this.currentAccount).isShowPremiumBadgeEnabled();
        boolean isShowPremiumStatusEnabled = ForkCommonController.getInstance(this.currentAccount).isShowPremiumStatusEnabled();
        boolean z6 = z4 & (isShowPremiumBadgeEnabled || isShowPremiumStatusEnabled);
        this.titleTextView.setText(charSequence);
        if (z || z2) {
            if (!(this.titleTextView.getRightDrawable() instanceof ScamDrawable)) {
                ScamDrawable scamDrawable = new ScamDrawable(11, !z ? 1 : 0);
                scamDrawable.setColor(getThemedColor(Theme.key_actionBarDefaultSubtitle));
                this.titleTextView.setRightDrawable2(scamDrawable);
                this.rightDrawable2ContentDescription = LocaleController.getString("ScamMessage", C3632R.string.ScamMessage);
                this.rightDrawableIsScamOrVerified = true;
            }
        } else if (z3) {
            Drawable mutate = getResources().getDrawable(C3632R.C3634drawable.verified_area).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_profile_verifiedBackground), PorterDuff.Mode.MULTIPLY));
            Drawable mutate2 = getResources().getDrawable(C3632R.C3634drawable.verified_check).mutate();
            mutate2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_profile_verifiedCheck), PorterDuff.Mode.MULTIPLY));
            this.titleTextView.setRightDrawable2(new CombinedDrawable(mutate, mutate2));
            this.rightDrawableIsScamOrVerified = true;
            this.rightDrawable2ContentDescription = LocaleController.getString("AccDescrVerified", C3632R.string.AccDescrVerified);
        } else if (this.titleTextView.getRightDrawable() instanceof ScamDrawable) {
            this.titleTextView.setRightDrawable2(null);
            this.rightDrawableIsScamOrVerified = false;
            this.rightDrawable2ContentDescription = null;
        }
        if (z6 || DialogObject.getEmojiStatusDocumentId(tLRPC$EmojiStatus) != 0) {
            if ((this.titleTextView.getRightDrawable() instanceof AnimatedEmojiDrawable.WrapSizeDrawable) && (((AnimatedEmojiDrawable.WrapSizeDrawable) this.titleTextView.getRightDrawable()).getDrawable() instanceof AnimatedEmojiDrawable)) {
                ((AnimatedEmojiDrawable) ((AnimatedEmojiDrawable.WrapSizeDrawable) this.titleTextView.getRightDrawable()).getDrawable()).removeView(this.titleTextView);
            }
            if (isShowPremiumStatusEnabled && DialogObject.getEmojiStatusDocumentId(tLRPC$EmojiStatus) != 0) {
                this.emojiStatusDrawable.set(DialogObject.getEmojiStatusDocumentId(tLRPC$EmojiStatus), z5);
            } else if (z6) {
                Drawable drawable = this.premiumStarDrawable;
                if (drawable == null) {
                    drawable = ContextCompat.getDrawable(ApplicationLoader.applicationContext, C3632R.C3634drawable.msg_premium_liststar).mutate();
                }
                if (!isShowPremiumBadgeEnabled) {
                    this.rightDrawableIsScamOrVerified = false;
                    ChatActivity chatActivity = this.parentFragment;
                    if (chatActivity != null) {
                        chatActivity.updateTitleIconsPublic();
                        return;
                    }
                    return;
                }
                if (this.premiumStarDrawable == null) {
                    this.premiumStarDrawable = drawable;
                }
                drawable.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_profile_verifiedBackground), PorterDuff.Mode.MULTIPLY));
                this.emojiStatusDrawable.set(drawable, z5);
            } else {
                this.emojiStatusDrawable.set((Drawable) null, z5);
            }
            this.emojiStatusDrawable.setColor(Integer.valueOf(getThemedColor(Theme.key_profile_verifiedBackground)));
            this.titleTextView.setRightDrawable(this.emojiStatusDrawable);
            this.rightDrawableIsScamOrVerified = false;
            this.rightDrawableContentDescription = LocaleController.getString("AccDescrPremium", C3632R.string.AccDescrPremium);
            return;
        }
        this.titleTextView.setRightDrawable((Drawable) null);
        this.rightDrawableContentDescription = null;
    }

    public void setSubtitle(CharSequence charSequence) {
        if (this.lastSubtitle == null) {
            SimpleTextView simpleTextView = this.subtitleTextView;
            if (simpleTextView != null) {
                simpleTextView.setText(charSequence);
                return;
            }
            AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
            if (animatedTextView != null) {
                animatedTextView.setText(charSequence);
                return;
            }
            return;
        }
        this.lastSubtitle = charSequence;
    }

    public ImageView getTimeItem() {
        return this.timeItem;
    }

    public SimpleTextView getTitleTextView() {
        return this.titleTextView;
    }

    public View getSubtitleTextView() {
        SimpleTextView simpleTextView = this.subtitleTextView;
        if (simpleTextView != null) {
            return simpleTextView;
        }
        AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
        if (animatedTextView != null) {
            return animatedTextView;
        }
        return null;
    }

    public TextPaint getSubtitlePaint() {
        SimpleTextView simpleTextView = this.subtitleTextView;
        return simpleTextView != null ? simpleTextView.getTextPaint() : this.animatedSubtitleTextView.getPaint();
    }

    public void onDestroy() {
        SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader = this.sharedMediaPreloader;
        if (sharedMediaPreloader != null) {
            sharedMediaPreloader.onDestroy(this.parentFragment);
        }
    }

    private void setTypingAnimation(boolean z) {
        SimpleTextView simpleTextView = this.subtitleTextView;
        if (simpleTextView == null) {
            return;
        }
        int i = 0;
        if (z) {
            try {
                int intValue = MessagesController.getInstance(this.currentAccount).getPrintingStringType(this.parentFragment.getDialogId(), this.parentFragment.getThreadId()).intValue();
                if (intValue == 5) {
                    this.subtitleTextView.replaceTextWithDrawable(this.statusDrawables[intValue], "**oo**");
                    this.statusDrawables[intValue].setColor(getThemedColor(Theme.key_chat_status));
                    this.subtitleTextView.setLeftDrawable((Drawable) null);
                } else {
                    this.subtitleTextView.replaceTextWithDrawable(null, null);
                    this.statusDrawables[intValue].setColor(getThemedColor(Theme.key_chat_status));
                    this.subtitleTextView.setLeftDrawable(this.statusDrawables[intValue]);
                }
                this.currentTypingDrawable = this.statusDrawables[intValue];
                while (true) {
                    StatusDrawable[] statusDrawableArr = this.statusDrawables;
                    if (i >= statusDrawableArr.length) {
                        return;
                    }
                    if (i == intValue) {
                        statusDrawableArr[i].start();
                    } else {
                        statusDrawableArr[i].stop();
                    }
                    i++;
                }
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        } else {
            this.currentTypingDrawable = null;
            simpleTextView.setLeftDrawable((Drawable) null);
            this.subtitleTextView.replaceTextWithDrawable(null, null);
            while (true) {
                StatusDrawable[] statusDrawableArr2 = this.statusDrawables;
                if (i >= statusDrawableArr2.length) {
                    return;
                }
                statusDrawableArr2[i].stop();
                i++;
            }
        }
    }

    public void updateSubtitle() {
        updateSubtitle(false);
    }

    public void updateSubtitle(boolean z) {
        CharSequence string;
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null) {
            return;
        }
        TLRPC$User currentUser = chatActivity.getCurrentUser();
        boolean z2 = true;
        if ((UserObject.isUserSelf(currentUser) || UserObject.isReplyUser(currentUser) || this.parentFragment.getChatMode() != 0 || this.parentFragment.isTemplatesChannel(true, false)) && this.parentFragment.getChatMode() != 3) {
            if (getSubtitleTextView().getVisibility() != 8) {
                getSubtitleTextView().setVisibility(8);
                return;
            }
            return;
        }
        TLRPC$Chat currentChat = this.parentFragment.getCurrentChat();
        CharSequence printingString = MessagesController.getInstance(this.currentAccount).getPrintingString(this.parentFragment.getDialogId(), this.parentFragment.getThreadId(), false);
        String str = "";
        if (printingString != null) {
            printingString = TextUtils.replace(printingString, new String[]{"..."}, new String[]{""});
        }
        if (printingString == null || printingString.length() == 0 || (ChatObject.isChannel(currentChat) && !currentChat.megagroup)) {
            if (this.parentFragment.isThreadChat() && !this.parentFragment.isTopic) {
                if (this.titleTextView.getTag() != null) {
                    return;
                }
                this.titleTextView.setTag(1);
                AnimatorSet animatorSet = this.titleAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.titleAnimation = null;
                }
                if (z) {
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    this.titleAnimation = animatorSet2;
                    animatorSet2.playTogether(ObjectAnimator.ofFloat(this.titleTextView, View.TRANSLATION_Y, AndroidUtilities.m108dp(9.7f)), ObjectAnimator.ofFloat(getSubtitleTextView(), View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    this.titleAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAvatarContainer.5
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            ChatAvatarContainer.this.titleAnimation = null;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (ChatAvatarContainer.this.titleAnimation == animator) {
                                ChatAvatarContainer.this.getSubtitleTextView().setVisibility(4);
                                ChatAvatarContainer.this.titleAnimation = null;
                            }
                        }
                    });
                    this.titleAnimation.setDuration(180L);
                    this.titleAnimation.start();
                    return;
                }
                this.titleTextView.setTranslationY(AndroidUtilities.m108dp(9.7f));
                getSubtitleTextView().setAlpha(BitmapDescriptorFactory.HUE_RED);
                getSubtitleTextView().setVisibility(4);
                return;
            }
            setTypingAnimation(false);
            if (this.parentFragment.getChatMode() == 3) {
                str = LocaleController.formatPluralString("SavedMessagesCount", Math.max(1, this.parentFragment.getMessagesController().getSavedMessagesController().getMessagesCount(this.parentFragment.getSavedDialogId())), new Object[0]);
            } else {
                ChatActivity chatActivity2 = this.parentFragment;
                if (chatActivity2.isTopic && currentChat != null) {
                    TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(currentChat.f1602id, this.parentFragment.getTopicId());
                    int i = findTopic != null ? findTopic.totalMessagesCount - 1 : 0;
                    string = i > 0 ? LocaleController.formatPluralString("messages", i, Integer.valueOf(i)) : LocaleController.formatString("TopicProfileStatus", C3632R.string.TopicProfileStatus, currentChat.title);
                } else if (currentChat != null) {
                    TLRPC$ChatFull currentChatInfo = chatActivity2.getCurrentChatInfo();
                    if (!this.parentFragment.isTemplatesChannel(true, false)) {
                        if (this.parentFragment.isInAlbumMode()) {
                            string = LocaleController.getInternalString(C3632R.string.cloud_album).toLowerCase();
                        } else {
                            string = getChatSubtitle(currentChat, currentChatInfo, this.onlineCount);
                        }
                    }
                } else if (currentUser != null) {
                    TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(currentUser.f1751id));
                    if (user != null) {
                        currentUser = user;
                    }
                    if (!UserObject.isReplyUser(currentUser)) {
                        if (currentUser.f1751id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                            string = LocaleController.getString("ChatYourSelf", C3632R.string.ChatYourSelf);
                        } else {
                            long j = currentUser.f1751id;
                            if (j == 333000 || j == 777000 || j == 42777) {
                                string = LocaleController.getString("ServiceNotifications", C3632R.string.ServiceNotifications);
                            } else if (MessagesController.isSupportUser(currentUser)) {
                                string = LocaleController.getString("SupportStatus", C3632R.string.SupportStatus);
                            } else if (currentUser.bot) {
                                string = LocaleController.getString("Bot", C3632R.string.Bot);
                            } else {
                                boolean[] zArr = this.isOnline;
                                zArr[0] = false;
                                str = LocaleController.formatUserStatus(this.currentAccount, currentUser, zArr, this.allowShorterStatus ? this.statusMadeShorter : null);
                                z2 = this.isOnline[0];
                            }
                        }
                    }
                }
                str = string;
            }
            z2 = false;
        } else {
            if (this.parentFragment.isThreadChat() && this.titleTextView.getTag() != null) {
                this.titleTextView.setTag(null);
                getSubtitleTextView().setVisibility(0);
                AnimatorSet animatorSet3 = this.titleAnimation;
                if (animatorSet3 != null) {
                    animatorSet3.cancel();
                    this.titleAnimation = null;
                }
                if (z) {
                    AnimatorSet animatorSet4 = new AnimatorSet();
                    this.titleAnimation = animatorSet4;
                    animatorSet4.playTogether(ObjectAnimator.ofFloat(this.titleTextView, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(getSubtitleTextView(), View.ALPHA, 1.0f));
                    this.titleAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAvatarContainer.6
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ChatAvatarContainer.this.titleAnimation = null;
                        }
                    });
                    this.titleAnimation.setDuration(180L);
                    this.titleAnimation.start();
                } else {
                    this.titleTextView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    getSubtitleTextView().setAlpha(1.0f);
                }
            }
            str = MessagesController.getInstance(this.currentAccount).getPrintingStringType(this.parentFragment.getDialogId(), this.parentFragment.getThreadId()).intValue() == 5 ? Emoji.replaceEmoji(printingString, getSubtitlePaint().getFontMetricsInt(), AndroidUtilities.m107dp(15), false) : printingString;
            setTypingAnimation(true);
        }
        this.lastSubtitleColorKey = z2 ? Theme.key_chat_status : Theme.key_actionBarDefaultSubtitle;
        if (this.lastSubtitle == null) {
            SimpleTextView simpleTextView = this.subtitleTextView;
            if (simpleTextView != null) {
                simpleTextView.setText(str);
                Integer num = this.overrideSubtitleColor;
                if (num == null) {
                    this.subtitleTextView.setTextColor(getThemedColor(this.lastSubtitleColorKey));
                    this.subtitleTextView.setTag(Integer.valueOf(this.lastSubtitleColorKey));
                    return;
                }
                this.subtitleTextView.setTextColor(num.intValue());
                return;
            }
            this.animatedSubtitleTextView.setText(str, z);
            Integer num2 = this.overrideSubtitleColor;
            if (num2 == null) {
                this.animatedSubtitleTextView.setTextColor(getThemedColor(this.lastSubtitleColorKey));
                this.animatedSubtitleTextView.setTag(Integer.valueOf(this.lastSubtitleColorKey));
                return;
            }
            this.animatedSubtitleTextView.setTextColor(num2.intValue());
            return;
        }
        this.lastSubtitle = str;
    }

    public static CharSequence getChatSubtitle(TLRPC$Chat tLRPC$Chat, TLRPC$ChatFull tLRPC$ChatFull, int i) {
        TLRPC$ChatParticipants tLRPC$ChatParticipants;
        int i2;
        String formatShortNumber;
        if (!ChatObject.isChannel(tLRPC$Chat)) {
            if (ChatObject.isKickedFromChat(tLRPC$Chat)) {
                return LocaleController.getString("YouWereKicked", C3632R.string.YouWereKicked);
            }
            if (ChatObject.isLeftFromChat(tLRPC$Chat)) {
                return LocaleController.getString("YouLeft", C3632R.string.YouLeft);
            }
            int i3 = tLRPC$Chat.participants_count;
            if (tLRPC$ChatFull != null && (tLRPC$ChatParticipants = tLRPC$ChatFull.participants) != null) {
                i3 = tLRPC$ChatParticipants.participants.size();
            }
            return (i <= 1 || i3 == 0) ? LocaleController.formatPluralString("Members", i3, new Object[0]) : String.format("%s, %s", LocaleController.formatPluralString("Members", i3, new Object[0]), LocaleController.formatPluralString("OnlineCount", i, new Object[0]));
        } else if (tLRPC$ChatFull != null && (i2 = tLRPC$ChatFull.participants_count) != 0) {
            if (tLRPC$Chat.megagroup) {
                return i > 1 ? String.format("%s, %s", LocaleController.formatPluralString("Members", i2, new Object[0]), LocaleController.formatPluralString("OnlineCount", Math.min(i, tLRPC$ChatFull.participants_count), new Object[0])) : LocaleController.formatPluralString("Members", i2, new Object[0]);
            }
            int[] iArr = new int[1];
            boolean isAccessibilityScreenReaderEnabled = AndroidUtilities.isAccessibilityScreenReaderEnabled();
            int i4 = tLRPC$ChatFull.participants_count;
            if (isAccessibilityScreenReaderEnabled) {
                iArr[0] = i4;
                formatShortNumber = String.valueOf(i4);
            } else {
                formatShortNumber = LocaleController.formatShortNumber(i4, iArr);
            }
            return tLRPC$Chat.megagroup ? LocaleController.formatPluralString("Members", iArr[0], new Object[0]).replace(String.format("%d", Integer.valueOf(iArr[0])), formatShortNumber) : LocaleController.formatPluralString("Subscribers", iArr[0], new Object[0]).replace(String.format("%d", Integer.valueOf(iArr[0])), formatShortNumber);
        } else if (!tLRPC$Chat.megagroup) {
            if (ChatObject.isPublic(tLRPC$Chat)) {
                return LocaleController.getString("ChannelPublic", C3632R.string.ChannelPublic).toLowerCase();
            }
            return LocaleController.getString("ChannelPrivate", C3632R.string.ChannelPrivate).toLowerCase();
        } else if (tLRPC$ChatFull == null) {
            return LocaleController.getString("Loading", C3632R.string.Loading).toLowerCase();
        } else {
            if (tLRPC$Chat.has_geo) {
                return LocaleController.getString("MegaLocation", C3632R.string.MegaLocation).toLowerCase();
            }
            if (ChatObject.isPublic(tLRPC$Chat)) {
                return LocaleController.getString("MegaPublic", C3632R.string.MegaPublic).toLowerCase();
            }
            return LocaleController.getString("MegaPrivate", C3632R.string.MegaPrivate).toLowerCase();
        }
    }

    public int getLastSubtitleColorKey() {
        return this.lastSubtitleColorKey;
    }

    public void setChatAvatar(TLRPC$Chat tLRPC$Chat) {
        this.avatarDrawable.setInfo(this.currentAccount, tLRPC$Chat);
        if (this.avatarImageView != null) {
            if (tLRPC$Chat != null && ChatObject.isTemplatesChat(this.currentAccount, tLRPC$Chat.f1602id)) {
                this.avatarDrawable.setAvatarType(101);
                this.avatarDrawable.setScaleSize(0.8f);
                this.avatarImageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, tLRPC$Chat);
            } else {
                this.avatarImageView.setForUserOrChat(tLRPC$Chat, this.avatarDrawable);
            }
            this.avatarImageView.setRoundRadius(AndroidUtilities.m107dp((tLRPC$Chat == null || !tLRPC$Chat.forum) ? 21 : 16));
        }
    }

    public void setUserAvatar(TLRPC$User tLRPC$User) {
        setUserAvatar(tLRPC$User, false);
    }

    public void setUserAvatar(TLRPC$User tLRPC$User, boolean z) {
        this.avatarDrawable.setInfo(this.currentAccount, tLRPC$User);
        if (UserObject.isReplyUser(tLRPC$User)) {
            this.avatarDrawable.setAvatarType(12);
            this.avatarDrawable.setScaleSize(0.8f);
            BackupImageView backupImageView = this.avatarImageView;
            if (backupImageView != null) {
                backupImageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, tLRPC$User);
            }
        } else if (UserObject.isAnonymous(tLRPC$User)) {
            this.avatarDrawable.setAvatarType(21);
            this.avatarDrawable.setScaleSize(0.8f);
            BackupImageView backupImageView2 = this.avatarImageView;
            if (backupImageView2 != null) {
                backupImageView2.setImage((ImageLocation) null, (String) null, this.avatarDrawable, tLRPC$User);
            }
        } else if (UserObject.isUserSelf(tLRPC$User) && !z) {
            this.avatarDrawable.setAvatarType(1);
            this.avatarDrawable.setScaleSize(0.8f);
            BackupImageView backupImageView3 = this.avatarImageView;
            if (backupImageView3 != null) {
                backupImageView3.setImage((ImageLocation) null, (String) null, this.avatarDrawable, tLRPC$User);
            }
        } else {
            this.avatarDrawable.setScaleSize(1.0f);
            BackupImageView backupImageView4 = this.avatarImageView;
            if (backupImageView4 != null) {
                backupImageView4.setForUserOrChat(tLRPC$User, this.avatarDrawable);
            }
        }
    }

    public void checkAndUpdateAvatar() {
        TLRPC$User tLRPC$User;
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null) {
            return;
        }
        TLRPC$User currentUser = chatActivity.getCurrentUser();
        TLRPC$Chat currentChat = this.parentFragment.getCurrentChat();
        if (this.parentFragment.getChatMode() == 3) {
            long savedDialogId = this.parentFragment.getSavedDialogId();
            if (savedDialogId >= 0) {
                tLRPC$User = this.parentFragment.getMessagesController().getUser(Long.valueOf(savedDialogId));
                currentChat = null;
            } else {
                currentChat = this.parentFragment.getMessagesController().getChat(Long.valueOf(-savedDialogId));
                tLRPC$User = null;
            }
        } else {
            tLRPC$User = currentUser;
        }
        if (tLRPC$User == null) {
            if (currentChat != null) {
                this.avatarDrawable.setInfo(this.currentAccount, currentChat);
                if (this.avatarImageView != null) {
                    if (ChatObject.isTemplatesChat(this.currentAccount, currentChat.f1602id)) {
                        this.avatarDrawable.setScaleSize(0.8f);
                        this.avatarDrawable.setAvatarType(101);
                        this.avatarImageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, currentChat);
                    } else {
                        this.avatarImageView.setForUserOrChat(currentChat, this.avatarDrawable);
                    }
                }
                this.avatarImageView.setRoundRadius(AndroidUtilities.m107dp(currentChat.forum ? 16 : 21));
                return;
            }
            return;
        }
        this.avatarDrawable.setInfo(this.currentAccount, tLRPC$User);
        if (UserObject.isReplyUser(tLRPC$User)) {
            this.avatarDrawable.setScaleSize(0.8f);
            this.avatarDrawable.setAvatarType(12);
            BackupImageView backupImageView = this.avatarImageView;
            if (backupImageView != null) {
                backupImageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, tLRPC$User);
            }
        } else if (UserObject.isAnonymous(tLRPC$User)) {
            this.avatarDrawable.setScaleSize(0.8f);
            this.avatarDrawable.setAvatarType(21);
            BackupImageView backupImageView2 = this.avatarImageView;
            if (backupImageView2 != null) {
                backupImageView2.setImage((ImageLocation) null, (String) null, this.avatarDrawable, tLRPC$User);
            }
        } else if (UserObject.isUserSelf(tLRPC$User) && this.parentFragment.getChatMode() == 3) {
            this.avatarDrawable.setScaleSize(0.8f);
            this.avatarDrawable.setAvatarType(22);
            BackupImageView backupImageView3 = this.avatarImageView;
            if (backupImageView3 != null) {
                backupImageView3.setImage((ImageLocation) null, (String) null, this.avatarDrawable, tLRPC$User);
            }
        } else if (UserObject.isUserSelf(tLRPC$User)) {
            this.avatarDrawable.setScaleSize(0.8f);
            this.avatarDrawable.setAvatarType(1);
            BackupImageView backupImageView4 = this.avatarImageView;
            if (backupImageView4 != null) {
                backupImageView4.setImage((ImageLocation) null, (String) null, this.avatarDrawable, tLRPC$User);
            }
        } else {
            this.avatarDrawable.setScaleSize(1.0f);
            BackupImageView backupImageView5 = this.avatarImageView;
            if (backupImageView5 != null) {
                backupImageView5.imageReceiver.setForUserOrChat(tLRPC$User, this.avatarDrawable, null, true, 3, false);
            }
        }
    }

    public void updateOnlineCount() {
        TLRPC$UserStatus tLRPC$UserStatus;
        boolean z;
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null) {
            return;
        }
        this.onlineCount = 0;
        TLRPC$ChatFull currentChatInfo = chatActivity.getCurrentChatInfo();
        if (currentChatInfo == null) {
            return;
        }
        int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        if ((currentChatInfo instanceof TLRPC$TL_chatFull) || (((z = currentChatInfo instanceof TLRPC$TL_channelFull)) && currentChatInfo.participants_count <= 200 && currentChatInfo.participants != null)) {
            for (int i = 0; i < currentChatInfo.participants.participants.size(); i++) {
                TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(currentChatInfo.participants.participants.get(i).user_id));
                if (user != null && (tLRPC$UserStatus = user.status) != null && ((tLRPC$UserStatus.expires > currentTime || user.f1751id == UserConfig.getInstance(this.currentAccount).getClientUserId()) && user.status.expires > 10000)) {
                    this.onlineCount++;
                }
            }
        } else if (z && currentChatInfo.participants_count > 200) {
            this.onlineCount = currentChatInfo.online_count;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.parentFragment != null) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didUpdateConnectionState);
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
            if (this.parentFragment.getChatMode() == 3) {
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.savedMessagesDialogsUpdate);
            }
            this.currentConnectionState = ConnectionsManager.getInstance(this.currentAccount).getConnectionState();
            updateCurrentConnectionState();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatusDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.attach();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.parentFragment != null) {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didUpdateConnectionState);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
            if (this.parentFragment.getChatMode() == 3) {
                NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.savedMessagesDialogsUpdate);
            }
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatusDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.detach();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.didUpdateConnectionState) {
            int connectionState = ConnectionsManager.getInstance(this.currentAccount).getConnectionState();
            if (this.currentConnectionState != connectionState) {
                this.currentConnectionState = connectionState;
                updateCurrentConnectionState();
            }
        } else if (i == NotificationCenter.emojiLoaded) {
            SimpleTextView simpleTextView = this.titleTextView;
            if (simpleTextView != null) {
                simpleTextView.invalidate();
            }
            if (getSubtitleTextView() != null) {
                getSubtitleTextView().invalidate();
            }
            invalidate();
        } else if (i == NotificationCenter.savedMessagesDialogsUpdate) {
            updateSubtitle(true);
        }
    }

    private void updateCurrentConnectionState() {
        String string;
        int i = this.currentConnectionState;
        if (i == 2) {
            string = LocaleController.getString("WaitingForNetwork", C3632R.string.WaitingForNetwork);
        } else if (i == 1) {
            string = LocaleController.getString("Connecting", C3632R.string.Connecting);
        } else if (i == 5) {
            string = LocaleController.getString("Updating", C3632R.string.Updating);
        } else {
            string = i == 4 ? LocaleController.getString("ConnectingToProxy", C3632R.string.ConnectingToProxy) : null;
        }
        if (string == null) {
            CharSequence charSequence = this.lastSubtitle;
            if (charSequence != null) {
                SimpleTextView simpleTextView = this.subtitleTextView;
                if (simpleTextView != null) {
                    simpleTextView.setText(charSequence);
                    this.lastSubtitle = null;
                    Integer num = this.overrideSubtitleColor;
                    if (num != null) {
                        this.subtitleTextView.setTextColor(num.intValue());
                        return;
                    }
                    int i2 = this.lastSubtitleColorKey;
                    if (i2 >= 0) {
                        this.subtitleTextView.setTextColor(getThemedColor(i2));
                        this.subtitleTextView.setTag(Integer.valueOf(this.lastSubtitleColorKey));
                        return;
                    }
                    return;
                }
                AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
                if (animatedTextView != null) {
                    animatedTextView.setText(charSequence, true ^ LocaleController.isRTL);
                    this.lastSubtitle = null;
                    Integer num2 = this.overrideSubtitleColor;
                    if (num2 != null) {
                        this.animatedSubtitleTextView.setTextColor(num2.intValue());
                        return;
                    }
                    int i3 = this.lastSubtitleColorKey;
                    if (i3 >= 0) {
                        this.animatedSubtitleTextView.setTextColor(getThemedColor(i3));
                        this.animatedSubtitleTextView.setTag(Integer.valueOf(this.lastSubtitleColorKey));
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        SimpleTextView simpleTextView2 = this.subtitleTextView;
        if (simpleTextView2 != null) {
            if (this.lastSubtitle == null) {
                this.lastSubtitle = simpleTextView2.getText();
            }
            this.subtitleTextView.setText(string);
            Integer num3 = this.overrideSubtitleColor;
            if (num3 != null) {
                this.subtitleTextView.setTextColor(num3.intValue());
                return;
            }
            SimpleTextView simpleTextView3 = this.subtitleTextView;
            int i4 = Theme.key_actionBarDefaultSubtitle;
            simpleTextView3.setTextColor(getThemedColor(i4));
            this.subtitleTextView.setTag(Integer.valueOf(i4));
            return;
        }
        AnimatedTextView animatedTextView2 = this.animatedSubtitleTextView;
        if (animatedTextView2 != null) {
            if (this.lastSubtitle == null) {
                this.lastSubtitle = animatedTextView2.getText();
            }
            this.animatedSubtitleTextView.setText(string, true ^ LocaleController.isRTL);
            Integer num4 = this.overrideSubtitleColor;
            if (num4 != null) {
                this.animatedSubtitleTextView.setTextColor(num4.intValue());
                return;
            }
            AnimatedTextView animatedTextView3 = this.animatedSubtitleTextView;
            int i5 = Theme.key_actionBarDefaultSubtitle;
            animatedTextView3.setTextColor(getThemedColor(i5));
            this.animatedSubtitleTextView.setTag(Integer.valueOf(i5));
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StringBuilder sb = new StringBuilder();
        sb.append(this.titleTextView.getText());
        if (this.rightDrawableContentDescription != null) {
            sb.append(", ");
            sb.append(this.rightDrawableContentDescription);
        }
        if (this.rightDrawable2ContentDescription != null) {
            sb.append(", ");
            sb.append(this.rightDrawable2ContentDescription);
        }
        sb.append("\n");
        SimpleTextView simpleTextView = this.subtitleTextView;
        if (simpleTextView != null) {
            sb.append(simpleTextView.getText());
        } else {
            AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
            if (animatedTextView != null) {
                sb.append(animatedTextView.getText());
            }
        }
        accessibilityNodeInfo.setContentDescription(sb);
        if (!accessibilityNodeInfo.isClickable() || Build.VERSION.SDK_INT < 21) {
            return;
        }
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, LocaleController.getString("OpenProfile", C3632R.string.OpenProfile)));
    }

    public SharedMediaLayout.SharedMediaPreloader getSharedMediaPreloader() {
        return this.sharedMediaPreloader;
    }

    public BackupImageView getAvatarImageView() {
        return this.avatarImageView;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void updateColors() {
        StatusDrawable statusDrawable = this.currentTypingDrawable;
        if (statusDrawable != null) {
            statusDrawable.setColor(getThemedColor(Theme.key_chat_status));
        }
    }
}
