package org.telegram.p044ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.FrameLayout;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p044ui.ActionBar.ActionBarLayout;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.INavigationLayout;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
/* renamed from: org.telegram.ui.RightSlidingDialogContainer */
/* loaded from: classes5.dex */
public abstract class RightSlidingDialogContainer extends FrameLayout {
    public static long fragmentDialogId;
    private Paint actionModePaint;
    C3356ActionBar currentActionBarView;
    BaseFragment currentFragment;
    View currentFragmentFullscreenView;
    View currentFragmentView;
    float currentTop;
    public boolean enabled;
    public int fragmentViewPadding;
    boolean isOpenned;
    boolean isPaused;
    int lastSize;
    private boolean maybeStartTracking;
    INavigationLayout navigationLayout;
    private AnimationNotificationsLocker notificationsLocker;
    ValueAnimator openAnimator;
    float openedProgress;
    private final BaseFragment parentFragment;
    SpringAnimation replaceAnimation;
    private boolean replaceAnimationInProgress;
    float replaceProgress;
    BaseFragment replacingFragment;
    protected boolean startedTracking;
    private int startedTrackingPointerId;
    private int startedTrackingX;
    private int startedTrackingY;
    float swipeBackX;
    private VelocityTracker velocityTracker;

    /* renamed from: org.telegram.ui.RightSlidingDialogContainer$BaseFragmentWithFullscreen */
    /* loaded from: classes5.dex */
    public interface BaseFragmentWithFullscreen {
        View getFullscreenView();
    }

    abstract boolean getOccupyStatusbar();

    public void openAnimationFinished() {
    }

    public void openAnimationStarted(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOpenProgress(float f) {
    }

    public RightSlidingDialogContainer(Context context, BaseFragment baseFragment) {
        super(context);
        this.openedProgress = BitmapDescriptorFactory.HUE_RED;
        this.notificationsLocker = new AnimationNotificationsLocker();
        int i = UserConfig.selectedAccount;
        this.enabled = true;
        this.parentFragment = baseFragment;
    }

    public void presentFragment(INavigationLayout iNavigationLayout, final BaseFragment baseFragment) {
        if (this.isPaused) {
            return;
        }
        this.navigationLayout = iNavigationLayout;
        if (baseFragment.onFragmentCreate()) {
            baseFragment.setInPreviewMode(true);
            baseFragment.setParentLayout(iNavigationLayout);
            View createView = baseFragment.createView(getContext());
            baseFragment.onResume();
            this.currentFragmentView = createView;
            addView(createView);
            BaseFragment baseFragment2 = this.currentFragment;
            if (baseFragment instanceof BaseFragmentWithFullscreen) {
                View fullscreenView = ((BaseFragmentWithFullscreen) baseFragment).getFullscreenView();
                this.currentFragmentFullscreenView = fullscreenView;
                addView(fullscreenView);
            }
            this.currentFragment = baseFragment;
            fragmentDialogId = 0L;
            if (baseFragment instanceof TopicsFragment) {
                fragmentDialogId = -((TopicsFragment) baseFragment).chatId;
            }
            if (baseFragment.getActionBar() != null) {
                C3356ActionBar actionBar = baseFragment.getActionBar();
                this.currentActionBarView = actionBar;
                addView(actionBar);
                this.currentActionBarView.listenToBackgroundUpdate(new Runnable() { // from class: org.telegram.ui.RightSlidingDialogContainer$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RightSlidingDialogContainer.this.invalidate();
                    }
                });
            }
            if (baseFragment2 != null) {
                animateReplace(baseFragment2);
            } else if (!this.isOpenned) {
                this.isOpenned = true;
                if (!SharedConfig.animationsEnabled()) {
                    openAnimationStarted(true);
                    baseFragment.onTransitionAnimationStart(true, false);
                    baseFragment.onTransitionAnimationEnd(true, false);
                    this.openedProgress = 1.0f;
                    updateOpenAnimationProgress();
                    openAnimationFinished();
                    return;
                }
                this.notificationsLocker.lock();
                this.openAnimator = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.openedProgress = BitmapDescriptorFactory.HUE_RED;
                openAnimationStarted(true);
                updateOpenAnimationProgress();
                baseFragment.onTransitionAnimationStart(true, false);
                this.openAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.RightSlidingDialogContainer$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        RightSlidingDialogContainer.this.lambda$presentFragment$0(valueAnimator);
                    }
                });
                this.openAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.RightSlidingDialogContainer.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        RightSlidingDialogContainer rightSlidingDialogContainer = RightSlidingDialogContainer.this;
                        if (rightSlidingDialogContainer.openAnimator == null) {
                            return;
                        }
                        rightSlidingDialogContainer.openAnimator = null;
                        rightSlidingDialogContainer.notificationsLocker.unlock();
                        baseFragment.onTransitionAnimationEnd(true, false);
                        RightSlidingDialogContainer rightSlidingDialogContainer2 = RightSlidingDialogContainer.this;
                        rightSlidingDialogContainer2.openedProgress = 1.0f;
                        rightSlidingDialogContainer2.updateOpenAnimationProgress();
                        RightSlidingDialogContainer.this.openAnimationFinished();
                    }
                });
                this.openAnimator.setDuration(250L);
                this.openAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.openAnimator.setStartDelay(SharedConfig.getDevicePerformanceClass() >= 2 ? 50L : 150L);
                this.openAnimator.start();
            }
            baseFragment.setPreviewDelegate(new BaseFragment.PreviewDelegate() { // from class: org.telegram.ui.RightSlidingDialogContainer$$ExternalSyntheticLambda6
                @Override // org.telegram.p044ui.ActionBar.BaseFragment.PreviewDelegate
                public final void finishFragment() {
                    RightSlidingDialogContainer.this.lambda$presentFragment$1();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$presentFragment$0(ValueAnimator valueAnimator) {
        this.openedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateOpenAnimationProgress();
    }

    private void animateReplace(final BaseFragment baseFragment) {
        final BaseFragment baseFragment2 = this.currentFragment;
        if (!SharedConfig.animationsEnabled()) {
            baseFragment2.onTransitionAnimationStart(true, false);
            baseFragment2.onTransitionAnimationEnd(true, false);
            setReplaceProgress(baseFragment, baseFragment2, 1.0f);
            this.replaceAnimationInProgress = false;
            this.replacingFragment = null;
            baseFragment.onPause();
            baseFragment.onFragmentDestroy();
            removeView(baseFragment.getFragmentView());
            removeView(baseFragment.getActionBar());
            this.notificationsLocker.unlock();
            return;
        }
        SpringAnimation springAnimation = this.replaceAnimation;
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        baseFragment2.onTransitionAnimationStart(true, false);
        this.replacingFragment = baseFragment;
        this.replaceAnimationInProgress = true;
        this.notificationsLocker.lock();
        SpringAnimation springAnimation2 = new SpringAnimation(new FloatValueHolder(BitmapDescriptorFactory.HUE_RED));
        this.replaceAnimation = springAnimation2;
        springAnimation2.setSpring(new SpringForce(1000.0f).setStiffness(400.0f).setDampingRatio(1.0f));
        setReplaceProgress(baseFragment, baseFragment2, BitmapDescriptorFactory.HUE_RED);
        this.replaceAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.RightSlidingDialogContainer$$ExternalSyntheticLambda4
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                RightSlidingDialogContainer.this.lambda$animateReplace$2(dynamicAnimation, f, f2);
            }
        });
        this.replaceAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.RightSlidingDialogContainer$$ExternalSyntheticLambda3
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                RightSlidingDialogContainer.this.lambda$animateReplace$3(baseFragment2, baseFragment, dynamicAnimation, z, f, f2);
            }
        });
        this.replaceAnimation.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateReplace$2(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.replaceProgress = f / 1000.0f;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateReplace$3(BaseFragment baseFragment, BaseFragment baseFragment2, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        if (this.replaceAnimation == null) {
            return;
        }
        this.replaceAnimation = null;
        baseFragment.onTransitionAnimationEnd(true, false);
        setReplaceProgress(baseFragment2, baseFragment, 1.0f);
        this.replaceAnimationInProgress = false;
        this.replacingFragment = null;
        baseFragment2.onPause();
        baseFragment2.onFragmentDestroy();
        removeView(baseFragment2.getFragmentView());
        removeView(baseFragment2.getActionBar());
        this.notificationsLocker.unlock();
    }

    private void setReplaceProgress(BaseFragment baseFragment, BaseFragment baseFragment2, float f) {
        int measuredWidth;
        if (baseFragment == null && baseFragment2 == null) {
            return;
        }
        if (baseFragment != null) {
            measuredWidth = baseFragment.getFragmentView().getMeasuredWidth();
        } else {
            measuredWidth = baseFragment2.getFragmentView().getMeasuredWidth();
        }
        if (baseFragment != null) {
            if (baseFragment.getFragmentView() != null) {
                baseFragment.getFragmentView().setAlpha(1.0f - f);
                baseFragment.getFragmentView().setTranslationX(measuredWidth * 0.6f * f);
            }
            baseFragment.setPreviewOpenedProgress(1.0f - f);
        }
        if (baseFragment2 != null) {
            if (baseFragment2.getFragmentView() != null) {
                baseFragment2.getFragmentView().setAlpha(1.0f);
                baseFragment2.getFragmentView().setTranslationX(measuredWidth * (1.0f - f));
            }
            baseFragment2.setPreviewReplaceProgress(f);
        }
    }

    protected void updateOpenAnimationProgress() {
        C3356ActionBar c3356ActionBar;
        if (this.replaceAnimationInProgress || !hasFragment()) {
            return;
        }
        setOpenProgress(this.openedProgress);
        View view = this.currentFragmentView;
        if (view != null) {
            view.setTranslationX((getMeasuredWidth() - AndroidUtilities.m54dp(getRightPaddingSize())) * (1.0f - this.openedProgress));
        }
        BaseFragment baseFragment = this.parentFragment;
        if ((!(baseFragment instanceof DialogsActivity) || (((DialogsActivity) baseFragment).isMainNoFolderDialogList() && !SharedConfig.isMainActionBarMenuEnabled)) && (c3356ActionBar = this.currentActionBarView) != null) {
            c3356ActionBar.setTranslationX(AndroidUtilities.m54dp(48) * (1.0f - this.openedProgress));
        }
        BaseFragment baseFragment2 = this.currentFragment;
        if (baseFragment2 != null) {
            baseFragment2.setPreviewOpenedProgress(this.openedProgress);
        }
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = getOccupyStatusbar() ? AndroidUtilities.statusBarHeight : 0;
        View view = this.currentFragmentView;
        if (view != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams.leftMargin = AndroidUtilities.m54dp(getRightPaddingSize());
            layoutParams.topMargin = C3356ActionBar.getCurrentActionBarHeight() + i3 + this.fragmentViewPadding;
        }
        C3356ActionBar c3356ActionBar = this.currentActionBarView;
        if (c3356ActionBar != null) {
            ((FrameLayout.LayoutParams) c3356ActionBar.getLayoutParams()).topMargin = i3;
        }
        super.onMeasure(i, i2);
        int measuredHeight = (getMeasuredHeight() + getMeasuredWidth()) << 16;
        if (this.lastSize != measuredHeight) {
            this.lastSize = measuredHeight;
            updateOpenAnimationProgress();
        }
    }

    public boolean hasFragment() {
        return this.currentFragment != null;
    }

    /* renamed from: finishPreview */
    public void lambda$presentFragment$1() {
        if (this.isOpenned) {
            openAnimationStarted(false);
            finishPreviewInernal();
        }
    }

    public void finishPreviewInernal() {
        this.isOpenned = false;
        if (!SharedConfig.animationsEnabled()) {
            this.openedProgress = BitmapDescriptorFactory.HUE_RED;
            updateOpenAnimationProgress();
            BaseFragment baseFragment = this.currentFragment;
            if (baseFragment != null) {
                baseFragment.onPause();
                this.currentFragment.onFragmentDestroy();
                removeAllViews();
                this.currentFragment = null;
                NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, new Object[0]);
            }
            openAnimationFinished();
            return;
        }
        this.notificationsLocker.lock();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.openedProgress, BitmapDescriptorFactory.HUE_RED);
        this.openAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.RightSlidingDialogContainer$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RightSlidingDialogContainer.this.lambda$finishPreviewInernal$4(valueAnimator);
            }
        });
        this.openAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.RightSlidingDialogContainer.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                RightSlidingDialogContainer rightSlidingDialogContainer = RightSlidingDialogContainer.this;
                if (rightSlidingDialogContainer.openAnimator == null) {
                    return;
                }
                rightSlidingDialogContainer.openAnimator = null;
                rightSlidingDialogContainer.openedProgress = BitmapDescriptorFactory.HUE_RED;
                rightSlidingDialogContainer.updateOpenAnimationProgress();
                RightSlidingDialogContainer.this.notificationsLocker.unlock();
                BaseFragment baseFragment2 = RightSlidingDialogContainer.this.currentFragment;
                if (baseFragment2 != null) {
                    baseFragment2.onPause();
                    RightSlidingDialogContainer.this.currentFragment.onFragmentDestroy();
                    RightSlidingDialogContainer.this.removeAllViews();
                    RightSlidingDialogContainer.this.currentFragment = null;
                    NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, new Object[0]);
                }
                RightSlidingDialogContainer.this.openAnimationFinished();
            }
        });
        this.openAnimator.setDuration(250L);
        this.openAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.openAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishPreviewInernal$4(ValueAnimator valueAnimator) {
        this.openedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateOpenAnimationProgress();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        INavigationLayout iNavigationLayout = this.navigationLayout;
        if ((iNavigationLayout == null || !iNavigationLayout.isInPreviewMode()) && hasFragment() && this.enabled) {
            if (motionEvent != null && motionEvent.getAction() == 0) {
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
                if (this.maybeStartTracking && !this.startedTracking && max >= AndroidUtilities.getPixelsInCM(0.4f, true) && Math.abs(max) / 3 > abs) {
                    if (ActionBarLayout.findScrollingChild(this, motionEvent.getX(), motionEvent.getY()) == null) {
                        prepareForMoving(motionEvent);
                    } else {
                        this.maybeStartTracking = false;
                    }
                } else if (this.startedTracking) {
                    float f = max;
                    this.swipeBackX = f;
                    this.openedProgress = Utilities.clamp(1.0f - (f / getMeasuredWidth()), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                    updateOpenAnimationProgress();
                }
            } else if (motionEvent != null && motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6)) {
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                this.velocityTracker.computeCurrentVelocity(1000);
                if (this.startedTracking) {
                    float f2 = this.swipeBackX;
                    float xVelocity = this.velocityTracker.getXVelocity();
                    if (!(f2 < ((float) getMeasuredWidth()) / 3.0f && (xVelocity < 3500.0f || xVelocity < this.velocityTracker.getYVelocity()))) {
                        finishPreviewInernal();
                    } else {
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.openedProgress, 1.0f);
                        this.openAnimator = ofFloat;
                        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.RightSlidingDialogContainer$$ExternalSyntheticLambda2
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                RightSlidingDialogContainer.this.lambda$onTouchEvent$5(valueAnimator);
                            }
                        });
                        this.openAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.RightSlidingDialogContainer.3
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                RightSlidingDialogContainer rightSlidingDialogContainer = RightSlidingDialogContainer.this;
                                if (rightSlidingDialogContainer.openAnimator == null) {
                                    return;
                                }
                                rightSlidingDialogContainer.openAnimator = null;
                                rightSlidingDialogContainer.openAnimationFinished();
                            }
                        });
                        this.openAnimator.setDuration(250L);
                        this.openAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                        this.openAnimator.start();
                    }
                }
                this.maybeStartTracking = false;
                this.startedTracking = false;
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
            return this.startedTracking;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$5(ValueAnimator valueAnimator) {
        this.openedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateOpenAnimationProgress();
    }

    private void prepareForMoving(MotionEvent motionEvent) {
        this.maybeStartTracking = false;
        this.startedTracking = true;
        this.startedTrackingX = (int) motionEvent.getX();
        openAnimationStarted(false);
    }

    public void setCurrentTop(int i) {
        this.currentTop = i;
        View view = this.currentFragmentView;
        if (view != null) {
            view.setTranslationY((i - view.getTop()) + this.fragmentViewPadding);
        }
        View view2 = this.currentFragmentFullscreenView;
        if (view2 != null) {
            view2.setTranslationY(i - view2.getTop());
        }
    }

    public long getCurrentFragmetDialogId() {
        return fragmentDialogId;
    }

    public static int getRightPaddingSize() {
        return SharedConfig.useThreeLinesLayout ? 74 : 76;
    }

    public View getFragmentView() {
        return this.currentFragmentView;
    }

    public void onPause() {
        this.isPaused = true;
        BaseFragment baseFragment = this.currentFragment;
        if (baseFragment != null) {
            baseFragment.onPause();
        }
    }

    public void onResume() {
        this.isPaused = false;
        BaseFragment baseFragment = this.currentFragment;
        if (baseFragment != null) {
            baseFragment.onResume();
        }
    }

    public BaseFragment getFragment() {
        return this.currentFragment;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        C3356ActionBar c3356ActionBar = this.currentActionBarView;
        if (view == c3356ActionBar && c3356ActionBar.getActionMode() != null && this.currentActionBarView.getActionMode().getAlpha() == 1.0f) {
            return true;
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.replaceAnimationInProgress) {
            setReplaceProgress(this.replacingFragment, this.currentFragment, this.replaceProgress);
            invalidate();
        }
        super.dispatchDraw(canvas);
        float f = this.openedProgress;
        C3356ActionBar c3356ActionBar = this.currentActionBarView;
        float alpha = (c3356ActionBar == null || c3356ActionBar.getActionMode() == null) ? 0.0f : this.currentActionBarView.getActionMode().getAlpha();
        C3356ActionBar c3356ActionBar2 = this.currentActionBarView;
        float max = f * Math.max(alpha, c3356ActionBar2 == null ? 0.0f : c3356ActionBar2.searchFieldVisibleAlpha);
        if (this.currentFragment == null || this.currentActionBarView == null || max <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        if (this.actionModePaint == null) {
            this.actionModePaint = new Paint();
        }
        this.actionModePaint.setColor(Theme.getColor(Theme.key_actionBarActionModeDefault));
        if (max == 1.0f) {
            canvas.save();
        } else {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), this.currentTop, (int) (max * 255.0f), 31);
        }
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), this.currentTop, this.actionModePaint);
        canvas.translate(this.currentActionBarView.getX(), this.currentActionBarView.getY());
        canvas.save();
        canvas.translate(this.currentActionBarView.getBackButton().getX(), this.currentActionBarView.getBackButton().getY());
        this.currentActionBarView.getBackButton().draw(canvas);
        canvas.restore();
        if (this.currentActionBarView.getActionMode() != null) {
            if (max != this.openedProgress * this.currentActionBarView.getActionMode().getAlpha()) {
                this.currentActionBarView.draw(canvas);
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), this.currentTop, (int) (this.currentActionBarView.getActionMode().getAlpha() * 255.0f), 31);
                this.currentActionBarView.getActionMode().draw(canvas);
                canvas.restore();
            } else {
                this.currentActionBarView.getActionMode().draw(canvas);
            }
        } else {
            this.currentActionBarView.draw(canvas);
        }
        canvas.restore();
        invalidate();
    }

    public void setFragmentViewPadding(int i) {
        this.fragmentViewPadding = i;
    }

    public void setTransitionPaddingBottom(int i) {
        BaseFragment baseFragment = this.currentFragment;
        if (baseFragment instanceof TopicsFragment) {
            ((TopicsFragment) baseFragment).setTransitionPadding(i);
        }
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        super.removeViewInLayout(view);
        if (view == this.currentFragmentView) {
            lambda$presentFragment$1();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        if (view == this.currentFragmentView) {
            lambda$presentFragment$1();
        }
    }
}
