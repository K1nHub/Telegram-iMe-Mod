package org.telegram.p043ui.Components.Reactions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EmojiTabsStrip;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p043ui.Components.Reactions.CustomEmojiReactionsWindow;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p043ui.Components.ReactionsContainerLayout;
import org.telegram.p043ui.Components.StableAnimator;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.SelectAnimatedEmojiDialog;
import org.telegram.tgnet.TLRPC$Document;
/* renamed from: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow */
/* loaded from: classes6.dex */
public class CustomEmojiReactionsWindow {
    boolean attachToParent;
    BaseFragment baseFragment;
    private boolean cascadeAnimation;
    ContainerView containerView;
    private float dismissProgress;
    private boolean dismissed;
    boolean enterTransitionFinished;
    float enterTransitionProgress;
    float fromRadius;
    private boolean invalidatePath;
    boolean isShowing;
    float keyboardHeight;
    private Runnable onDismiss;
    List<ReactionsLayoutInBubble.VisibleReaction> reactions;
    ReactionsContainerLayout reactionsContainerLayout;
    Theme.ResourcesProvider resourcesProvider;
    SelectAnimatedEmojiDialog selectAnimatedEmojiDialog;
    private final int type;
    private ValueAnimator valueAnimator;
    private boolean wasFocused;
    WindowManager windowManager;
    public FrameLayout windowView;
    float yTranslation;
    RectF fromRect = new RectF();
    public RectF drawingRect = new RectF();
    private final Path pathToClipApi20 = new Path();
    int[] location = new int[2];
    final AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker();
    HashSet<View> animatingEnterChild = new HashSet<>();
    ArrayList<ValueAnimator> animators = new ArrayList<>();
    private int frameDrawCount = 0;

    static /* synthetic */ int access$1108(CustomEmojiReactionsWindow customEmojiReactionsWindow) {
        int i = customEmojiReactionsWindow.frameDrawCount;
        customEmojiReactionsWindow.frameDrawCount = i + 1;
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public CustomEmojiReactionsWindow(int i, BaseFragment baseFragment, List<ReactionsLayoutInBubble.VisibleReaction> list, HashSet<ReactionsLayoutInBubble.VisibleReaction> hashSet, final ReactionsContainerLayout reactionsContainerLayout, Theme.ResourcesProvider resourcesProvider) {
        int i2;
        this.type = i;
        this.reactions = list;
        this.baseFragment = baseFragment;
        this.resourcesProvider = resourcesProvider;
        Context context = baseFragment != null ? baseFragment.getContext() : reactionsContainerLayout.getContext();
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.1
            Bulletin.Delegate bulletinDelegate = new Bulletin.Delegate() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.1.1
                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean allowLayoutChanges() {
                    return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean clipWithGradient(int i3) {
                    return Bulletin.Delegate.CC.$default$clipWithGradient(this, i3);
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public /* synthetic */ int getTopOffset(int i3) {
                    return Bulletin.Delegate.CC.$default$getTopOffset(this, i3);
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public /* synthetic */ void onBottomOffsetChange(float f) {
                    Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public /* synthetic */ void onHide(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onHide(this, bulletin);
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public /* synthetic */ void onShow(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onShow(this, bulletin);
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i3) {
                    return (int) CustomEmojiReactionsWindow.this.keyboardHeight;
                }
            };

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchSetPressed(boolean z) {
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                if (keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 4) {
                    CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
                    if (customEmojiReactionsWindow.enterTransitionFinished) {
                        customEmojiReactionsWindow.dismiss();
                    }
                    return true;
                }
                return super.dispatchKeyEvent(keyEvent);
            }

            @Override // android.view.View
            protected boolean fitSystemWindows(Rect rect) {
                CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
                if (customEmojiReactionsWindow.keyboardHeight != rect.bottom && customEmojiReactionsWindow.wasFocused) {
                    CustomEmojiReactionsWindow customEmojiReactionsWindow2 = CustomEmojiReactionsWindow.this;
                    customEmojiReactionsWindow2.keyboardHeight = rect.bottom;
                    customEmojiReactionsWindow2.updateWindowPosition();
                }
                return super.fitSystemWindows(rect);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                Bulletin.addDelegate(this, this.bulletinDelegate);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                Bulletin.removeDelegate(this);
            }

            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
            }
        };
        this.windowView = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomEmojiReactionsWindow.this.lambda$new$0(view);
            }
        });
        this.attachToParent = i == 2;
        this.containerView = new ContainerView(context);
        C55572 c55572 = new C55572(baseFragment, context, false, null, reactionsContainerLayout.showExpandableReactions() ? 8 : 1, i != 1, resourcesProvider, 16, reactionsContainerLayout, baseFragment);
        this.selectAnimatedEmojiDialog = c55572;
        if (Build.VERSION.SDK_INT >= 21) {
            c55572.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.3
                final Rect rect = new Rect();
                final RectF rectTmp = new RectF();
                final RectF rectF = new RectF();

                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    float lerp = AndroidUtilities.lerp(CustomEmojiReactionsWindow.this.fromRadius, AndroidUtilities.m107dp(8), CustomEmojiReactionsWindow.this.enterTransitionProgress);
                    this.rectTmp.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, view.getMeasuredWidth(), view.getMeasuredHeight());
                    CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
                    AndroidUtilities.lerp(customEmojiReactionsWindow.fromRect, this.rectTmp, customEmojiReactionsWindow.enterTransitionProgress, this.rectF);
                    this.rectF.round(this.rect);
                    outline.setRoundRect(this.rect, lerp);
                }
            });
            i2 = 1;
            this.selectAnimatedEmojiDialog.setClipToOutline(true);
        } else {
            i2 = 1;
        }
        this.selectAnimatedEmojiDialog.setOnLongPressedListener(new SelectAnimatedEmojiDialog.onLongPressedListener(this) { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.4
            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog.onLongPressedListener
            public void onLongPressed(SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji) {
                if (imageViewEmoji.isDefaultReaction) {
                    reactionsContainerLayout.onReactionClicked(imageViewEmoji, imageViewEmoji.reaction, true);
                } else {
                    reactionsContainerLayout.onReactionClicked(imageViewEmoji, ReactionsLayoutInBubble.VisibleReaction.fromCustomEmoji(Long.valueOf(imageViewEmoji.span.documentId)), true);
                }
            }
        });
        this.selectAnimatedEmojiDialog.setOnRecentClearedListener(new SelectAnimatedEmojiDialog.onRecentClearedListener(this) { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.5
            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog.onRecentClearedListener
            public void onRecentCleared() {
                reactionsContainerLayout.clearRecentReactions();
            }
        });
        this.selectAnimatedEmojiDialog.setRecentReactions(list);
        this.selectAnimatedEmojiDialog.setSelectedReactions(hashSet);
        this.selectAnimatedEmojiDialog.setDrawBackground(false);
        this.selectAnimatedEmojiDialog.onShow(null);
        this.containerView.addView(this.selectAnimatedEmojiDialog, LayoutHelper.createFrame(-1, -2, 0, 0, 0, 0, 0));
        this.windowView.addView(this.containerView, LayoutHelper.createFrame(-1, -1, 48, 16, 16, 16, 16));
        this.windowView.setClipChildren(false);
        if (i == i2 || (reactionsContainerLayout.getDelegate() != null && reactionsContainerLayout.getDelegate().drawBackground())) {
            this.selectAnimatedEmojiDialog.setBackgroundDelegate(new SelectAnimatedEmojiDialog.BackgroundDelegate() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda9
                @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog.BackgroundDelegate
                public final void drawRect(Canvas canvas, int i3, int i4, int i5, int i6, float f, float f2) {
                    CustomEmojiReactionsWindow.this.lambda$new$1(reactionsContainerLayout, canvas, i3, i4, i5, i6, f, f2);
                }
            });
        }
        if (this.attachToParent) {
            ((ViewGroup) reactionsContainerLayout.getParent()).addView(this.windowView);
        } else {
            WindowManager.LayoutParams createLayoutParams = createLayoutParams(false);
            WindowManager windowManager = AndroidUtilities.findActivity(context).getWindowManager();
            this.windowManager = windowManager;
            windowManager.addView(this.windowView, createLayoutParams);
        }
        this.reactionsContainerLayout = reactionsContainerLayout;
        reactionsContainerLayout.setOnSwitchedToLoopView(new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                CustomEmojiReactionsWindow.this.lambda$new$2();
            }
        });
        reactionsContainerLayout.prepareAnimation(i2);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                CustomEmojiReactionsWindow.this.lambda$new$3(reactionsContainerLayout);
            }
        }, 50L);
        NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
        int i3 = NotificationCenter.stopAllHeavyOperations;
        Object[] objArr = new Object[i2];
        objArr[0] = 7;
        globalInstance.lambda$postNotificationNameOnUIThread$1(i3, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (this.enterTransitionFinished) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$2 */
    /* loaded from: classes6.dex */
    public class C55572 extends SelectAnimatedEmojiDialog {
        final /* synthetic */ BaseFragment val$baseFragment;
        final /* synthetic */ ReactionsContainerLayout val$reactionsContainerLayout;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C55572(BaseFragment baseFragment, Context context, boolean z, Integer num, int i, boolean z2, Theme.ResourcesProvider resourcesProvider, int i2, ReactionsContainerLayout reactionsContainerLayout, BaseFragment baseFragment2) {
            super(baseFragment, context, z, num, i, z2, resourcesProvider, i2);
            this.val$reactionsContainerLayout = reactionsContainerLayout;
            this.val$baseFragment = baseFragment2;
        }

        @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
        public boolean prevWindowKeyboardVisible() {
            if (this.val$reactionsContainerLayout.getDelegate() != null) {
                return this.val$reactionsContainerLayout.getDelegate().needEnterText();
            }
            return false;
        }

        @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
        protected void onInputFocus() {
            if (CustomEmojiReactionsWindow.this.wasFocused) {
                return;
            }
            CustomEmojiReactionsWindow.this.wasFocused = true;
            CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
            if (!customEmojiReactionsWindow.attachToParent) {
                customEmojiReactionsWindow.windowManager.updateViewLayout(customEmojiReactionsWindow.windowView, customEmojiReactionsWindow.createLayoutParams(true));
            }
            BaseFragment baseFragment = this.val$baseFragment;
            if (baseFragment instanceof ChatActivity) {
                ((ChatActivity) baseFragment).needEnterText();
            }
            if (this.val$reactionsContainerLayout.getDelegate() != null) {
                this.val$reactionsContainerLayout.getDelegate().needEnterText();
            }
        }

        @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
        protected void onReactionClick(SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
            this.val$reactionsContainerLayout.onReactionClicked(imageViewEmoji, visibleReaction, false);
            AndroidUtilities.hideKeyboard(CustomEmojiReactionsWindow.this.windowView);
        }

        @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
        protected void onEmojiSelected(View view, Long l, TLRPC$Document tLRPC$Document, Integer num) {
            if (!UserConfig.getInstance(this.val$baseFragment.getCurrentAccount()).isPremium()) {
                CustomEmojiReactionsWindow.this.windowView.performHapticFeedback(3);
                BulletinFactory.m66of(CustomEmojiReactionsWindow.this.windowView, null).createEmojiBulletin(tLRPC$Document, AndroidUtilities.replaceTags(LocaleController.getString("UnlockPremiumEmojiReaction", C3632R.string.UnlockPremiumEmojiReaction)), LocaleController.getString("PremiumMore", C3632R.string.PremiumMore), new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomEmojiReactionsWindow.C55572.this.lambda$onEmojiSelected$0();
                    }
                }).show();
                return;
            }
            this.val$reactionsContainerLayout.onReactionClicked(view, ReactionsLayoutInBubble.VisibleReaction.fromCustomEmoji(l), false);
            AndroidUtilities.hideKeyboard(CustomEmojiReactionsWindow.this.windowView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEmojiSelected$0() {
            CustomEmojiReactionsWindow.this.showUnlockPremiumAlert();
        }

        @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
        protected void invalidateParent() {
            CustomEmojiReactionsWindow.this.containerView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ReactionsContainerLayout reactionsContainerLayout, Canvas canvas, int i, int i2, int i3, int i4, float f, float f2) {
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(i, i2, i3, i4);
        reactionsContainerLayout.getDelegate().drawRoundRect(canvas, rectF, BitmapDescriptorFactory.HUE_RED, this.containerView.getX() + f, getBlurOffset() + f2, 255, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        this.containerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(ReactionsContainerLayout reactionsContainerLayout) {
        this.isShowing = true;
        this.containerView.invalidate();
        reactionsContainerLayout.prepareAnimation(false);
        createTransition(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWindowPosition() {
        if (this.dismissed) {
            return;
        }
        float f = this.yTranslation;
        int m107dp = AndroidUtilities.m107dp(32);
        int i = this.type;
        if (i == 1 || i == 2) {
            m107dp = AndroidUtilities.m107dp(24);
        }
        float f2 = m107dp;
        if (this.containerView.getMeasuredHeight() + f > (this.windowView.getMeasuredHeight() - this.keyboardHeight) - f2) {
            f = ((this.windowView.getMeasuredHeight() - this.keyboardHeight) - this.containerView.getMeasuredHeight()) - f2;
        }
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f = 0.0f;
        }
        this.containerView.animate().translationY(f).setDuration(250L).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CustomEmojiReactionsWindow.this.lambda$updateWindowPosition$4(valueAnimator);
            }
        }).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateWindowPosition$4(ValueAnimator valueAnimator) {
        this.containerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowManager.LayoutParams createLayoutParams(boolean z) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.type = this.type == 0 ? 1000 : 99;
        layoutParams.softInputMode = 16;
        if (z) {
            layoutParams.flags = 65792;
        } else {
            layoutParams.flags = 65800;
        }
        layoutParams.format = -3;
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUnlockPremiumAlert() {
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment instanceof ChatActivity) {
            baseFragment.showDialog(new PremiumFeatureBottomSheet(this.baseFragment, 11, false));
            return;
        }
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            lastFragment.showDialog(new PremiumFeatureBottomSheet(this.baseFragment, 11, false));
        }
    }

    private void createTransition(final boolean z) {
        this.fromRect.set(this.reactionsContainerLayout.rect);
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
        this.fromRadius = reactionsContainerLayout.radius;
        int[] iArr = new int[2];
        if (z) {
            reactionsContainerLayout.getLocationOnScreen(this.location);
        }
        this.windowView.getLocationOnScreen(iArr);
        float m107dp = ((((this.location[1] - iArr[1]) - AndroidUtilities.m107dp(44)) - AndroidUtilities.m107dp(52)) - (this.selectAnimatedEmojiDialog.includeHint ? AndroidUtilities.m107dp(26) : 0)) + this.reactionsContainerLayout.getTopOffset();
        if (this.reactionsContainerLayout.showExpandableReactions()) {
            m107dp = (this.location[1] - iArr[1]) - AndroidUtilities.m107dp(12);
        }
        if (this.containerView.getMeasuredHeight() + m107dp > this.windowView.getMeasuredHeight() - AndroidUtilities.m107dp(32)) {
            m107dp = (this.windowView.getMeasuredHeight() - AndroidUtilities.m107dp(32)) - this.containerView.getMeasuredHeight();
        }
        if (m107dp < AndroidUtilities.m107dp(16)) {
            m107dp = AndroidUtilities.m107dp(16);
        }
        int i = this.type;
        if (i == 1) {
            this.containerView.setTranslationX(((this.windowView.getMeasuredWidth() - this.containerView.getMeasuredWidth()) / 2.0f) - AndroidUtilities.m107dp(16));
        } else if (i == 2) {
            this.containerView.setTranslationX((this.location[0] - iArr[0]) - AndroidUtilities.m107dp(18));
        } else {
            this.containerView.setTranslationX((this.location[0] - iArr[0]) - AndroidUtilities.m107dp(2));
        }
        if (!z) {
            this.yTranslation = this.containerView.getTranslationY();
        } else {
            this.yTranslation = m107dp;
            this.containerView.setTranslationY(m107dp);
        }
        this.fromRect.offset((this.location[0] - iArr[0]) - this.containerView.getX(), (this.location[1] - iArr[1]) - this.containerView.getY());
        this.reactionsContainerLayout.setCustomEmojiEnterProgress(this.enterTransitionProgress);
        if (z) {
            this.cascadeAnimation = SharedConfig.getDevicePerformanceClass() >= 2 && LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS);
            this.enterTransitionFinished = false;
        } else {
            this.cascadeAnimation = false;
        }
        boolean z2 = this.cascadeAnimation;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            updateCascadeEnter(BitmapDescriptorFactory.HUE_RED, true);
        }
        updateContainersAlpha();
        this.selectAnimatedEmojiDialog.setEnterAnimationInProgress(true);
        this.selectAnimatedEmojiDialog.emojiTabs.showRecentTabStub(z && this.cascadeAnimation);
        int i2 = UserConfig.selectedAccount;
        this.notificationsLocker.lock();
        float[] fArr = new float[2];
        fArr[0] = this.enterTransitionProgress;
        if (z) {
            f = 1.0f;
        }
        fArr[1] = f;
        StableAnimator ofFloat = StableAnimator.ofFloat(fArr);
        this.valueAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CustomEmojiReactionsWindow.this.lambda$createTransition$5(z, valueAnimator);
            }
        });
        if (!z) {
            syncReactionFrames();
        }
        this.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CustomEmojiReactionsWindow.this.updateContainersAlpha();
                CustomEmojiReactionsWindow.this.updateContentPosition();
                CustomEmojiReactionsWindow.this.checkAnimationEnd(z);
                if (Build.VERSION.SDK_INT >= 21) {
                    CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.invalidateOutline();
                }
                CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
                boolean z3 = z;
                customEmojiReactionsWindow.enterTransitionProgress = z3 ? 1.0f : 0.0f;
                if (z3) {
                    customEmojiReactionsWindow.enterTransitionFinished = true;
                    customEmojiReactionsWindow.containerView.invalidate();
                }
                CustomEmojiReactionsWindow customEmojiReactionsWindow2 = CustomEmojiReactionsWindow.this;
                customEmojiReactionsWindow2.reactionsContainerLayout.setCustomEmojiEnterProgress(Utilities.clamp(customEmojiReactionsWindow2.enterTransitionProgress, 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
                if (z) {
                    return;
                }
                CustomEmojiReactionsWindow.this.reactionsContainerLayout.setSkipDraw(false);
                CustomEmojiReactionsWindow.this.removeView();
                Runtime.getRuntime().gc();
                CustomEmojiReactionsWindow.this.reactionsContainerLayout.setCustomEmojiReactionsBackground(true);
            }
        });
        if (this.cascadeAnimation) {
            this.valueAnimator.setDuration(450L);
            this.valueAnimator.setInterpolator(new OvershootInterpolator(0.5f));
        } else {
            this.valueAnimator.setDuration(350L);
            this.valueAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        }
        this.containerView.invalidate();
        switchLayerType(true);
        if (!z) {
            ReactionsContainerLayout reactionsContainerLayout2 = this.reactionsContainerLayout;
            reactionsContainerLayout2.isHiddenNextReaction = true;
            reactionsContainerLayout2.invalidate();
            this.valueAnimator.setStartDelay(30L);
            this.valueAnimator.start();
        } else {
            this.reactionsContainerLayout.setCustomEmojiReactionsBackground(false);
            final ValueAnimator valueAnimator = this.valueAnimator;
            Objects.requireNonNull(valueAnimator);
            HwEmojis.prepare(new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    valueAnimator.start();
                }
            }, this.cascadeAnimation);
        }
        HwEmojis.enableHw();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createTransition$5(boolean z, ValueAnimator valueAnimator) {
        this.valueAnimator = null;
        this.enterTransitionProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateContainersAlpha();
        updateContentPosition();
        this.reactionsContainerLayout.setCustomEmojiEnterProgress(Utilities.clamp(this.enterTransitionProgress, 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
        this.invalidatePath = true;
        this.containerView.invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            this.selectAnimatedEmojiDialog.invalidateOutline();
        }
        if (this.cascadeAnimation) {
            updateCascadeEnter(this.enterTransitionProgress, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContainersAlpha() {
        if (this.cascadeAnimation) {
            return;
        }
        this.selectAnimatedEmojiDialog.searchBox.setAlpha(this.enterTransitionProgress);
        this.selectAnimatedEmojiDialog.emojiGridView.setAlpha(this.enterTransitionProgress);
        this.selectAnimatedEmojiDialog.emojiSearchGridView.setAlpha(this.enterTransitionProgress);
        this.selectAnimatedEmojiDialog.emojiTabs.setAlpha(this.enterTransitionProgress);
        this.selectAnimatedEmojiDialog.emojiTabsShadow.setAlpha(this.enterTransitionProgress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContentPosition() {
        this.selectAnimatedEmojiDialog.contentView.setTranslationX(this.cascadeAnimation ? BitmapDescriptorFactory.HUE_RED : this.containerView.enterTransitionOffsetX);
        this.selectAnimatedEmojiDialog.contentView.setTranslationY(this.containerView.enterTransitionOffsetY);
        this.selectAnimatedEmojiDialog.contentView.setPivotX(this.containerView.enterTransitionScalePx);
        this.selectAnimatedEmojiDialog.contentView.setPivotY(this.containerView.enterTransitionScalePy);
        this.selectAnimatedEmojiDialog.contentView.setScaleX(this.containerView.enterTransitionScale);
        this.selectAnimatedEmojiDialog.contentView.setScaleY(this.containerView.enterTransitionScale);
    }

    private void switchLayerType(boolean z) {
        int i = z ? 2 : 0;
        this.selectAnimatedEmojiDialog.emojiGridView.setLayerType(i, null);
        this.selectAnimatedEmojiDialog.searchBox.setLayerType(i, null);
        if (this.cascadeAnimation) {
            for (int i2 = 0; i2 < Math.min(this.selectAnimatedEmojiDialog.emojiTabs.contentView.getChildCount(), 16); i2++) {
                this.selectAnimatedEmojiDialog.emojiTabs.contentView.getChildAt(i2).setLayerType(i, null);
            }
            return;
        }
        this.selectAnimatedEmojiDialog.emojiTabsShadow.setLayerType(i, null);
        this.selectAnimatedEmojiDialog.emojiTabs.setLayerType(i, null);
    }

    private void setScaleForChild(View view, float f) {
        if (view instanceof SelectAnimatedEmojiDialog.ImageViewEmoji) {
            ((SelectAnimatedEmojiDialog.ImageViewEmoji) view).setAnimatedScale(f);
        } else if (view instanceof EmojiTabsStrip.EmojiTabButton) {
            view.setScaleX(f);
            view.setScaleY(f);
        }
    }

    private void updateCascadeEnter(float f, final boolean z) {
        int y = (int) (this.selectAnimatedEmojiDialog.getY() + this.selectAnimatedEmojiDialog.contentView.getY() + this.selectAnimatedEmojiDialog.emojiGridView.getY());
        final ArrayList arrayList = null;
        boolean z2 = false;
        for (int i = 0; i < this.selectAnimatedEmojiDialog.emojiGridView.getChildCount(); i++) {
            View childAt = this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(i);
            if (!this.animatingEnterChild.contains(childAt)) {
                float top = childAt.getTop() + y + (childAt.getMeasuredHeight() / 2.0f);
                RectF rectF = this.drawingRect;
                if (top < rectF.bottom && top > rectF.top && f != BitmapDescriptorFactory.HUE_RED) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(childAt);
                    this.animatingEnterChild.add(childAt);
                } else {
                    setScaleForChild(childAt, BitmapDescriptorFactory.HUE_RED);
                    z2 = true;
                }
            }
        }
        int y2 = (int) (this.selectAnimatedEmojiDialog.getY() + this.selectAnimatedEmojiDialog.contentView.getY() + this.selectAnimatedEmojiDialog.emojiTabs.getY());
        for (int i2 = 0; i2 < this.selectAnimatedEmojiDialog.emojiTabs.contentView.getChildCount(); i2++) {
            View childAt2 = this.selectAnimatedEmojiDialog.emojiTabs.contentView.getChildAt(i2);
            if (!this.animatingEnterChild.contains(childAt2)) {
                float top2 = childAt2.getTop() + y2 + (childAt2.getMeasuredHeight() / 2.0f);
                RectF rectF2 = this.drawingRect;
                if (top2 < rectF2.bottom && top2 > rectF2.top && f != BitmapDescriptorFactory.HUE_RED) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(childAt2);
                    this.animatingEnterChild.add(childAt2);
                } else {
                    setScaleForChild(childAt2, BitmapDescriptorFactory.HUE_RED);
                    z2 = true;
                }
            }
        }
        if (z2) {
            this.selectAnimatedEmojiDialog.emojiGridViewContainer.invalidate();
        }
        if (arrayList != null) {
            final ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CustomEmojiReactionsWindow.this.lambda$updateCascadeEnter$6(arrayList, valueAnimator);
                }
            });
            this.animators.add(ofFloat);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    CustomEmojiReactionsWindow.this.animators.remove(ofFloat);
                    CustomEmojiReactionsWindow.this.checkAnimationEnd(z);
                }
            });
            ofFloat.setDuration(350L);
            ofFloat.setInterpolator(new OvershootInterpolator(1.0f));
            ofFloat.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCascadeEnter$6(ArrayList arrayList, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        for (int i = 0; i < arrayList.size(); i++) {
            setScaleForChild((View) arrayList.get(i), floatValue);
        }
        this.selectAnimatedEmojiDialog.emojiGridViewContainer.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAnimationEnd(boolean z) {
        if (this.animators.isEmpty()) {
            switchLayerType(false);
            HwEmojis.disableHw();
            this.notificationsLocker.unlock();
            this.selectAnimatedEmojiDialog.setEnterAnimationInProgress(false);
            if (z) {
                this.selectAnimatedEmojiDialog.emojiTabs.showRecentTabStub(false);
                this.selectAnimatedEmojiDialog.emojiGridView.invalidate();
                this.selectAnimatedEmojiDialog.emojiGridView.invalidateViews();
                this.selectAnimatedEmojiDialog.searchBox.checkInitialization();
                if (this.reactionsContainerLayout.getPullingLeftProgress() > BitmapDescriptorFactory.HUE_RED) {
                    ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
                    reactionsContainerLayout.isHiddenNextReaction = false;
                    reactionsContainerLayout.onCustomEmojiWindowOpened();
                } else {
                    ReactionsContainerLayout reactionsContainerLayout2 = this.reactionsContainerLayout;
                    reactionsContainerLayout2.isHiddenNextReaction = true;
                    reactionsContainerLayout2.onCustomEmojiWindowOpened();
                }
                this.selectAnimatedEmojiDialog.resetBackgroundBitmaps();
                syncReactionFrames();
                this.containerView.invalidate();
            }
        }
    }

    private void syncReactionFrames() {
        for (int i = 0; i < this.selectAnimatedEmojiDialog.emojiGridView.getChildCount(); i++) {
            if (this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(i) instanceof SelectAnimatedEmojiDialog.ImageViewEmoji) {
                SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji = (SelectAnimatedEmojiDialog.ImageViewEmoji) this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(i);
                if (imageViewEmoji.reaction != null) {
                    imageViewEmoji.notDraw = false;
                    imageViewEmoji.invalidate();
                }
            }
        }
    }

    public void removeView() {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 7);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                CustomEmojiReactionsWindow.this.lambda$removeView$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeView$7() {
        if (this.windowView.getParent() == null) {
            return;
        }
        if (this.attachToParent) {
            AndroidUtilities.removeFromParent(this.windowView);
        } else {
            try {
                this.windowManager.removeView(this.windowView);
            } catch (Exception unused) {
            }
        }
        Runnable runnable = this.onDismiss;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void dismiss() {
        if (this.dismissed) {
            return;
        }
        Bulletin.hideVisible();
        this.dismissed = true;
        AndroidUtilities.hideKeyboard(this.windowView);
        createTransition(false);
        if (this.wasFocused) {
            BaseFragment baseFragment = this.baseFragment;
            if (baseFragment instanceof ChatActivity) {
                ((ChatActivity) baseFragment).onEditTextDialogClose(true, true);
            }
        }
    }

    public void onDismissListener(Runnable runnable) {
        this.onDismiss = runnable;
    }

    public void dismiss(boolean z) {
        if (this.dismissed && z) {
            return;
        }
        this.dismissed = true;
        if (!z) {
            removeView();
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CustomEmojiReactionsWindow.this.lambda$dismiss$8(valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CustomEmojiReactionsWindow.this.removeView();
            }
        });
        ofFloat.setDuration(150L);
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$8(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.dismissProgress = floatValue;
        this.containerView.setAlpha(1.0f - floatValue);
    }

    public boolean isShowing() {
        return !this.dismissed;
    }

    public void dismissWithAlpha() {
        if (this.dismissed) {
            return;
        }
        Bulletin.hideVisible();
        this.dismissed = true;
        AndroidUtilities.hideKeyboard(this.windowView);
        this.windowView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CustomEmojiReactionsWindow.this.checkAnimationEnd(false);
                CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
                customEmojiReactionsWindow.enterTransitionProgress = BitmapDescriptorFactory.HUE_RED;
                customEmojiReactionsWindow.reactionsContainerLayout.setCustomEmojiEnterProgress(Utilities.clamp((float) BitmapDescriptorFactory.HUE_RED, 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
                CustomEmojiReactionsWindow.this.reactionsContainerLayout.setSkipDraw(false);
                CustomEmojiReactionsWindow.this.windowView.setVisibility(8);
                CustomEmojiReactionsWindow.this.removeView();
            }
        });
        if (this.wasFocused) {
            BaseFragment baseFragment = this.baseFragment;
            if (baseFragment instanceof ChatActivity) {
                ((ChatActivity) baseFragment).onEditTextDialogClose(true, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$ContainerView */
    /* loaded from: classes6.dex */
    public class ContainerView extends FrameLayout {
        Paint backgroundPaint;
        float enterTransitionOffsetX;
        float enterTransitionOffsetY;
        float enterTransitionScale;
        float enterTransitionScalePx;
        float enterTransitionScalePy;
        int[] radiusTmp;
        Drawable shadow;
        Rect shadowPad;
        HashMap<ReactionsLayoutInBubble.VisibleReaction, SelectAnimatedEmojiDialog.ImageViewEmoji> transitionReactions;

        public ContainerView(Context context) {
            super(context);
            this.shadowPad = new Rect();
            this.backgroundPaint = new Paint(1);
            this.radiusTmp = new int[4];
            this.transitionReactions = new HashMap<>();
            this.enterTransitionOffsetX = BitmapDescriptorFactory.HUE_RED;
            this.enterTransitionOffsetY = BitmapDescriptorFactory.HUE_RED;
            this.enterTransitionScale = 1.0f;
            this.enterTransitionScalePx = BitmapDescriptorFactory.HUE_RED;
            this.enterTransitionScalePy = BitmapDescriptorFactory.HUE_RED;
            this.shadow = ContextCompat.getDrawable(context, C3632R.C3634drawable.reactions_bubble_shadow).mutate();
            Rect rect = this.shadowPad;
            int m107dp = AndroidUtilities.m107dp(7);
            rect.bottom = m107dp;
            rect.right = m107dp;
            rect.top = m107dp;
            rect.left = m107dp;
            this.shadow.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_messagePanelShadow, CustomEmojiReactionsWindow.this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
            if (CustomEmojiReactionsWindow.this.type == 2) {
                this.backgroundPaint.setColor(ColorUtils.blendARGB(-16777216, -1, 0.13f));
            } else {
                this.backgroundPaint.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, CustomEmojiReactionsWindow.this.resourcesProvider));
            }
        }

        @Override // android.view.View
        public void invalidate() {
            ReactionsContainerLayout reactionsContainerLayout;
            super.invalidate();
            if (CustomEmojiReactionsWindow.this.type == 1 || !((reactionsContainerLayout = CustomEmojiReactionsWindow.this.reactionsContainerLayout) == null || reactionsContainerLayout.getDelegate() == null || !CustomEmojiReactionsWindow.this.reactionsContainerLayout.getDelegate().drawBackground())) {
                CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.invalidateSearchBox();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int measuredWidth;
            int i3;
            if (CustomEmojiReactionsWindow.this.type == 1 || CustomEmojiReactionsWindow.this.type == 2) {
                measuredWidth = CustomEmojiReactionsWindow.this.reactionsContainerLayout.getMeasuredWidth();
            } else {
                measuredWidth = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
                int m107dp = (AndroidUtilities.m107dp(36) * 8) + AndroidUtilities.m107dp(12);
                if (m107dp < measuredWidth) {
                    measuredWidth = m107dp;
                }
            }
            if (CustomEmojiReactionsWindow.this.reactionsContainerLayout.showExpandableReactions()) {
                int ceil = (int) Math.ceil(CustomEmojiReactionsWindow.this.reactions.size() / 8.0f);
                if (ceil <= 8) {
                    i3 = (ceil * AndroidUtilities.m107dp(36)) + AndroidUtilities.m107dp(8);
                } else {
                    i3 = (AndroidUtilities.m107dp(36) * 8) - AndroidUtilities.m107dp(8);
                }
            } else {
                i3 = measuredWidth;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int i;
            float f;
            boolean z;
            int y;
            View childAt;
            char c;
            boolean z2;
            float f2;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            int i8;
            boolean z3;
            float f8;
            float f9;
            float f10;
            SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji;
            ReactionsLayoutInBubble.VisibleReaction visibleReaction;
            CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
            if (customEmojiReactionsWindow.isShowing) {
                char c2 = 0;
                boolean z4 = false;
                float clamp = Utilities.clamp(customEmojiReactionsWindow.enterTransitionProgress, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                CustomEmojiReactionsWindow customEmojiReactionsWindow2 = CustomEmojiReactionsWindow.this;
                AndroidUtilities.lerp(customEmojiReactionsWindow2.fromRect, rectF, customEmojiReactionsWindow2.enterTransitionProgress, customEmojiReactionsWindow2.drawingRect);
                int i9 = 8;
                float lerp = AndroidUtilities.lerp(CustomEmojiReactionsWindow.this.fromRadius, AndroidUtilities.m107dp(8), CustomEmojiReactionsWindow.this.enterTransitionProgress);
                this.transitionReactions.clear();
                if (CustomEmojiReactionsWindow.this.type == 1 || (CustomEmojiReactionsWindow.this.reactionsContainerLayout.getDelegate() != null && CustomEmojiReactionsWindow.this.reactionsContainerLayout.getDelegate().drawBackground())) {
                    i = 1;
                    CustomEmojiReactionsWindow.this.reactionsContainerLayout.getDelegate().drawRoundRect(canvas, CustomEmojiReactionsWindow.this.drawingRect, lerp, getX(), CustomEmojiReactionsWindow.this.getBlurOffset(), 255, true);
                } else {
                    this.shadow.setAlpha((int) (Utilities.clamp(clamp / 0.05f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED) * 255.0f));
                    Drawable drawable = this.shadow;
                    RectF rectF2 = CustomEmojiReactionsWindow.this.drawingRect;
                    Rect rect = this.shadowPad;
                    drawable.setBounds(((int) rectF2.left) - rect.left, ((int) rectF2.top) - rect.top, ((int) rectF2.right) + rect.right, ((int) rectF2.bottom) + rect.bottom);
                    this.shadow.draw(canvas);
                    canvas.drawRoundRect(CustomEmojiReactionsWindow.this.drawingRect, lerp, lerp, this.backgroundPaint);
                    i = 1;
                }
                if (CustomEmojiReactionsWindow.this.reactionsContainerLayout.hintView != null) {
                    canvas.save();
                    CustomEmojiReactionsWindow customEmojiReactionsWindow3 = CustomEmojiReactionsWindow.this;
                    RectF rectF3 = customEmojiReactionsWindow3.drawingRect;
                    canvas.translate(rectF3.left, rectF3.top + customEmojiReactionsWindow3.reactionsContainerLayout.hintView.getY());
                    canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, CustomEmojiReactionsWindow.this.reactionsContainerLayout.hintView.getMeasuredWidth(), CustomEmojiReactionsWindow.this.reactionsContainerLayout.hintView.getMeasuredHeight(), (int) (CustomEmojiReactionsWindow.this.reactionsContainerLayout.hintView.getAlpha() * 255.0f * (1.0f - CustomEmojiReactionsWindow.this.enterTransitionProgress)), 31);
                    CustomEmojiReactionsWindow.this.reactionsContainerLayout.hintView.draw(canvas);
                    canvas.restore();
                    canvas.restore();
                }
                CustomEmojiReactionsWindow customEmojiReactionsWindow4 = CustomEmojiReactionsWindow.this;
                RectF rectF4 = customEmojiReactionsWindow4.drawingRect;
                float width = (rectF4.left - customEmojiReactionsWindow4.reactionsContainerLayout.rect.left) + (rectF4.width() - CustomEmojiReactionsWindow.this.reactionsContainerLayout.rect.width());
                if (CustomEmojiReactionsWindow.this.enterTransitionProgress > 0.05f) {
                    canvas.save();
                    CustomEmojiReactionsWindow customEmojiReactionsWindow5 = CustomEmojiReactionsWindow.this;
                    RectF rectF5 = customEmojiReactionsWindow5.drawingRect;
                    canvas.translate(width, (rectF5.top - customEmojiReactionsWindow5.reactionsContainerLayout.rect.top) + (rectF5.height() - CustomEmojiReactionsWindow.this.reactionsContainerLayout.rect.height()));
                    CustomEmojiReactionsWindow.this.reactionsContainerLayout.drawBubbles(canvas);
                    canvas.restore();
                }
                this.enterTransitionOffsetX = BitmapDescriptorFactory.HUE_RED;
                this.enterTransitionOffsetY = BitmapDescriptorFactory.HUE_RED;
                this.enterTransitionScale = 1.0f;
                this.enterTransitionScalePx = BitmapDescriptorFactory.HUE_RED;
                this.enterTransitionScalePy = BitmapDescriptorFactory.HUE_RED;
                if (CustomEmojiReactionsWindow.this.reactionsContainerLayout != null) {
                    for (int i10 = 0; i10 < CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getChildCount(); i10++) {
                        if ((CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(i10) instanceof SelectAnimatedEmojiDialog.ImageViewEmoji) && (visibleReaction = (imageViewEmoji = (SelectAnimatedEmojiDialog.ImageViewEmoji) CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(i10)).reaction) != null) {
                            this.transitionReactions.put(visibleReaction, imageViewEmoji);
                        }
                    }
                    int save = canvas.save();
                    CustomEmojiReactionsWindow customEmojiReactionsWindow6 = CustomEmojiReactionsWindow.this;
                    RectF rectF6 = customEmojiReactionsWindow6.drawingRect;
                    canvas.translate(rectF6.left, rectF6.top + ((customEmojiReactionsWindow6.reactionsContainerLayout.getTopOffset() + CustomEmojiReactionsWindow.this.reactionsContainerLayout.expandSize()) * (1.0f - CustomEmojiReactionsWindow.this.enterTransitionProgress)));
                    float max = Math.max(1.0f - (CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiSearchGridView.getVisibility() == 0 ? CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiSearchGridView.getAlpha() : 0.0f), 1.0f - CustomEmojiReactionsWindow.this.enterTransitionProgress);
                    if (max != 1.0f) {
                        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, CustomEmojiReactionsWindow.this.drawingRect.width(), CustomEmojiReactionsWindow.this.drawingRect.height(), (int) (max * 255.0f), 31);
                    }
                    int x = (int) (CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getX() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getX());
                    canvas.clipRect((int) (CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getY() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getY()), (CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiTabs.getParent() != null ? i : 0) != 0 ? x + (AndroidUtilities.m107dp(36) * CustomEmojiReactionsWindow.this.enterTransitionProgress) : 0.0f, y + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getMeasuredWidth(), x + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getMeasuredHeight());
                    int i11 = -1;
                    int i12 = -1;
                    while (i12 < CustomEmojiReactionsWindow.this.reactionsContainerLayout.recyclerListView.getChildCount()) {
                        if (i12 == i11) {
                            childAt = CustomEmojiReactionsWindow.this.reactionsContainerLayout.nextRecentReaction;
                        } else {
                            childAt = CustomEmojiReactionsWindow.this.reactionsContainerLayout.recyclerListView.getChildAt(i12);
                        }
                        View view = childAt;
                        if (view.getLeft() < 0 || view.getVisibility() == i9) {
                            c = c2;
                            z2 = z4;
                            f2 = lerp;
                            i2 = save;
                            i3 = i;
                            i4 = i12;
                            i5 = i11;
                        } else {
                            canvas.save();
                            if (view instanceof ReactionsContainerLayout.ReactionHolderView) {
                                ReactionsContainerLayout.ReactionHolderView reactionHolderView = (ReactionsContainerLayout.ReactionHolderView) view;
                                SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji2 = this.transitionReactions.get(reactionHolderView.currentReaction);
                                if (imageViewEmoji2 != null) {
                                    float x2 = view.getX();
                                    float y2 = view.getY();
                                    if (i12 == i11) {
                                        x2 -= CustomEmojiReactionsWindow.this.reactionsContainerLayout.recyclerListView.getX();
                                        y2 -= CustomEmojiReactionsWindow.this.reactionsContainerLayout.recyclerListView.getY();
                                    }
                                    float x3 = (((imageViewEmoji2.getX() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getX()) + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getX()) - reactionHolderView.loopImageView.getX()) - AndroidUtilities.m107dp(i);
                                    float y3 = (((imageViewEmoji2.getY() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getY()) + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.gridViewContainer.getY()) + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getY()) - reactionHolderView.loopImageView.getY();
                                    float measuredWidth = imageViewEmoji2.getMeasuredWidth();
                                    if (imageViewEmoji2.selected) {
                                        float f11 = 0.86f * measuredWidth;
                                        float f12 = (measuredWidth - f11) / 2.0f;
                                        x3 += f12;
                                        y3 += f12;
                                        measuredWidth = f11;
                                    }
                                    float lerp2 = AndroidUtilities.lerp(x2, x3, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                    float lerp3 = AndroidUtilities.lerp(y2, y3, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                    float measuredWidth2 = measuredWidth / reactionHolderView.loopImageView.getMeasuredWidth();
                                    i7 = i12;
                                    f7 = AndroidUtilities.lerp(1.0f, measuredWidth2, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                    if (reactionHolderView.position == 0) {
                                        f6 = AndroidUtilities.m107dp(6);
                                        f8 = f6;
                                    } else if (reactionHolderView.selected) {
                                        f6 = AndroidUtilities.m107dp(6);
                                        f8 = f6;
                                        f9 = f8;
                                        f10 = f9;
                                        canvas.translate(lerp2, lerp3);
                                        canvas.scale(f7, f7);
                                        if (this.enterTransitionOffsetX == BitmapDescriptorFactory.HUE_RED && this.enterTransitionOffsetY == BitmapDescriptorFactory.HUE_RED) {
                                            CustomEmojiReactionsWindow customEmojiReactionsWindow7 = CustomEmojiReactionsWindow.this;
                                            this.enterTransitionOffsetX = AndroidUtilities.lerp((customEmojiReactionsWindow7.fromRect.left + x2) - x3, (float) BitmapDescriptorFactory.HUE_RED, customEmojiReactionsWindow7.enterTransitionProgress);
                                            CustomEmojiReactionsWindow customEmojiReactionsWindow8 = CustomEmojiReactionsWindow.this;
                                            this.enterTransitionOffsetY = AndroidUtilities.lerp((customEmojiReactionsWindow8.fromRect.top + y2) - y3, (float) BitmapDescriptorFactory.HUE_RED, customEmojiReactionsWindow8.enterTransitionProgress);
                                            this.enterTransitionScale = AndroidUtilities.lerp(1.0f / measuredWidth2, 1.0f, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                            this.enterTransitionScalePx = x3;
                                            this.enterTransitionScalePy = y3;
                                        }
                                        f3 = f8;
                                        f4 = f9;
                                        f5 = f10;
                                    } else {
                                        f6 = BitmapDescriptorFactory.HUE_RED;
                                        f8 = BitmapDescriptorFactory.HUE_RED;
                                    }
                                    f9 = BitmapDescriptorFactory.HUE_RED;
                                    f10 = BitmapDescriptorFactory.HUE_RED;
                                    canvas.translate(lerp2, lerp3);
                                    canvas.scale(f7, f7);
                                    if (this.enterTransitionOffsetX == BitmapDescriptorFactory.HUE_RED) {
                                        CustomEmojiReactionsWindow customEmojiReactionsWindow72 = CustomEmojiReactionsWindow.this;
                                        this.enterTransitionOffsetX = AndroidUtilities.lerp((customEmojiReactionsWindow72.fromRect.left + x2) - x3, (float) BitmapDescriptorFactory.HUE_RED, customEmojiReactionsWindow72.enterTransitionProgress);
                                        CustomEmojiReactionsWindow customEmojiReactionsWindow82 = CustomEmojiReactionsWindow.this;
                                        this.enterTransitionOffsetY = AndroidUtilities.lerp((customEmojiReactionsWindow82.fromRect.top + y2) - y3, (float) BitmapDescriptorFactory.HUE_RED, customEmojiReactionsWindow82.enterTransitionProgress);
                                        this.enterTransitionScale = AndroidUtilities.lerp(1.0f / measuredWidth2, 1.0f, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                        this.enterTransitionScalePx = x3;
                                        this.enterTransitionScalePy = y3;
                                    }
                                    f3 = f8;
                                    f4 = f9;
                                    f5 = f10;
                                } else {
                                    i7 = i12;
                                    canvas.translate(view.getX() + reactionHolderView.loopImageView.getX(), view.getY() + reactionHolderView.loopImageView.getY());
                                    f3 = BitmapDescriptorFactory.HUE_RED;
                                    f4 = BitmapDescriptorFactory.HUE_RED;
                                    f5 = BitmapDescriptorFactory.HUE_RED;
                                    f6 = BitmapDescriptorFactory.HUE_RED;
                                    f7 = 1.0f;
                                }
                                if (imageViewEmoji2 != null) {
                                    if (imageViewEmoji2.selected) {
                                        float measuredWidth3 = reactionHolderView.getMeasuredWidth() / 2.0f;
                                        float measuredHeight = reactionHolderView.getMeasuredHeight() / 2.0f;
                                        float measuredWidth4 = reactionHolderView.getMeasuredWidth() - AndroidUtilities.m107dp(2);
                                        float lerp4 = AndroidUtilities.lerp(measuredWidth4, (imageViewEmoji2.getMeasuredWidth() - AndroidUtilities.m107dp(2)) / f7, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                        RectF rectF7 = AndroidUtilities.rectTmp;
                                        float f13 = lerp4 / 2.0f;
                                        f2 = lerp;
                                        i2 = save;
                                        rectF7.set(measuredWidth3 - f13, measuredHeight - f13, measuredWidth3 + f13, measuredHeight + f13);
                                        float lerp5 = AndroidUtilities.lerp(measuredWidth4 / 2.0f, AndroidUtilities.m107dp(4), CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                        canvas.drawRoundRect(rectF7, lerp5, lerp5, CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.selectorPaint);
                                    } else {
                                        f2 = lerp;
                                        i2 = save;
                                    }
                                    reactionHolderView.drawSelected = false;
                                    if (f6 != BitmapDescriptorFactory.HUE_RED) {
                                        ImageReceiver imageReceiver = reactionHolderView.loopImageView.getImageReceiver();
                                        reactionHolderView.checkPlayLoopImage();
                                        AnimatedEmojiDrawable animatedEmojiDrawable = reactionHolderView.loopImageView.animatedEmojiDrawable;
                                        if (animatedEmojiDrawable != null && animatedEmojiDrawable.getImageReceiver() != null) {
                                            imageReceiver = reactionHolderView.loopImageView.animatedEmojiDrawable.getImageReceiver();
                                        }
                                        int[] roundRadius = imageReceiver.getRoundRadius();
                                        for (int i13 = 0; i13 < 4; i13++) {
                                            this.radiusTmp[i13] = roundRadius[i13];
                                        }
                                        z2 = false;
                                        imageReceiver.setRoundRadius((int) AndroidUtilities.lerp(f3, (float) BitmapDescriptorFactory.HUE_RED, CustomEmojiReactionsWindow.this.enterTransitionProgress), (int) AndroidUtilities.lerp(f4, (float) BitmapDescriptorFactory.HUE_RED, CustomEmojiReactionsWindow.this.enterTransitionProgress), (int) AndroidUtilities.lerp(f5, (float) BitmapDescriptorFactory.HUE_RED, CustomEmojiReactionsWindow.this.enterTransitionProgress), (int) AndroidUtilities.lerp(f6, (float) BitmapDescriptorFactory.HUE_RED, CustomEmojiReactionsWindow.this.enterTransitionProgress));
                                        reactionHolderView.draw(canvas);
                                        imageReceiver.setRoundRadius(this.radiusTmp);
                                        z3 = i;
                                    } else {
                                        reactionHolderView.draw(canvas);
                                        z3 = i;
                                        z2 = false;
                                    }
                                    reactionHolderView.drawSelected = z3;
                                    i8 = z3;
                                    if (!imageViewEmoji2.notDraw) {
                                        imageViewEmoji2.notDraw = z3;
                                        imageViewEmoji2.invalidate();
                                        i8 = z3;
                                    }
                                } else {
                                    f2 = lerp;
                                    i2 = save;
                                    int i14 = i;
                                    z2 = false;
                                    if (reactionHolderView.hasEnterAnimation && reactionHolderView.loopImageView.getImageReceiver().getLottieAnimation() == null) {
                                        float alpha = reactionHolderView.enterImageView.getImageReceiver().getAlpha();
                                        reactionHolderView.enterImageView.getImageReceiver().setAlpha((1.0f - clamp) * alpha);
                                        reactionHolderView.enterImageView.draw(canvas);
                                        reactionHolderView.enterImageView.getImageReceiver().setAlpha(alpha);
                                        i8 = i14;
                                    } else {
                                        reactionHolderView.checkPlayLoopImage();
                                        ImageReceiver imageReceiver2 = reactionHolderView.loopImageView.getImageReceiver();
                                        AnimatedEmojiDrawable animatedEmojiDrawable2 = reactionHolderView.loopImageView.animatedEmojiDrawable;
                                        if (animatedEmojiDrawable2 != null && animatedEmojiDrawable2.getImageReceiver() != null) {
                                            imageReceiver2 = reactionHolderView.loopImageView.animatedEmojiDrawable.getImageReceiver();
                                        }
                                        float alpha2 = imageReceiver2.getAlpha();
                                        imageReceiver2.setAlpha((1.0f - clamp) * alpha2);
                                        reactionHolderView.loopImageView.draw(canvas);
                                        imageReceiver2.setAlpha(alpha2);
                                        i8 = i14;
                                    }
                                }
                                if (reactionHolderView.loopImageView.getVisibility() != 0) {
                                    invalidate();
                                }
                                i4 = i7;
                                c = 0;
                                i5 = -1;
                                i3 = i8;
                            } else {
                                z2 = z4;
                                f2 = lerp;
                                i2 = save;
                                float x4 = (view.getX() + CustomEmojiReactionsWindow.this.drawingRect.width()) - CustomEmojiReactionsWindow.this.reactionsContainerLayout.rect.width();
                                float y4 = view.getY();
                                CustomEmojiReactionsWindow customEmojiReactionsWindow9 = CustomEmojiReactionsWindow.this;
                                canvas.translate(x4, (y4 + customEmojiReactionsWindow9.fromRect.top) - customEmojiReactionsWindow9.drawingRect.top);
                                i4 = i12;
                                i5 = -1;
                                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, view.getMeasuredWidth(), view.getMeasuredHeight(), (int) ((1.0f - clamp) * 255.0f), 31);
                                float f14 = CustomEmojiReactionsWindow.this.enterTransitionProgress;
                                c = 0;
                                canvas.scale(1.0f - f14, 1.0f - f14, view.getMeasuredWidth() >> i6, view.getMeasuredHeight() >> i6);
                                view.draw(canvas);
                                canvas.restore();
                                i3 = i;
                            }
                            canvas.restore();
                        }
                        i12 = i4 + 1;
                        i = i3;
                        z4 = z2;
                        i11 = i5;
                        lerp = f2;
                        save = i2;
                        i9 = 8;
                        c2 = c;
                    }
                    f = lerp;
                    z = i;
                    canvas.restoreToCount(save);
                } else {
                    f = lerp;
                    z = i;
                }
                if (Build.VERSION.SDK_INT < 21 ? z : false) {
                    if (CustomEmojiReactionsWindow.this.invalidatePath) {
                        CustomEmojiReactionsWindow.this.invalidatePath = false;
                        CustomEmojiReactionsWindow.this.pathToClipApi20.rewind();
                        float f15 = f;
                        CustomEmojiReactionsWindow.this.pathToClipApi20.addRoundRect(CustomEmojiReactionsWindow.this.drawingRect, f15, f15, Path.Direction.CW);
                    }
                    canvas.save();
                    canvas.clipPath(CustomEmojiReactionsWindow.this.pathToClipApi20);
                    super.dispatchDraw(canvas);
                    canvas.restore();
                } else {
                    super.dispatchDraw(canvas);
                }
                if (CustomEmojiReactionsWindow.this.frameDrawCount < 5) {
                    if (CustomEmojiReactionsWindow.this.frameDrawCount == 3) {
                        CustomEmojiReactionsWindow.this.reactionsContainerLayout.setSkipDraw(z);
                    }
                    CustomEmojiReactionsWindow.access$1108(CustomEmojiReactionsWindow.this);
                }
                CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.drawBigReaction(canvas, this);
                if (CustomEmojiReactionsWindow.this.valueAnimator != null) {
                    invalidate();
                }
                HwEmojis.exec();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getBlurOffset() {
        if (this.type == 1) {
            return this.containerView.getY() - AndroidUtilities.statusBarHeight;
        }
        return this.containerView.getY() + this.windowView.getY();
    }

    public void setRecentReactions(List<ReactionsLayoutInBubble.VisibleReaction> list) {
        this.selectAnimatedEmojiDialog.setRecentReactions(list);
    }
}
