package org.telegram.p043ui.ActionBar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.Window;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.p023ui.view.PinnedPlayerView;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.wallet.common.WalletRootFragment;
import com.iMe.storage.data.manager.analytics.AnalyticsManager;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.ActionBar.ActionBarLayout;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.ActionIntroActivity;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.BackButtonMenu;
import org.telegram.p043ui.Components.BotWebViewSheet;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.ChatAttachAlert;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.FloatingDebug.FloatingDebugController;
import org.telegram.p043ui.Components.FloatingDebug.FloatingDebugProvider;
import org.telegram.p043ui.Components.GroupCallPip;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.PasscodeView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.Stories.StoryViewer;
/* renamed from: org.telegram.ui.ActionBar.ActionBarLayout */
/* loaded from: classes5.dex */
public class ActionBarLayout extends FrameLayout implements INavigationLayout, FloatingDebugProvider {
    private static Drawable headerShadowDrawable;
    private static Drawable layerShadowDrawable;
    private static Paint scrimPaint;
    private AccelerateDecelerateInterpolator accelerateDecelerateInterpolator;
    private ArrayList<int[]> animateEndColors;
    private int animateSetThemeAccentIdAfterAnimation;
    private Theme.ThemeInfo animateSetThemeAfterAnimation;
    private boolean animateSetThemeAfterAnimationApply;
    private boolean animateSetThemeNightAfterAnimation;
    private ArrayList<int[]> animateStartColors;
    private boolean animateThemeAfterAnimation;
    protected boolean animationInProgress;
    private float animationProgress;
    public INavigationLayout.ThemeAnimationSettings.onAnimationProgress animationProgressListener;
    private Runnable animationRunnable;
    private boolean attached;
    private View backgroundView;
    private boolean beginTrackingSent;
    public LayoutContainer containerView;
    private LayoutContainer containerViewBack;
    private C3704ActionBar currentActionBar;
    private AnimatorSet currentAnimation;
    Runnable debugBlackScreenRunnable;
    private DecelerateInterpolator decelerateInterpolator;
    private boolean delayedAnimationResumed;
    private Runnable delayedOpenAnimationRunnable;
    private INavigationLayout.INavigationLayoutDelegate delegate;
    private DrawerLayoutContainer drawerLayoutContainer;
    private List<BaseFragment> fragmentsStack;
    public boolean highlightActionButtons;
    private boolean inActionMode;
    private boolean inBubbleMode;
    private boolean inPreviewMode;
    public float innerTranslationX;
    private boolean isMusicPlaying;
    private boolean isSheet;
    ArrayList<String> lastActions;
    private long lastFrameTime;
    private boolean maybeStartTracking;
    private int[] measureSpec;
    public Theme.MessageDrawable messageDrawableOutMediaStart;
    public Theme.MessageDrawable messageDrawableOutStart;
    private BaseFragment newFragment;
    AnimationNotificationsLocker notificationsLocker;
    private BaseFragment oldFragment;
    private Runnable onCloseAnimationEndRunnable;
    private Runnable onFragmentStackChangedListener;
    private Runnable onOpenAnimationEndRunnable;
    private Runnable overlayAction;
    private int overrideWidthOffset;
    private OvershootInterpolator overshootInterpolator;
    protected Activity parentActivity;
    private ArrayList<ThemeDescription> presentingFragmentDescriptions;
    private ColorDrawable previewBackgroundDrawable;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout previewMenu;
    private boolean previewOpenAnimationInProgress;
    private List<BackButtonMenu.PulledDialog> pulledDialogs;
    private boolean rebuildAfterAnimation;
    private boolean rebuildLastAfterAnimation;
    private Rect rect;
    private boolean removeActionBarExtraHeight;
    private boolean showLastAfterAnimation;
    INavigationLayout.StartColorsProvider startColorsProvider;
    protected boolean startedTracking;
    private int startedTrackingPointerId;
    private int startedTrackingX;
    private int startedTrackingY;
    private float themeAnimationValue;
    private ArrayList<ThemeDescription.ThemeDescriptionDelegate> themeAnimatorDelegate;
    private ArrayList<ArrayList<ThemeDescription>> themeAnimatorDescriptions;
    private AnimatorSet themeAnimatorSet;
    private String titleOverlayText;
    private int titleOverlayTextId;
    private boolean transitionAnimationInProgress;
    private boolean transitionAnimationPreviewMode;
    private long transitionAnimationStartTime;
    private boolean useAlphaAnimations;
    private VelocityTracker velocityTracker;
    private Runnable waitingForKeyboardCloseRunnable;
    private Window window;

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean addFragmentToStack(BaseFragment baseFragment) {
        return INavigationLayout.CC.$default$addFragmentToStack(this, baseFragment);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ void animateThemedValues(Theme.ThemeInfo themeInfo, int i, boolean z, boolean z2) {
        INavigationLayout.CC.$default$animateThemedValues(this, themeInfo, i, z, z2);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ void animateThemedValues(Theme.ThemeInfo themeInfo, int i, boolean z, boolean z2, Runnable runnable) {
        INavigationLayout.CC.$default$animateThemedValues(this, themeInfo, i, z, z2, runnable);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ void closeLastFragment() {
        INavigationLayout.CC.$default$closeLastFragment(this);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ void dismissDialogs() {
        INavigationLayout.CC.$default$dismissDialogs(this);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ void drawHeaderShadow(Canvas canvas, int i) {
        INavigationLayout.CC.$default$drawHeaderShadow(this, canvas, i);
    }

    public /* bridge */ /* synthetic */ BaseFragment getBackgroundFragment() {
        return INavigationLayout.CC.$default$getBackgroundFragment(this);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* bridge */ /* synthetic */ BottomSheet getBottomSheet() {
        return INavigationLayout.CC.$default$getBottomSheet(this);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public FrameLayout getOverlayContainerView() {
        return this;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* bridge */ /* synthetic */ Activity getParentActivity() {
        return INavigationLayout.CC.$default$getParentActivity(this);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* bridge */ /* synthetic */ ViewGroup getView() {
        return INavigationLayout.CC.$default$getView(this);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean hasIntegratedBlurInPreview() {
        return INavigationLayout.CC.$default$hasIntegratedBlurInPreview(this);
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean isActionBarInCrossfade() {
        return INavigationLayout.CC.$default$isActionBarInCrossfade(this);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragment(BaseFragment baseFragment) {
        return INavigationLayout.CC.$default$presentFragment(this, baseFragment);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragment(BaseFragment baseFragment, boolean z) {
        return INavigationLayout.CC.$default$presentFragment(this, baseFragment, z);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragment(BaseFragment baseFragment, boolean z, boolean z2, boolean z3, boolean z4) {
        return INavigationLayout.CC.$default$presentFragment(this, baseFragment, z, z2, z3, z4);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragment(BaseFragment baseFragment, boolean z, boolean z2, boolean z3, boolean z4, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        return INavigationLayout.CC.$default$presentFragment(this, baseFragment, z, z2, z3, z4, actionBarPopupWindowLayout);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragmentAsPreview(BaseFragment baseFragment) {
        return INavigationLayout.CC.$default$presentFragmentAsPreview(this, baseFragment);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ boolean presentFragmentAsPreviewWithMenu(BaseFragment baseFragment, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        return INavigationLayout.CC.$default$presentFragmentAsPreviewWithMenu(this, baseFragment, actionBarPopupWindowLayout);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ void rebuildFragments(int i) {
        INavigationLayout.CC.$default$rebuildFragments(this, i);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ void removeFragmentFromStack(int i) {
        INavigationLayout.CC.$default$removeFragmentFromStack(this, i);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public /* synthetic */ void removeFragmentFromStack(BaseFragment baseFragment) {
        INavigationLayout.CC.$default$removeFragmentFromStack(this, baseFragment);
    }

    static /* synthetic */ float access$1316(ActionBarLayout actionBarLayout, float f) {
        float f2 = actionBarLayout.animationProgress + f;
        actionBarLayout.animationProgress = f2;
        return f2;
    }

    public static Drawable getHeaderShadowDrawable() {
        return headerShadowDrawable;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public View getPreviewMenu() {
        return this.previewMenu;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean isMusicPlaying() {
        return this.isMusicPlaying;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setMusicPlaying(boolean z) {
        if (this.isMusicPlaying == z) {
            return;
        }
        this.isMusicPlaying = z;
        updatePinnedPlayerVisible();
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void updatePinnedPlayerVisible() {
        for (BaseFragment baseFragment : this.fragmentsStack) {
            if (baseFragment.isAllowPinnedPlayer()) {
                View view = baseFragment.fragmentView;
                if ((view instanceof FrameLayout) && baseFragment.pinnedPlayerView != null) {
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
                    if (isPinnedPlayerVisible()) {
                        layoutParams.bottomMargin = AndroidUtilities.m107dp(PinnedPlayerView.getPlayerHeight());
                        baseFragment.pinnedPlayerView.setVisibility(0);
                        baseFragment.pinnedPlayerView.updateTitle(false);
                    } else {
                        layoutParams.bottomMargin = 0;
                        baseFragment.pinnedPlayerView.setVisibility(8);
                    }
                    baseFragment.fragmentView.setLayoutParams(layoutParams);
                    baseFragment.fragmentView.requestLayout();
                    baseFragment.fragmentView.invalidate();
                }
            }
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void updatePinnedPlayerColors() {
        PinnedPlayerView pinnedPlayerView;
        for (BaseFragment baseFragment : this.fragmentsStack) {
            if (baseFragment != null && (pinnedPlayerView = baseFragment.pinnedPlayerView) != null) {
                pinnedPlayerView.updateColors();
            }
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean isPinnedPlayerVisible() {
        LayoutContainer layoutContainer;
        return this.isMusicPlaying && SharedConfig.isPlayerPinned && (layoutContainer = this.containerView) != null && !layoutContainer.isKeyboardVisible;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void finishWalletScreens() {
        for (BaseFragment baseFragment : new ArrayList(this.fragmentsStack)) {
            if ((baseFragment instanceof WalletAuthBaseFragment) && !(baseFragment instanceof WalletRootFragment)) {
                baseFragment.finishFragment(false);
            }
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setHighlightActionButtons(boolean z) {
        this.highlightActionButtons = z;
    }

    public boolean storyViewerAttached() {
        BaseFragment baseFragment;
        StoryViewer storyViewer;
        if (this.fragmentsStack.isEmpty()) {
            baseFragment = null;
        } else {
            List<BaseFragment> list = this.fragmentsStack;
            baseFragment = list.get(list.size() - 1);
        }
        return (baseFragment == null || (storyViewer = baseFragment.storyViewer) == null || !storyViewer.attachedToParent()) ? false : true;
    }

    /* renamed from: org.telegram.ui.ActionBar.ActionBarLayout$LayoutContainer */
    /* loaded from: classes5.dex */
    public class LayoutContainer extends FrameLayout {
        private boolean allowToPressByHover;
        private int backgroundColor;
        private Paint backgroundPaint;
        private int fragmentPanTranslationOffset;
        private boolean isKeyboardVisible;
        float lastY;
        private float pressX;
        private float pressY;
        private Rect rect;
        float startY;
        private boolean wasPortrait;

        public LayoutContainer(Context context) {
            super(context);
            this.rect = new Rect();
            this.backgroundPaint = new Paint();
            setWillNotDraw(false);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            int i;
            int i2;
            BaseFragment baseFragment = !ActionBarLayout.this.fragmentsStack.isEmpty() ? (BaseFragment) ActionBarLayout.this.fragmentsStack.get(ActionBarLayout.this.fragmentsStack.size() - 1) : null;
            if (ActionBarLayout.this.storyViewerAttached() && baseFragment.storyViewer.isFullyVisible() && !baseFragment.isStoryViewer(view)) {
                return true;
            }
            if ((view instanceof C3704ActionBar) || (view instanceof PinnedPlayerView) || (view instanceof PasscodeView)) {
                return super.drawChild(canvas, view, j);
            }
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i3);
                if (childAt == view || !(childAt instanceof C3704ActionBar) || childAt.getVisibility() != 0) {
                    i3++;
                } else if (((C3704ActionBar) childAt).getCastShadows()) {
                    i = childAt.getMeasuredHeight();
                    i2 = (int) childAt.getY();
                }
            }
            i = 0;
            i2 = 0;
            boolean drawChild = super.drawChild(canvas, view, j);
            if (i != 0 && ActionBarLayout.headerShadowDrawable != null) {
                int i4 = i2 + i;
                ActionBarLayout.headerShadowDrawable.setBounds(0, i4, getMeasuredWidth(), ActionBarLayout.headerShadowDrawable.getIntrinsicHeight() + i4);
                ActionBarLayout.headerShadowDrawable.draw(canvas);
            }
            return drawChild;
        }

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return Build.VERSION.SDK_INT >= 28;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            boolean z = size2 > size;
            if (this.wasPortrait != z && ActionBarLayout.this.isInPreviewMode()) {
                ActionBarLayout.this.finishPreviewFragment();
            }
            this.wasPortrait = z;
            int childCount = getChildCount();
            int i4 = 0;
            while (true) {
                if (i4 >= childCount) {
                    i3 = 0;
                    break;
                }
                View childAt = getChildAt(i4);
                if (childAt instanceof C3704ActionBar) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                    i3 = childAt.getMeasuredHeight();
                    break;
                }
                i4++;
            }
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt2 = getChildAt(i5);
                if (childAt2 instanceof PinnedPlayerView) {
                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                } else if (childAt2 instanceof PasscodeView) {
                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(size, 0), View.MeasureSpec.makeMeasureSpec(size2, 0));
                }
            }
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt3 = getChildAt(i6);
                if (!(childAt3 instanceof C3704ActionBar) && !(childAt3 instanceof PinnedPlayerView) && !(childAt3 instanceof PasscodeView)) {
                    if (childAt3.getFitsSystemWindows()) {
                        measureChildWithMargins(childAt3, i, 0, i2, 0);
                    } else {
                        measureChildWithMargins(childAt3, i, 0, i2, i3);
                    }
                }
            }
            setMeasuredDimension(size, size2);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5;
            int childCount = getChildCount();
            int i6 = 0;
            while (true) {
                if (i6 >= childCount) {
                    i5 = 0;
                    break;
                }
                View childAt = getChildAt(i6);
                if (childAt instanceof C3704ActionBar) {
                    i5 = childAt.getMeasuredHeight();
                    childAt.layout(0, 0, childAt.getMeasuredWidth(), i5);
                    break;
                }
                i6++;
            }
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt2 = getChildAt(i7);
                if (childAt2 instanceof PinnedPlayerView) {
                    childAt2.layout(0, i4 - AndroidUtilities.m107dp(PinnedPlayerView.getPlayerHeight()), childAt2.getMeasuredWidth(), i4);
                } else if (childAt2 instanceof PasscodeView) {
                    childAt2.layout(0, 0, childAt2.getMeasuredWidth(), childAt2.getMeasuredHeight());
                }
            }
            for (int i8 = 0; i8 < childCount; i8++) {
                View childAt3 = getChildAt(i8);
                if (!(childAt3 instanceof C3704ActionBar) && !(childAt3 instanceof PinnedPlayerView) && !(childAt3 instanceof PasscodeView)) {
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt3.getLayoutParams();
                    if (childAt3.getFitsSystemWindows()) {
                        int i9 = layoutParams.leftMargin;
                        childAt3.layout(i9, layoutParams.topMargin, childAt3.getMeasuredWidth() + i9, layoutParams.topMargin + childAt3.getMeasuredHeight());
                    } else {
                        int i10 = layoutParams.leftMargin;
                        childAt3.layout(i10, layoutParams.topMargin + i5, childAt3.getMeasuredWidth() + i10, layoutParams.topMargin + i5 + childAt3.getMeasuredHeight());
                    }
                }
            }
            View rootView = getRootView();
            getWindowVisibleDisplayFrame(this.rect);
            int height = (rootView.getHeight() - (this.rect.top != 0 ? AndroidUtilities.statusBarHeight : 0)) - AndroidUtilities.getViewInset(rootView);
            boolean z2 = this.isKeyboardVisible;
            Rect rect = this.rect;
            boolean z3 = height - (rect.bottom - rect.top) > 0;
            this.isKeyboardVisible = z3;
            if (z2 != z3) {
                ActionBarLayout.this.updatePinnedPlayerVisible();
            }
            if (ActionBarLayout.this.waitingForKeyboardCloseRunnable != null) {
                ActionBarLayout actionBarLayout = ActionBarLayout.this;
                if (actionBarLayout.containerView.isKeyboardVisible || actionBarLayout.containerViewBack.isKeyboardVisible) {
                    return;
                }
                AndroidUtilities.cancelRunOnUIThread(ActionBarLayout.this.waitingForKeyboardCloseRunnable);
                ActionBarLayout.this.waitingForKeyboardCloseRunnable.run();
                ActionBarLayout.this.waitingForKeyboardCloseRunnable = null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
            if (r5 != r5.this$0.containerView) goto L10;
         */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean dispatchTouchEvent(android.view.MotionEvent r6) {
            /*
                r5 = this;
                r5.processMenuButtonsTouch(r6)
                org.telegram.ui.ActionBar.ActionBarLayout r0 = org.telegram.p043ui.ActionBar.ActionBarLayout.this
                boolean r0 = org.telegram.p043ui.ActionBar.ActionBarLayout.access$500(r0)
                r1 = 1
                r2 = 0
                if (r0 == 0) goto L17
                org.telegram.ui.ActionBar.ActionBarLayout r0 = org.telegram.p043ui.ActionBar.ActionBarLayout.this
                org.telegram.ui.ActionBar.ActionBarPopupWindow$ActionBarPopupWindowLayout r0 = org.telegram.p043ui.ActionBar.ActionBarLayout.access$600(r0)
                if (r0 != 0) goto L17
                r0 = r1
                goto L18
            L17:
                r0 = r2
            L18:
                if (r0 != 0) goto L22
                org.telegram.ui.ActionBar.ActionBarLayout r3 = org.telegram.p043ui.ActionBar.ActionBarLayout.this
                boolean r3 = org.telegram.p043ui.ActionBar.ActionBarLayout.access$700(r3)
                if (r3 == 0) goto L30
            L22:
                int r3 = r6.getActionMasked()
                if (r3 == 0) goto L45
                int r3 = r6.getActionMasked()
                r4 = 5
                if (r3 != r4) goto L30
                goto L45
            L30:
                if (r0 == 0) goto L38
                org.telegram.ui.ActionBar.ActionBarLayout r0 = org.telegram.p043ui.ActionBar.ActionBarLayout.this     // Catch: java.lang.Throwable -> L41
                org.telegram.ui.ActionBar.ActionBarLayout$LayoutContainer r0 = r0.containerView     // Catch: java.lang.Throwable -> L41
                if (r5 == r0) goto L3f
            L38:
                boolean r6 = super.dispatchTouchEvent(r6)     // Catch: java.lang.Throwable -> L41
                if (r6 == 0) goto L3f
                goto L40
            L3f:
                r1 = r2
            L40:
                return r1
            L41:
                r6 = move-exception
                org.telegram.messenger.FileLog.m102e(r6)
            L45:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ActionBar.ActionBarLayout.LayoutContainer.dispatchTouchEvent(android.view.MotionEvent):boolean");
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.fragmentPanTranslationOffset != 0) {
                int i = Theme.key_windowBackgroundWhite;
                if (this.backgroundColor != Theme.getColor(i)) {
                    Paint paint = this.backgroundPaint;
                    int color = Theme.getColor(i);
                    this.backgroundColor = color;
                    paint.setColor(color);
                }
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, (getMeasuredHeight() - this.fragmentPanTranslationOffset) - 3, getMeasuredWidth(), getMeasuredHeight(), this.backgroundPaint);
            }
            super.onDraw(canvas);
        }

        public void setFragmentPanTranslationOffset(int i) {
            this.fragmentPanTranslationOffset = i;
            invalidate();
        }

        public void processMenuButtonsTouch(MotionEvent motionEvent) {
            ActionBarMenuSubItem actionBarMenuSubItem;
            if (motionEvent.getAction() == 0) {
                this.startY = motionEvent.getY();
            }
            if (ActionBarLayout.this.isInPreviewMode() && ActionBarLayout.this.previewMenu == null) {
                this.lastY = motionEvent.getY();
                if (motionEvent.getAction() == 1) {
                    ActionBarLayout.this.finishPreviewFragment();
                    return;
                } else if (motionEvent.getAction() == 2) {
                    float f = this.startY - this.lastY;
                    ActionBarLayout.this.movePreviewFragment(f);
                    if (f < BitmapDescriptorFactory.HUE_RED) {
                        this.startY = this.lastY;
                        return;
                    }
                    return;
                } else {
                    return;
                }
            }
            if (motionEvent.getAction() == 0) {
                this.pressX = motionEvent.getX();
                this.pressY = motionEvent.getY();
                this.allowToPressByHover = false;
            } else if ((motionEvent.getAction() == 2 || motionEvent.getAction() == 1) && ActionBarLayout.this.previewMenu != null && ActionBarLayout.this.highlightActionButtons) {
                if (!this.allowToPressByHover && Math.sqrt(Math.pow(this.pressX - motionEvent.getX(), 2.0d) + Math.pow(this.pressY - motionEvent.getY(), 2.0d)) > AndroidUtilities.m107dp(30)) {
                    this.allowToPressByHover = true;
                }
                if (this.allowToPressByHover && (ActionBarLayout.this.previewMenu.getSwipeBack() == null || !ActionBarLayout.this.previewMenu.getSwipeBack().isForegroundOpen())) {
                    for (int i = 0; i < ActionBarLayout.this.previewMenu.getItemsCount(); i++) {
                        if ((ActionBarLayout.this.previewMenu.getItemAt(i) instanceof ActionBarMenuSubItem) && (actionBarMenuSubItem = (ActionBarMenuSubItem) ActionBarLayout.this.previewMenu.getItemAt(i)) != null) {
                            Drawable background = actionBarMenuSubItem.getBackground();
                            Rect rect = AndroidUtilities.rectTmp2;
                            actionBarMenuSubItem.getGlobalVisibleRect(rect);
                            boolean contains = rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
                            boolean z = background.getState().length == 2;
                            if (motionEvent.getAction() == 2) {
                                if (contains != z) {
                                    background.setState(contains ? new int[]{16842919, 16842910} : new int[0]);
                                    if (contains) {
                                        try {
                                            actionBarMenuSubItem.performHapticFeedback(9, 1);
                                        } catch (Exception unused) {
                                        }
                                    }
                                }
                            } else if (motionEvent.getAction() == 1 && contains) {
                                actionBarMenuSubItem.performClick();
                            }
                        }
                    }
                }
            }
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                if (ActionBarLayout.this.previewMenu != null && ActionBarLayout.this.highlightActionButtons) {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(Build.VERSION.SDK_INT >= 19 ? Theme.moveUpDrawable.getAlpha() : 255, BitmapDescriptorFactory.HUE_RED);
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$LayoutContainer$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ActionBarLayout.LayoutContainer.this.lambda$processMenuButtonsTouch$0(valueAnimator);
                        }
                    });
                    ofFloat.setDuration(150L);
                    CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
                    ofFloat.setInterpolator(cubicBezierInterpolator);
                    ofFloat.start();
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(ActionBarLayout.this.containerView, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED);
                    ofFloat2.setDuration(150L);
                    ofFloat2.setInterpolator(cubicBezierInterpolator);
                    ofFloat2.start();
                }
                ActionBarLayout.this.highlightActionButtons = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processMenuButtonsTouch$0(ValueAnimator valueAnimator) {
            Theme.moveUpDrawable.setAlpha(((Float) valueAnimator.getAnimatedValue()).intValue());
            if (ActionBarLayout.this.drawerLayoutContainer != null) {
                ActionBarLayout.this.drawerLayoutContainer.invalidate();
            }
            LayoutContainer layoutContainer = ActionBarLayout.this.containerView;
            if (layoutContainer != null) {
                layoutContainer.invalidate();
            }
            ActionBarLayout.this.invalidate();
        }
    }

    public ActionBarLayout(Context context) {
        super(context);
        this.highlightActionButtons = false;
        this.decelerateInterpolator = new DecelerateInterpolator(1.5f);
        this.overshootInterpolator = new OvershootInterpolator(1.02f);
        this.accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        this.animateStartColors = new ArrayList<>();
        this.animateEndColors = new ArrayList<>();
        this.startColorsProvider = new INavigationLayout.StartColorsProvider();
        this.themeAnimatorDescriptions = new ArrayList<>();
        this.themeAnimatorDelegate = new ArrayList<>();
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.rect = new Rect();
        this.overrideWidthOffset = -1;
        this.measureSpec = new int[2];
        this.lastActions = new ArrayList<>();
        this.debugBlackScreenRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ActionBarLayout.this.lambda$new$8();
            }
        };
        this.parentActivity = (Activity) context;
        if (layerShadowDrawable == null) {
            layerShadowDrawable = getResources().getDrawable(C3632R.C3634drawable.layer_shadow);
            headerShadowDrawable = getResources().getDrawable(C3632R.C3634drawable.header_shadow).mutate();
            scrimPaint = new Paint();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setFragmentStack(List<BaseFragment> list) {
        this.fragmentsStack = list;
        LayoutContainer layoutContainer = new LayoutContainer(this.parentActivity);
        this.containerViewBack = layoutContainer;
        addView(layoutContainer);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.containerViewBack.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.gravity = 51;
        this.containerViewBack.setLayoutParams(layoutParams);
        LayoutContainer layoutContainer2 = new LayoutContainer(this.parentActivity);
        this.containerView = layoutContainer2;
        addView(layoutContainer2);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.containerView.getLayoutParams();
        layoutParams2.width = -1;
        layoutParams2.height = -1;
        layoutParams2.gravity = 51;
        this.containerView.setLayoutParams(layoutParams2);
        for (BaseFragment baseFragment : this.fragmentsStack) {
            baseFragment.setParentLayout(this);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setIsSheet(boolean z) {
        this.isSheet = z;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean isSheet() {
        return this.isSheet;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void updateTitleOverlay() {
        C3704ActionBar c3704ActionBar;
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment == null || (c3704ActionBar = lastFragment.actionBar) == null) {
            return;
        }
        c3704ActionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.fragmentsStack.isEmpty()) {
            return;
        }
        int size = this.fragmentsStack.size();
        for (int i = 0; i < size; i++) {
            BaseFragment baseFragment = this.fragmentsStack.get(i);
            baseFragment.onConfigurationChanged(configuration);
            Dialog dialog = baseFragment.visibleDialog;
            if (dialog instanceof BottomSheet) {
                ((BottomSheet) dialog).onConfigurationChanged(configuration);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        BaseFragment baseFragment;
        if (this.fragmentsStack.isEmpty()) {
            baseFragment = null;
        } else {
            List<BaseFragment> list = this.fragmentsStack;
            baseFragment = list.get(list.size() - 1);
        }
        if (baseFragment != null && storyViewerAttached()) {
            int measureKeyboardHeight = measureKeyboardHeight();
            baseFragment.setKeyboardHeightFromParent(measureKeyboardHeight);
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2) + measureKeyboardHeight, 1073741824));
            return;
        }
        INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
        if (iNavigationLayoutDelegate != null) {
            int[] iArr = this.measureSpec;
            iArr[0] = i;
            iArr[1] = i2;
            iNavigationLayoutDelegate.onMeasureOverride(iArr);
            int[] iArr2 = this.measureSpec;
            int i3 = iArr2[0];
            i2 = iArr2[1];
            i = i3;
        }
        super.onMeasure(i, i2);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setInBubbleMode(boolean z) {
        this.inBubbleMode = z;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean isInBubbleMode() {
        return this.inBubbleMode;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void drawHeaderShadow(Canvas canvas, int i, int i2) {
        if (headerShadowDrawable == null || !SharedConfig.drawActionBarShadow) {
            return;
        }
        int i3 = i / 2;
        if (Build.VERSION.SDK_INT >= 19) {
            if (headerShadowDrawable.getAlpha() != i3) {
                headerShadowDrawable.setAlpha(i3);
            }
        } else {
            headerShadowDrawable.setAlpha(i3);
        }
        headerShadowDrawable.setBounds(0, i2, getMeasuredWidth(), headerShadowDrawable.getIntrinsicHeight() + i2);
        headerShadowDrawable.draw(canvas);
    }

    @Keep
    public void setInnerTranslationX(float f) {
        int navigationBarColor;
        int navigationBarColor2;
        this.innerTranslationX = f;
        invalidate();
        if (this.fragmentsStack.size() < 2 || this.containerView.getMeasuredWidth() <= 0) {
            return;
        }
        float measuredWidth = f / this.containerView.getMeasuredWidth();
        List<BaseFragment> list = this.fragmentsStack;
        BaseFragment baseFragment = list.get(list.size() - 2);
        baseFragment.onSlideProgress(false, measuredWidth);
        List<BaseFragment> list2 = this.fragmentsStack;
        BaseFragment baseFragment2 = list2.get(list2.size() - 1);
        float clamp = MathUtils.clamp(measuredWidth * 2.0f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        if (!baseFragment2.isBeginToShow() || (navigationBarColor = baseFragment2.getNavigationBarColor()) == (navigationBarColor2 = baseFragment.getNavigationBarColor())) {
            return;
        }
        baseFragment2.setNavigationBarColor(ColorUtils.blendARGB(navigationBarColor, navigationBarColor2, clamp));
    }

    @Keep
    public float getInnerTranslationX() {
        return this.innerTranslationX;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void onResume() {
        if (this.fragmentsStack.isEmpty()) {
            return;
        }
        List<BaseFragment> list = this.fragmentsStack;
        list.get(list.size() - 1).onResume();
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void onUserLeaveHint() {
        if (this.fragmentsStack.isEmpty()) {
            return;
        }
        List<BaseFragment> list = this.fragmentsStack;
        list.get(list.size() - 1).onUserLeaveHint();
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void onPause() {
        if (this.fragmentsStack.isEmpty()) {
            return;
        }
        List<BaseFragment> list = this.fragmentsStack;
        list.get(list.size() - 1).onPause();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.animationInProgress || checkTransitionAnimation() || onTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        onTouchEvent(null);
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
            INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
            return (iNavigationLayoutDelegate != null && iNavigationLayoutDelegate.onPreIme()) || super.dispatchKeyEventPreIme(keyEvent);
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        LayoutContainer layoutContainer;
        DrawerLayoutContainer drawerLayoutContainer = this.drawerLayoutContainer;
        if (drawerLayoutContainer != null && drawerLayoutContainer.isDrawCurrentPreviewFragmentAbove() && (this.inPreviewMode || this.transitionAnimationPreviewMode || this.previewOpenAnimationInProgress)) {
            BaseFragment baseFragment = this.oldFragment;
            if (view == ((baseFragment == null || !baseFragment.inPreviewMode) ? this.containerView : this.containerViewBack)) {
                this.drawerLayoutContainer.invalidate();
                return false;
            }
        }
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int paddingRight = ((int) this.innerTranslationX) + getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int paddingLeft2 = getPaddingLeft() + width;
        if (view == this.containerViewBack) {
            paddingLeft2 = AndroidUtilities.m107dp(1) + paddingRight;
        } else if (view == this.containerView) {
            paddingLeft = paddingRight;
        }
        int save = canvas.save();
        if (!isTransitionAnimationInProgress() && !this.inPreviewMode) {
            canvas.clipRect(paddingLeft, 0, paddingLeft2, getHeight());
        }
        if ((this.inPreviewMode || this.transitionAnimationPreviewMode) && view == (layoutContainer = this.containerView)) {
            drawPreviewDrawables(canvas, layoutContainer);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        if (paddingRight != 0 || this.overrideWidthOffset != -1) {
            int i = this.overrideWidthOffset;
            if (i == -1) {
                i = width - paddingRight;
            }
            if (view == this.containerView) {
                float clamp = MathUtils.clamp(i / AndroidUtilities.m107dp(20), (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                Drawable drawable = layerShadowDrawable;
                drawable.setBounds(paddingRight - drawable.getIntrinsicWidth(), view.getTop(), paddingRight, view.getBottom());
                layerShadowDrawable.setAlpha((int) (clamp * 255.0f));
                layerShadowDrawable.draw(canvas);
            } else if (view == this.containerViewBack) {
                scrimPaint.setColor(Color.argb((int) (MathUtils.clamp(i / width, (float) BitmapDescriptorFactory.HUE_RED, 0.8f) * 153.0f), 0, 0, 0));
                if (this.overrideWidthOffset != -1) {
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), scrimPaint);
                } else {
                    canvas.drawRect(paddingLeft, BitmapDescriptorFactory.HUE_RED, paddingLeft2, getHeight(), scrimPaint);
                }
            }
        }
        return drawChild;
    }

    public void setOverrideWidthOffset(int i) {
        this.overrideWidthOffset = i;
        invalidate();
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public float getCurrentPreviewFragmentAlpha() {
        if (this.inPreviewMode || this.transitionAnimationPreviewMode || this.previewOpenAnimationInProgress) {
            BaseFragment baseFragment = this.oldFragment;
            return ((baseFragment == null || !baseFragment.inPreviewMode) ? this.containerView : this.containerViewBack).getAlpha();
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void drawCurrentPreviewFragment(Canvas canvas, Drawable drawable) {
        if (this.inPreviewMode || this.transitionAnimationPreviewMode || this.previewOpenAnimationInProgress) {
            BaseFragment baseFragment = this.oldFragment;
            LayoutContainer layoutContainer = (baseFragment == null || !baseFragment.inPreviewMode) ? this.containerView : this.containerViewBack;
            drawPreviewDrawables(canvas, layoutContainer);
            if (layoutContainer.getAlpha() < 1.0f) {
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (layoutContainer.getAlpha() * 255.0f), 31);
            } else {
                canvas.save();
            }
            canvas.concat(layoutContainer.getMatrix());
            layoutContainer.draw(canvas);
            if (drawable != null) {
                View childAt = layoutContainer.getChildAt(0);
                if (childAt != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                    Rect rect = new Rect();
                    childAt.getLocalVisibleRect(rect);
                    rect.offset(marginLayoutParams.leftMargin, marginLayoutParams.topMargin);
                    rect.top += Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight - 1 : 0;
                    drawable.setAlpha((int) (layoutContainer.getAlpha() * 255.0f));
                    drawable.setBounds(rect);
                    drawable.draw(canvas);
                }
            }
            canvas.restore();
        }
    }

    private void drawPreviewDrawables(Canvas canvas, ViewGroup viewGroup) {
        View childAt = viewGroup.getChildAt(0);
        if (childAt != null) {
            this.previewBackgroundDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            this.previewBackgroundDrawable.draw(canvas);
            if (this.previewMenu == null) {
                int m107dp = AndroidUtilities.m107dp(32);
                int i = m107dp / 2;
                int measuredWidth = (getMeasuredWidth() - m107dp) / 2;
                int top = (int) ((childAt.getTop() + viewGroup.getTranslationY()) - AndroidUtilities.m107dp((Build.VERSION.SDK_INT < 21 ? 20 : 0) + 12));
                Theme.moveUpDrawable.setBounds(measuredWidth, top, m107dp + measuredWidth, i + top);
                Theme.moveUpDrawable.draw(canvas);
            }
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setDelegate(INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate) {
        this.delegate = iNavigationLayoutDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSlideAnimationEnd(boolean z) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        ViewGroup viewGroup4;
        if (!z) {
            if (this.fragmentsStack.size() < 2) {
                return;
            }
            List<BaseFragment> list = this.fragmentsStack;
            BaseFragment baseFragment = list.get(list.size() - 1);
            baseFragment.prepareFragmentToSlide(true, false);
            baseFragment.onPause();
            baseFragment.onFragmentDestroy();
            baseFragment.setParentLayout(null);
            List<BaseFragment> list2 = this.fragmentsStack;
            list2.remove(list2.size() - 1);
            onFragmentStackChanged("onSlideAnimationEnd");
            LayoutContainer layoutContainer = this.containerView;
            LayoutContainer layoutContainer2 = this.containerViewBack;
            this.containerView = layoutContainer2;
            this.containerViewBack = layoutContainer;
            bringChildToFront(layoutContainer2);
            List<BaseFragment> list3 = this.fragmentsStack;
            BaseFragment baseFragment2 = list3.get(list3.size() - 1);
            this.currentActionBar = baseFragment2.actionBar;
            baseFragment2.onResume();
            baseFragment2.onBecomeFullyVisible();
            baseFragment2.prepareFragmentToSlide(false, false);
        } else if (this.fragmentsStack.size() >= 2) {
            List<BaseFragment> list4 = this.fragmentsStack;
            list4.get(list4.size() - 1).prepareFragmentToSlide(true, false);
            List<BaseFragment> list5 = this.fragmentsStack;
            BaseFragment baseFragment3 = list5.get(list5.size() - 2);
            baseFragment3.prepareFragmentToSlide(false, false);
            baseFragment3.onPause();
            View view = baseFragment3.fragmentView;
            if (view != null && (viewGroup4 = (ViewGroup) view.getParent()) != null) {
                baseFragment3.onRemoveFromParent();
                viewGroup4.removeViewInLayout(baseFragment3.fragmentView);
            }
            C3704ActionBar c3704ActionBar = baseFragment3.actionBar;
            if (c3704ActionBar != null && c3704ActionBar.shouldAddToContainer() && (viewGroup3 = (ViewGroup) baseFragment3.actionBar.getParent()) != null) {
                viewGroup3.removeViewInLayout(baseFragment3.actionBar);
            }
            PinnedPlayerView pinnedPlayerView = baseFragment3.pinnedPlayerView;
            if (pinnedPlayerView != null && (viewGroup2 = (ViewGroup) pinnedPlayerView.getParent()) != null) {
                viewGroup2.removeViewInLayout(baseFragment3.pinnedPlayerView);
            }
            PasscodeView passcodeView = baseFragment3.passcodeView;
            if (passcodeView != null && (viewGroup = (ViewGroup) passcodeView.getParent()) != null) {
                viewGroup.removeViewInLayout(baseFragment3.passcodeView);
            }
            baseFragment3.detachStoryViewer();
        }
        this.containerViewBack.setVisibility(4);
        this.startedTracking = false;
        this.animationInProgress = false;
        this.containerView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.containerViewBack.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        setInnerTranslationX(BitmapDescriptorFactory.HUE_RED);
    }

    private void prepareForMoving(MotionEvent motionEvent) {
        this.maybeStartTracking = false;
        this.startedTracking = true;
        this.startedTrackingX = (int) motionEvent.getX();
        this.containerViewBack.setVisibility(0);
        this.beginTrackingSent = false;
        List<BaseFragment> list = this.fragmentsStack;
        BaseFragment baseFragment = list.get(list.size() - 2);
        View view = baseFragment.fragmentView;
        if (view == null) {
            view = baseFragment.createView(this.parentActivity);
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            baseFragment.onRemoveFromParent();
            viewGroup.removeView(view);
        }
        this.containerViewBack.addView(view);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.leftMargin = 0;
        layoutParams.rightMargin = 0;
        layoutParams.bottomMargin = 0;
        layoutParams.topMargin = 0;
        if (baseFragment.isAllowPinnedPlayer() && isPinnedPlayerVisible()) {
            layoutParams.bottomMargin = AndroidUtilities.m107dp(PinnedPlayerView.getPlayerHeight());
        }
        view.setLayoutParams(layoutParams);
        C3704ActionBar c3704ActionBar = baseFragment.actionBar;
        if (c3704ActionBar != null && c3704ActionBar.shouldAddToContainer()) {
            AndroidUtilities.removeFromParent(baseFragment.actionBar);
            if (this.removeActionBarExtraHeight) {
                baseFragment.actionBar.setOccupyStatusBar(false);
            }
            this.containerViewBack.addView(baseFragment.actionBar);
            baseFragment.actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
        }
        PinnedPlayerView pinnedPlayerView = baseFragment.pinnedPlayerView;
        if (pinnedPlayerView != null) {
            ViewGroup viewGroup2 = (ViewGroup) pinnedPlayerView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(baseFragment.pinnedPlayerView);
            }
            this.containerViewBack.addView(baseFragment.pinnedPlayerView, LayoutHelper.createFrame(-1, PinnedPlayerView.getPlayerHeight()));
        }
        PasscodeView passcodeView = baseFragment.passcodeView;
        if (passcodeView != null) {
            ViewGroup viewGroup3 = (ViewGroup) passcodeView.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(baseFragment.passcodeView);
            }
            this.containerViewBack.addView(baseFragment.passcodeView, LayoutHelper.createFrame(-1, -1));
        }
        baseFragment.attachStoryViewer(this.containerViewBack);
        if (!baseFragment.hasOwnBackground && view.getBackground() == null) {
            view.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
        baseFragment.onResume();
        if (this.themeAnimatorSet != null) {
            this.presentingFragmentDescriptions = baseFragment.getThemeDescriptions();
        }
        List<BaseFragment> list2 = this.fragmentsStack;
        list2.get(list2.size() - 1).prepareFragmentToSlide(true, true);
        baseFragment.prepareFragmentToSlide(false, true);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Animator customSlideTransition;
        LayoutContainer layoutContainer;
        if (checkTransitionAnimation() || this.inActionMode || this.animationInProgress) {
            return false;
        }
        if (this.fragmentsStack.size() > 1) {
            if (motionEvent != null && motionEvent.getAction() == 0) {
                List<BaseFragment> list = this.fragmentsStack;
                if (!list.get(list.size() - 1).isSwipeBackEnabled(motionEvent)) {
                    this.maybeStartTracking = false;
                    this.startedTracking = false;
                    return false;
                }
                this.startedTrackingPointerId = motionEvent.getPointerId(0);
                this.maybeStartTracking = true;
                this.startedTrackingX = (int) motionEvent.getX();
                this.startedTrackingY = (int) motionEvent.getY();
                VelocityTracker velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
            } else if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                int max = Math.max(0, (int) (motionEvent.getX() - this.startedTrackingX));
                int abs = Math.abs(((int) motionEvent.getY()) - this.startedTrackingY);
                this.velocityTracker.addMovement(motionEvent);
                if (!this.transitionAnimationInProgress && !this.inPreviewMode && this.maybeStartTracking && !this.startedTracking && max >= AndroidUtilities.getPixelsInCM(0.4f, true) && Math.abs(max) / 3 > abs) {
                    List<BaseFragment> list2 = this.fragmentsStack;
                    if (list2.get(list2.size() - 1).canBeginSlide() && findScrollingChild(this, motionEvent.getX(), motionEvent.getY()) == null) {
                        prepareForMoving(motionEvent);
                    } else {
                        this.maybeStartTracking = false;
                    }
                } else if (this.startedTracking) {
                    if (!this.beginTrackingSent) {
                        if (this.parentActivity.getCurrentFocus() != null) {
                            AndroidUtilities.hideKeyboard(this.parentActivity.getCurrentFocus());
                        }
                        List<BaseFragment> list3 = this.fragmentsStack;
                        list3.get(list3.size() - 1).onBeginSlide();
                        this.beginTrackingSent = true;
                    }
                    float f = max;
                    this.containerView.setTranslationX(f);
                    setInnerTranslationX(f);
                }
            } else if (motionEvent != null && motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6)) {
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                this.velocityTracker.computeCurrentVelocity(1000);
                List<BaseFragment> list4 = this.fragmentsStack;
                BaseFragment baseFragment = list4.get(list4.size() - 1);
                if (!this.inPreviewMode && !this.transitionAnimationPreviewMode && !this.startedTracking && baseFragment.isSwipeBackEnabled(motionEvent)) {
                    float xVelocity = this.velocityTracker.getXVelocity();
                    float yVelocity = this.velocityTracker.getYVelocity();
                    if (xVelocity >= 3500.0f && xVelocity > Math.abs(yVelocity) && baseFragment.canBeginSlide()) {
                        prepareForMoving(motionEvent);
                        if (!this.beginTrackingSent) {
                            if (((Activity) getContext()).getCurrentFocus() != null) {
                                AndroidUtilities.hideKeyboard(((Activity) getContext()).getCurrentFocus());
                            }
                            this.beginTrackingSent = true;
                        }
                    }
                }
                if (this.startedTracking) {
                    float x = this.containerView.getX();
                    AnimatorSet animatorSet = new AnimatorSet();
                    float xVelocity2 = this.velocityTracker.getXVelocity();
                    final boolean z = x < ((float) this.containerView.getMeasuredWidth()) / 3.0f && (xVelocity2 < 3500.0f || xVelocity2 < this.velocityTracker.getYVelocity());
                    boolean shouldOverrideSlideTransition = baseFragment.shouldOverrideSlideTransition(false, z);
                    if (!z) {
                        x = this.containerView.getMeasuredWidth() - x;
                        int max2 = Math.max((int) ((200.0f / this.containerView.getMeasuredWidth()) * x), 50);
                        if (!shouldOverrideSlideTransition) {
                            long j = max2;
                            animatorSet.playTogether(ObjectAnimator.ofFloat(this.containerView, View.TRANSLATION_X, layoutContainer.getMeasuredWidth()).setDuration(j), ObjectAnimator.ofFloat(this, "innerTranslationX", this.containerView.getMeasuredWidth()).setDuration(j));
                        }
                    } else {
                        int max3 = Math.max((int) ((200.0f / this.containerView.getMeasuredWidth()) * x), 50);
                        if (!shouldOverrideSlideTransition) {
                            long j2 = max3;
                            animatorSet.playTogether(ObjectAnimator.ofFloat(this.containerView, View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED).setDuration(j2), ObjectAnimator.ofFloat(this, "innerTranslationX", BitmapDescriptorFactory.HUE_RED).setDuration(j2));
                        }
                    }
                    Animator customSlideTransition2 = baseFragment.getCustomSlideTransition(false, z, x);
                    if (customSlideTransition2 != null) {
                        animatorSet.playTogether(customSlideTransition2);
                    }
                    List<BaseFragment> list5 = this.fragmentsStack;
                    BaseFragment baseFragment2 = list5.get(list5.size() - 2);
                    if (baseFragment2 != null && (customSlideTransition = baseFragment2.getCustomSlideTransition(false, z, x)) != null) {
                        animatorSet.playTogether(customSlideTransition);
                    }
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ActionBarLayout.this.onSlideAnimationEnd(z);
                        }
                    });
                    animatorSet.start();
                    this.animationInProgress = true;
                } else {
                    this.maybeStartTracking = false;
                    this.startedTracking = false;
                }
                VelocityTracker velocityTracker2 = this.velocityTracker;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.velocityTracker = null;
                }
            } else if (motionEvent == null) {
                this.maybeStartTracking = false;
                this.startedTracking = false;
                VelocityTracker velocityTracker3 = this.velocityTracker;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.velocityTracker = null;
                }
            }
        }
        return this.startedTracking;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void onBackPressed() {
        C3704ActionBar c3704ActionBar;
        if (this.transitionAnimationPreviewMode || this.startedTracking || checkTransitionAnimation() || this.fragmentsStack.isEmpty() || GroupCallPip.onBackPressed()) {
            return;
        }
        if (!storyViewerAttached() && (c3704ActionBar = this.currentActionBar) != null && !c3704ActionBar.isActionModeShowed()) {
            C3704ActionBar c3704ActionBar2 = this.currentActionBar;
            if (c3704ActionBar2.isSearchFieldVisible) {
                c3704ActionBar2.closeSearchField();
                return;
            }
        }
        List<BaseFragment> list = this.fragmentsStack;
        if (!list.get(list.size() - 1).onBackPressed() || this.fragmentsStack.isEmpty()) {
            return;
        }
        closeLastFragment(true);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void onLowMemory() {
        for (BaseFragment baseFragment : this.fragmentsStack) {
            baseFragment.onLowMemory();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimationEndCheck(boolean z) {
        onCloseAnimationEnd();
        onOpenAnimationEnd();
        Runnable runnable = this.waitingForKeyboardCloseRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.waitingForKeyboardCloseRunnable = null;
        }
        AnimatorSet animatorSet = this.currentAnimation;
        if (animatorSet != null) {
            if (z) {
                animatorSet.cancel();
            }
            this.currentAnimation = null;
        }
        Runnable runnable2 = this.animationRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.animationRunnable = null;
        }
        setAlpha(1.0f);
        this.containerView.setAlpha(1.0f);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        this.containerViewBack.setAlpha(1.0f);
        this.containerViewBack.setScaleX(1.0f);
        this.containerViewBack.setScaleY(1.0f);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public BaseFragment getLastFragment() {
        if (this.fragmentsStack.isEmpty()) {
            return null;
        }
        List<BaseFragment> list = this.fragmentsStack;
        return list.get(list.size() - 1);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean checkTransitionAnimation() {
        if (this.transitionAnimationPreviewMode) {
            return false;
        }
        if (this.transitionAnimationInProgress && this.transitionAnimationStartTime < System.currentTimeMillis() - 1500) {
            onAnimationEndCheck(true);
        }
        return this.transitionAnimationInProgress;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean isPreviewOpenAnimationInProgress() {
        return this.previewOpenAnimationInProgress;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean isSwipeInProgress() {
        return this.startedTracking;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean isTransitionAnimationInProgress() {
        return this.transitionAnimationInProgress || this.animationInProgress;
    }

    private void presentFragmentInternalRemoveOld(boolean z, BaseFragment baseFragment) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        ViewGroup viewGroup4;
        if (baseFragment == null) {
            return;
        }
        baseFragment.onBecomeFullyHidden();
        baseFragment.onPause();
        if (z) {
            baseFragment.onFragmentDestroy();
            baseFragment.setParentLayout(null);
            this.fragmentsStack.remove(baseFragment);
            onFragmentStackChanged("presentFragmentInternalRemoveOld");
        } else {
            View view = baseFragment.fragmentView;
            if (view != null && (viewGroup4 = (ViewGroup) view.getParent()) != null) {
                baseFragment.onRemoveFromParent();
                try {
                    viewGroup4.removeViewInLayout(baseFragment.fragmentView);
                } catch (Exception e) {
                    FileLog.m102e(e);
                    try {
                        viewGroup4.removeView(baseFragment.fragmentView);
                    } catch (Exception e2) {
                        FileLog.m102e(e2);
                    }
                }
            }
            C3704ActionBar c3704ActionBar = baseFragment.actionBar;
            if (c3704ActionBar != null && c3704ActionBar.shouldAddToContainer() && (viewGroup3 = (ViewGroup) baseFragment.actionBar.getParent()) != null) {
                viewGroup3.removeViewInLayout(baseFragment.actionBar);
            }
            PinnedPlayerView pinnedPlayerView = baseFragment.pinnedPlayerView;
            if (pinnedPlayerView != null && (viewGroup2 = (ViewGroup) pinnedPlayerView.getParent()) != null) {
                viewGroup2.removeViewInLayout(baseFragment.pinnedPlayerView);
            }
            PasscodeView passcodeView = baseFragment.passcodeView;
            if (passcodeView != null && (viewGroup = (ViewGroup) passcodeView.getParent()) != null) {
                viewGroup.removeViewInLayout(baseFragment.passcodeView);
            }
            baseFragment.detachStoryViewer();
        }
        this.containerViewBack.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLayoutAnimation(final boolean z, final boolean z2, final boolean z3) {
        if (z2) {
            this.animationProgress = BitmapDescriptorFactory.HUE_RED;
            this.lastFrameTime = System.nanoTime() / 1000000;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.2
            @Override // java.lang.Runnable
            public void run() {
                float interpolation;
                if (ActionBarLayout.this.animationRunnable != this) {
                    return;
                }
                ActionBarLayout.this.animationRunnable = null;
                if (z2) {
                    ActionBarLayout.this.transitionAnimationStartTime = System.currentTimeMillis();
                }
                long nanoTime = System.nanoTime() / 1000000;
                long j = nanoTime - ActionBarLayout.this.lastFrameTime;
                if (j > 40 && z2) {
                    j = 0;
                } else if (j > 18) {
                    j = 18;
                }
                ActionBarLayout.this.lastFrameTime = nanoTime;
                ActionBarLayout.access$1316(ActionBarLayout.this, ((float) j) / ((z3 && z) ? 190.0f : 150.0f));
                if (ActionBarLayout.this.animationProgress > 1.0f) {
                    ActionBarLayout.this.animationProgress = 1.0f;
                }
                if (ActionBarLayout.this.newFragment != null) {
                    ActionBarLayout.this.newFragment.onTransitionAnimationProgress(true, ActionBarLayout.this.animationProgress);
                }
                if (ActionBarLayout.this.oldFragment != null) {
                    ActionBarLayout.this.oldFragment.onTransitionAnimationProgress(false, ActionBarLayout.this.animationProgress);
                }
                Integer valueOf = ActionBarLayout.this.oldFragment != null ? Integer.valueOf(ActionBarLayout.this.oldFragment.getNavigationBarColor()) : null;
                Integer valueOf2 = ActionBarLayout.this.newFragment != null ? Integer.valueOf(ActionBarLayout.this.newFragment.getNavigationBarColor()) : null;
                if (ActionBarLayout.this.newFragment != null && valueOf != null) {
                    ActionBarLayout.this.newFragment.setNavigationBarColor(ColorUtils.blendARGB(valueOf.intValue(), valueOf2.intValue(), MathUtils.clamp(ActionBarLayout.this.animationProgress * 4.0f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f)));
                }
                if (!z3) {
                    interpolation = ActionBarLayout.this.decelerateInterpolator.getInterpolation(ActionBarLayout.this.animationProgress);
                } else {
                    interpolation = z ? ActionBarLayout.this.overshootInterpolator.getInterpolation(ActionBarLayout.this.animationProgress) : CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(ActionBarLayout.this.animationProgress);
                }
                if (z) {
                    float clamp = MathUtils.clamp(interpolation, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                    ActionBarLayout.this.containerView.setAlpha(clamp);
                    if (z3) {
                        float f = (0.3f * interpolation) + 0.7f;
                        ActionBarLayout.this.containerView.setScaleX(f);
                        ActionBarLayout.this.containerView.setScaleY(f);
                        if (ActionBarLayout.this.previewMenu != null) {
                            float f2 = 1.0f - interpolation;
                            ActionBarLayout.this.containerView.setTranslationY(AndroidUtilities.m107dp(40) * f2);
                            ActionBarLayout.this.previewMenu.setTranslationY((-AndroidUtilities.m107dp(70)) * f2);
                            float f3 = (interpolation * 0.05f) + 0.95f;
                            ActionBarLayout.this.previewMenu.setScaleX(f3);
                            ActionBarLayout.this.previewMenu.setScaleY(f3);
                        }
                        ActionBarLayout.this.previewBackgroundDrawable.setAlpha((int) (46.0f * clamp));
                        Theme.moveUpDrawable.setAlpha((int) (clamp * 255.0f));
                        ActionBarLayout.this.containerView.invalidate();
                        ActionBarLayout.this.invalidate();
                    } else {
                        ActionBarLayout.this.containerView.setTranslationX(AndroidUtilities.m107dp(48) * (1.0f - interpolation));
                    }
                } else {
                    float f4 = 1.0f - interpolation;
                    float clamp2 = MathUtils.clamp(f4, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                    ActionBarLayout.this.containerViewBack.setAlpha(clamp2);
                    if (z3) {
                        float f5 = (f4 * 0.1f) + 0.9f;
                        ActionBarLayout.this.containerViewBack.setScaleX(f5);
                        ActionBarLayout.this.containerViewBack.setScaleY(f5);
                        ActionBarLayout.this.previewBackgroundDrawable.setAlpha((int) (46.0f * clamp2));
                        if (ActionBarLayout.this.previewMenu == null) {
                            Theme.moveUpDrawable.setAlpha((int) (clamp2 * 255.0f));
                        }
                        ActionBarLayout.this.containerView.invalidate();
                        ActionBarLayout.this.invalidate();
                    } else {
                        ActionBarLayout.this.containerViewBack.setTranslationX(AndroidUtilities.m107dp(48) * interpolation);
                    }
                }
                if (ActionBarLayout.this.animationProgress < 1.0f) {
                    ActionBarLayout.this.startLayoutAnimation(z, false, z3);
                } else {
                    ActionBarLayout.this.onAnimationEndCheck(false);
                }
            }
        };
        this.animationRunnable = runnable;
        AndroidUtilities.runOnUIThread(runnable);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void resumeDelayedFragmentAnimation() {
        this.delayedAnimationResumed = true;
        Runnable runnable = this.delayedOpenAnimationRunnable;
        if (runnable == null || this.waitingForKeyboardCloseRunnable != null) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(runnable);
        this.delayedOpenAnimationRunnable.run();
        this.delayedOpenAnimationRunnable = null;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean isInPreviewMode() {
        return this.inPreviewMode || this.transitionAnimationPreviewMode;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean presentFragment(INavigationLayout.NavigationParams navigationParams) {
        INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate;
        final BaseFragment baseFragment;
        int i;
        LaunchActivity launchActivity;
        final BaseFragment baseFragment2 = navigationParams.fragment;
        if ((baseFragment2 instanceof ActionIntroActivity) && ((ActionIntroActivity) baseFragment2).getType() == 3) {
            BaseFragment lastFragment = getLastFragment();
            if (lastFragment != null) {
                lastFragment.showDialog(AlertsCreator.createOpenTelegramDialog(getParentActivity(), LocaleController.getInternalString(C3632R.string.open_telegram_alert_change_phone_number)));
            }
            return false;
        }
        final boolean z = navigationParams.removeLast;
        boolean z2 = navigationParams.noAnimation;
        boolean z3 = navigationParams.checkPresentFromDelegate;
        final boolean z4 = navigationParams.preview;
        final ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = navigationParams.menuView;
        if (baseFragment2 == null || checkTransitionAnimation() || !(((iNavigationLayoutDelegate = this.delegate) == null || !z3 || iNavigationLayoutDelegate.needPresentFragment(this, navigationParams)) && baseFragment2.onFragmentCreate())) {
            return false;
        }
        AnalyticsManager.trackEvent(new AnalyticsEvent.OpenScreen(baseFragment2.getClass().getSimpleName()));
        BaseFragment lastFragment2 = getLastFragment();
        Dialog visibleDialog = lastFragment2 != null ? lastFragment2.getVisibleDialog() : null;
        if (visibleDialog == null && (launchActivity = LaunchActivity.instance) != null && launchActivity.getVisibleDialog() != null) {
            visibleDialog = LaunchActivity.instance.getVisibleDialog();
        }
        if (lastFragment2 != null && shouldOpenFragmentOverlay(visibleDialog)) {
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            bottomSheetParams.allowNestedScroll = false;
            lastFragment2.showAsSheet(baseFragment2, bottomSheetParams);
            return true;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m105d("present fragment " + baseFragment2.getClass().getSimpleName() + " args=" + baseFragment2.getArguments());
        }
        StoryViewer.closeGlobalInstances();
        if (this.inPreviewMode && this.transitionAnimationPreviewMode) {
            Runnable runnable = this.delayedOpenAnimationRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.delayedOpenAnimationRunnable = null;
            }
            closeLastFragment(false, true);
        }
        baseFragment2.setInPreviewMode(z4);
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout2 = this.previewMenu;
        if (actionBarPopupWindowLayout2 != null) {
            if (actionBarPopupWindowLayout2.getParent() != null) {
                ((ViewGroup) this.previewMenu.getParent()).removeView(this.previewMenu);
            }
            this.previewMenu = null;
        }
        this.previewMenu = actionBarPopupWindowLayout;
        baseFragment2.setInMenuMode(actionBarPopupWindowLayout != null);
        if (this.parentActivity.getCurrentFocus() != null && baseFragment2.hideKeyboardOnShow() && !z4) {
            AndroidUtilities.hideKeyboard(this.parentActivity.getCurrentFocus());
        }
        boolean z5 = z4 || (!z2 && MessagesController.getGlobalMainSettings().getBoolean("view_animations", true));
        if (this.fragmentsStack.isEmpty()) {
            baseFragment = null;
        } else {
            List<BaseFragment> list = this.fragmentsStack;
            baseFragment = list.get(list.size() - 1);
        }
        baseFragment2.setParentLayout(this);
        baseFragment2.checkPasscode();
        View view = baseFragment2.fragmentView;
        if (view == null) {
            view = baseFragment2.createView(this.parentActivity);
        } else {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                baseFragment2.onRemoveFromParent();
                viewGroup.removeView(view);
            }
        }
        this.containerViewBack.addView(view);
        if (actionBarPopupWindowLayout != null) {
            this.containerViewBack.addView(actionBarPopupWindowLayout);
            actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
            i = actionBarPopupWindowLayout.getMeasuredHeight() + AndroidUtilities.m107dp(24);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) actionBarPopupWindowLayout.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.topMargin = (getMeasuredHeight() - i) - AndroidUtilities.m107dp(6);
            actionBarPopupWindowLayout.setLayoutParams(layoutParams);
        } else {
            i = 0;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams2.width = -1;
        layoutParams2.height = -1;
        if (z4) {
            int previewHeight = baseFragment2.getPreviewHeight();
            int i2 = Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0;
            if (previewHeight > 0 && previewHeight < getMeasuredHeight() - i2) {
                layoutParams2.height = previewHeight;
                layoutParams2.topMargin = i2 + (((getMeasuredHeight() - i2) - previewHeight) / 2);
            } else {
                int m107dp = AndroidUtilities.m107dp(actionBarPopupWindowLayout != null ? 0 : 24);
                layoutParams2.bottomMargin = m107dp;
                layoutParams2.topMargin = m107dp;
                layoutParams2.topMargin = m107dp + AndroidUtilities.statusBarHeight;
            }
            if (actionBarPopupWindowLayout != null) {
                layoutParams2.bottomMargin += i + AndroidUtilities.m107dp(8);
            }
            int m107dp2 = AndroidUtilities.m107dp(8);
            layoutParams2.leftMargin = m107dp2;
            layoutParams2.rightMargin = m107dp2;
        } else {
            layoutParams2.leftMargin = 0;
            layoutParams2.rightMargin = 0;
            layoutParams2.bottomMargin = 0;
            layoutParams2.topMargin = 0;
            if (baseFragment2.isAllowPinnedPlayer() && isPinnedPlayerVisible()) {
                layoutParams2.bottomMargin = AndroidUtilities.m107dp(PinnedPlayerView.getPlayerHeight());
            }
        }
        view.setLayoutParams(layoutParams2);
        C3704ActionBar c3704ActionBar = baseFragment2.actionBar;
        if (c3704ActionBar != null && c3704ActionBar.shouldAddToContainer()) {
            if (this.removeActionBarExtraHeight) {
                baseFragment2.actionBar.setOccupyStatusBar(false);
            }
            AndroidUtilities.removeFromParent(baseFragment2.actionBar);
            this.containerViewBack.addView(baseFragment2.actionBar);
            baseFragment2.actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
        }
        PinnedPlayerView pinnedPlayerView = baseFragment2.pinnedPlayerView;
        if (pinnedPlayerView != null) {
            ViewGroup viewGroup2 = (ViewGroup) pinnedPlayerView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(baseFragment2.pinnedPlayerView);
            }
            this.containerViewBack.addView(baseFragment2.pinnedPlayerView, LayoutHelper.createFrame(-1, PinnedPlayerView.getPlayerHeight()));
        }
        PasscodeView passcodeView = baseFragment2.passcodeView;
        if (passcodeView != null) {
            ViewGroup viewGroup3 = (ViewGroup) passcodeView.getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(baseFragment2.passcodeView);
            }
            this.containerViewBack.addView(baseFragment2.passcodeView, LayoutHelper.createFrame(-1, -1));
        }
        baseFragment2.attachStoryViewer(this.containerViewBack);
        this.fragmentsStack.add(baseFragment2);
        onFragmentStackChanged("presentFragment");
        baseFragment2.onViewCreated();
        baseFragment2.onResume();
        this.currentActionBar = baseFragment2.actionBar;
        if (!baseFragment2.hasOwnBackground && view.getBackground() == null) {
            view.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
        LayoutContainer layoutContainer = this.containerView;
        LayoutContainer layoutContainer2 = this.containerViewBack;
        this.containerView = layoutContainer2;
        this.containerViewBack = layoutContainer;
        layoutContainer2.setVisibility(0);
        setInnerTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        if (z4) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.ActionBar.ActionBarLayout.3
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view2, Outline outline) {
                        outline.setRoundRect(0, AndroidUtilities.statusBarHeight, view2.getMeasuredWidth(), view2.getMeasuredHeight(), AndroidUtilities.m107dp(6));
                    }
                });
                view.setClipToOutline(true);
                view.setElevation(AndroidUtilities.m107dp(4));
            }
            if (this.previewBackgroundDrawable == null) {
                this.previewBackgroundDrawable = new ColorDrawable(771751936);
            }
            this.previewBackgroundDrawable.setAlpha(0);
            Theme.moveUpDrawable.setAlpha(0);
        }
        bringChildToFront(this.containerView);
        if (!z5) {
            presentFragmentInternalRemoveOld(z, baseFragment);
            View view2 = this.backgroundView;
            if (view2 != null) {
                view2.setVisibility(0);
            }
        }
        if (this.themeAnimatorSet != null) {
            this.presentingFragmentDescriptions = baseFragment2.getThemeDescriptions();
        }
        if (z5 || z4) {
            if (this.useAlphaAnimations && this.fragmentsStack.size() == 1) {
                presentFragmentInternalRemoveOld(z, baseFragment);
                this.transitionAnimationStartTime = System.currentTimeMillis();
                this.transitionAnimationInProgress = true;
                this.onOpenAnimationEndRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActionBarLayout.lambda$presentFragment$0(BaseFragment.this, baseFragment2);
                    }
                };
                ArrayList arrayList = new ArrayList();
                arrayList.add(ObjectAnimator.ofFloat(this, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                View view3 = this.backgroundView;
                if (view3 != null) {
                    view3.setVisibility(0);
                    arrayList.add(ObjectAnimator.ofFloat(this.backgroundView, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                }
                if (baseFragment != null) {
                    baseFragment.onTransitionAnimationStart(false, false);
                }
                baseFragment2.onTransitionAnimationStart(true, false);
                AnimatorSet animatorSet = new AnimatorSet();
                this.currentAnimation = animatorSet;
                animatorSet.playTogether(arrayList);
                this.currentAnimation.setInterpolator(this.accelerateDecelerateInterpolator);
                this.currentAnimation.setDuration(200L);
                this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ActionBarLayout.this.onAnimationEndCheck(false);
                    }
                });
                this.currentAnimation.start();
            } else {
                this.transitionAnimationPreviewMode = z4;
                this.transitionAnimationStartTime = System.currentTimeMillis();
                this.transitionAnimationInProgress = true;
                final BaseFragment baseFragment3 = baseFragment;
                this.onOpenAnimationEndRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActionBarLayout.this.lambda$presentFragment$1(z4, actionBarPopupWindowLayout, z, baseFragment3, baseFragment2);
                    }
                };
                final boolean z6 = !baseFragment2.needDelayOpenAnimation();
                if (z6) {
                    if (baseFragment != null) {
                        baseFragment.onTransitionAnimationStart(false, false);
                    }
                    baseFragment2.onTransitionAnimationStart(true, false);
                }
                this.delayedAnimationResumed = false;
                this.oldFragment = baseFragment;
                this.newFragment = baseFragment2;
                AnimatorSet onCustomTransitionAnimation = !z4 ? baseFragment2.onCustomTransitionAnimation(true, new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActionBarLayout.this.lambda$presentFragment$2();
                    }
                }) : null;
                if (onCustomTransitionAnimation != null) {
                    if (!z4 && ((this.containerView.isKeyboardVisible || this.containerViewBack.isKeyboardVisible) && baseFragment != null)) {
                        baseFragment.saveKeyboardPositionBeforeTransition();
                    }
                    this.currentAnimation = onCustomTransitionAnimation;
                } else {
                    this.containerView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    if (z4) {
                        this.containerView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        this.containerView.setScaleX(0.9f);
                        this.containerView.setScaleY(0.9f);
                    } else {
                        this.containerView.setTranslationX(48.0f);
                        this.containerView.setScaleX(1.0f);
                        this.containerView.setScaleY(1.0f);
                    }
                    if (this.containerView.isKeyboardVisible || this.containerViewBack.isKeyboardVisible) {
                        if (baseFragment != null && !z4) {
                            baseFragment.saveKeyboardPositionBeforeTransition();
                        }
                        final BaseFragment baseFragment4 = baseFragment;
                        this.waitingForKeyboardCloseRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.5
                            @Override // java.lang.Runnable
                            public void run() {
                                if (ActionBarLayout.this.waitingForKeyboardCloseRunnable != this) {
                                    return;
                                }
                                ActionBarLayout.this.waitingForKeyboardCloseRunnable = null;
                                if (!z6) {
                                    if (ActionBarLayout.this.delayedOpenAnimationRunnable != null) {
                                        AndroidUtilities.cancelRunOnUIThread(ActionBarLayout.this.delayedOpenAnimationRunnable);
                                        if (ActionBarLayout.this.delayedAnimationResumed) {
                                            ActionBarLayout.this.delayedOpenAnimationRunnable.run();
                                            return;
                                        } else {
                                            AndroidUtilities.runOnUIThread(ActionBarLayout.this.delayedOpenAnimationRunnable, 200L);
                                            return;
                                        }
                                    }
                                    return;
                                }
                                BaseFragment baseFragment5 = baseFragment4;
                                if (baseFragment5 != null) {
                                    baseFragment5.onTransitionAnimationStart(false, false);
                                }
                                baseFragment2.onTransitionAnimationStart(true, false);
                                ActionBarLayout.this.startLayoutAnimation(true, true, z4);
                            }
                        };
                        if (baseFragment2.needDelayOpenAnimation()) {
                            this.delayedOpenAnimationRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.6
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (ActionBarLayout.this.delayedOpenAnimationRunnable != this) {
                                        return;
                                    }
                                    ActionBarLayout.this.delayedOpenAnimationRunnable = null;
                                    BaseFragment baseFragment5 = baseFragment;
                                    if (baseFragment5 != null) {
                                        baseFragment5.onTransitionAnimationStart(false, false);
                                    }
                                    baseFragment2.onTransitionAnimationStart(true, false);
                                    ActionBarLayout.this.startLayoutAnimation(true, true, z4);
                                }
                            };
                        }
                        AndroidUtilities.runOnUIThread(this.waitingForKeyboardCloseRunnable, 250L);
                    } else if (baseFragment2.needDelayOpenAnimation()) {
                        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.7
                            @Override // java.lang.Runnable
                            public void run() {
                                if (ActionBarLayout.this.delayedOpenAnimationRunnable != this) {
                                    return;
                                }
                                ActionBarLayout.this.delayedOpenAnimationRunnable = null;
                                baseFragment2.onTransitionAnimationStart(true, false);
                                ActionBarLayout.this.startLayoutAnimation(true, true, z4);
                            }
                        };
                        this.delayedOpenAnimationRunnable = runnable2;
                        AndroidUtilities.runOnUIThread(runnable2, 200L);
                    } else {
                        startLayoutAnimation(true, true, z4);
                    }
                }
            }
            return true;
        }
        View view4 = this.backgroundView;
        if (view4 != null) {
            view4.setAlpha(1.0f);
            this.backgroundView.setVisibility(0);
        }
        if (baseFragment != null) {
            baseFragment.onTransitionAnimationStart(false, false);
            baseFragment.onTransitionAnimationEnd(false, false);
        }
        baseFragment2.onTransitionAnimationStart(true, false);
        baseFragment2.onTransitionAnimationEnd(true, false);
        baseFragment2.onBecomeFullyVisible();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$presentFragment$0(BaseFragment baseFragment, BaseFragment baseFragment2) {
        if (baseFragment != null) {
            baseFragment.onTransitionAnimationEnd(false, false);
        }
        baseFragment2.onTransitionAnimationEnd(true, false);
        baseFragment2.onBecomeFullyVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$presentFragment$1(boolean z, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, boolean z2, BaseFragment baseFragment, BaseFragment baseFragment2) {
        if (z) {
            this.inPreviewMode = true;
            this.previewMenu = actionBarPopupWindowLayout;
            this.transitionAnimationPreviewMode = false;
            this.containerView.setScaleX(1.0f);
            this.containerView.setScaleY(1.0f);
        } else {
            presentFragmentInternalRemoveOld(z2, baseFragment);
            this.containerView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        if (baseFragment != null) {
            baseFragment.onTransitionAnimationEnd(false, false);
        }
        baseFragment2.onTransitionAnimationEnd(true, false);
        baseFragment2.onBecomeFullyVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$presentFragment$2() {
        onAnimationEndCheck(false);
    }

    private boolean shouldOpenFragmentOverlay(Dialog dialog) {
        return dialog != null && dialog.isShowing() && ((dialog instanceof ChatAttachAlert) || (dialog instanceof BotWebViewSheet));
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public List<BaseFragment> getFragmentStack() {
        return this.fragmentsStack;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setFragmentStackChangedListener(Runnable runnable) {
        this.onFragmentStackChangedListener = runnable;
    }

    private void onFragmentStackChanged(String str) {
        Runnable runnable = this.onFragmentStackChangedListener;
        if (runnable != null) {
            runnable.run();
        }
        ImageLoader.getInstance().onFragmentStackChanged();
        checkBlackScreen(str);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean addFragmentToStack(BaseFragment baseFragment, int i) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        ViewGroup viewGroup4;
        INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
        if ((iNavigationLayoutDelegate == null || iNavigationLayoutDelegate.needAddFragmentToStack(baseFragment, this)) && baseFragment.onFragmentCreate() && !this.fragmentsStack.contains(baseFragment)) {
            baseFragment.setParentLayout(this);
            if (i == -1 || i == -2) {
                if (!this.fragmentsStack.isEmpty()) {
                    List<BaseFragment> list = this.fragmentsStack;
                    BaseFragment baseFragment2 = list.get(list.size() - 1);
                    baseFragment2.onPause();
                    C3704ActionBar c3704ActionBar = baseFragment2.actionBar;
                    if (c3704ActionBar != null && c3704ActionBar.shouldAddToContainer() && (viewGroup4 = (ViewGroup) baseFragment2.actionBar.getParent()) != null) {
                        viewGroup4.removeView(baseFragment2.actionBar);
                    }
                    PinnedPlayerView pinnedPlayerView = baseFragment2.pinnedPlayerView;
                    if (pinnedPlayerView != null && (viewGroup3 = (ViewGroup) pinnedPlayerView.getParent()) != null) {
                        viewGroup3.removeView(baseFragment2.pinnedPlayerView);
                    }
                    PasscodeView passcodeView = baseFragment2.passcodeView;
                    if (passcodeView != null && (viewGroup2 = (ViewGroup) passcodeView.getParent()) != null) {
                        viewGroup2.removeView(baseFragment2.passcodeView);
                    }
                    View view = baseFragment2.fragmentView;
                    if (view != null && (viewGroup = (ViewGroup) view.getParent()) != null) {
                        baseFragment2.onRemoveFromParent();
                        viewGroup.removeView(baseFragment2.fragmentView);
                    }
                    baseFragment2.detachStoryViewer();
                }
                this.fragmentsStack.add(baseFragment);
                if (i != -2) {
                    attachView(baseFragment);
                    baseFragment.onResume();
                    baseFragment.onTransitionAnimationEnd(false, true);
                    baseFragment.onTransitionAnimationEnd(true, true);
                    baseFragment.onBecomeFullyVisible();
                }
                onFragmentStackChanged("addFragmentToStack " + i);
            } else {
                this.fragmentsStack.add(i, baseFragment);
                onFragmentStackChanged("addFragmentToStack");
            }
            return true;
        }
        return false;
    }

    private void attachView(BaseFragment baseFragment) {
        View view = baseFragment.fragmentView;
        if (view == null) {
            view = baseFragment.createView(this.parentActivity);
        } else {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                baseFragment.onRemoveFromParent();
                viewGroup.removeView(view);
            }
        }
        if (!baseFragment.hasOwnBackground && view.getBackground() == null) {
            view.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
        this.containerView.addView(view, LayoutHelper.createFrame(-1, -1));
        C3704ActionBar c3704ActionBar = baseFragment.actionBar;
        if (c3704ActionBar != null && c3704ActionBar.shouldAddToContainer()) {
            if (this.removeActionBarExtraHeight) {
                baseFragment.actionBar.setOccupyStatusBar(false);
            }
            ViewGroup viewGroup2 = (ViewGroup) baseFragment.actionBar.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(baseFragment.actionBar);
            }
            this.containerView.addView(baseFragment.actionBar);
            baseFragment.actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
        }
        baseFragment.attachStoryViewer(this.containerView);
    }

    private void closeLastFragmentInternalRemoveOld(BaseFragment baseFragment) {
        baseFragment.finishing = true;
        baseFragment.onPause();
        baseFragment.onFragmentDestroy();
        baseFragment.setParentLayout(null);
        this.fragmentsStack.remove(baseFragment);
        this.containerViewBack.setVisibility(4);
        this.containerViewBack.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        bringChildToFront(this.containerView);
        onFragmentStackChanged("closeLastFragmentInternalRemoveOld");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void movePreviewFragment(float r4) {
        /*
            r3 = this;
            boolean r0 = r3.inPreviewMode
            if (r0 == 0) goto L37
            org.telegram.ui.ActionBar.ActionBarPopupWindow$ActionBarPopupWindowLayout r0 = r3.previewMenu
            if (r0 != 0) goto L37
            boolean r0 = r3.transitionAnimationPreviewMode
            if (r0 == 0) goto Ld
            goto L37
        Ld:
            org.telegram.ui.ActionBar.ActionBarLayout$LayoutContainer r0 = r3.containerView
            float r0 = r0.getTranslationY()
            float r4 = -r4
            r1 = 0
            int r2 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r2 <= 0) goto L1b
        L19:
            r4 = r1
            goto L2b
        L1b:
            r2 = 60
            int r2 = org.telegram.messenger.AndroidUtilities.m107dp(r2)
            int r2 = -r2
            float r2 = (float) r2
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 >= 0) goto L2b
            r3.expandPreviewFragment()
            goto L19
        L2b:
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 == 0) goto L37
            org.telegram.ui.ActionBar.ActionBarLayout$LayoutContainer r0 = r3.containerView
            r0.setTranslationY(r4)
            r3.invalidate()
        L37:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ActionBar.ActionBarLayout.movePreviewFragment(float):void");
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void expandPreviewFragment() {
        boolean z = true;
        this.previewOpenAnimationInProgress = true;
        this.inPreviewMode = false;
        List<BaseFragment> list = this.fragmentsStack;
        BaseFragment baseFragment = list.get(list.size() - 2);
        List<BaseFragment> list2 = this.fragmentsStack;
        final BaseFragment baseFragment2 = list2.get(list2.size() - 1);
        if (Build.VERSION.SDK_INT >= 21) {
            baseFragment2.fragmentView.setOutlineProvider(null);
            baseFragment2.fragmentView.setClipToOutline(false);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) baseFragment2.fragmentView.getLayoutParams();
        layoutParams.leftMargin = 0;
        layoutParams.rightMargin = 0;
        layoutParams.bottomMargin = 0;
        layoutParams.topMargin = 0;
        if (baseFragment2.isAllowPinnedPlayer() && isPinnedPlayerVisible()) {
            layoutParams.bottomMargin = AndroidUtilities.m107dp(PinnedPlayerView.getPlayerHeight());
        }
        layoutParams.height = -1;
        baseFragment2.fragmentView.setLayoutParams(layoutParams);
        presentFragmentInternalRemoveOld(false, baseFragment);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(baseFragment2.fragmentView, View.SCALE_X, 1.0f, 1.05f, 1.0f), ObjectAnimator.ofFloat(baseFragment2.fragmentView, View.SCALE_Y, 1.0f, 1.05f, 1.0f));
        animatorSet.setDuration(200L);
        animatorSet.setInterpolator(new CubicBezierInterpolator(0.42d, 0.0d, 0.58d, 1.0d));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ActionBarLayout.this.previewOpenAnimationInProgress = false;
                baseFragment2.onPreviewOpenAnimationEnd();
            }
        });
        animatorSet.start();
        performHapticFeedback(3);
        baseFragment2.setInPreviewMode(false);
        baseFragment2.setInMenuMode(false);
        try {
            Window window = this.parentActivity.getWindow();
            if (Theme.getColor(Theme.key_actionBarDefault) != -1 && (!baseFragment2.hasForceLightStatusBar() || Theme.getCurrentTheme().isDark())) {
                z = false;
            }
            AndroidUtilities.setLightStatusBar(window, z, baseFragment2.hasForceLightStatusBar());
        } catch (Exception unused) {
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void finishPreviewFragment() {
        if (this.inPreviewMode || this.transitionAnimationPreviewMode) {
            Runnable runnable = this.delayedOpenAnimationRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.delayedOpenAnimationRunnable = null;
            }
            closeLastFragment(true);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void closeLastFragment(boolean z) {
        closeLastFragment(z, false);
    }

    public void closeLastFragment(boolean z, boolean z2) {
        final BaseFragment baseFragment;
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment == null || !lastFragment.closeLastFragment()) {
            INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
            if ((iNavigationLayoutDelegate != null && !iNavigationLayoutDelegate.needCloseLastFragment(this)) || checkTransitionAnimation() || this.fragmentsStack.isEmpty()) {
                return;
            }
            if (this.parentActivity.getCurrentFocus() != null) {
                AndroidUtilities.hideKeyboard(this.parentActivity.getCurrentFocus());
            }
            setInnerTranslationX(BitmapDescriptorFactory.HUE_RED);
            boolean z3 = !z2 && (this.inPreviewMode || this.transitionAnimationPreviewMode || (z && MessagesController.getGlobalMainSettings().getBoolean("view_animations", true)));
            List<BaseFragment> list = this.fragmentsStack;
            final BaseFragment baseFragment2 = list.get(list.size() - 1);
            AnimatorSet animatorSet = null;
            if (this.fragmentsStack.size() > 1) {
                List<BaseFragment> list2 = this.fragmentsStack;
                baseFragment = list2.get(list2.size() - 2);
            } else {
                baseFragment = null;
            }
            if (baseFragment != null) {
                AndroidUtilities.setLightStatusBar(this.parentActivity.getWindow(), Theme.getColor(Theme.key_actionBarDefault) == -1 || (baseFragment.hasForceLightStatusBar() && !Theme.getCurrentTheme().isDark()), baseFragment.hasForceLightStatusBar());
                LayoutContainer layoutContainer = this.containerView;
                this.containerView = this.containerViewBack;
                this.containerViewBack = layoutContainer;
                baseFragment.setParentLayout(this);
                View view = baseFragment.fragmentView;
                if (view == null) {
                    view = baseFragment.createView(this.parentActivity);
                }
                if (!this.inPreviewMode) {
                    this.containerView.setVisibility(0);
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        baseFragment.onRemoveFromParent();
                        try {
                            viewGroup.removeView(view);
                        } catch (Exception e) {
                            FileLog.m102e(e);
                        }
                    }
                    this.containerView.addView(view);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                    layoutParams.leftMargin = 0;
                    layoutParams.rightMargin = 0;
                    layoutParams.bottomMargin = 0;
                    layoutParams.topMargin = 0;
                    if (baseFragment.isAllowPinnedPlayer() && isPinnedPlayerVisible()) {
                        layoutParams.bottomMargin = AndroidUtilities.m107dp(PinnedPlayerView.getPlayerHeight());
                    }
                    view.setLayoutParams(layoutParams);
                    C3704ActionBar c3704ActionBar = baseFragment.actionBar;
                    if (c3704ActionBar != null && c3704ActionBar.shouldAddToContainer()) {
                        if (this.removeActionBarExtraHeight) {
                            baseFragment.actionBar.setOccupyStatusBar(false);
                        }
                        AndroidUtilities.removeFromParent(baseFragment.actionBar);
                        this.containerView.addView(baseFragment.actionBar);
                        baseFragment.actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
                    }
                    PinnedPlayerView pinnedPlayerView = baseFragment.pinnedPlayerView;
                    if (pinnedPlayerView != null) {
                        ViewGroup viewGroup2 = (ViewGroup) pinnedPlayerView.getParent();
                        if (viewGroup2 != null) {
                            viewGroup2.removeView(baseFragment.pinnedPlayerView);
                        }
                        this.containerView.addView(baseFragment.pinnedPlayerView, LayoutHelper.createFrame(-1, PinnedPlayerView.getPlayerHeight()));
                    }
                    PasscodeView passcodeView = baseFragment.passcodeView;
                    if (passcodeView != null) {
                        ViewGroup viewGroup3 = (ViewGroup) passcodeView.getParent();
                        if (viewGroup3 != null) {
                            viewGroup3.removeView(baseFragment.passcodeView);
                        }
                        this.containerView.addView(baseFragment.passcodeView, LayoutHelper.createFrame(-1, -1));
                    }
                    baseFragment.attachStoryViewer(this.containerView);
                }
                this.newFragment = baseFragment;
                this.oldFragment = baseFragment2;
                baseFragment.onTransitionAnimationStart(true, true);
                baseFragment2.onTransitionAnimationStart(false, true);
                baseFragment.onResume();
                if (this.themeAnimatorSet != null) {
                    this.presentingFragmentDescriptions = baseFragment.getThemeDescriptions();
                }
                this.currentActionBar = baseFragment.actionBar;
                if (!baseFragment.hasOwnBackground && view.getBackground() == null) {
                    view.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                }
                if (z3) {
                    this.transitionAnimationStartTime = System.currentTimeMillis();
                    this.transitionAnimationInProgress = true;
                    baseFragment2.setRemovingFromStack(true);
                    this.onCloseAnimationEndRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            ActionBarLayout.this.lambda$closeLastFragment$3(baseFragment2, baseFragment);
                        }
                    };
                    if (!this.inPreviewMode && !this.transitionAnimationPreviewMode) {
                        animatorSet = baseFragment2.onCustomTransitionAnimation(false, new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                ActionBarLayout.this.lambda$closeLastFragment$4();
                            }
                        });
                    }
                    if (animatorSet == null) {
                        if (!this.inPreviewMode && (this.containerView.isKeyboardVisible || this.containerViewBack.isKeyboardVisible)) {
                            Runnable runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.9
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (ActionBarLayout.this.waitingForKeyboardCloseRunnable != this) {
                                        return;
                                    }
                                    ActionBarLayout.this.waitingForKeyboardCloseRunnable = null;
                                    ActionBarLayout.this.startLayoutAnimation(false, true, false);
                                }
                            };
                            this.waitingForKeyboardCloseRunnable = runnable;
                            AndroidUtilities.runOnUIThread(runnable, 200L);
                        } else {
                            startLayoutAnimation(false, true, this.inPreviewMode || this.transitionAnimationPreviewMode);
                        }
                    } else {
                        this.currentAnimation = animatorSet;
                        if (Bulletin.getVisibleBulletin() != null && Bulletin.getVisibleBulletin().isShowing()) {
                            Bulletin.getVisibleBulletin().hide();
                        }
                    }
                    onFragmentStackChanged("closeLastFragment");
                } else {
                    closeLastFragmentInternalRemoveOld(baseFragment2);
                    baseFragment2.onTransitionAnimationEnd(false, true);
                    baseFragment.onTransitionAnimationEnd(true, true);
                    baseFragment.onBecomeFullyVisible();
                }
            } else if (this.useAlphaAnimations && !z2) {
                this.transitionAnimationStartTime = System.currentTimeMillis();
                this.transitionAnimationInProgress = true;
                this.onCloseAnimationEndRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActionBarLayout.this.lambda$closeLastFragment$5(baseFragment2);
                    }
                };
                ArrayList arrayList = new ArrayList();
                arrayList.add(ObjectAnimator.ofFloat(this, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                View view2 = this.backgroundView;
                if (view2 != null) {
                    arrayList.add(ObjectAnimator.ofFloat(view2, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                }
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.currentAnimation = animatorSet2;
                animatorSet2.playTogether(arrayList);
                this.currentAnimation.setInterpolator(this.accelerateDecelerateInterpolator);
                this.currentAnimation.setDuration(200L);
                this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.10
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        ActionBarLayout.this.transitionAnimationStartTime = System.currentTimeMillis();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ActionBarLayout.this.onAnimationEndCheck(false);
                    }
                });
                this.currentAnimation.start();
            } else {
                removeFragmentFromStackInternal(baseFragment2, false);
                setVisibility(8);
                View view3 = this.backgroundView;
                if (view3 != null) {
                    view3.setVisibility(8);
                }
            }
            baseFragment2.onFragmentClosed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeLastFragment$3(BaseFragment baseFragment, BaseFragment baseFragment2) {
        ViewGroup viewGroup;
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.previewMenu;
        if (actionBarPopupWindowLayout != null && (viewGroup = (ViewGroup) actionBarPopupWindowLayout.getParent()) != null) {
            viewGroup.removeView(this.previewMenu);
        }
        if (this.inPreviewMode || this.transitionAnimationPreviewMode) {
            this.containerViewBack.setScaleX(1.0f);
            this.containerViewBack.setScaleY(1.0f);
            this.inPreviewMode = false;
            this.previewMenu = null;
            this.transitionAnimationPreviewMode = false;
        } else {
            this.containerViewBack.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        closeLastFragmentInternalRemoveOld(baseFragment);
        baseFragment.setRemovingFromStack(false);
        baseFragment.onTransitionAnimationEnd(false, true);
        baseFragment2.onTransitionAnimationEnd(true, true);
        baseFragment2.onBecomeFullyVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeLastFragment$4() {
        onAnimationEndCheck(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeLastFragment$5(BaseFragment baseFragment) {
        removeFragmentFromStackInternal(baseFragment, false);
        setVisibility(8);
        View view = this.backgroundView;
        if (view != null) {
            view.setVisibility(8);
        }
        DrawerLayoutContainer drawerLayoutContainer = this.drawerLayoutContainer;
        if (drawerLayoutContainer != null) {
            drawerLayoutContainer.setAllowOpenDrawer(true, false);
        }
    }

    public void bringToFront(int i) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        ViewGroup viewGroup4;
        if (this.fragmentsStack.isEmpty()) {
            return;
        }
        if (this.fragmentsStack.isEmpty() || this.fragmentsStack.size() - 1 != i || this.fragmentsStack.get(i).fragmentView == null) {
            for (int i2 = 0; i2 < i; i2++) {
                BaseFragment baseFragment = this.fragmentsStack.get(i2);
                C3704ActionBar c3704ActionBar = baseFragment.actionBar;
                if (c3704ActionBar != null && c3704ActionBar.shouldAddToContainer() && (viewGroup4 = (ViewGroup) baseFragment.actionBar.getParent()) != null) {
                    viewGroup4.removeView(baseFragment.actionBar);
                }
                PinnedPlayerView pinnedPlayerView = baseFragment.pinnedPlayerView;
                if (pinnedPlayerView != null && (viewGroup3 = (ViewGroup) pinnedPlayerView.getParent()) != null) {
                    viewGroup3.removeView(baseFragment.pinnedPlayerView);
                }
                PasscodeView passcodeView = baseFragment.passcodeView;
                if (passcodeView != null && (viewGroup2 = (ViewGroup) passcodeView.getParent()) != null) {
                    viewGroup2.removeView(baseFragment.passcodeView);
                }
                View view = baseFragment.fragmentView;
                if (view != null && (viewGroup = (ViewGroup) view.getParent()) != null) {
                    baseFragment.onPause();
                    baseFragment.onRemoveFromParent();
                    viewGroup.removeView(baseFragment.fragmentView);
                }
            }
            BaseFragment baseFragment2 = this.fragmentsStack.get(i);
            baseFragment2.setParentLayout(this);
            View view2 = baseFragment2.fragmentView;
            if (view2 == null) {
                view2 = baseFragment2.createView(this.parentActivity);
            } else {
                ViewGroup viewGroup5 = (ViewGroup) view2.getParent();
                if (viewGroup5 != null) {
                    baseFragment2.onRemoveFromParent();
                    viewGroup5.removeView(view2);
                }
            }
            this.containerView.addView(view2, LayoutHelper.createFrame(-1, -1));
            C3704ActionBar c3704ActionBar2 = baseFragment2.actionBar;
            if (c3704ActionBar2 != null && c3704ActionBar2.shouldAddToContainer()) {
                if (this.removeActionBarExtraHeight) {
                    baseFragment2.actionBar.setOccupyStatusBar(false);
                }
                AndroidUtilities.removeFromParent(baseFragment2.actionBar);
                this.containerView.addView(baseFragment2.actionBar);
                baseFragment2.actionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, this.overlayAction);
            }
            PinnedPlayerView pinnedPlayerView2 = baseFragment2.pinnedPlayerView;
            if (pinnedPlayerView2 != null) {
                ViewGroup viewGroup6 = (ViewGroup) pinnedPlayerView2.getParent();
                if (viewGroup6 != null) {
                    viewGroup6.removeView(baseFragment2.pinnedPlayerView);
                }
                this.containerView.addView(baseFragment2.pinnedPlayerView, LayoutHelper.createFrame(-1, PinnedPlayerView.getPlayerHeight()));
            }
            baseFragment2.attachStoryViewer(this.containerView);
            baseFragment2.onResume();
            this.currentActionBar = baseFragment2.actionBar;
            if (baseFragment2.hasOwnBackground || view2.getBackground() != null) {
                return;
            }
            view2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void showLastFragment() {
        if (this.fragmentsStack.isEmpty()) {
            return;
        }
        bringToFront(this.fragmentsStack.size() - 1);
    }

    private void removeFragmentFromStackInternal(BaseFragment baseFragment, boolean z) {
        if (this.fragmentsStack.contains(baseFragment)) {
            if (z) {
                List<BaseFragment> list = this.fragmentsStack;
                if (list.get(list.size() - 1) == baseFragment) {
                    baseFragment.finishFragment();
                    return;
                }
            }
            List<BaseFragment> list2 = this.fragmentsStack;
            if (list2.get(list2.size() - 1) == baseFragment && this.fragmentsStack.size() > 1) {
                baseFragment.finishFragment(false);
                return;
            }
            baseFragment.onPause();
            baseFragment.onFragmentDestroy();
            baseFragment.setParentLayout(null);
            this.fragmentsStack.remove(baseFragment);
            onFragmentStackChanged("removeFragmentFromStackInternal " + z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
        onOpenAnimationEnd();
        onCloseAnimationEnd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0.get(r0.size() - 1) != r4) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
        if (r0.get(r0.size() - 2) == r4) goto L5;
     */
    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void removeFragmentFromStack(org.telegram.p043ui.ActionBar.BaseFragment r4, boolean r5) {
        /*
            r3 = this;
            java.util.List<org.telegram.ui.ActionBar.BaseFragment> r0 = r3.fragmentsStack
            int r0 = r0.size()
            r1 = 1
            if (r0 <= 0) goto L16
            java.util.List<org.telegram.ui.ActionBar.BaseFragment> r0 = r3.fragmentsStack
            int r2 = r0.size()
            int r2 = r2 - r1
            java.lang.Object r0 = r0.get(r2)
            if (r0 == r4) goto L2c
        L16:
            java.util.List<org.telegram.ui.ActionBar.BaseFragment> r0 = r3.fragmentsStack
            int r0 = r0.size()
            if (r0 <= r1) goto L32
            java.util.List<org.telegram.ui.ActionBar.BaseFragment> r0 = r3.fragmentsStack
            int r2 = r0.size()
            int r2 = r2 + (-2)
            java.lang.Object r0 = r0.get(r2)
            if (r0 != r4) goto L32
        L2c:
            r3.onOpenAnimationEnd()
            r3.onCloseAnimationEnd()
        L32:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "removeFragmentFromStack "
            r0.append(r2)
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            r3.checkBlackScreen(r0)
            boolean r0 = r3.useAlphaAnimations
            if (r0 == 0) goto L5c
            java.util.List<org.telegram.ui.ActionBar.BaseFragment> r0 = r3.fragmentsStack
            int r0 = r0.size()
            if (r0 != r1) goto L5c
            boolean r0 = org.telegram.messenger.AndroidUtilities.isTablet()
            if (r0 == 0) goto L5c
            r3.closeLastFragment(r1)
            goto L80
        L5c:
            org.telegram.ui.ActionBar.INavigationLayout$INavigationLayoutDelegate r0 = r3.delegate
            if (r0 == 0) goto L73
            java.util.List<org.telegram.ui.ActionBar.BaseFragment> r0 = r3.fragmentsStack
            int r0 = r0.size()
            if (r0 != r1) goto L73
            boolean r0 = org.telegram.messenger.AndroidUtilities.isTablet()
            if (r0 == 0) goto L73
            org.telegram.ui.ActionBar.INavigationLayout$INavigationLayoutDelegate r0 = r3.delegate
            r0.needCloseLastFragment(r3)
        L73:
            boolean r0 = r4.allowFinishFragmentInsteadOfRemoveFromStack()
            if (r0 == 0) goto L7c
            if (r5 != 0) goto L7c
            goto L7d
        L7c:
            r1 = 0
        L7d:
            r3.removeFragmentFromStackInternal(r4, r1)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ActionBar.ActionBarLayout.removeFragmentFromStack(org.telegram.ui.ActionBar.BaseFragment, boolean):void");
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void removeAllFragments() {
        while (this.fragmentsStack.size() > 0) {
            removeFragmentFromStackInternal(this.fragmentsStack.get(0), false);
        }
    }

    @Keep
    public void setThemeAnimationValue(float f) {
        this.themeAnimationValue = f;
        int size = this.themeAnimatorDescriptions.size();
        for (int i = 0; i < size; i++) {
            ArrayList<ThemeDescription> arrayList = this.themeAnimatorDescriptions.get(i);
            int[] iArr = this.animateStartColors.get(i);
            int[] iArr2 = this.animateEndColors.get(i);
            int size2 = arrayList.size();
            int i2 = 0;
            while (i2 < size2) {
                int red = Color.red(iArr2[i2]);
                int green = Color.green(iArr2[i2]);
                int blue = Color.blue(iArr2[i2]);
                int alpha = Color.alpha(iArr2[i2]);
                int red2 = Color.red(iArr[i2]);
                int green2 = Color.green(iArr[i2]);
                int blue2 = Color.blue(iArr[i2]);
                int i3 = size;
                int alpha2 = Color.alpha(iArr[i2]);
                int argb = Color.argb(Math.min(255, (int) (alpha2 + ((alpha - alpha2) * f))), Math.min(255, (int) (red2 + ((red - red2) * f))), Math.min(255, (int) (green2 + ((green - green2) * f))), Math.min(255, (int) (blue2 + ((blue - blue2) * f))));
                ThemeDescription themeDescription = arrayList.get(i2);
                themeDescription.setAnimatedColor(argb);
                themeDescription.setColor(argb, false, false);
                i2++;
                iArr = iArr;
                size = i3;
            }
        }
        int size3 = this.themeAnimatorDelegate.size();
        for (int i4 = 0; i4 < size3; i4++) {
            ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = this.themeAnimatorDelegate.get(i4);
            if (themeDescriptionDelegate != null) {
                themeDescriptionDelegate.didSetColor();
                themeDescriptionDelegate.onAnimationProgress(f);
            }
        }
        ArrayList<ThemeDescription> arrayList2 = this.presentingFragmentDescriptions;
        if (arrayList2 != null) {
            int size4 = arrayList2.size();
            for (int i5 = 0; i5 < size4; i5++) {
                ThemeDescription themeDescription2 = this.presentingFragmentDescriptions.get(i5);
                themeDescription2.setColor(Theme.getColor(themeDescription2.getCurrentKey(), themeDescription2.resourcesProvider), false, false);
            }
        }
        INavigationLayout.ThemeAnimationSettings.onAnimationProgress onanimationprogress = this.animationProgressListener;
        if (onanimationprogress != null) {
            onanimationprogress.setProgress(f);
        }
        INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
        if (iNavigationLayoutDelegate != null) {
            iNavigationLayoutDelegate.onThemeProgress(f);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    @Keep
    public float getThemeAnimationValue() {
        return this.themeAnimationValue;
    }

    private void addStartDescriptions(ArrayList<ThemeDescription> arrayList) {
        if (arrayList == null) {
            return;
        }
        this.themeAnimatorDescriptions.add(arrayList);
        int[] iArr = new int[arrayList.size()];
        this.animateStartColors.add(iArr);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ThemeDescription themeDescription = arrayList.get(i);
            iArr[i] = themeDescription.getSetColor();
            ThemeDescription.ThemeDescriptionDelegate delegateDisabled = themeDescription.setDelegateDisabled();
            if (delegateDisabled != null && !this.themeAnimatorDelegate.contains(delegateDisabled)) {
                this.themeAnimatorDelegate.add(delegateDisabled);
            }
        }
    }

    private void addEndDescriptions(ArrayList<ThemeDescription> arrayList) {
        if (arrayList == null) {
            return;
        }
        int[] iArr = new int[arrayList.size()];
        this.animateEndColors.add(iArr);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            iArr[i] = arrayList.get(i).getSetColor();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void animateThemedValues(final INavigationLayout.ThemeAnimationSettings themeAnimationSettings, final Runnable runnable) {
        Theme.ThemeInfo themeInfo;
        if (this.transitionAnimationInProgress || this.startedTracking) {
            this.animateThemeAfterAnimation = true;
            this.animateSetThemeAfterAnimation = themeAnimationSettings.theme;
            this.animateSetThemeNightAfterAnimation = themeAnimationSettings.nightTheme;
            this.animateSetThemeAccentIdAfterAnimation = themeAnimationSettings.accentId;
            this.animateSetThemeAfterAnimationApply = themeAnimationSettings.applyTrulyTheme;
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        AnimatorSet animatorSet = this.themeAnimatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.themeAnimatorSet = null;
        }
        final int size = themeAnimationSettings.onlyTopFragment ? 1 : this.fragmentsStack.size();
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ActionBarLayout.this.lambda$animateThemedValues$6(size, themeAnimationSettings, runnable);
            }
        };
        if (size >= 1 && themeAnimationSettings.applyTheme && themeAnimationSettings.applyTrulyTheme) {
            int i = themeAnimationSettings.accentId;
            if (i != -1 && (themeInfo = themeAnimationSettings.theme) != null) {
                themeInfo.setCurrentAccentId(i);
                Theme.saveThemeAccents(themeAnimationSettings.theme, true, false, true, false);
            }
            if (runnable == null) {
                Theme.applyTheme(themeAnimationSettings.theme, themeAnimationSettings.nightTheme);
                runnable2.run();
                return;
            }
            Theme.applyThemeInBackground(themeAnimationSettings.theme, themeAnimationSettings.nightTheme, new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarLayout$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.runOnUIThread(runnable2);
                }
            });
            return;
        }
        runnable2.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateThemedValues$6(int i, final INavigationLayout.ThemeAnimationSettings themeAnimationSettings, Runnable runnable) {
        BaseFragment baseFragment;
        Runnable runnable2;
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == 0) {
                baseFragment = getLastFragment();
            } else {
                if ((this.inPreviewMode || this.transitionAnimationPreviewMode) && this.fragmentsStack.size() > 1) {
                    List<BaseFragment> list = this.fragmentsStack;
                    baseFragment = list.get(list.size() - 2);
                }
            }
            if (baseFragment != null) {
                if (themeAnimationSettings.resourcesProvider != null) {
                    if (this.messageDrawableOutStart == null) {
                        Theme.MessageDrawable messageDrawable = new Theme.MessageDrawable(0, true, false, this.startColorsProvider);
                        this.messageDrawableOutStart = messageDrawable;
                        messageDrawable.isCrossfadeBackground = true;
                        Theme.MessageDrawable messageDrawable2 = new Theme.MessageDrawable(1, true, false, this.startColorsProvider);
                        this.messageDrawableOutMediaStart = messageDrawable2;
                        messageDrawable2.isCrossfadeBackground = true;
                    }
                    this.startColorsProvider.saveColors(themeAnimationSettings.resourcesProvider);
                }
                ArrayList<ThemeDescription> themeDescriptions = baseFragment.getThemeDescriptions();
                addStartDescriptions(themeDescriptions);
                Dialog dialog = baseFragment.visibleDialog;
                if (dialog instanceof BottomSheet) {
                    addStartDescriptions(((BottomSheet) dialog).getThemeDescriptions());
                } else if (dialog instanceof AlertDialog) {
                    addStartDescriptions(((AlertDialog) dialog).getThemeDescriptions());
                }
                if (i2 == 0 && (runnable2 = themeAnimationSettings.afterStartDescriptionsAddedRunnable) != null) {
                    runnable2.run();
                }
                addEndDescriptions(themeDescriptions);
                Dialog dialog2 = baseFragment.visibleDialog;
                if (dialog2 instanceof BottomSheet) {
                    addEndDescriptions(((BottomSheet) dialog2).getThemeDescriptions());
                } else if (dialog2 instanceof AlertDialog) {
                    addEndDescriptions(((AlertDialog) dialog2).getThemeDescriptions());
                }
                z = true;
            }
        }
        if (z) {
            if (!themeAnimationSettings.onlyTopFragment) {
                int size = this.fragmentsStack.size() - ((this.inPreviewMode || this.transitionAnimationPreviewMode) ? 2 : 1);
                for (int i3 = 0; i3 < size; i3++) {
                    BaseFragment baseFragment2 = this.fragmentsStack.get(i3);
                    baseFragment2.clearViews();
                    baseFragment2.setParentLayout(this);
                }
            }
            if (themeAnimationSettings.instant) {
                setThemeAnimationValue(1.0f);
                this.themeAnimatorDescriptions.clear();
                this.animateStartColors.clear();
                this.animateEndColors.clear();
                this.themeAnimatorDelegate.clear();
                this.presentingFragmentDescriptions = null;
                this.animationProgressListener = null;
                Runnable runnable3 = themeAnimationSettings.afterAnimationRunnable;
                if (runnable3 != null) {
                    runnable3.run();
                }
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
            Theme.setAnimatingColor(true);
            setThemeAnimationValue(BitmapDescriptorFactory.HUE_RED);
            Runnable runnable4 = themeAnimationSettings.beforeAnimationRunnable;
            if (runnable4 != null) {
                runnable4.run();
            }
            INavigationLayout.ThemeAnimationSettings.onAnimationProgress onanimationprogress = themeAnimationSettings.animationProgress;
            this.animationProgressListener = onanimationprogress;
            if (onanimationprogress != null) {
                onanimationprogress.setProgress(BitmapDescriptorFactory.HUE_RED);
            }
            this.notificationsLocker.lock();
            AnimatorSet animatorSet = new AnimatorSet();
            this.themeAnimatorSet = animatorSet;
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarLayout.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ActionBarLayout.this.notificationsLocker.unlock();
                    if (animator.equals(ActionBarLayout.this.themeAnimatorSet)) {
                        ActionBarLayout.this.themeAnimatorDescriptions.clear();
                        ActionBarLayout.this.animateStartColors.clear();
                        ActionBarLayout.this.animateEndColors.clear();
                        ActionBarLayout.this.themeAnimatorDelegate.clear();
                        Theme.setAnimatingColor(false);
                        ActionBarLayout.this.presentingFragmentDescriptions = null;
                        ActionBarLayout actionBarLayout = ActionBarLayout.this;
                        actionBarLayout.animationProgressListener = null;
                        actionBarLayout.themeAnimatorSet = null;
                        Runnable runnable5 = themeAnimationSettings.afterAnimationRunnable;
                        if (runnable5 != null) {
                            runnable5.run();
                        }
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (animator.equals(ActionBarLayout.this.themeAnimatorSet)) {
                        ActionBarLayout.this.themeAnimatorDescriptions.clear();
                        ActionBarLayout.this.animateStartColors.clear();
                        ActionBarLayout.this.animateEndColors.clear();
                        ActionBarLayout.this.themeAnimatorDelegate.clear();
                        Theme.setAnimatingColor(false);
                        ActionBarLayout.this.presentingFragmentDescriptions = null;
                        ActionBarLayout actionBarLayout = ActionBarLayout.this;
                        actionBarLayout.animationProgressListener = null;
                        actionBarLayout.themeAnimatorSet = null;
                        Runnable runnable5 = themeAnimationSettings.afterAnimationRunnable;
                        if (runnable5 != null) {
                            runnable5.run();
                        }
                    }
                }
            });
            this.themeAnimatorSet.playTogether(ObjectAnimator.ofFloat(this, "themeAnimationValue", BitmapDescriptorFactory.HUE_RED, 1.0f));
            this.themeAnimatorSet.setDuration(themeAnimationSettings.duration);
            this.themeAnimatorSet.start();
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void rebuildLogout() {
        this.containerView.removeAllViews();
        this.containerViewBack.removeAllViews();
        this.currentActionBar = null;
        this.newFragment = null;
        this.oldFragment = null;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void rebuildAllFragmentViews(boolean z, boolean z2) {
        if (this.transitionAnimationInProgress || this.startedTracking) {
            this.rebuildAfterAnimation = true;
            this.rebuildLastAfterAnimation = z;
            this.showLastAfterAnimation = z2;
            return;
        }
        int size = this.fragmentsStack.size();
        if (!z) {
            size--;
        }
        if (this.inPreviewMode) {
            size--;
        }
        for (int i = 0; i < size; i++) {
            this.fragmentsStack.get(i).clearViews();
            this.fragmentsStack.get(i).setParentLayout(this);
        }
        INavigationLayout.INavigationLayoutDelegate iNavigationLayoutDelegate = this.delegate;
        if (iNavigationLayoutDelegate != null) {
            iNavigationLayoutDelegate.onRebuildAllFragments(this, z);
        }
        if (z2) {
            showLastFragment();
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        C3704ActionBar c3704ActionBar;
        if (i == 82 && !checkTransitionAnimation() && !this.startedTracking && (c3704ActionBar = this.currentActionBar) != null) {
            c3704ActionBar.onMenuButtonPressed();
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void onActionModeStarted(Object obj) {
        C3704ActionBar c3704ActionBar = this.currentActionBar;
        if (c3704ActionBar != null) {
            c3704ActionBar.setVisibility(8);
        }
        this.inActionMode = true;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void onActionModeFinished(Object obj) {
        C3704ActionBar c3704ActionBar = this.currentActionBar;
        if (c3704ActionBar != null) {
            c3704ActionBar.setVisibility(0);
        }
        this.inActionMode = false;
    }

    private void onCloseAnimationEnd() {
        if (!this.transitionAnimationInProgress || this.onCloseAnimationEndRunnable == null) {
            return;
        }
        AnimatorSet animatorSet = this.currentAnimation;
        if (animatorSet != null) {
            this.currentAnimation = null;
            animatorSet.cancel();
        }
        this.transitionAnimationInProgress = false;
        this.transitionAnimationPreviewMode = false;
        this.transitionAnimationStartTime = 0L;
        this.newFragment = null;
        this.oldFragment = null;
        Runnable runnable = this.onCloseAnimationEndRunnable;
        this.onCloseAnimationEndRunnable = null;
        if (runnable != null) {
            runnable.run();
        }
        checkNeedRebuild();
        checkNeedRebuild();
    }

    private void checkNeedRebuild() {
        if (this.rebuildAfterAnimation) {
            rebuildAllFragmentViews(this.rebuildLastAfterAnimation, this.showLastAfterAnimation);
            this.rebuildAfterAnimation = false;
        } else if (this.animateThemeAfterAnimation) {
            INavigationLayout.ThemeAnimationSettings themeAnimationSettings = new INavigationLayout.ThemeAnimationSettings(this.animateSetThemeAfterAnimation, this.animateSetThemeAccentIdAfterAnimation, this.animateSetThemeNightAfterAnimation, false);
            boolean z = this.animateSetThemeAfterAnimationApply;
            if (!z) {
                themeAnimationSettings.applyTrulyTheme = z;
                themeAnimationSettings.applyTheme = z;
            }
            animateThemedValues(themeAnimationSettings, null);
            this.animateSetThemeAfterAnimation = null;
            this.animateThemeAfterAnimation = false;
        }
    }

    private void onOpenAnimationEnd() {
        Runnable runnable;
        if (!this.transitionAnimationInProgress || (runnable = this.onOpenAnimationEndRunnable) == null) {
            return;
        }
        this.transitionAnimationInProgress = false;
        this.transitionAnimationPreviewMode = false;
        this.transitionAnimationStartTime = 0L;
        this.newFragment = null;
        this.oldFragment = null;
        this.onOpenAnimationEndRunnable = null;
        runnable.run();
        checkNeedRebuild();
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void startActivityForResult(Intent intent, int i) {
        if (this.parentActivity == null) {
            return;
        }
        if (this.transitionAnimationInProgress) {
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.currentAnimation = null;
            }
            if (this.onCloseAnimationEndRunnable != null) {
                onCloseAnimationEnd();
            } else if (this.onOpenAnimationEndRunnable != null) {
                onOpenAnimationEnd();
            }
            this.containerView.invalidate();
        }
        if (intent != null) {
            this.parentActivity.startActivityForResult(intent, i);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public Theme.MessageDrawable getMessageDrawableOutStart() {
        return this.messageDrawableOutStart;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public Theme.MessageDrawable getMessageDrawableOutMediaStart() {
        return this.messageDrawableOutMediaStart;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public List<BackButtonMenu.PulledDialog> getPulledDialogs() {
        return this.pulledDialogs;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setPulledDialogs(List<BackButtonMenu.PulledDialog> list) {
        this.pulledDialogs = list;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setUseAlphaAnimations(boolean z) {
        this.useAlphaAnimations = z;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setBackgroundView(View view) {
        this.backgroundView = view;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setDrawerLayoutContainer(DrawerLayoutContainer drawerLayoutContainer) {
        this.drawerLayoutContainer = drawerLayoutContainer;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public DrawerLayoutContainer getDrawerLayoutContainer() {
        return this.drawerLayoutContainer;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setRemoveActionBarExtraHeight(boolean z) {
        this.removeActionBarExtraHeight = z;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setTitleOverlayText(String str, int i, Runnable runnable) {
        this.titleOverlayText = str;
        this.titleOverlayTextId = i;
        this.overlayAction = runnable;
        for (int i2 = 0; i2 < this.fragmentsStack.size(); i2++) {
            C3704ActionBar c3704ActionBar = this.fragmentsStack.get(i2).actionBar;
            if (c3704ActionBar != null) {
                c3704ActionBar.setTitleOverlayText(this.titleOverlayText, this.titleOverlayTextId, runnable);
            }
        }
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public boolean extendActionMode(Menu menu) {
        if (!this.fragmentsStack.isEmpty()) {
            List<BaseFragment> list = this.fragmentsStack;
            if (list.get(list.size() - 1).extendActionMode(menu)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setFragmentPanTranslationOffset(int i) {
        LayoutContainer layoutContainer = this.containerView;
        if (layoutContainer != null) {
            layoutContainer.setFragmentPanTranslationOffset(i);
        }
    }

    @Override // org.telegram.p043ui.Components.FloatingDebug.FloatingDebugProvider
    public List<FloatingDebugController.DebugItem> onGetDebugItems() {
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment != null) {
            ArrayList arrayList = new ArrayList();
            if (lastFragment instanceof FloatingDebugProvider) {
                arrayList.addAll(((FloatingDebugProvider) lastFragment).onGetDebugItems());
            }
            observeDebugItemsFromView(arrayList, lastFragment.getFragmentView());
            return arrayList;
        }
        return Collections.emptyList();
    }

    private void observeDebugItemsFromView(List<FloatingDebugController.DebugItem> list, View view) {
        if (view instanceof FloatingDebugProvider) {
            list.addAll(((FloatingDebugProvider) view).onGetDebugItems());
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                observeDebugItemsFromView(list, viewGroup.getChildAt(i));
            }
        }
    }

    public static View findScrollingChild(ViewGroup viewGroup, float f, float f2) {
        View findScrollingChild;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                Rect rect = AndroidUtilities.rectTmp2;
                childAt.getHitRect(rect);
                if (!rect.contains((int) f, (int) f2)) {
                    continue;
                } else if (childAt.canScrollHorizontally(-1)) {
                    return childAt;
                } else {
                    if ((childAt instanceof ViewGroup) && (findScrollingChild = findScrollingChild((ViewGroup) childAt, f - rect.left, f2 - rect.top)) != null) {
                        return findScrollingChild;
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8() {
        if (this.attached && getLastFragment() != null && this.containerView.getChildCount() == 0) {
            if (BuildVars.DEBUG_VERSION) {
                FileLog.m102e(new RuntimeException(TextUtils.join(", ", this.lastActions)));
            }
            rebuildAllFragmentViews(true, true);
        }
    }

    public void checkBlackScreen(String str) {
        if (BuildVars.DEBUG_VERSION) {
            this.lastActions.add(0, str + " " + this.fragmentsStack.size());
            if (this.lastActions.size() > 20) {
                ArrayList<String> arrayList = new ArrayList<>();
                for (int i = 0; i < 10; i++) {
                    arrayList.add(this.lastActions.get(i));
                }
                this.lastActions = arrayList;
            }
        }
        AndroidUtilities.cancelRunOnUIThread(this.debugBlackScreenRunnable);
        AndroidUtilities.runOnUIThread(this.debugBlackScreenRunnable, 500L);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
    }

    public int measureKeyboardHeight() {
        View rootView = getRootView();
        getWindowVisibleDisplayFrame(this.rect);
        Rect rect = this.rect;
        if (rect.bottom == 0 && rect.top == 0) {
            return 0;
        }
        int height = (rootView.getHeight() - (this.rect.top != 0 ? AndroidUtilities.statusBarHeight : 0)) - AndroidUtilities.getViewInset(rootView);
        Rect rect2 = this.rect;
        return Math.max(0, height - (rect2.bottom - rect2.top));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (getLastFragment() != null && getLastFragment().overlayStoryViewer != null && getLastFragment().overlayStoryViewer.attachedToParent()) {
            return getLastFragment().overlayStoryViewer.windowView.dispatchTouchEvent(motionEvent);
        }
        if (getLastFragment() != null && getLastFragment().storyViewer != null && getLastFragment().storyViewer.attachedToParent()) {
            return getLastFragment().storyViewer.windowView.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public void setWindow(Window window) {
        this.window = window;
    }

    @Override // org.telegram.p043ui.ActionBar.INavigationLayout
    public Window getWindow() {
        Window window = this.window;
        if (window != null) {
            return window;
        }
        if (getParentActivity() != null) {
            return getParentActivity().getWindow();
        }
        return null;
    }
}
