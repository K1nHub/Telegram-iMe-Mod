package org.telegram.p048ui.Components.Reactions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.AnimatedEmojiDrawable;
import org.telegram.p048ui.Components.Bulletin;
import org.telegram.p048ui.Components.BulletinFactory;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p048ui.Components.Reactions.CustomEmojiReactionsWindow;
import org.telegram.p048ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p048ui.Components.ReactionsContainerLayout;
import org.telegram.p048ui.SelectAnimatedEmojiDialog;
import org.telegram.tgnet.TLRPC$Document;
/* renamed from: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow */
/* loaded from: classes6.dex */
public class CustomEmojiReactionsWindow {
    private int account;
    int animationIndex;
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
    private ValueAnimator valueAnimator;
    private boolean wasFocused;
    WindowManager windowManager;
    FrameLayout windowView;
    float yTranslation;
    RectF fromRect = new RectF();
    public RectF drawingRect = new RectF();
    Path pathToClip = new Path();
    int[] location = new int[2];
    HashSet<View> animatingEnterChild = new HashSet<>();
    ArrayList<ValueAnimator> animators = new ArrayList<>();
    private int frameDrawCount = 0;

    static /* synthetic */ int access$908(CustomEmojiReactionsWindow customEmojiReactionsWindow) {
        int i = customEmojiReactionsWindow.frameDrawCount;
        customEmojiReactionsWindow.frameDrawCount = i + 1;
        return i;
    }

    public CustomEmojiReactionsWindow(BaseFragment baseFragment, List<ReactionsLayoutInBubble.VisibleReaction> list, HashSet<ReactionsLayoutInBubble.VisibleReaction> hashSet, final ReactionsContainerLayout reactionsContainerLayout, Theme.ResourcesProvider resourcesProvider) {
        this.reactions = list;
        this.baseFragment = baseFragment;
        this.resourcesProvider = resourcesProvider;
        Context context = baseFragment.getContext();
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.1
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
        };
        this.windowView = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomEmojiReactionsWindow.this.lambda$new$0(view);
            }
        });
        this.containerView = new ContainerView(context);
        C49792 c49792 = new C49792(baseFragment, context, false, null, 1, resourcesProvider, baseFragment, reactionsContainerLayout);
        this.selectAnimatedEmojiDialog = c49792;
        c49792.setOnLongPressedListener(new SelectAnimatedEmojiDialog.onLongPressedListener(this) { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.3
            @Override // org.telegram.p048ui.SelectAnimatedEmojiDialog.onLongPressedListener
            public void onLongPressed(SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji) {
                if (imageViewEmoji.isDefaultReaction) {
                    reactionsContainerLayout.onReactionClicked(imageViewEmoji, imageViewEmoji.reaction, true);
                } else {
                    reactionsContainerLayout.onReactionClicked(imageViewEmoji, ReactionsLayoutInBubble.VisibleReaction.fromCustomEmoji(Long.valueOf(imageViewEmoji.span.documentId)), true);
                }
            }
        });
        this.selectAnimatedEmojiDialog.setOnRecentClearedListener(new SelectAnimatedEmojiDialog.onRecentClearedListener(this) { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.4
            @Override // org.telegram.p048ui.SelectAnimatedEmojiDialog.onRecentClearedListener
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
        WindowManager.LayoutParams createLayoutParams = createLayoutParams(false);
        WindowManager windowManager = baseFragment.getParentActivity().getWindowManager();
        this.windowManager = windowManager;
        windowManager.addView(this.windowView, createLayoutParams);
        this.reactionsContainerLayout = reactionsContainerLayout;
        reactionsContainerLayout.prepareAnimation(true);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CustomEmojiReactionsWindow.this.lambda$new$1(reactionsContainerLayout);
            }
        }, 50L);
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.stopAllHeavyOperations, 7);
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
    public class C49792 extends SelectAnimatedEmojiDialog {
        final /* synthetic */ BaseFragment val$baseFragment;
        final /* synthetic */ ReactionsContainerLayout val$reactionsContainerLayout;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C49792(BaseFragment baseFragment, Context context, boolean z, Integer num, int i, Theme.ResourcesProvider resourcesProvider, BaseFragment baseFragment2, ReactionsContainerLayout reactionsContainerLayout) {
            super(baseFragment, context, z, num, i, resourcesProvider);
            this.val$baseFragment = baseFragment2;
            this.val$reactionsContainerLayout = reactionsContainerLayout;
        }

        @Override // org.telegram.p048ui.SelectAnimatedEmojiDialog
        protected void onInputFocus() {
            if (CustomEmojiReactionsWindow.this.wasFocused) {
                return;
            }
            CustomEmojiReactionsWindow.this.wasFocused = true;
            CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
            customEmojiReactionsWindow.windowManager.updateViewLayout(customEmojiReactionsWindow.windowView, customEmojiReactionsWindow.createLayoutParams(true));
            BaseFragment baseFragment = this.val$baseFragment;
            if (baseFragment instanceof ChatActivity) {
                ((ChatActivity) baseFragment).needEnterText();
            }
        }

        @Override // org.telegram.p048ui.SelectAnimatedEmojiDialog
        protected void onReactionClick(SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
            this.val$reactionsContainerLayout.onReactionClicked(imageViewEmoji, visibleReaction, false);
            AndroidUtilities.hideKeyboard(CustomEmojiReactionsWindow.this.windowView);
        }

        @Override // org.telegram.p048ui.SelectAnimatedEmojiDialog
        protected void onEmojiSelected(View view, Long l, TLRPC$Document tLRPC$Document, Integer num) {
            if (!UserConfig.getInstance(this.val$baseFragment.getCurrentAccount()).isPremium()) {
                CustomEmojiReactionsWindow.this.windowView.performHapticFeedback(3);
                BulletinFactory.m28of(CustomEmojiReactionsWindow.this.windowView, null).createEmojiBulletin(tLRPC$Document, AndroidUtilities.replaceTags(LocaleController.getString("UnlockPremiumEmojiReaction", C3286R.string.UnlockPremiumEmojiReaction)), LocaleController.getString("PremiumMore", C3286R.string.PremiumMore), new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomEmojiReactionsWindow.C49792.this.lambda$onEmojiSelected$0();
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.SelectAnimatedEmojiDialog
        public void invalidateParent() {
            CustomEmojiReactionsWindow.this.containerView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ReactionsContainerLayout reactionsContainerLayout) {
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
        if (this.containerView.getMeasuredHeight() + f > (this.windowView.getMeasuredHeight() - this.keyboardHeight) - AndroidUtilities.m50dp(32)) {
            f = ((this.windowView.getMeasuredHeight() - this.keyboardHeight) - this.containerView.getMeasuredHeight()) - AndroidUtilities.m50dp(32);
        }
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        this.containerView.animate().translationY(f).setDuration(250L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowManager.LayoutParams createLayoutParams(boolean z) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.type = 1000;
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
        float m50dp = (((this.location[1] - iArr[1]) - AndroidUtilities.m50dp(44)) - AndroidUtilities.m50dp(52)) - (this.selectAnimatedEmojiDialog.includeHint ? AndroidUtilities.m50dp(26) : 0);
        if (this.containerView.getMeasuredHeight() + m50dp > this.windowView.getMeasuredHeight() - AndroidUtilities.m50dp(32)) {
            m50dp = (this.windowView.getMeasuredHeight() - AndroidUtilities.m50dp(32)) - this.containerView.getMeasuredHeight();
        }
        if (m50dp < AndroidUtilities.m50dp(16)) {
            m50dp = AndroidUtilities.m50dp(16);
        }
        this.containerView.setTranslationX((this.location[0] - iArr[0]) - AndroidUtilities.m50dp(2));
        if (!z) {
            this.yTranslation = this.containerView.getTranslationY();
        } else {
            this.yTranslation = m50dp;
            this.containerView.setTranslationY(m50dp);
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
            updateCascadeEnter(BitmapDescriptorFactory.HUE_RED);
        }
        this.selectAnimatedEmojiDialog.setEnterAnimationInProgress(true);
        int i = UserConfig.selectedAccount;
        this.account = i;
        this.animationIndex = NotificationCenter.getInstance(i).setAnimationInProgress(this.animationIndex, null);
        float[] fArr = new float[2];
        fArr[0] = this.enterTransitionProgress;
        if (z) {
            f = 1.0f;
        }
        fArr[1] = f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        this.valueAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CustomEmojiReactionsWindow.this.lambda$createTransition$2(valueAnimator);
            }
        });
        if (!z) {
            syncReactionFrames(z);
        }
        this.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CustomEmojiReactionsWindow.this.checkAnimationEnd();
                CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
                boolean z3 = z;
                customEmojiReactionsWindow.enterTransitionProgress = z3 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                if (z3) {
                    customEmojiReactionsWindow.enterTransitionFinished = true;
                    customEmojiReactionsWindow.selectAnimatedEmojiDialog.resetBackgroundBitmaps();
                    CustomEmojiReactionsWindow.this.reactionsContainerLayout.onCustomEmojiWindowOpened();
                    CustomEmojiReactionsWindow.this.containerView.invalidate();
                }
                CustomEmojiReactionsWindow customEmojiReactionsWindow2 = CustomEmojiReactionsWindow.this;
                customEmojiReactionsWindow2.reactionsContainerLayout.setCustomEmojiEnterProgress(Utilities.clamp(customEmojiReactionsWindow2.enterTransitionProgress, 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
                boolean z4 = z;
                if (z4) {
                    CustomEmojiReactionsWindow.this.syncReactionFrames(z4);
                }
                if (!z) {
                    CustomEmojiReactionsWindow.this.reactionsContainerLayout.setSkipDraw(false);
                }
                if (z) {
                    return;
                }
                CustomEmojiReactionsWindow.this.removeView();
            }
        });
        this.valueAnimator.setStartDelay(30L);
        if (this.cascadeAnimation) {
            this.valueAnimator.setDuration(450L);
            this.valueAnimator.setInterpolator(new OvershootInterpolator(0.5f));
        } else {
            this.valueAnimator.setDuration(350L);
            this.valueAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        }
        this.valueAnimator.start();
        this.containerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createTransition$2(ValueAnimator valueAnimator) {
        this.valueAnimator = null;
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.enterTransitionProgress = floatValue;
        this.reactionsContainerLayout.setCustomEmojiEnterProgress(Utilities.clamp(floatValue, 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
        this.invalidatePath = true;
        this.containerView.invalidate();
        if (this.cascadeAnimation) {
            updateCascadeEnter(this.enterTransitionProgress);
        }
    }

    private void updateCascadeEnter(float f) {
        this.selectAnimatedEmojiDialog.contentView.getHeight();
        int y = (int) (this.selectAnimatedEmojiDialog.getY() + this.selectAnimatedEmojiDialog.contentView.getY() + this.selectAnimatedEmojiDialog.emojiGridView.getY());
        final ArrayList arrayList = null;
        boolean z = false;
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
                    childAt.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    childAt.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    z = true;
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
                    childAt2.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    childAt2.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    z = true;
                }
            }
        }
        if (z) {
            this.selectAnimatedEmojiDialog.emojiGridView.invalidate();
            this.selectAnimatedEmojiDialog.contentView.invalidate();
            this.selectAnimatedEmojiDialog.emojiTabs.contentView.invalidate();
        }
        if (arrayList != null) {
            final ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CustomEmojiReactionsWindow.this.lambda$updateCascadeEnter$3(arrayList, valueAnimator);
                }
            });
            this.animators.add(ofFloat);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    CustomEmojiReactionsWindow.this.animators.remove(ofFloat);
                    CustomEmojiReactionsWindow.this.checkAnimationEnd();
                }
            });
            ofFloat.setDuration(350L);
            ofFloat.setInterpolator(new OvershootInterpolator(1.0f));
            ofFloat.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCascadeEnter$3(ArrayList arrayList, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        for (int i = 0; i < arrayList.size(); i++) {
            ((View) arrayList.get(i)).setScaleX(floatValue);
            ((View) arrayList.get(i)).setScaleY(floatValue);
        }
        this.selectAnimatedEmojiDialog.emojiGridView.invalidate();
        this.selectAnimatedEmojiDialog.contentView.invalidate();
        this.selectAnimatedEmojiDialog.emojiTabs.contentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAnimationEnd() {
        if (this.animators.isEmpty()) {
            NotificationCenter.getInstance(this.account).onAnimationFinish(this.animationIndex);
            this.selectAnimatedEmojiDialog.setEnterAnimationInProgress(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncReactionFrames(boolean z) {
        new HashMap();
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
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.startAllHeavyOperations, 7);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                CustomEmojiReactionsWindow.this.lambda$removeView$4();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeView$4() {
        if (this.windowView.getParent() == null) {
            return;
        }
        try {
            this.windowManager.removeView(this.windowView);
        } catch (Exception unused) {
        }
        Runnable runnable = this.onDismiss;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
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
                CustomEmojiReactionsWindow.this.lambda$dismiss$5(valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CustomEmojiReactionsWindow.this.removeView();
            }
        });
        ofFloat.setDuration(150L);
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$5(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.dismissProgress = floatValue;
        this.containerView.setAlpha(1.0f - floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$ContainerView */
    /* loaded from: classes6.dex */
    public class ContainerView extends FrameLayout {
        Paint backgroundPaint;
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
            this.shadow = ContextCompat.getDrawable(context, C3286R.C3288drawable.reactions_bubble_shadow).mutate();
            Rect rect = this.shadowPad;
            int m50dp = AndroidUtilities.m50dp(7);
            rect.bottom = m50dp;
            rect.right = m50dp;
            rect.top = m50dp;
            rect.left = m50dp;
            this.shadow.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chat_messagePanelShadow", CustomEmojiReactionsWindow.this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
            this.backgroundPaint.setColor(Theme.getColor("actionBarDefaultSubmenuBackground", CustomEmojiReactionsWindow.this.resourcesProvider));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int min = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
            int m50dp = (AndroidUtilities.m50dp(36) * 8) + AndroidUtilities.m50dp(12);
            if (m50dp < min) {
                min = m50dp;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), View.MeasureSpec.makeMeasureSpec(min, 1073741824));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            float f;
            float f2;
            boolean z;
            float f3;
            float f4;
            float f5;
            float f6;
            int i;
            int i2;
            int y;
            CustomEmojiReactionsWindow customEmojiReactionsWindow;
            View childAt;
            float f7;
            int i3;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            int i4;
            boolean z2;
            float f13;
            float f14;
            float f15;
            SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji;
            ReactionsLayoutInBubble.VisibleReaction visibleReaction;
            CustomEmojiReactionsWindow customEmojiReactionsWindow2 = CustomEmojiReactionsWindow.this;
            if (customEmojiReactionsWindow2.isShowing) {
                float f16 = customEmojiReactionsWindow2.enterTransitionProgress;
                float f17 = 1.0f;
                float f18 = BitmapDescriptorFactory.HUE_RED;
                float clamp = Utilities.clamp(f16, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                CustomEmojiReactionsWindow customEmojiReactionsWindow3 = CustomEmojiReactionsWindow.this;
                AndroidUtilities.lerp(customEmojiReactionsWindow3.fromRect, rectF, customEmojiReactionsWindow3.enterTransitionProgress, customEmojiReactionsWindow3.drawingRect);
                int i5 = 8;
                float lerp = AndroidUtilities.lerp(CustomEmojiReactionsWindow.this.fromRadius, AndroidUtilities.m50dp(8), CustomEmojiReactionsWindow.this.enterTransitionProgress);
                this.shadow.setAlpha((int) (Utilities.clamp(clamp / 0.05f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED) * 255.0f));
                Drawable drawable = this.shadow;
                RectF rectF2 = CustomEmojiReactionsWindow.this.drawingRect;
                Rect rect = this.shadowPad;
                drawable.setBounds(((int) rectF2.left) - rect.left, ((int) rectF2.top) - rect.top, ((int) rectF2.right) + rect.right, ((int) rectF2.bottom) + rect.bottom);
                this.shadow.draw(canvas);
                this.transitionReactions.clear();
                canvas.drawRoundRect(CustomEmojiReactionsWindow.this.drawingRect, lerp, lerp, this.backgroundPaint);
                CustomEmojiReactionsWindow customEmojiReactionsWindow4 = CustomEmojiReactionsWindow.this;
                RectF rectF3 = customEmojiReactionsWindow4.drawingRect;
                float width = (rectF3.left - customEmojiReactionsWindow4.reactionsContainerLayout.rect.left) + (rectF3.width() - CustomEmojiReactionsWindow.this.reactionsContainerLayout.rect.width());
                if (CustomEmojiReactionsWindow.this.enterTransitionProgress > 0.05f) {
                    canvas.save();
                    CustomEmojiReactionsWindow customEmojiReactionsWindow5 = CustomEmojiReactionsWindow.this;
                    RectF rectF4 = customEmojiReactionsWindow5.drawingRect;
                    canvas.translate(width, (rectF4.top - customEmojiReactionsWindow5.reactionsContainerLayout.rect.top) + (rectF4.height() - CustomEmojiReactionsWindow.this.reactionsContainerLayout.rect.height()));
                    CustomEmojiReactionsWindow.this.reactionsContainerLayout.drawBubbles(canvas);
                    canvas.restore();
                }
                if (CustomEmojiReactionsWindow.this.reactionsContainerLayout != null) {
                    for (int i6 = 0; i6 < CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getChildCount(); i6++) {
                        if ((CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(i6) instanceof SelectAnimatedEmojiDialog.ImageViewEmoji) && (visibleReaction = (imageViewEmoji = (SelectAnimatedEmojiDialog.ImageViewEmoji) CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(i6)).reaction) != null) {
                            this.transitionReactions.put(visibleReaction, imageViewEmoji);
                        }
                    }
                    int save = canvas.save();
                    CustomEmojiReactionsWindow customEmojiReactionsWindow6 = CustomEmojiReactionsWindow.this;
                    RectF rectF5 = customEmojiReactionsWindow6.drawingRect;
                    canvas.translate(rectF5.left, rectF5.top + (customEmojiReactionsWindow6.reactionsContainerLayout.expandSize() * (1.0f - CustomEmojiReactionsWindow.this.enterTransitionProgress)));
                    float max = Math.max(CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getAlpha(), 1.0f - CustomEmojiReactionsWindow.this.enterTransitionProgress);
                    if (max != 1.0f) {
                        i = save;
                        i2 = 1;
                        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, CustomEmojiReactionsWindow.this.drawingRect.width(), CustomEmojiReactionsWindow.this.drawingRect.height(), (int) (max * 255.0f), 31);
                    } else {
                        i = save;
                        i2 = 1;
                    }
                    int x = (int) (CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getX() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getX());
                    canvas.clipRect((int) (CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getY() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getY()), x + (AndroidUtilities.m50dp(36) * CustomEmojiReactionsWindow.this.enterTransitionProgress), y + customEmojiReactionsWindow.selectAnimatedEmojiDialog.emojiGridView.getMeasuredHeight(), x + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getMeasuredWidth());
                    int i7 = -1;
                    int i8 = -1;
                    f6 = BitmapDescriptorFactory.HUE_RED;
                    float f19 = BitmapDescriptorFactory.HUE_RED;
                    float f20 = 1.0f;
                    float f21 = BitmapDescriptorFactory.HUE_RED;
                    float f22 = BitmapDescriptorFactory.HUE_RED;
                    while (i8 < CustomEmojiReactionsWindow.this.reactionsContainerLayout.recyclerListView.getChildCount()) {
                        CustomEmojiReactionsWindow customEmojiReactionsWindow7 = CustomEmojiReactionsWindow.this;
                        if (customEmojiReactionsWindow7.enterTransitionProgress != f17 || i8 != i7) {
                            if (i8 == i7) {
                                childAt = customEmojiReactionsWindow7.reactionsContainerLayout.nextRecentReaction;
                            } else {
                                childAt = customEmojiReactionsWindow7.reactionsContainerLayout.recyclerListView.getChildAt(i8);
                            }
                            View view = childAt;
                            if (view.getLeft() >= 0 && view.getVisibility() != i5) {
                                canvas.save();
                                if (view instanceof ReactionsContainerLayout.ReactionHolderView) {
                                    ReactionsContainerLayout.ReactionHolderView reactionHolderView = (ReactionsContainerLayout.ReactionHolderView) view;
                                    SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji2 = this.transitionReactions.get(reactionHolderView.currentReaction);
                                    if (imageViewEmoji2 != null) {
                                        float x2 = view.getX();
                                        float y2 = view.getY();
                                        if (i8 == i7) {
                                            x2 -= CustomEmojiReactionsWindow.this.reactionsContainerLayout.recyclerListView.getX();
                                            y2 -= CustomEmojiReactionsWindow.this.reactionsContainerLayout.recyclerListView.getY();
                                        }
                                        float x3 = (((imageViewEmoji2.getX() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getX()) + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getX()) - reactionHolderView.loopImageView.getX()) - AndroidUtilities.m50dp(i2);
                                        float y3 = (((imageViewEmoji2.getY() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getY()) + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.gridViewContainer.getY()) + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getY()) - reactionHolderView.loopImageView.getY();
                                        float measuredWidth = imageViewEmoji2.getMeasuredWidth();
                                        if (imageViewEmoji2.selected) {
                                            float f23 = 0.86f * measuredWidth;
                                            float f24 = (measuredWidth - f23) / 2.0f;
                                            x3 += f24;
                                            y3 += f24;
                                            measuredWidth = f23;
                                        }
                                        float lerp2 = AndroidUtilities.lerp(x2, x3, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                        float lerp3 = AndroidUtilities.lerp(y2, y3, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                        float measuredWidth2 = measuredWidth / reactionHolderView.loopImageView.getMeasuredWidth();
                                        f12 = AndroidUtilities.lerp(f17, measuredWidth2, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                        if (reactionHolderView.position == 0) {
                                            f11 = AndroidUtilities.m50dp(6);
                                            f13 = f11;
                                        } else if (reactionHolderView.selected) {
                                            f11 = AndroidUtilities.m50dp(6);
                                            f13 = f11;
                                            f14 = f13;
                                            f15 = f14;
                                            canvas.translate(lerp2, lerp3);
                                            canvas.scale(f12, f12);
                                            if (f6 == BitmapDescriptorFactory.HUE_RED && f19 == BitmapDescriptorFactory.HUE_RED) {
                                                CustomEmojiReactionsWindow customEmojiReactionsWindow8 = CustomEmojiReactionsWindow.this;
                                                f6 = AndroidUtilities.lerp((customEmojiReactionsWindow8.fromRect.left + x2) - x3, (float) BitmapDescriptorFactory.HUE_RED, customEmojiReactionsWindow8.enterTransitionProgress);
                                                CustomEmojiReactionsWindow customEmojiReactionsWindow9 = CustomEmojiReactionsWindow.this;
                                                f19 = AndroidUtilities.lerp((customEmojiReactionsWindow9.fromRect.top + y2) - y3, (float) BitmapDescriptorFactory.HUE_RED, customEmojiReactionsWindow9.enterTransitionProgress);
                                                f20 = AndroidUtilities.lerp(1.0f / measuredWidth2, 1.0f, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                                f21 = x3;
                                                f22 = y3;
                                            }
                                            f8 = f13;
                                            f9 = f14;
                                            f10 = f15;
                                        } else {
                                            f11 = BitmapDescriptorFactory.HUE_RED;
                                            f13 = BitmapDescriptorFactory.HUE_RED;
                                        }
                                        f14 = BitmapDescriptorFactory.HUE_RED;
                                        f15 = BitmapDescriptorFactory.HUE_RED;
                                        canvas.translate(lerp2, lerp3);
                                        canvas.scale(f12, f12);
                                        if (f6 == BitmapDescriptorFactory.HUE_RED) {
                                            CustomEmojiReactionsWindow customEmojiReactionsWindow82 = CustomEmojiReactionsWindow.this;
                                            f6 = AndroidUtilities.lerp((customEmojiReactionsWindow82.fromRect.left + x2) - x3, (float) BitmapDescriptorFactory.HUE_RED, customEmojiReactionsWindow82.enterTransitionProgress);
                                            CustomEmojiReactionsWindow customEmojiReactionsWindow92 = CustomEmojiReactionsWindow.this;
                                            f19 = AndroidUtilities.lerp((customEmojiReactionsWindow92.fromRect.top + y2) - y3, (float) BitmapDescriptorFactory.HUE_RED, customEmojiReactionsWindow92.enterTransitionProgress);
                                            f20 = AndroidUtilities.lerp(1.0f / measuredWidth2, 1.0f, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                            f21 = x3;
                                            f22 = y3;
                                        }
                                        f8 = f13;
                                        f9 = f14;
                                        f10 = f15;
                                    } else {
                                        canvas.translate(view.getX() + reactionHolderView.loopImageView.getX(), view.getY() + reactionHolderView.loopImageView.getY());
                                        f8 = BitmapDescriptorFactory.HUE_RED;
                                        f9 = BitmapDescriptorFactory.HUE_RED;
                                        f10 = BitmapDescriptorFactory.HUE_RED;
                                        f11 = BitmapDescriptorFactory.HUE_RED;
                                        f12 = 1.0f;
                                    }
                                    if (imageViewEmoji2 != null) {
                                        if (imageViewEmoji2.selected) {
                                            float measuredWidth3 = reactionHolderView.getMeasuredWidth() / 2.0f;
                                            float measuredHeight = reactionHolderView.getMeasuredHeight() / 2.0f;
                                            float measuredWidth4 = reactionHolderView.getMeasuredWidth() - AndroidUtilities.m50dp(2);
                                            float lerp4 = AndroidUtilities.lerp(measuredWidth4, (imageViewEmoji2.getMeasuredWidth() - AndroidUtilities.m50dp(2)) / f12, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                            RectF rectF6 = AndroidUtilities.rectTmp;
                                            float f25 = lerp4 / 2.0f;
                                            i4 = i8;
                                            f7 = lerp;
                                            rectF6.set(measuredWidth3 - f25, measuredHeight - f25, measuredWidth3 + f25, measuredHeight + f25);
                                            float lerp5 = AndroidUtilities.lerp(measuredWidth4 / 2.0f, AndroidUtilities.m50dp(4), CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                            canvas.drawRoundRect(rectF6, lerp5, lerp5, CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.selectorPaint);
                                        } else {
                                            i4 = i8;
                                            f7 = lerp;
                                        }
                                        reactionHolderView.drawSelected = false;
                                        if (f11 != BitmapDescriptorFactory.HUE_RED) {
                                            ImageReceiver imageReceiver = reactionHolderView.loopImageView.getImageReceiver();
                                            AnimatedEmojiDrawable animatedEmojiDrawable = reactionHolderView.loopImageView.animatedEmojiDrawable;
                                            if (animatedEmojiDrawable != null && animatedEmojiDrawable.getImageReceiver() != null) {
                                                imageReceiver = reactionHolderView.loopImageView.animatedEmojiDrawable.getImageReceiver();
                                            }
                                            int[] roundRadius = imageReceiver.getRoundRadius();
                                            for (int i9 = 0; i9 < 4; i9++) {
                                                this.radiusTmp[i9] = roundRadius[i9];
                                            }
                                            float f26 = CustomEmojiReactionsWindow.this.enterTransitionProgress;
                                            f18 = BitmapDescriptorFactory.HUE_RED;
                                            imageReceiver.setRoundRadius((int) AndroidUtilities.lerp(f8, (float) BitmapDescriptorFactory.HUE_RED, f26), (int) AndroidUtilities.lerp(f9, (float) BitmapDescriptorFactory.HUE_RED, CustomEmojiReactionsWindow.this.enterTransitionProgress), (int) AndroidUtilities.lerp(f10, (float) BitmapDescriptorFactory.HUE_RED, CustomEmojiReactionsWindow.this.enterTransitionProgress), (int) AndroidUtilities.lerp(f11, (float) BitmapDescriptorFactory.HUE_RED, CustomEmojiReactionsWindow.this.enterTransitionProgress));
                                            reactionHolderView.draw(canvas);
                                            imageReceiver.setRoundRadius(this.radiusTmp);
                                            z2 = true;
                                        } else {
                                            reactionHolderView.draw(canvas);
                                            z2 = true;
                                            f18 = BitmapDescriptorFactory.HUE_RED;
                                        }
                                        reactionHolderView.drawSelected = z2;
                                        if (!imageViewEmoji2.notDraw) {
                                            imageViewEmoji2.notDraw = z2;
                                            imageViewEmoji2.invalidate();
                                        }
                                    } else {
                                        i4 = i8;
                                        f7 = lerp;
                                        f18 = BitmapDescriptorFactory.HUE_RED;
                                        if (reactionHolderView.hasEnterAnimation && reactionHolderView.loopImageView.getImageReceiver().getLottieAnimation() == null) {
                                            float alpha = reactionHolderView.enterImageView.getImageReceiver().getAlpha();
                                            reactionHolderView.enterImageView.getImageReceiver().setAlpha((1.0f - clamp) * alpha);
                                            reactionHolderView.enterImageView.draw(canvas);
                                            reactionHolderView.enterImageView.getImageReceiver().setAlpha(alpha);
                                        } else {
                                            ImageReceiver imageReceiver2 = reactionHolderView.loopImageView.getImageReceiver();
                                            AnimatedEmojiDrawable animatedEmojiDrawable2 = reactionHolderView.loopImageView.animatedEmojiDrawable;
                                            if (animatedEmojiDrawable2 != null && animatedEmojiDrawable2.getImageReceiver() != null) {
                                                imageReceiver2 = reactionHolderView.loopImageView.animatedEmojiDrawable.getImageReceiver();
                                            }
                                            float alpha2 = imageReceiver2.getAlpha();
                                            imageReceiver2.setAlpha((1.0f - clamp) * alpha2);
                                            reactionHolderView.loopImageView.draw(canvas);
                                            imageReceiver2.setAlpha(alpha2);
                                        }
                                    }
                                    i3 = i4;
                                } else {
                                    f7 = lerp;
                                    float x4 = (view.getX() + CustomEmojiReactionsWindow.this.drawingRect.width()) - CustomEmojiReactionsWindow.this.reactionsContainerLayout.rect.width();
                                    float y4 = view.getY();
                                    CustomEmojiReactionsWindow customEmojiReactionsWindow10 = CustomEmojiReactionsWindow.this;
                                    canvas.translate(x4, (y4 + customEmojiReactionsWindow10.fromRect.top) - customEmojiReactionsWindow10.drawingRect.top);
                                    i3 = i8;
                                    canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, view.getMeasuredWidth(), view.getMeasuredHeight(), (int) ((1.0f - clamp) * 255.0f), 31);
                                    float f27 = CustomEmojiReactionsWindow.this.enterTransitionProgress;
                                    canvas.scale(1.0f - f27, 1.0f - f27, view.getMeasuredWidth() >> 1, view.getMeasuredHeight() >> 1);
                                    view.draw(canvas);
                                    canvas.restore();
                                }
                                canvas.restore();
                                i8 = i3 + 1;
                                lerp = f7;
                                i7 = -1;
                                f17 = 1.0f;
                                i5 = 8;
                                i2 = 1;
                            }
                        }
                        i3 = i8;
                        f7 = lerp;
                        i8 = i3 + 1;
                        lerp = f7;
                        i7 = -1;
                        f17 = 1.0f;
                        i5 = 8;
                        i2 = 1;
                    }
                    f = lerp;
                    z = true;
                    canvas.restoreToCount(i);
                    f3 = f19;
                    f2 = f20;
                    f4 = f21;
                    f5 = f22;
                } else {
                    f = lerp;
                    f2 = 1.0f;
                    z = true;
                    f3 = BitmapDescriptorFactory.HUE_RED;
                    f4 = BitmapDescriptorFactory.HUE_RED;
                    f5 = BitmapDescriptorFactory.HUE_RED;
                    f6 = BitmapDescriptorFactory.HUE_RED;
                }
                if (CustomEmojiReactionsWindow.this.invalidatePath) {
                    CustomEmojiReactionsWindow.this.invalidatePath = false;
                    CustomEmojiReactionsWindow.this.pathToClip.rewind();
                    CustomEmojiReactionsWindow customEmojiReactionsWindow11 = CustomEmojiReactionsWindow.this;
                    float f28 = f;
                    customEmojiReactionsWindow11.pathToClip.addRoundRect(customEmojiReactionsWindow11.drawingRect, f28, f28, Path.Direction.CW);
                }
                canvas.save();
                canvas.clipPath(CustomEmojiReactionsWindow.this.pathToClip);
                if (!CustomEmojiReactionsWindow.this.cascadeAnimation) {
                    f18 = f6;
                }
                canvas.translate(f18, f3);
                canvas.scale(f2, f2, f4, f5);
                if (!CustomEmojiReactionsWindow.this.cascadeAnimation) {
                    CustomEmojiReactionsWindow customEmojiReactionsWindow12 = CustomEmojiReactionsWindow.this;
                    customEmojiReactionsWindow12.selectAnimatedEmojiDialog.setAlpha(customEmojiReactionsWindow12.enterTransitionProgress);
                }
                super.dispatchDraw(canvas);
                canvas.restore();
                if (CustomEmojiReactionsWindow.this.frameDrawCount < 5) {
                    if (CustomEmojiReactionsWindow.this.frameDrawCount == 3) {
                        CustomEmojiReactionsWindow.this.reactionsContainerLayout.setSkipDraw(z);
                    }
                    CustomEmojiReactionsWindow.access$908(CustomEmojiReactionsWindow.this);
                }
                CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.drawBigReaction(canvas, this);
                if (CustomEmojiReactionsWindow.this.valueAnimator != null) {
                    invalidate();
                }
            }
        }
    }

    public void setRecentReactions(List<ReactionsLayoutInBubble.VisibleReaction> list) {
        this.selectAnimatedEmojiDialog.setRecentReactions(list);
    }
}
