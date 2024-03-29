package org.telegram.p043ui.ActionBar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.camera.CameraView;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimationProperties;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.ActionBar.BottomSheet */
/* loaded from: classes5.dex */
public class BottomSheet extends Dialog {
    private static final boolean AVOID_SYSTEM_CUTOUT_FULLSCREEN = false;
    private boolean allowCustomAnimation;
    private boolean allowDrawContent;
    protected boolean allowNestedScroll;
    private boolean applyBottomPadding;
    private boolean applyTopPadding;
    protected ColorDrawable backDrawable;
    protected int backgroundPaddingLeft;
    protected int backgroundPaddingTop;
    protected int behindKeyboardColor;
    protected int behindKeyboardColorKey;
    private boolean bigTitle;
    private int bottomInset;
    protected boolean calcMandatoryInsets;
    private boolean canDismissWithSwipe;
    private boolean canDismissWithTouchOutside;
    private int cellType;
    protected ContainerView container;
    protected ViewGroup containerView;
    protected int currentAccount;
    private float currentPanTranslationY;
    protected AnimatorSet currentSheetAnimation;
    protected int currentSheetAnimationType;
    private View customView;
    protected int customViewGravity;
    protected BottomSheetDelegateInterface delegate;
    private CharSequence description;
    private TextView descriptionView;
    protected boolean dimBehind;
    protected int dimBehindAlpha;
    private boolean disableScroll;
    private Runnable dismissRunnable;
    private boolean dismissed;
    private boolean[] dividers;
    public boolean drawDoubleNavigationBar;
    public boolean drawNavigationBar;
    private boolean focusable;
    private boolean fullHeight;
    protected boolean fullWidth;
    private float hideSystemVerticalInsetsProgress;
    protected boolean isFullscreen;
    protected boolean isPortrait;
    private boolean isTitleClickable;
    private int[] itemIcons;
    private ArrayList<BottomSheetCell> itemViews;
    private CharSequence[] items;
    private ValueAnimator keyboardContentAnimator;
    protected int keyboardHeight;
    protected boolean keyboardVisible;
    private WindowInsets lastInsets;
    private int layoutCount;
    private int leftInset;
    private boolean multipleLinesTitle;
    protected int navBarColor;
    protected int navBarColorKey;
    protected float navigationBarAlpha;
    protected ValueAnimator navigationBarAnimation;
    protected View nestedScrollChild;
    private AnimationNotificationsLocker notificationsLocker;
    public boolean occupyNavigationBar;
    private DialogInterface.OnClickListener onClickListener;
    private DialogInterface.OnDismissListener onHideListener;
    protected Interpolator openInterpolator;
    private boolean openNoDelay;
    protected int openedLayerNum;
    private int overlayDrawNavBarColor;
    public boolean pauseAllHeavyOperations;
    protected int playingImagesLayerNum;
    protected Theme.ResourcesProvider resourcesProvider;
    private int rightInset;
    public boolean scrollNavBar;
    private Integer selectedPos;
    protected Drawable shadowDrawable;
    private boolean showWithoutAnimation;
    boolean showing;
    private boolean skipDismissAnimation;
    public boolean smoothKeyboardAnimationEnabled;
    protected Runnable startAnimationRunnable;
    private int statusBarHeight;
    private int tag;
    private CharSequence title;
    private TextView titleView;
    private int touchSlop;
    private boolean transitionFromRight;
    public boolean useBackgroundTopPadding;
    private boolean useFastDismiss;
    protected boolean useHardwareLayer;
    protected boolean useLightNavBar;
    protected boolean useLightStatusBar;
    protected boolean useSmoothKeyboard;
    protected boolean waitingKeyboard;

    /* renamed from: org.telegram.ui.ActionBar.BottomSheet$BottomSheetDelegate */
    /* loaded from: classes5.dex */
    public static class BottomSheetDelegate implements BottomSheetDelegateInterface {
        @Override // org.telegram.p043ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
        public boolean canDismiss() {
            return true;
        }

        @Override // org.telegram.p043ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
        public void onOpenAnimationEnd() {
        }
    }

    /* renamed from: org.telegram.ui.ActionBar.BottomSheet$BottomSheetDelegateInterface */
    /* loaded from: classes5.dex */
    public interface BottomSheetDelegateInterface {
        boolean canDismiss();

        void onOpenAnimationEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onCreate$2(View view, MotionEvent motionEvent) {
        return true;
    }

    protected boolean canSwipeToBack(MotionEvent motionEvent) {
        return false;
    }

    protected int getTargetOpenTranslationY() {
        return 0;
    }

    public ArrayList<ThemeDescription> getThemeDescriptions() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void mainContainerDispatchDraw(Canvas canvas) {
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    public void onContainerDraw(Canvas canvas) {
    }

    protected boolean onContainerTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onContainerTranslationYChanged(float f) {
    }

    protected boolean onCustomCloseAnimation() {
        return false;
    }

    protected boolean onCustomLayout(View view, int i, int i2, int i3, int i4) {
        return false;
    }

    protected boolean onCustomMeasure(View view, int i, int i2) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean onCustomOpenAnimation() {
        return false;
    }

    public void onDismissAnimationStart() {
    }

    protected void onInsetsChanged() {
    }

    public void onOpenAnimationEnd() {
    }

    protected boolean onScrollUp(float f) {
        return false;
    }

    protected void onScrollUpBegin(float f) {
    }

    protected void onScrollUpEnd(float f) {
    }

    protected boolean shouldOverlayCameraViewOverNavBar() {
        return false;
    }

    static /* synthetic */ int access$1410(BottomSheet bottomSheet) {
        int i = bottomSheet.layoutCount;
        bottomSheet.layoutCount = i - 1;
        return i;
    }

    static /* synthetic */ int access$912(BottomSheet bottomSheet, int i) {
        int i2 = bottomSheet.bottomInset + i;
        bottomSheet.bottomInset = i2;
        return i2;
    }

    static /* synthetic */ int access$920(BottomSheet bottomSheet, int i) {
        int i2 = bottomSheet.bottomInset - i;
        bottomSheet.bottomInset = i2;
        return i2;
    }

    public void setDescription(CharSequence charSequence) {
        this.description = charSequence;
    }

    public CharSequence getDescription() {
        return this.description;
    }

    public void setTitleClickable(boolean z) {
        this.isTitleClickable = z;
    }

    public DialogInterface.OnClickListener getOnClickListener() {
        return this.onClickListener;
    }

    public void setDisableScroll(boolean z) {
        this.disableScroll = z;
    }

    public void transitionFromRight(boolean z) {
        this.transitionFromRight = z;
    }

    /* renamed from: org.telegram.ui.ActionBar.BottomSheet$ContainerView */
    /* loaded from: classes5.dex */
    public class ContainerView extends FrameLayout implements NestedScrollingParent {
        private boolean allowedSwipeToBack;
        private Paint backgroundPaint;
        private AnimatorSet currentAnimation;
        private boolean keyboardChanged;
        private boolean maybeStartTracking;
        private NestedScrollingParentHelper nestedScrollingParentHelper;
        private Rect rect;
        private boolean startedTracking;
        private int startedTrackingPointerId;
        private int startedTrackingX;
        private int startedTrackingY;
        private float swipeBackX;
        private VelocityTracker velocityTracker;

        /* renamed from: y */
        private float f1785y;

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public boolean onNestedFling(View view, float f, float f2, boolean z) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public boolean onNestedPreFling(View view, float f, float f2) {
            return false;
        }

        public ContainerView(Context context) {
            super(context);
            this.velocityTracker = null;
            this.startedTrackingPointerId = -1;
            this.maybeStartTracking = false;
            this.startedTracking = false;
            this.currentAnimation = null;
            this.rect = new Rect();
            this.backgroundPaint = new Paint();
            this.f1785y = BitmapDescriptorFactory.HUE_RED;
            this.swipeBackX = BitmapDescriptorFactory.HUE_RED;
            this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
            setWillNotDraw(false);
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public boolean onStartNestedScroll(View view, View view2, int i) {
            BottomSheet bottomSheet = BottomSheet.this;
            View view3 = bottomSheet.nestedScrollChild;
            if ((view3 == null || view == view3) && !bottomSheet.dismissed) {
                BottomSheet bottomSheet2 = BottomSheet.this;
                if (bottomSheet2.allowNestedScroll && i == 2 && !bottomSheet2.canDismissWithSwipe()) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public void onNestedScrollAccepted(View view, View view2, int i) {
            this.nestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i);
            if (BottomSheet.this.dismissed || !BottomSheet.this.allowNestedScroll) {
                return;
            }
            cancelCurrentAnimation();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public void onStopNestedScroll(View view) {
            this.nestedScrollingParentHelper.onStopNestedScroll(view);
            if (BottomSheet.this.dismissed) {
                return;
            }
            BottomSheet bottomSheet = BottomSheet.this;
            if (bottomSheet.allowNestedScroll) {
                bottomSheet.containerView.getTranslationY();
                checkDismiss(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            }
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
            if (BottomSheet.this.dismissed || !BottomSheet.this.allowNestedScroll) {
                return;
            }
            cancelCurrentAnimation();
            if (i4 != 0) {
                float translationY = BottomSheet.this.containerView.getTranslationY() - i4;
                if (translationY < BitmapDescriptorFactory.HUE_RED) {
                    translationY = 0.0f;
                }
                BottomSheet.this.containerView.setTranslationY(translationY);
                BottomSheet.this.container.invalidate();
            }
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
            if (BottomSheet.this.dismissed || !BottomSheet.this.allowNestedScroll) {
                return;
            }
            cancelCurrentAnimation();
            float translationY = BottomSheet.this.containerView.getTranslationY();
            float f = BitmapDescriptorFactory.HUE_RED;
            if (translationY <= BitmapDescriptorFactory.HUE_RED || i2 <= 0) {
                return;
            }
            float f2 = translationY - i2;
            iArr[1] = i2;
            if (f2 >= BitmapDescriptorFactory.HUE_RED) {
                f = f2;
            }
            BottomSheet.this.containerView.setTranslationY(f);
            BottomSheet.this.container.invalidate();
        }

        @Override // android.view.ViewGroup
        public int getNestedScrollAxes() {
            return this.nestedScrollingParentHelper.getNestedScrollAxes();
        }

        private void checkDismiss(float f, float f2) {
            float translationY = BottomSheet.this.containerView.getTranslationY();
            if (!((translationY < AndroidUtilities.getPixelsInCM(0.8f, false) && (f2 < 3500.0f || Math.abs(f2) < Math.abs(f))) || (f2 < BitmapDescriptorFactory.HUE_RED && Math.abs(f2) >= 3500.0f))) {
                boolean z = BottomSheet.this.allowCustomAnimation;
                BottomSheet.this.allowCustomAnimation = false;
                BottomSheet.this.useFastDismiss = true;
                BottomSheet.this.dismiss();
                BottomSheet.this.allowCustomAnimation = z;
                return;
            }
            this.currentAnimation = new AnimatorSet();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$ContainerView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BottomSheet.ContainerView.this.lambda$checkDismiss$0(valueAnimator);
                }
            });
            this.currentAnimation.playTogether(ObjectAnimator.ofFloat(BottomSheet.this.containerView, "translationY", BitmapDescriptorFactory.HUE_RED), ofFloat);
            this.currentAnimation.setDuration((int) ((Math.max((float) BitmapDescriptorFactory.HUE_RED, translationY) / AndroidUtilities.getPixelsInCM(0.8f, false)) * 250.0f));
            this.currentAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheet.ContainerView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (ContainerView.this.currentAnimation != null && ContainerView.this.currentAnimation.equals(animator)) {
                        ContainerView.this.currentAnimation = null;
                    }
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
                }
            });
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
            this.currentAnimation.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkDismiss$0(ValueAnimator valueAnimator) {
            ContainerView containerView = BottomSheet.this.container;
            if (containerView != null) {
                containerView.invalidate();
            }
        }

        private void cancelCurrentAnimation() {
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.currentAnimation = null;
            }
        }

        public boolean processTouchEvent(MotionEvent motionEvent, boolean z) {
            if (BottomSheet.this.dismissed) {
                return false;
            }
            if (BottomSheet.this.onContainerTouchEvent(motionEvent)) {
                return true;
            }
            if (BottomSheet.this.canSwipeToBack(motionEvent) || this.allowedSwipeToBack) {
                if (motionEvent != null && ((motionEvent.getAction() == 0 || motionEvent.getAction() == 2) && !this.startedTracking && !this.maybeStartTracking && motionEvent.getPointerCount() == 1)) {
                    this.allowedSwipeToBack = true;
                    this.startedTrackingX = (int) motionEvent.getX();
                    this.startedTrackingY = (int) motionEvent.getY();
                    this.startedTrackingPointerId = motionEvent.getPointerId(0);
                    this.maybeStartTracking = true;
                    cancelCurrentAnimation();
                } else if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
                    float x = motionEvent.getX() - this.startedTrackingX;
                    float y = motionEvent.getY() - this.startedTrackingY;
                    if (this.velocityTracker == null) {
                        this.velocityTracker = VelocityTracker.obtain();
                    }
                    this.velocityTracker.addMovement(motionEvent);
                    if (!BottomSheet.this.disableScroll && this.maybeStartTracking && !this.startedTracking && x > BitmapDescriptorFactory.HUE_RED && x / 3.0f > Math.abs(y) && Math.abs(x) >= BottomSheet.this.touchSlop) {
                        this.startedTrackingX = (int) motionEvent.getX();
                        this.maybeStartTracking = false;
                        this.startedTracking = true;
                    } else if (this.startedTracking) {
                        float f = this.swipeBackX + x;
                        this.swipeBackX = f;
                        BottomSheet.this.containerView.setTranslationX(Math.max(f, (float) BitmapDescriptorFactory.HUE_RED));
                        this.startedTrackingX = (int) motionEvent.getX();
                        BottomSheet.this.container.invalidate();
                    }
                } else if (motionEvent == null || (motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6))) {
                    BottomSheet.this.containerView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    if (this.velocityTracker == null) {
                        this.velocityTracker = VelocityTracker.obtain();
                    }
                    float xVelocity = this.velocityTracker.getXVelocity();
                    if (this.swipeBackX < ((float) BottomSheet.this.containerView.getMeasuredWidth()) / 3.0f && (xVelocity < 3500.0f || xVelocity < this.velocityTracker.getYVelocity())) {
                        float max = Math.max(this.swipeBackX, (float) BitmapDescriptorFactory.HUE_RED);
                        this.swipeBackX = max;
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(max, BitmapDescriptorFactory.HUE_RED);
                        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$ContainerView$$ExternalSyntheticLambda1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                BottomSheet.ContainerView.this.lambda$processTouchEvent$1(valueAnimator);
                            }
                        });
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheet.ContainerView.2
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                ContainerView.this.swipeBackX = BitmapDescriptorFactory.HUE_RED;
                                ContainerView.this.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                            }
                        });
                        ofFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
                        ofFloat.setDuration(220L);
                        ofFloat.start();
                    } else {
                        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(this.swipeBackX, getMeasuredWidth());
                        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$ContainerView$$ExternalSyntheticLambda2
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                BottomSheet.ContainerView.this.lambda$processTouchEvent$2(valueAnimator);
                            }
                        });
                        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheet.ContainerView.3
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                BottomSheet.this.skipDismissAnimation = true;
                                BottomSheet.this.dismiss();
                            }
                        });
                        ofFloat2.setInterpolator(CubicBezierInterpolator.DEFAULT);
                        ofFloat2.setDuration(150L);
                        ofFloat2.start();
                    }
                    this.maybeStartTracking = false;
                    this.startedTracking = false;
                    this.startedTrackingPointerId = -1;
                    this.allowedSwipeToBack = false;
                }
            } else if (BottomSheet.this.canDismissWithTouchOutside() && motionEvent != null && ((motionEvent.getAction() == 0 || motionEvent.getAction() == 2) && !this.startedTracking && !this.maybeStartTracking && motionEvent.getPointerCount() == 1)) {
                this.startedTrackingX = (int) motionEvent.getX();
                int y2 = (int) motionEvent.getY();
                this.startedTrackingY = y2;
                if (y2 < BottomSheet.this.containerView.getTop() || this.startedTrackingX < BottomSheet.this.containerView.getLeft() || this.startedTrackingX > BottomSheet.this.containerView.getRight()) {
                    BottomSheet.this.onDismissWithTouchOutside();
                    return true;
                }
                BottomSheet.this.onScrollUpBegin(this.f1785y);
                this.startedTrackingPointerId = motionEvent.getPointerId(0);
                this.maybeStartTracking = true;
                cancelCurrentAnimation();
                VelocityTracker velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
            } else if (BottomSheet.this.canDismissWithSwipe() && motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                float abs = Math.abs((int) (motionEvent.getX() - this.startedTrackingX));
                float y3 = ((int) motionEvent.getY()) - this.startedTrackingY;
                boolean onScrollUp = BottomSheet.this.onScrollUp(this.f1785y + y3);
                this.velocityTracker.addMovement(motionEvent);
                if (!BottomSheet.this.disableScroll && this.maybeStartTracking && !this.startedTracking && y3 > BitmapDescriptorFactory.HUE_RED && y3 / 3.0f > Math.abs(abs) && Math.abs(y3) >= BottomSheet.this.touchSlop) {
                    this.startedTrackingY = (int) motionEvent.getY();
                    this.maybeStartTracking = false;
                    this.startedTracking = true;
                    requestDisallowInterceptTouchEvent(true);
                } else if (this.startedTracking) {
                    float f2 = this.f1785y + y3;
                    this.f1785y = f2;
                    if (!onScrollUp) {
                        this.f1785y = Math.max(f2, (float) BitmapDescriptorFactory.HUE_RED);
                    }
                    BottomSheet.this.containerView.setTranslationY(Math.max(this.f1785y, (float) BitmapDescriptorFactory.HUE_RED));
                    this.startedTrackingY = (int) motionEvent.getY();
                    BottomSheet.this.container.invalidate();
                }
            } else if (motionEvent == null || (motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6))) {
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                this.velocityTracker.computeCurrentVelocity(1000);
                BottomSheet.this.onScrollUpEnd(this.f1785y);
                if (this.startedTracking || this.f1785y > BitmapDescriptorFactory.HUE_RED) {
                    checkDismiss(this.velocityTracker.getXVelocity(), this.velocityTracker.getYVelocity());
                } else {
                    this.maybeStartTracking = false;
                }
                this.startedTracking = false;
                VelocityTracker velocityTracker2 = this.velocityTracker;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.velocityTracker = null;
                }
                this.startedTrackingPointerId = -1;
            }
            return (!z && this.maybeStartTracking) || this.startedTracking || !(BottomSheet.this.canDismissWithSwipe() || BottomSheet.this.canSwipeToBack(motionEvent));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processTouchEvent$1(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.swipeBackX = floatValue;
            setTranslationX(floatValue);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processTouchEvent$2(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.swipeBackX = floatValue;
            setTranslationX(floatValue);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return processTouchEvent(motionEvent, false);
        }

        /* JADX WARN: Removed duplicated region for block: B:48:0x0108  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0145  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x014e  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x01ab  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r12, int r13) {
            /*
                Method dump skipped, instructions count: 470
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ActionBar.BottomSheet.ContainerView.onMeasure(int, int):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:68:0x01a0  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x01ad  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x01c0  */
        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onLayout(boolean r17, int r18, int r19, int r20, int r21) {
            /*
                Method dump skipped, instructions count: 532
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ActionBar.BottomSheet.ContainerView.onLayout(boolean, int, int, int, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLayout$3(ValueAnimator valueAnimator) {
            BottomSheet.this.containerView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
            invalidate();
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (BottomSheet.this.canDismissWithSwipe() || BottomSheet.this.canSwipeToBack(motionEvent)) {
                return processTouchEvent(motionEvent, true);
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void requestDisallowInterceptTouchEvent(boolean z) {
            if (this.maybeStartTracking && !this.startedTracking) {
                onTouchEvent(null);
            }
            super.requestDisallowInterceptTouchEvent(z);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0154  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0188  */
        /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void dispatchDraw(android.graphics.Canvas r12) {
            /*
                Method dump skipped, instructions count: 467
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ActionBar.BottomSheet.ContainerView.dispatchDraw(android.graphics.Canvas):void");
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view instanceof CameraView) {
                if (BottomSheet.this.shouldOverlayCameraViewOverNavBar()) {
                    drawNavigationBar(canvas, 1.0f);
                }
                return super.drawChild(canvas, view, j);
            }
            return super.drawChild(canvas, view, j);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x009f  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00fd  */
        /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r11) {
            /*
                Method dump skipped, instructions count: 257
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ActionBar.BottomSheet.ContainerView.onDraw(android.graphics.Canvas):void");
        }

        public void drawNavigationBar(Canvas canvas, float f) {
            float max;
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                BottomSheet bottomSheet = BottomSheet.this;
                int i2 = bottomSheet.navBarColorKey;
                if (i2 >= 0) {
                    this.backgroundPaint.setColor(bottomSheet.getThemedColor(i2));
                } else {
                    this.backgroundPaint.setColor(bottomSheet.navBarColor);
                }
            } else {
                this.backgroundPaint.setColor(-16777216);
            }
            if (!BottomSheet.this.transitionFromRight || BottomSheet.this.containerView.getVisibility() == 0) {
                BottomSheet bottomSheet2 = BottomSheet.this;
                boolean z = bottomSheet2.drawNavigationBar;
                float f2 = BitmapDescriptorFactory.HUE_RED;
                if ((!z || bottomSheet2.bottomInset == 0) && BottomSheet.this.currentPanTranslationY == BitmapDescriptorFactory.HUE_RED) {
                    return;
                }
                BottomSheet bottomSheet3 = BottomSheet.this;
                int bottomInset = bottomSheet3.drawNavigationBar ? bottomSheet3.getBottomInset() : 0;
                BottomSheet bottomSheet4 = BottomSheet.this;
                if (bottomSheet4.scrollNavBar || (i >= 29 && bottomSheet4.getAdditionalMandatoryOffsets() > 0)) {
                    BottomSheet bottomSheet5 = BottomSheet.this;
                    if (bottomSheet5.drawDoubleNavigationBar) {
                        max = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(bottomInset - bottomSheet5.currentPanTranslationY, BottomSheet.this.containerView.getTranslationY()));
                    } else {
                        max = Math.max((float) BitmapDescriptorFactory.HUE_RED, BottomSheet.this.getBottomInset() - (bottomSheet5.containerView.getMeasuredHeight() - BottomSheet.this.containerView.getTranslationY()));
                    }
                } else {
                    max = 0.0f;
                }
                int alpha = this.backgroundPaint.getAlpha();
                if (BottomSheet.this.transitionFromRight) {
                    f *= BottomSheet.this.containerView.getAlpha();
                }
                int x = BottomSheet.this.transitionFromRight ? (int) BottomSheet.this.containerView.getX() : BottomSheet.this.containerView.getLeft();
                int i3 = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
                if (i3 < 0) {
                    this.backgroundPaint.setAlpha((int) (alpha * f));
                }
                canvas.drawRect(BottomSheet.this.backgroundPaddingLeft + x, ((getMeasuredHeight() - bottomInset) + max) - BottomSheet.this.currentPanTranslationY, BottomSheet.this.containerView.getRight() - BottomSheet.this.backgroundPaddingLeft, getMeasuredHeight() + max, this.backgroundPaint);
                this.backgroundPaint.setAlpha(alpha);
                if (BottomSheet.this.overlayDrawNavBarColor != 0) {
                    this.backgroundPaint.setColor(BottomSheet.this.overlayDrawNavBarColor);
                    int alpha2 = this.backgroundPaint.getAlpha();
                    if (i3 < 0) {
                        this.backgroundPaint.setAlpha((int) (alpha2 * f));
                    } else {
                        f2 = max;
                    }
                    canvas.drawRect(x + BottomSheet.this.backgroundPaddingLeft, ((getMeasuredHeight() - bottomInset) + f2) - BottomSheet.this.currentPanTranslationY, BottomSheet.this.containerView.getRight() - BottomSheet.this.backgroundPaddingLeft, getMeasuredHeight() + f2, this.backgroundPaint);
                    this.backgroundPaint.setAlpha(alpha2);
                }
            }
        }
    }

    protected int getBottomSheetWidth(boolean z, int i, int i2) {
        return z ? i : (int) Math.max(i * 0.8f, Math.min(AndroidUtilities.m107dp(480), i));
    }

    public void setHideSystemVerticalInsets(boolean z) {
        float[] fArr = new float[2];
        fArr[0] = this.hideSystemVerticalInsetsProgress;
        fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        ValueAnimator duration = ValueAnimator.ofFloat(fArr).setDuration(180L);
        duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                BottomSheet.this.lambda$setHideSystemVerticalInsets$0(valueAnimator);
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setHideSystemVerticalInsets$0(ValueAnimator valueAnimator) {
        this.hideSystemVerticalInsetsProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.container.requestLayout();
        this.containerView.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getAdditionalMandatoryOffsets() {
        WindowInsets windowInsets;
        if (!this.calcMandatoryInsets || (windowInsets = this.lastInsets) == null) {
            return 0;
        }
        Insets systemGestureInsets = windowInsets == null ? null : windowInsets.getSystemGestureInsets();
        if (this.keyboardVisible || !this.drawNavigationBar || systemGestureInsets == null) {
            return 0;
        }
        if (systemGestureInsets.left == 0 && systemGestureInsets.right == 0) {
            return 0;
        }
        return systemGestureInsets.bottom;
    }

    public boolean isKeyboardVisible() {
        return this.keyboardVisible;
    }

    public void setCalcMandatoryInsets(boolean z) {
        this.calcMandatoryInsets = z;
        this.drawNavigationBar = z;
    }

    /* renamed from: org.telegram.ui.ActionBar.BottomSheet$BottomSheetCell */
    /* loaded from: classes5.dex */
    public static class BottomSheetCell extends FrameLayout {
        int currentType;
        private ImageView imageView;
        public boolean isSelected;
        private boolean needDivider;
        private final Theme.ResourcesProvider resourcesProvider;
        private TextView textView;

        public void setNeedDivider(boolean z) {
            this.needDivider = z;
            setWillNotDraw(!z);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.needDivider) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }

        public BottomSheetCell(Context context, int i) {
            this(context, i, null);
        }

        public BottomSheetCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.isSelected = false;
            this.resourcesProvider = resourcesProvider;
            this.currentType = i;
            if (i != Builder.CELL_TYPE_CALL) {
                setBackgroundDrawable(Theme.getSelectorDrawable(false, resourcesProvider));
            }
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogIcon), PorterDuff.Mode.MULTIPLY));
            addView(this.imageView, LayoutHelper.createFrame(56, 48, (LocaleController.isRTL ? 5 : 3) | 16));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setLines(1);
            this.textView.setSingleLine(true);
            this.textView.setGravity(1);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            if (i == 0 || i == Builder.CELL_TYPE_CALL) {
                this.textView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
                this.textView.setTextSize(1, 16.0f);
                addView(this.textView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 16));
            } else if (i == 1) {
                this.textView.setGravity(17);
                this.textView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
                this.textView.setTextSize(1, 14.0f);
                this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                addView(this.textView, LayoutHelper.createFrame(-1, -1));
            } else if (i == 2) {
                this.textView.setGravity(17);
                this.textView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
                this.textView.setTextSize(1, 14.0f);
                this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                this.textView.setBackground(Theme.AdaptiveRipple.filledRect(getThemedColor(Theme.key_featuredStickers_addButton), 6.0f));
                addView(this.textView, LayoutHelper.createFrame(-1, -1, 0, 16, 16, 16, 16));
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3 = this.currentType;
            int i4 = i3 == 2 ? 80 : 48;
            if (i3 == 0) {
                i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824);
            }
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(i4), 1073741824));
        }

        public void setTextColor(int i) {
            this.textView.setTextColor(i);
        }

        public void setIconColor(int i) {
            this.imageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        }

        public void setGravity(int i) {
            this.textView.setGravity(i);
        }

        public void setTextAndIcon(CharSequence charSequence, int i) {
            setTextAndIcon(charSequence, i, null, false);
        }

        public void setTextAndIcon(CharSequence charSequence, Drawable drawable) {
            setTextAndIcon(charSequence, 0, drawable, false);
        }

        public void setTextAndIcon(CharSequence charSequence, int i, Drawable drawable, boolean z) {
            this.textView.setText(charSequence);
            if (i != 0 || drawable != null) {
                if (drawable != null) {
                    this.imageView.setImageDrawable(drawable);
                } else {
                    this.imageView.setImageResource(i);
                }
                this.imageView.setVisibility(0);
                if (z) {
                    this.textView.setPadding(AndroidUtilities.m107dp(LocaleController.isRTL ? 21 : 72), 0, AndroidUtilities.m107dp(LocaleController.isRTL ? 72 : 21), 0);
                    this.imageView.setPadding(LocaleController.isRTL ? 0 : AndroidUtilities.m107dp(5), 0, LocaleController.isRTL ? AndroidUtilities.m107dp(5) : 5, 0);
                    return;
                }
                this.textView.setPadding(AndroidUtilities.m107dp(LocaleController.isRTL ? 16 : 72), 0, AndroidUtilities.m107dp(LocaleController.isRTL ? 72 : 16), 0);
                this.imageView.setPadding(0, 0, 0, 0);
                return;
            }
            this.imageView.setVisibility(4);
            this.textView.setPadding(AndroidUtilities.m107dp(z ? 21 : 16), 0, AndroidUtilities.m107dp(z ? 21 : 16), 0);
        }

        public TextView getTextView() {
            return this.textView;
        }

        public ImageView getImageView() {
            return this.imageView;
        }

        protected int getThemedColor(int i) {
            return Theme.getColor(i, this.resourcesProvider);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            if (this.isSelected) {
                accessibilityNodeInfo.setSelected(true);
            }
        }
    }

    public void setAllowNestedScroll(boolean z) {
        this.allowNestedScroll = z;
        if (z) {
            return;
        }
        this.containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
    }

    public BottomSheet(Context context, boolean z) {
        this(context, z, null);
    }

    public BottomSheet(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context, C3632R.style.TransparentDialog);
        this.currentAccount = UserConfig.selectedAccount;
        this.allowDrawContent = true;
        this.useHardwareLayer = true;
        this.backDrawable = new ColorDrawable(-16777216) { // from class: org.telegram.ui.ActionBar.BottomSheet.1
            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void setAlpha(int i) {
                super.setAlpha(i);
                BottomSheet.this.container.invalidate();
            }
        };
        this.useLightStatusBar = true;
        int i = Theme.key_dialogBackground;
        this.behindKeyboardColorKey = i;
        this.canDismissWithSwipe = true;
        this.canDismissWithTouchOutside = true;
        this.allowCustomAnimation = true;
        this.statusBarHeight = AndroidUtilities.statusBarHeight;
        this.openInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.dimBehind = true;
        this.dimBehindAlpha = 51;
        this.allowNestedScroll = true;
        this.applyTopPadding = true;
        this.applyBottomPadding = true;
        this.itemViews = new ArrayList<>();
        this.dismissRunnable = new BottomSheet$$ExternalSyntheticLambda8(this);
        this.navigationBarAlpha = BitmapDescriptorFactory.HUE_RED;
        this.navBarColorKey = Theme.key_windowBackgroundGray;
        this.pauseAllHeavyOperations = true;
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.useBackgroundTopPadding = true;
        this.customViewGravity = 51;
        this.resourcesProvider = resourcesProvider;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            getWindow().addFlags(-2147483392);
        } else if (i2 >= 21) {
            getWindow().addFlags(-2147417856);
        }
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        Rect rect = new Rect();
        Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.sheet_shadow_round).mutate();
        this.shadowDrawable = mutate;
        mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), PorterDuff.Mode.MULTIPLY));
        this.shadowDrawable.getPadding(rect);
        this.backgroundPaddingLeft = rect.left;
        this.backgroundPaddingTop = rect.top;
        ContainerView containerView = new ContainerView(getContext()) { // from class: org.telegram.ui.ActionBar.BottomSheet.2
            @Override // org.telegram.p043ui.ActionBar.BottomSheet.ContainerView, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                try {
                    if (BottomSheet.this.allowDrawContent) {
                        if (super.drawChild(canvas, view, j)) {
                            return true;
                        }
                    }
                    return false;
                } catch (Exception e) {
                    FileLog.m102e(e);
                    return true;
                }
            }

            @Override // org.telegram.p043ui.ActionBar.BottomSheet.ContainerView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                BottomSheet.this.mainContainerDispatchDraw(canvas);
            }

            @Override // android.view.View
            protected void onConfigurationChanged(Configuration configuration) {
                BottomSheet.this.lastInsets = null;
                if (Build.VERSION.SDK_INT >= 21) {
                    BottomSheet.this.container.requestApplyInsets();
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                Bulletin.addDelegate(this, new Bulletin.Delegate(this) { // from class: org.telegram.ui.ActionBar.BottomSheet.2.1
                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public /* synthetic */ boolean allowLayoutChanges() {
                        return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                    }

                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public /* synthetic */ boolean clipWithGradient(int i3) {
                        return Bulletin.Delegate.CC.$default$clipWithGradient(this, i3);
                    }

                    @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                    public /* synthetic */ int getBottomOffset(int i3) {
                        return Bulletin.Delegate.CC.$default$getBottomOffset(this, i3);
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
                    public int getTopOffset(int i3) {
                        return AndroidUtilities.statusBarHeight;
                    }
                });
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                Bulletin.removeDelegate(this);
            }
        };
        this.container = containerView;
        containerView.setBackgroundDrawable(this.backDrawable);
        this.focusable = z;
        if (i2 >= 21) {
            this.container.setFitsSystemWindows(true);
            this.container.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda5
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    WindowInsets lambda$new$1;
                    lambda$new$1 = BottomSheet.this.lambda$new$1(view, windowInsets);
                    return lambda$new$1;
                }
            });
            if (i2 >= 30) {
                this.container.setSystemUiVisibility(1792);
            } else {
                this.container.setSystemUiVisibility(1280);
            }
        }
        this.backDrawable.setAlpha(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets lambda$new$1(View view, WindowInsets windowInsets) {
        int systemWindowInsetTop = windowInsets.getSystemWindowInsetTop();
        if ((systemWindowInsetTop != 0 || AndroidUtilities.isInMultiwindow) && this.statusBarHeight != systemWindowInsetTop) {
            this.statusBarHeight = systemWindowInsetTop;
        }
        this.lastInsets = windowInsets;
        view.requestLayout();
        onInsetsChanged();
        if (Build.VERSION.SDK_INT >= 30) {
            return WindowInsets.CONSUMED;
        }
        return windowInsets.consumeSystemWindowInsets();
    }

    public void fixNavigationBar() {
        fixNavigationBar(getThemedColor(Theme.key_windowBackgroundGray));
    }

    public void fixNavigationBar(int i) {
        this.drawNavigationBar = !this.occupyNavigationBar;
        this.drawDoubleNavigationBar = true;
        this.scrollNavBar = true;
        this.navBarColorKey = -1;
        this.navBarColor = i;
        setOverlayNavBarColor(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.setWindowAnimations(C3632R.style.DialogNoAnimation);
        setContentView(this.container, new ViewGroup.LayoutParams(-1, -1));
        if (this.useLightStatusBar && Build.VERSION.SDK_INT >= 23 && Theme.getColor(Theme.key_actionBarDefault, null, true) == -1) {
            this.container.setSystemUiVisibility(this.container.getSystemUiVisibility() | 8192);
        }
        if (this.useLightNavBar && Build.VERSION.SDK_INT >= 26) {
            AndroidUtilities.setLightNavigationBar(getWindow(), false);
        }
        if (this.containerView == null) {
            FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.ActionBar.BottomSheet.3
                @Override // android.view.View
                public boolean hasOverlappingRendering() {
                    return false;
                }

                @Override // android.view.View
                public void setTranslationY(float f) {
                    super.setTranslationY(f);
                    BottomSheet.this.onContainerTranslationYChanged(f);
                }
            };
            this.containerView = frameLayout;
            frameLayout.setBackgroundDrawable(this.shadowDrawable);
            this.containerView.setPadding(this.backgroundPaddingLeft, ((this.applyTopPadding ? AndroidUtilities.m107dp(8) : 0) + this.backgroundPaddingTop) - 1, this.backgroundPaddingLeft, this.applyBottomPadding ? AndroidUtilities.m107dp(8) : 0);
        }
        this.containerView.setVisibility(4);
        this.container.addView(this.containerView, 0, LayoutHelper.createFrame(-1, -2, 80));
        int i = 48;
        if (this.title != null) {
            TextView textView = new TextView(getContext()) { // from class: org.telegram.ui.ActionBar.BottomSheet.4
                @Override // android.widget.TextView, android.view.View
                protected void onMeasure(int i2, int i3) {
                    super.onMeasure(i2, i3);
                    if (BottomSheet.this.multipleLinesTitle) {
                        int measuredHeight = getMeasuredHeight();
                        if (BottomSheet.this.customView != null) {
                            ((ViewGroup.MarginLayoutParams) BottomSheet.this.customView.getLayoutParams()).topMargin = measuredHeight;
                        } else if (BottomSheet.this.containerView != null) {
                            for (int i4 = 1; i4 < BottomSheet.this.containerView.getChildCount(); i4++) {
                                View childAt = BottomSheet.this.containerView.getChildAt(i4);
                                if (childAt instanceof BottomSheetCell) {
                                    ((ViewGroup.MarginLayoutParams) childAt.getLayoutParams()).topMargin = measuredHeight;
                                    measuredHeight += AndroidUtilities.m107dp(48);
                                }
                            }
                        }
                    }
                }
            };
            this.titleView = textView;
            textView.setText(this.title);
            if (this.bigTitle) {
                this.titleView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
                this.titleView.setTextSize(1, 20.0f);
                this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                this.titleView.setPadding(AndroidUtilities.m107dp(21), AndroidUtilities.m107dp(this.multipleLinesTitle ? 14 : 6), AndroidUtilities.m107dp(21), AndroidUtilities.m107dp(8));
            } else {
                this.titleView.setTextColor(getThemedColor(Theme.key_dialogTextGray2));
                this.titleView.setTextSize(1, 16.0f);
                this.titleView.setPadding(AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(this.multipleLinesTitle ? 8 : 0), AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(8));
            }
            if (this.multipleLinesTitle) {
                this.titleView.setSingleLine(false);
                this.titleView.setMaxLines(5);
                this.titleView.setEllipsize(TextUtils.TruncateAt.END);
            } else {
                this.titleView.setLines(1);
                this.titleView.setSingleLine(true);
                this.titleView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            }
            this.titleView.setGravity(16);
            this.containerView.addView(this.titleView, LayoutHelper.createFrame(-1, this.multipleLinesTitle ? -2 : 48));
            if (!this.isTitleClickable) {
                this.titleView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda7
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        boolean lambda$onCreate$2;
                        lambda$onCreate$2 = BottomSheet.lambda$onCreate$2(view, motionEvent);
                        return lambda$onCreate$2;
                    }
                });
            }
        } else {
            i = 0;
        }
        if (this.description != null) {
            TextView textView2 = new TextView(getContext());
            this.descriptionView = textView2;
            textView2.setMaxLines(3);
            this.descriptionView.setText(this.description);
            this.descriptionView.setTextColor(getThemedColor(Theme.key_dialogTextGray3));
            this.descriptionView.setTextSize(1, 14.0f);
            this.descriptionView.setEllipsize(TextUtils.TruncateAt.END);
            this.descriptionView.setGravity(16);
            this.descriptionView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x - AndroidUtilities.m107dp(42), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.descriptionView.setPadding(AndroidUtilities.m107dp(21), AndroidUtilities.m107dp(44), AndroidUtilities.m107dp(21), AndroidUtilities.m107dp(8));
            this.containerView.addView(this.descriptionView, LayoutHelper.createFrame(-1, -2));
            i += AndroidUtilities.m106px(this.descriptionView.getMeasuredHeight()) + 8;
        }
        View view = this.customView;
        if (view != null) {
            if (view.getParent() != null) {
                ((ViewGroup) this.customView.getParent()).removeView(this.customView);
            }
            if (!this.useBackgroundTopPadding) {
                this.containerView.setClipToPadding(false);
                this.containerView.setClipChildren(false);
                this.container.setClipToPadding(false);
                this.container.setClipChildren(false);
                this.containerView.addView(this.customView, LayoutHelper.createFrame(-1, -2, this.customViewGravity, 0, i, 0, 0));
                ((ViewGroup.MarginLayoutParams) this.customView.getLayoutParams()).topMargin = (-this.backgroundPaddingTop) + AndroidUtilities.m107dp(i);
            } else {
                this.containerView.addView(this.customView, LayoutHelper.createFrame(-1, -2, this.customViewGravity, 0, i, 0, 0));
            }
        } else if (this.items != null) {
            int i2 = 0;
            while (true) {
                CharSequence[] charSequenceArr = this.items;
                if (i2 >= charSequenceArr.length) {
                    break;
                }
                if (charSequenceArr[i2] != null) {
                    BottomSheetCell bottomSheetCell = new BottomSheetCell(getContext(), this.cellType, this.resourcesProvider);
                    boolean[] zArr = this.dividers;
                    if (zArr != null) {
                        bottomSheetCell.setNeedDivider(zArr[i2]);
                    }
                    CharSequence charSequence = this.items[i2];
                    int[] iArr = this.itemIcons;
                    bottomSheetCell.setTextAndIcon(charSequence, iArr != null ? iArr[i2] : 0, null, this.bigTitle);
                    this.containerView.addView(bottomSheetCell, LayoutHelper.createFrame(-1, 48, 51, 0, i, 0, 0));
                    i += 48;
                    bottomSheetCell.setTag(Integer.valueOf(i2));
                    bottomSheetCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            BottomSheet.this.lambda$onCreate$3(view2);
                        }
                    });
                    this.itemViews.add(bottomSheetCell);
                }
                i2++;
            }
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.gravity = 51;
        attributes.dimAmount = BitmapDescriptorFactory.HUE_RED;
        int i3 = attributes.flags & (-3);
        attributes.flags = i3;
        if (this.focusable) {
            attributes.softInputMode = 16;
        } else {
            attributes.flags = i3 | 131072;
        }
        if (this.isFullscreen) {
            if (Build.VERSION.SDK_INT >= 21) {
                attributes.flags |= -2147417856;
            }
            attributes.flags |= 1024;
            this.container.setSystemUiVisibility(1284);
        }
        attributes.height = -1;
        if (Build.VERSION.SDK_INT >= 28) {
            attributes.layoutInDisplayCutoutMode = 1;
        }
        window.setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$3(View view) {
        dismissWithButtonClick(((Integer) view.getTag()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
    }

    public void setUseLightStatusBar(boolean z) {
        this.useLightStatusBar = z;
        if (Build.VERSION.SDK_INT >= 23) {
            int color = Theme.getColor(Theme.key_actionBarDefault, null, true);
            int systemUiVisibility = this.container.getSystemUiVisibility();
            this.container.setSystemUiVisibility((this.useLightStatusBar && color == -1) ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }

    public boolean isFocusable() {
        return this.focusable;
    }

    public void setFocusable(boolean z) {
        if (this.focusable == z) {
            return;
        }
        this.focusable = z;
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (this.focusable) {
            attributes.softInputMode = 16;
            attributes.flags &= -131073;
        } else {
            attributes.softInputMode = 48;
            attributes.flags |= 131072;
        }
        window.setAttributes(attributes);
    }

    public void setShowWithoutAnimation(boolean z) {
        this.showWithoutAnimation = z;
    }

    public void setBackgroundColor(int i) {
        this.shadowDrawable.setColorFilter(i, PorterDuff.Mode.MULTIPLY);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        setShowing(true);
        if (this.focusable) {
            getWindow().setSoftInputMode(16);
        }
        this.dismissed = false;
        cancelSheetAnimation();
        ViewGroup viewGroup = this.containerView;
        if (viewGroup == null) {
            return;
        }
        viewGroup.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x + (this.backgroundPaddingLeft * 2), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.y, Integer.MIN_VALUE));
        boolean z = this.showWithoutAnimation;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z) {
            this.backDrawable.setAlpha(this.dimBehind ? this.dimBehindAlpha : 0);
            this.containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            return;
        }
        this.backDrawable.setAlpha(0);
        this.layoutCount = 2;
        ViewGroup viewGroup2 = this.containerView;
        if (Build.VERSION.SDK_INT >= 21) {
            f = AndroidUtilities.statusBarHeight * (1.0f - this.hideSystemVerticalInsetsProgress);
        }
        viewGroup2.setTranslationY(f + viewGroup2.getMeasuredHeight() + (this.scrollNavBar ? getBottomInset() : 0));
        long j = this.openNoDelay ? 0L : 150L;
        if (this.waitingKeyboard) {
            j = 500;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheet.5
            @Override // java.lang.Runnable
            public void run() {
                BottomSheet bottomSheet = BottomSheet.this;
                if (bottomSheet.startAnimationRunnable != this || bottomSheet.dismissed) {
                    return;
                }
                BottomSheet bottomSheet2 = BottomSheet.this;
                bottomSheet2.startAnimationRunnable = null;
                bottomSheet2.startOpenAnimation();
            }
        };
        this.startAnimationRunnable = runnable;
        AndroidUtilities.runOnUIThread(runnable, j);
    }

    public ColorDrawable getBackDrawable() {
        return this.backDrawable;
    }

    public int getBackgroundPaddingTop() {
        return this.backgroundPaddingTop;
    }

    public void setAllowDrawContent(boolean z) {
        if (this.allowDrawContent != z) {
            this.allowDrawContent = z;
            this.container.setBackgroundDrawable(z ? this.backDrawable : null);
            this.container.invalidate();
        }
    }

    protected boolean canDismissWithSwipe() {
        return this.canDismissWithSwipe;
    }

    public void setCanDismissWithSwipe(boolean z) {
        this.canDismissWithSwipe = z;
    }

    public void setCustomView(View view) {
        this.customView = view;
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        setTitle(charSequence, false);
    }

    public void setTitle(CharSequence charSequence, boolean z) {
        this.title = charSequence;
        this.bigTitle = z;
    }

    public void setApplyTopPadding(boolean z) {
        this.applyTopPadding = z;
    }

    public void setApplyBottomPadding(boolean z) {
        this.applyBottomPadding = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDismissWithTouchOutside() {
        dismiss();
    }

    protected boolean canDismissWithTouchOutside() {
        return this.canDismissWithTouchOutside;
    }

    public void setCanDismissWithTouchOutside(boolean z) {
        this.canDismissWithTouchOutside = z;
    }

    public TextView getTitleView() {
        return this.titleView;
    }

    protected void cancelSheetAnimation() {
        AnimatorSet animatorSet = this.currentSheetAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.currentSheetAnimation = null;
        }
        this.currentSheetAnimationType = 0;
    }

    public void setOnHideListener(DialogInterface.OnDismissListener onDismissListener) {
        this.onHideListener = onDismissListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startOpenAnimation() {
        if (this.dismissed) {
            return;
        }
        this.containerView.setVisibility(0);
        if (onCustomOpenAnimation()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 20 && this.useHardwareLayer) {
            this.container.setLayerType(2, null);
        }
        if (this.transitionFromRight) {
            this.containerView.setTranslationX(AndroidUtilities.m107dp(48));
            this.containerView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        } else {
            this.containerView.setTranslationY(getContainerViewHeight() + this.keyboardHeight + AndroidUtilities.m107dp(10) + (this.scrollNavBar ? getBottomInset() : 0));
        }
        this.currentSheetAnimationType = 1;
        ValueAnimator valueAnimator = this.navigationBarAnimation;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.navigationBarAlpha, 1.0f);
        this.navigationBarAnimation = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                BottomSheet.this.lambda$startOpenAnimation$4(valueAnimator2);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.currentSheetAnimation = animatorSet;
        Animator[] animatorArr = new Animator[5];
        animatorArr[0] = ObjectAnimator.ofFloat(this.containerView, View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED);
        animatorArr[1] = ObjectAnimator.ofFloat(this.containerView, View.ALPHA, 1.0f);
        animatorArr[2] = ObjectAnimator.ofFloat(this.containerView, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED);
        ColorDrawable colorDrawable = this.backDrawable;
        Property<ColorDrawable, Integer> property = AnimationProperties.COLOR_DRAWABLE_ALPHA;
        int[] iArr = new int[1];
        iArr[0] = this.dimBehind ? this.dimBehindAlpha : 0;
        animatorArr[3] = ObjectAnimator.ofInt(colorDrawable, property, iArr);
        animatorArr[4] = this.navigationBarAnimation;
        animatorSet.playTogether(animatorArr);
        if (this.transitionFromRight) {
            this.currentSheetAnimation.setDuration(250L);
            this.currentSheetAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
        } else {
            this.currentSheetAnimation.setDuration(400L);
            this.currentSheetAnimation.setInterpolator(this.openInterpolator);
        }
        this.currentSheetAnimation.setStartDelay(this.waitingKeyboard ? 0L : 20L);
        this.currentSheetAnimation.setInterpolator(this.openInterpolator);
        this.notificationsLocker.lock();
        this.currentSheetAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheet.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimatorSet animatorSet2 = BottomSheet.this.currentSheetAnimation;
                if (animatorSet2 != null && animatorSet2.equals(animator)) {
                    BottomSheet bottomSheet = BottomSheet.this;
                    bottomSheet.currentSheetAnimation = null;
                    bottomSheet.currentSheetAnimationType = 0;
                    bottomSheet.onOpenAnimationEnd();
                    BottomSheetDelegateInterface bottomSheetDelegateInterface = BottomSheet.this.delegate;
                    if (bottomSheetDelegateInterface != null) {
                        bottomSheetDelegateInterface.onOpenAnimationEnd();
                    }
                    BottomSheet bottomSheet2 = BottomSheet.this;
                    if (bottomSheet2.useHardwareLayer) {
                        bottomSheet2.container.setLayerType(0, null);
                    }
                    BottomSheet bottomSheet3 = BottomSheet.this;
                    if (bottomSheet3.isFullscreen) {
                        WindowManager.LayoutParams attributes = bottomSheet3.getWindow().getAttributes();
                        attributes.flags &= -1025;
                        BottomSheet.this.getWindow().setAttributes(attributes);
                    }
                }
                if (BottomSheet.this.pauseAllHeavyOperations) {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
                }
                BottomSheet.this.notificationsLocker.unlock();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                AnimatorSet animatorSet2 = BottomSheet.this.currentSheetAnimation;
                if (animatorSet2 == null || !animatorSet2.equals(animator)) {
                    return;
                }
                BottomSheet bottomSheet = BottomSheet.this;
                bottomSheet.currentSheetAnimation = null;
                bottomSheet.currentSheetAnimationType = 0;
            }
        });
        if (this.pauseAllHeavyOperations) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
        }
        this.currentSheetAnimation.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOpenAnimation$4(ValueAnimator valueAnimator) {
        this.navigationBarAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        ContainerView containerView = this.container;
        if (containerView != null) {
            containerView.invalidate();
        }
    }

    public void setDelegate(BottomSheetDelegateInterface bottomSheetDelegateInterface) {
        this.delegate = bottomSheetDelegateInterface;
    }

    public ContainerView getContainer() {
        return this.container;
    }

    public ViewGroup getSheetContainer() {
        return this.containerView;
    }

    public int getTag() {
        return this.tag;
    }

    public void setDimBehind(boolean z) {
        this.dimBehind = z;
    }

    public void setDimBehindAlpha(int i) {
        this.dimBehindAlpha = i;
    }

    public void setItemText(int i, CharSequence charSequence) {
        if (i < 0 || i >= this.itemViews.size()) {
            return;
        }
        this.itemViews.get(i).textView.setText(charSequence);
    }

    public void setItemColor(int i, int i2, int i3) {
        if (i < 0 || i >= this.itemViews.size()) {
            return;
        }
        BottomSheetCell bottomSheetCell = this.itemViews.get(i);
        bottomSheetCell.textView.setTextColor(i2);
        bottomSheetCell.imageView.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.MULTIPLY));
    }

    public ArrayList<BottomSheetCell> getItemViews() {
        return this.itemViews;
    }

    public void setItems(CharSequence[] charSequenceArr, int[] iArr, DialogInterface.OnClickListener onClickListener) {
        this.items = charSequenceArr;
        this.itemIcons = iArr;
        this.onClickListener = onClickListener;
    }

    public void setTitleColor(int i) {
        TextView textView = this.titleView;
        if (textView == null) {
            return;
        }
        textView.setTextColor(i);
    }

    public boolean isDismissed() {
        return this.dismissed;
    }

    public void dismissWithButtonClick(final int i) {
        if (this.dismissed) {
            return;
        }
        this.dismissed = true;
        cancelSheetAnimation();
        this.currentSheetAnimationType = 2;
        AnimatorSet animatorSet = new AnimatorSet();
        this.currentSheetAnimation = animatorSet;
        Animator[] animatorArr = new Animator[2];
        ViewGroup viewGroup = this.containerView;
        Property property = View.TRANSLATION_Y;
        float[] fArr = new float[1];
        fArr[0] = getContainerViewHeight() + this.keyboardHeight + AndroidUtilities.m107dp(10) + (this.scrollNavBar ? getBottomInset() : 0);
        animatorArr[0] = ObjectAnimator.ofFloat(viewGroup, property, fArr);
        animatorArr[1] = ObjectAnimator.ofInt(this.backDrawable, AnimationProperties.COLOR_DRAWABLE_ALPHA, 0);
        animatorSet.playTogether(animatorArr);
        this.currentSheetAnimation.setDuration(this.cellType == Builder.CELL_TYPE_CALL ? 330L : 180L);
        this.currentSheetAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.currentSheetAnimation.addListener(new C37757(i));
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
        this.currentSheetAnimation.start();
        if (this.cellType != Builder.CELL_TYPE_CALL || this.selectedPos == null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        int currentTextColor = getItemViews().get(this.selectedPos.intValue()).getTextView().getCurrentTextColor();
        int currentTextColor2 = getItemViews().get(i).getTextView().getCurrentTextColor();
        ValueAnimator ofArgb = ValueAnimator.ofArgb(currentTextColor, currentTextColor2);
        ofArgb.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                BottomSheet.this.lambda$dismissWithButtonClick$5(valueAnimator);
            }
        });
        ofArgb.setDuration(130L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        ofArgb.setInterpolator(cubicBezierInterpolator);
        ofArgb.start();
        ValueAnimator ofArgb2 = ValueAnimator.ofArgb(currentTextColor2, currentTextColor);
        ofArgb2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                BottomSheet.this.lambda$dismissWithButtonClick$6(i, valueAnimator);
            }
        });
        ofArgb2.setDuration(130L);
        ofArgb2.setInterpolator(cubicBezierInterpolator);
        ofArgb2.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ActionBar.BottomSheet$7 */
    /* loaded from: classes5.dex */
    public class C37757 extends AnimatorListenerAdapter {
        final /* synthetic */ int val$item;

        C37757(int i) {
            this.val$item = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AnimatorSet animatorSet = BottomSheet.this.currentSheetAnimation;
            if (animatorSet != null && animatorSet.equals(animator)) {
                BottomSheet bottomSheet = BottomSheet.this;
                bottomSheet.currentSheetAnimation = null;
                bottomSheet.currentSheetAnimationType = 0;
                if (bottomSheet.onClickListener != null) {
                    BottomSheet.this.onClickListener.onClick(BottomSheet.this, this.val$item);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheet$7$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomSheet.C37757.this.lambda$onAnimationEnd$0();
                    }
                });
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            if (BottomSheet.this.onHideListener != null) {
                BottomSheet.this.onHideListener.onDismiss(BottomSheet.this);
            }
            try {
                BottomSheet.this.dismissInternal();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            AnimatorSet animatorSet = BottomSheet.this.currentSheetAnimation;
            if (animatorSet == null || !animatorSet.equals(animator)) {
                return;
            }
            BottomSheet bottomSheet = BottomSheet.this;
            bottomSheet.currentSheetAnimation = null;
            bottomSheet.currentSheetAnimationType = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismissWithButtonClick$5(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        setItemColor(this.selectedPos.intValue(), intValue, intValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismissWithButtonClick$6(int i, ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        setItemColor(i, intValue, intValue);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.dismissed) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public int getContainerViewHeight() {
        ViewGroup viewGroup = this.containerView;
        if (viewGroup == null) {
            return 0;
        }
        return viewGroup.getMeasuredHeight();
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0139  */
    @Override // android.app.Dialog, android.content.DialogInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dismiss() {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ActionBar.BottomSheet.dismiss():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$7() {
        try {
            dismissInternal();
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$8(ValueAnimator valueAnimator) {
        this.navigationBarAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        ContainerView containerView = this.container;
        if (containerView != null) {
            containerView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ActionBar.BottomSheet$8 */
    /* loaded from: classes5.dex */
    public class C37768 extends AnimatorListenerAdapter {
        C37768() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AnimatorSet animatorSet = BottomSheet.this.currentSheetAnimation;
            if (animatorSet != null && animatorSet.equals(animator)) {
                BottomSheet bottomSheet = BottomSheet.this;
                bottomSheet.currentSheetAnimation = null;
                bottomSheet.currentSheetAnimationType = 0;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheet$8$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomSheet.C37768.this.lambda$onAnimationEnd$0();
                    }
                });
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            try {
                BottomSheet.this.dismissInternal();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            AnimatorSet animatorSet = BottomSheet.this.currentSheetAnimation;
            if (animatorSet == null || !animatorSet.equals(animator)) {
                return;
            }
            BottomSheet bottomSheet = BottomSheet.this;
            bottomSheet.currentSheetAnimation = null;
            bottomSheet.currentSheetAnimationType = 0;
        }
    }

    public int getSheetAnimationType() {
        return this.currentSheetAnimationType;
    }

    public void dismissInternal() {
        try {
            super.dismiss();
        } catch (Exception e) {
            FileLog.m101e((Throwable) e, false);
        }
    }

    /* renamed from: org.telegram.ui.ActionBar.BottomSheet$Builder */
    /* loaded from: classes5.dex */
    public static class Builder {
        public static int CELL_TYPE_CALL = 4;
        private BottomSheet bottomSheet;

        public Builder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            return setItems(charSequenceArr, onClickListener, (boolean[]) null);
        }

        public Builder setItems(CharSequence[] charSequenceArr, int[] iArr, DialogInterface.OnClickListener onClickListener) {
            return setItems(charSequenceArr, iArr, onClickListener, null);
        }

        public Builder(Context context) {
            this(context, false);
        }

        public Builder(Context context, boolean z) {
            this(context, z, null);
        }

        public Builder(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
            BottomSheet bottomSheet = new BottomSheet(context, z, resourcesProvider);
            this.bottomSheet = bottomSheet;
            bottomSheet.fixNavigationBar();
        }

        public Builder(Context context, boolean z, Theme.ResourcesProvider resourcesProvider, int i) {
            BottomSheet bottomSheet = new BottomSheet(context, z, resourcesProvider);
            this.bottomSheet = bottomSheet;
            bottomSheet.setBackgroundColor(i);
            this.bottomSheet.fixNavigationBar(i);
        }

        public Builder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener, boolean[] zArr) {
            this.bottomSheet.items = charSequenceArr;
            this.bottomSheet.dividers = zArr;
            this.bottomSheet.onClickListener = onClickListener;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, int[] iArr, DialogInterface.OnClickListener onClickListener, boolean[] zArr) {
            this.bottomSheet.items = charSequenceArr;
            this.bottomSheet.itemIcons = iArr;
            this.bottomSheet.dividers = zArr;
            this.bottomSheet.onClickListener = onClickListener;
            return this;
        }

        public Builder setCustomView(View view) {
            this.bottomSheet.customView = view;
            return this;
        }

        public Builder setCustomView(View view, int i) {
            this.bottomSheet.customView = view;
            this.bottomSheet.customViewGravity = i;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            return setTitle(charSequence, false);
        }

        public Builder setTitle(CharSequence charSequence, boolean z) {
            this.bottomSheet.title = charSequence;
            this.bottomSheet.bigTitle = z;
            return this;
        }

        public Builder selectedPos(Integer num) {
            this.bottomSheet.selectedPos = num;
            return this;
        }

        public Builder setCellType(int i) {
            this.bottomSheet.cellType = i;
            return this;
        }

        public Builder setTitleMultipleLines(boolean z) {
            this.bottomSheet.multipleLinesTitle = z;
            return this;
        }

        public BottomSheet create() {
            return this.bottomSheet;
        }

        public BottomSheet setDimBehind(boolean z) {
            BottomSheet bottomSheet = this.bottomSheet;
            bottomSheet.dimBehind = z;
            return bottomSheet;
        }

        public BottomSheet show() {
            this.bottomSheet.show();
            return this.bottomSheet;
        }

        public Builder setDelegate(BottomSheetDelegate bottomSheetDelegate) {
            this.bottomSheet.setDelegate(bottomSheetDelegate);
            return this;
        }

        public Builder setApplyTopPadding(boolean z) {
            this.bottomSheet.applyTopPadding = z;
            return this;
        }

        public Builder setApplyBottomPadding(boolean z) {
            this.bottomSheet.applyBottomPadding = z;
            return this;
        }

        public Runnable getDismissRunnable() {
            return this.bottomSheet.dismissRunnable;
        }

        public Builder setOnPreDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.bottomSheet.setOnHideListener(onDismissListener);
            return this;
        }
    }

    public int getLeftInset() {
        WindowInsets windowInsets = this.lastInsets;
        if (windowInsets == null || Build.VERSION.SDK_INT < 21) {
            return 0;
        }
        return (int) (windowInsets.getSystemWindowInsetLeft() * (1.0f - this.hideSystemVerticalInsetsProgress));
    }

    public int getRightInset() {
        WindowInsets windowInsets = this.lastInsets;
        if (windowInsets == null || Build.VERSION.SDK_INT < 21) {
            return 0;
        }
        return (int) (windowInsets.getSystemWindowInsetRight() * (1.0f - this.hideSystemVerticalInsetsProgress));
    }

    public int getStatusBarHeight() {
        return (int) (this.statusBarHeight * (1.0f - this.hideSystemVerticalInsetsProgress));
    }

    public int getBottomInset() {
        return (int) (this.bottomInset * (1.0f - this.hideSystemVerticalInsetsProgress));
    }

    public void setCurrentPanTranslationY(float f) {
        this.currentPanTranslationY = f;
        this.container.invalidate();
    }

    public void setOverlayNavBarColor(int i) {
        this.overlayDrawNavBarColor = i;
        ContainerView containerView = this.container;
        if (containerView != null) {
            containerView.invalidate();
        }
        AndroidUtilities.setNavigationBarColor(getWindow(), this.overlayDrawNavBarColor);
        AndroidUtilities.setLightNavigationBar(getWindow(), ((double) AndroidUtilities.computePerceivedBrightness(this.overlayDrawNavBarColor)) > 0.721d);
    }

    public ViewGroup getContainerView() {
        return this.containerView;
    }

    public int getCurrentAccount() {
        return this.currentAccount;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setOpenNoDelay(boolean z) {
        this.openNoDelay = z;
    }

    public int getBackgroundPaddingLeft() {
        return this.backgroundPaddingLeft;
    }

    private void setShowing(boolean z) {
        if (this.showing == z) {
            return;
        }
        this.showing = z;
        if (this.openedLayerNum > 0) {
            if (z) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, Integer.valueOf(this.openedLayerNum));
            } else {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, Integer.valueOf(this.openedLayerNum));
            }
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public void setImageReceiverNumLevel(int i, int i2) {
        this.playingImagesLayerNum = i;
        this.openedLayerNum = i2;
    }
}
