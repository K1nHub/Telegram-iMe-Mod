package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.transition.TransitionManager;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.ViewPagerFixed;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_updateDialogFiltersOrder;
/* renamed from: org.telegram.ui.Components.ViewPagerFixed */
/* loaded from: classes6.dex */
public class ViewPagerFixed extends FrameLayout {
    private static final Interpolator interpolator = new Interpolator() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda3
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float lambda$static$0;
            lambda$static$0 = ViewPagerFixed.lambda$static$0(f);
            return lambda$static$0;
        }
    };
    private Adapter adapter;
    private float additionalOffset;
    private boolean allowDisallowInterceptTouch;
    private boolean animatingForward;
    private boolean backAnimation;
    private float backProgress;
    public int currentPosition;
    public float currentProgress;
    private ValueAnimator manualScrolling;
    private int maximumVelocity;
    private boolean maybeStartTracking;
    int nextPosition;
    private Rect rect;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean startedTracking;
    private int startedTrackingPointerId;
    private int startedTrackingX;
    private int startedTrackingY;
    private AnimatorSet tabsAnimation;
    private boolean tabsAnimationInProgress;
    TabsView tabsView;
    private final float touchSlop;
    ValueAnimator.AnimatorUpdateListener updateTabProgress;
    private VelocityTracker velocityTracker;
    protected View[] viewPages;
    private int[] viewTypes;
    protected SparseArray<View> viewsByType;

    /* renamed from: org.telegram.ui.Components.ViewPagerFixed$Adapter */
    /* loaded from: classes6.dex */
    public static abstract class Adapter {
        public abstract void bindView(View view, int i, int i2);

        public abstract View createView(int i);

        public abstract int getItemCount();

        public int getItemIcon(int i) {
            return 0;
        }

        public int getItemId(int i) {
            return i;
        }

        public String getItemTitle(int i) {
            return "";
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public boolean hasStableId() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$0(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }

    protected boolean canScroll(MotionEvent motionEvent) {
        return true;
    }

    protected void invalidateBlur() {
    }

    protected void onBack() {
    }

    protected boolean onBackProgress(float f) {
        return false;
    }

    protected void onItemSelected(View view, View view2, int i, int i2) {
    }

    protected void onScrollEnd() {
    }

    protected void onTabAnimationUpdate(boolean z) {
    }

    protected void onTabPageSelected(int i) {
    }

    protected int tabMarginDp() {
        return 16;
    }

    public TabsView createTabsView(boolean z, int i) {
        return createTabsView(z, i, TabsView.TabType.TITLE);
    }

    public float getPositionAnimated() {
        float f;
        View[] viewArr = this.viewPages;
        if (viewArr[0] == null || viewArr[0].getVisibility() != 0) {
            f = 0.0f;
        } else {
            f = (this.currentPosition * Utilities.clamp(1.0f - Math.abs(this.viewPages[0].getTranslationX() / getAvailableTranslationX()), 1.0f, (float) BitmapDescriptorFactory.HUE_RED)) + BitmapDescriptorFactory.HUE_RED;
        }
        View[] viewArr2 = this.viewPages;
        if (viewArr2[1] == null || viewArr2[1].getVisibility() != 0) {
            return f;
        }
        return f + (this.nextPosition * Utilities.clamp(1.0f - Math.abs(this.viewPages[1].getTranslationX() / getAvailableTranslationX()), 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float getAvailableTranslationX() {
        return AndroidUtilities.displaySize.x;
    }

    public ViewPagerFixed(Context context) {
        this(context, null);
    }

    public ViewPagerFixed(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentProgress = 1.0f;
        this.viewsByType = new SparseArray<>();
        this.updateTabProgress = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (ViewPagerFixed.this.tabsAnimationInProgress) {
                    float abs = Math.abs(ViewPagerFixed.this.viewPages[0].getTranslationX()) / ViewPagerFixed.this.viewPages[0].getMeasuredWidth();
                    ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                    float f = 1.0f - abs;
                    viewPagerFixed.currentProgress = f;
                    TabsView tabsView = viewPagerFixed.tabsView;
                    if (tabsView != null) {
                        tabsView.selectTab(viewPagerFixed.nextPosition, viewPagerFixed.currentPosition, f);
                    }
                }
                ViewPagerFixed.this.onTabAnimationUpdate(false);
            }
        };
        this.rect = new Rect();
        this.allowDisallowInterceptTouch = true;
        this.resourcesProvider = resourcesProvider;
        this.touchSlop = AndroidUtilities.getPixelsInCM(0.3f, true);
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.viewTypes = new int[2];
        this.viewPages = new View[2];
        setClipChildren(true);
    }

    public void setAdapter(Adapter adapter) {
        this.adapter = adapter;
        this.viewTypes[0] = adapter.getItemViewType(this.currentPosition);
        this.viewPages[0] = adapter.createView(this.viewTypes[0]);
        if (this.viewPages[0] == null && this.currentPosition != 0) {
            this.currentPosition = 0;
            this.viewTypes[0] = adapter.getItemViewType(0);
            this.viewPages[0] = adapter.createView(this.viewTypes[0]);
        }
        adapter.bindView(this.viewPages[0], this.currentPosition, this.viewTypes[0]);
        addView(this.viewPages[0]);
        this.viewPages[0].setVisibility(0);
        fillTabs(false);
    }

    public boolean isManualScrolling() {
        ValueAnimator valueAnimator = this.manualScrolling;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    public boolean scrollToPosition(int i) {
        ValueAnimator valueAnimator;
        if (i == this.currentPosition || ((valueAnimator = this.manualScrolling) != null && this.nextPosition == i)) {
            return false;
        }
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.manualScrolling = null;
        }
        boolean z = this.currentPosition < i;
        this.animatingForward = z;
        this.nextPosition = i;
        updateViewForIndex(1);
        onTabPageSelected(i);
        View[] viewArr = this.viewPages;
        int measuredWidth = viewArr[0] != null ? viewArr[0].getMeasuredWidth() : 0;
        if (z) {
            this.viewPages[1].setTranslationX(measuredWidth);
        } else {
            this.viewPages[1].setTranslationX(-measuredWidth);
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.manualScrolling = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ViewPagerFixed.this.lambda$scrollToPosition$1(valueAnimator2);
            }
        });
        this.manualScrolling.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                if (viewPagerFixed.viewPages[1] != null) {
                    viewPagerFixed.swapViews();
                    ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                    viewPagerFixed2.viewsByType.put(viewPagerFixed2.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                    ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                    viewPagerFixed3.removeView(viewPagerFixed3.viewPages[1]);
                    ViewPagerFixed.this.viewPages[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    ViewPagerFixed.this.viewPages[1] = null;
                }
                ViewPagerFixed.this.manualScrolling = null;
                ViewPagerFixed.this.onTabAnimationUpdate(true);
                ViewPagerFixed.this.onScrollEnd();
            }
        });
        this.manualScrolling.setDuration(540L);
        this.manualScrolling.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.manualScrolling.start();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scrollToPosition$1(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View[] viewArr = this.viewPages;
        if (viewArr[1] == null) {
            return;
        }
        if (this.animatingForward) {
            viewArr[1].setTranslationX(viewArr[0].getMeasuredWidth() * (1.0f - floatValue));
            View[] viewArr2 = this.viewPages;
            viewArr2[0].setTranslationX((-viewArr2[0].getMeasuredWidth()) * floatValue);
        } else {
            viewArr[1].setTranslationX((-viewArr[0].getMeasuredWidth()) * (1.0f - floatValue));
            View[] viewArr3 = this.viewPages;
            viewArr3[0].setTranslationX(viewArr3[0].getMeasuredWidth() * floatValue);
        }
        this.currentProgress = floatValue;
        onTabAnimationUpdate(true);
    }

    public TabsView createTabsView(boolean z, int i, TabsView.TabType tabType) {
        TabsView tabsView = new TabsView(getContext(), z, i, this.resourcesProvider) { // from class: org.telegram.ui.Components.ViewPagerFixed.3
            @Override // org.telegram.p043ui.Components.ViewPagerFixed.TabsView
            public void selectTab(int i2, int i3, float f) {
                super.selectTab(i2, i3, f);
                ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                if (f > 0.5f) {
                    i2 = i3;
                }
                viewPagerFixed.onTabPageSelected(i2);
            }
        };
        this.tabsView = tabsView;
        tabsView.setTabType(tabType);
        this.tabsView.tabMarginDp = tabMarginDp();
        this.tabsView.setDelegate(new TabsView.TabsViewDelegate() { // from class: org.telegram.ui.Components.ViewPagerFixed.4
            @Override // org.telegram.p043ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void onSamePageSelected() {
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void onPageSelected(int i2, boolean z2) {
                ViewPagerFixed.this.animatingForward = z2;
                ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                viewPagerFixed.nextPosition = i2;
                viewPagerFixed.updateViewForIndex(1);
                ViewPagerFixed.this.onTabPageSelected(i2);
                View[] viewArr = ViewPagerFixed.this.viewPages;
                int measuredWidth = viewArr[0] != null ? viewArr[0].getMeasuredWidth() : 0;
                View[] viewArr2 = ViewPagerFixed.this.viewPages;
                if (viewArr2[1] != null) {
                    if (z2) {
                        viewArr2[1].setTranslationX(measuredWidth);
                    } else {
                        viewArr2[1].setTranslationX(-measuredWidth);
                    }
                }
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void onPageScrolled(float f) {
                if (f == 1.0f) {
                    ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                    if (viewPagerFixed.viewPages[1] != null) {
                        viewPagerFixed.swapViews();
                        ViewPagerFixed viewPagerFixed2 = ViewPagerFixed.this;
                        viewPagerFixed2.viewsByType.put(viewPagerFixed2.viewTypes[1], ViewPagerFixed.this.viewPages[1]);
                        ViewPagerFixed viewPagerFixed3 = ViewPagerFixed.this;
                        viewPagerFixed3.removeView(viewPagerFixed3.viewPages[1]);
                        ViewPagerFixed.this.viewPages[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        ViewPagerFixed.this.viewPages[1] = null;
                        return;
                    }
                    return;
                }
                ViewPagerFixed viewPagerFixed4 = ViewPagerFixed.this;
                if (viewPagerFixed4.viewPages[1] == null) {
                    return;
                }
                if (viewPagerFixed4.animatingForward) {
                    View[] viewArr = ViewPagerFixed.this.viewPages;
                    viewArr[1].setTranslationX(viewArr[0].getMeasuredWidth() * (1.0f - f));
                    View[] viewArr2 = ViewPagerFixed.this.viewPages;
                    viewArr2[0].setTranslationX((-viewArr2[0].getMeasuredWidth()) * f);
                    return;
                }
                View[] viewArr3 = ViewPagerFixed.this.viewPages;
                viewArr3[1].setTranslationX((-viewArr3[0].getMeasuredWidth()) * (1.0f - f));
                View[] viewArr4 = ViewPagerFixed.this.viewPages;
                viewArr4[0].setTranslationX(viewArr4[0].getMeasuredWidth() * f);
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public boolean canPerformActions() {
                return (ViewPagerFixed.this.tabsAnimationInProgress || ViewPagerFixed.this.startedTracking) ? false : true;
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.TabsView.TabsViewDelegate
            public void invalidateBlur() {
                ViewPagerFixed.this.invalidateBlur();
            }
        });
        fillTabs(false);
        return this.tabsView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewForIndex(int i) {
        int i2 = i == 0 ? this.currentPosition : this.nextPosition;
        if (i2 < 0 || i2 >= this.adapter.getItemCount()) {
            return;
        }
        if (this.viewPages[i] == null) {
            this.viewTypes[i] = this.adapter.getItemViewType(i2);
            View view = this.viewsByType.get(this.viewTypes[i]);
            if (view == null) {
                view = this.adapter.createView(this.viewTypes[i]);
            } else {
                this.viewsByType.remove(this.viewTypes[i]);
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            addView(view);
            View[] viewArr = this.viewPages;
            viewArr[i] = view;
            this.adapter.bindView(viewArr[i], i2, this.viewTypes[i]);
            this.viewPages[i].setVisibility(0);
        } else if (this.viewTypes[i] == this.adapter.getItemViewType(i2)) {
            this.adapter.bindView(this.viewPages[i], i2, this.viewTypes[i]);
            this.viewPages[i].setVisibility(0);
        } else {
            this.viewsByType.put(this.viewTypes[i], this.viewPages[i]);
            this.viewPages[i].setVisibility(8);
            removeView(this.viewPages[i]);
            this.viewTypes[i] = this.adapter.getItemViewType(i2);
            View view2 = this.viewsByType.get(this.viewTypes[i]);
            if (view2 == null) {
                view2 = this.adapter.createView(this.viewTypes[i]);
            } else {
                this.viewsByType.remove(this.viewTypes[i]);
            }
            addView(view2);
            View[] viewArr2 = this.viewPages;
            viewArr2[i] = view2;
            viewArr2[i].setVisibility(0);
            Adapter adapter = this.adapter;
            adapter.bindView(this.viewPages[i], i2, adapter.getItemViewType(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fillTabs(boolean z) {
        TabsView tabsView;
        if (this.adapter == null || (tabsView = this.tabsView) == null) {
            return;
        }
        tabsView.removeTabs();
        for (int i = 0; i < this.adapter.getItemCount(); i++) {
            if (this.tabsView.tabType == TabsView.TabType.TITLE_WITH_ICON) {
                this.tabsView.addTabWithIcon(this.adapter.getItemId(i), this.adapter.getItemTitle(i), this.adapter.getItemIcon(i));
            } else {
                this.tabsView.addTab(this.adapter.getItemId(i), this.adapter.getItemTitle(i));
            }
        }
        if (z) {
            TransitionManager.beginDelayedTransition(this.tabsView.listView, TransitionExt.createSimpleTransition());
        }
        this.tabsView.finishAddingTabs();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
        if (onBackProgress(com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean prepareForMoving(android.view.MotionEvent r5, boolean r6) {
        /*
            r4 = this;
            r0 = 0
            if (r6 != 0) goto L10
            int r1 = r4.currentPosition
            if (r1 != 0) goto L10
            r1 = 0
            r4.backProgress = r1
            boolean r1 = r4.onBackProgress(r1)
            if (r1 == 0) goto L22
        L10:
            r1 = 1
            if (r6 == 0) goto L1e
            int r2 = r4.currentPosition
            org.telegram.ui.Components.ViewPagerFixed$Adapter r3 = r4.adapter
            int r3 = r3.getItemCount()
            int r3 = r3 - r1
            if (r2 == r3) goto L22
        L1e:
            android.animation.ValueAnimator r2 = r4.manualScrolling
            if (r2 == 0) goto L23
        L22:
            return r0
        L23:
            boolean r2 = r4.canScroll(r5)
            if (r2 != 0) goto L2a
            return r0
        L2a:
            android.view.ViewParent r2 = r4.getParent()
            r2.requestDisallowInterceptTouchEvent(r1)
            r4.maybeStartTracking = r0
            r4.startedTracking = r1
            float r5 = r5.getX()
            float r2 = r4.additionalOffset
            float r5 = r5 + r2
            int r5 = (int) r5
            r4.startedTrackingX = r5
            org.telegram.ui.Components.ViewPagerFixed$TabsView r5 = r4.tabsView
            if (r5 == 0) goto L46
            r5.setEnabled(r0)
        L46:
            r4.animatingForward = r6
            int r5 = r4.currentPosition
            if (r6 == 0) goto L4e
            r2 = r1
            goto L4f
        L4e:
            r2 = -1
        L4f:
            int r5 = r5 + r2
            r4.nextPosition = r5
            r4.updateViewForIndex(r1)
            android.view.View[] r5 = r4.viewPages
            r2 = r5[r1]
            if (r2 == 0) goto L77
            if (r6 == 0) goto L6a
            r6 = r5[r1]
            r5 = r5[r0]
            int r5 = r5.getMeasuredWidth()
            float r5 = (float) r5
            r6.setTranslationX(r5)
            goto L77
        L6a:
            r6 = r5[r1]
            r5 = r5[r0]
            int r5 = r5.getMeasuredWidth()
            int r5 = -r5
            float r5 = (float) r5
            r6.setTranslationX(r5)
        L77:
            r4.onTabAnimationUpdate(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ViewPagerFixed.prepareForMoving(android.view.MotionEvent, boolean):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        TabsView tabsView = this.tabsView;
        if (tabsView == null || !tabsView.isAnimatingIndicator()) {
            if (checkTabsAnimationInProgress()) {
                return true;
            }
            onTouchEvent(motionEvent);
            return this.startedTracking;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (this.allowDisallowInterceptTouch && this.maybeStartTracking && !this.startedTracking) {
            onTouchEvent(null);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:150:0x02a5, code lost:
        r6 = true;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 1274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ViewPagerFixed.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$2(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.backProgress = floatValue;
        onBackProgress(floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void swapViews() {
        View[] viewArr = this.viewPages;
        View view = viewArr[0];
        viewArr[0] = viewArr[1];
        viewArr[1] = view;
        int i = this.currentPosition;
        int i2 = this.nextPosition;
        this.currentPosition = i2;
        this.nextPosition = i;
        this.currentProgress = 1.0f - this.currentProgress;
        int[] iArr = this.viewTypes;
        int i3 = iArr[0];
        iArr[0] = iArr[1];
        iArr[1] = i3;
        onItemSelected(viewArr[0], viewArr[1], i2, i);
    }

    public boolean checkTabsAnimationInProgress() {
        View[] viewArr;
        if (this.tabsAnimationInProgress) {
            boolean z = true;
            if (this.backAnimation) {
                if (Math.abs(this.viewPages[0].getTranslationX()) < 1.0f) {
                    this.viewPages[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    View[] viewArr2 = this.viewPages;
                    if (viewArr2[1] != null) {
                        viewArr2[1].setTranslationX(viewArr2[0].getMeasuredWidth() * (this.animatingForward ? 1 : -1));
                    }
                }
                z = false;
            } else {
                if (Math.abs(this.viewPages[1].getTranslationX()) < 1.0f) {
                    this.viewPages[0].setTranslationX(viewArr[0].getMeasuredWidth() * (this.animatingForward ? -1 : 1));
                    View[] viewArr3 = this.viewPages;
                    if (viewArr3[1] != null) {
                        viewArr3[1].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    }
                }
                z = false;
            }
            if (z) {
                AnimatorSet animatorSet = this.tabsAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.tabsAnimation = null;
                }
                this.tabsAnimationInProgress = false;
            }
            return this.tabsAnimationInProgress;
        }
        return false;
    }

    public static float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    public void setPosition(int i) {
        if (this.adapter == null) {
            this.currentPosition = i;
            onTabAnimationUpdate(false);
        }
        AnimatorSet animatorSet = this.tabsAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        View[] viewArr = this.viewPages;
        if (viewArr[1] != null) {
            this.viewsByType.put(this.viewTypes[1], viewArr[1]);
            removeView(this.viewPages[1]);
            this.viewPages[1] = null;
        }
        int i2 = this.currentPosition;
        if (i2 != i) {
            this.currentPosition = i;
            this.nextPosition = 0;
            this.currentProgress = 1.0f;
            View view = this.viewPages[0];
            updateViewForIndex(0);
            onItemSelected(this.viewPages[0], view, this.currentPosition, i2);
            this.viewPages[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
            TabsView tabsView = this.tabsView;
            if (tabsView != null) {
                tabsView.selectTab(this.currentPosition, this.nextPosition, this.currentProgress);
            }
        }
    }

    public View[] getViewPages() {
        return this.viewPages;
    }

    public boolean isCurrentTabFirst() {
        return this.currentPosition == 0;
    }

    public void rebuild(boolean z) {
        onTouchEvent(null);
        if (!this.adapter.hasStableId()) {
            z = false;
        }
        AnimatorSet animatorSet = this.tabsAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.tabsAnimation = null;
        }
        View[] viewArr = this.viewPages;
        if (viewArr[1] != null) {
            removeView(viewArr[1]);
            this.viewPages[1] = null;
        }
        View[] viewArr2 = this.viewPages;
        viewArr2[1] = viewArr2[0];
        int intValue = (viewArr2[1] == null || viewArr2[1].getTag() == null) ? 0 : ((Integer) this.viewPages[1].getTag()).intValue();
        if (this.adapter.getItemCount() == 0) {
            View[] viewArr3 = this.viewPages;
            if (viewArr3[1] != null) {
                removeView(viewArr3[1]);
                this.viewPages[1] = null;
            }
            View[] viewArr4 = this.viewPages;
            if (viewArr4[0] != null) {
                removeView(viewArr4[0]);
                this.viewPages[0] = null;
                return;
            }
            return;
        }
        if (this.currentPosition > this.adapter.getItemCount() - 1) {
            this.currentPosition = this.adapter.getItemCount() - 1;
        }
        if (this.currentPosition < 0) {
            this.currentPosition = 0;
        }
        this.viewTypes[0] = this.adapter.getItemViewType(this.currentPosition);
        this.viewPages[0] = this.adapter.createView(this.viewTypes[0]);
        this.adapter.bindView(this.viewPages[0], this.currentPosition, this.viewTypes[0]);
        addView(this.viewPages[0]);
        this.viewPages[0].setVisibility(0);
        if ((this.viewPages[0].getTag() == null ? 0 : ((Integer) this.viewPages[0].getTag()).intValue()) == intValue) {
            z = false;
        }
        if (z) {
            this.tabsView.saveFromValues();
        }
        fillTabs(z);
        if (z) {
            this.tabsAnimation = new AnimatorSet();
            View[] viewArr5 = this.viewPages;
            if (viewArr5[1] != null) {
                viewArr5[1].setTranslationX(BitmapDescriptorFactory.HUE_RED);
            }
            View[] viewArr6 = this.viewPages;
            if (viewArr6[0] != null) {
                viewArr6[0].setTranslationX(-getMeasuredWidth());
            }
            View[] viewArr7 = this.viewPages;
            if (viewArr7[1] != null) {
                this.tabsAnimation.playTogether(ObjectAnimator.ofFloat(viewArr7[1], View.TRANSLATION_X, getMeasuredWidth()));
            }
            View[] viewArr8 = this.viewPages;
            if (viewArr8[0] != null) {
                this.tabsAnimation.playTogether(ObjectAnimator.ofFloat(viewArr8[0], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
            }
            this.tabsView.indicatorProgress2 = BitmapDescriptorFactory.HUE_RED;
            this.tabsView.listView.invalidateViews();
            this.tabsView.invalidate();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ViewPagerFixed.this.lambda$rebuild$3(valueAnimator);
                }
            });
            this.tabsAnimation.playTogether(ofFloat);
            this.tabsAnimation.setInterpolator(interpolator);
            this.tabsAnimation.setDuration(220L);
            this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ViewPagerFixed.this.tabsAnimation = null;
                    ViewPagerFixed viewPagerFixed = ViewPagerFixed.this;
                    View[] viewArr9 = viewPagerFixed.viewPages;
                    if (viewArr9[1] != null) {
                        viewPagerFixed.removeView(viewArr9[1]);
                        ViewPagerFixed.this.viewPages[1] = null;
                    }
                    ViewPagerFixed.this.tabsAnimationInProgress = false;
                    TabsView tabsView = ViewPagerFixed.this.tabsView;
                    if (tabsView != null) {
                        tabsView.setEnabled(true);
                        ViewPagerFixed.this.tabsView.animatingIndicator = false;
                        ViewPagerFixed.this.tabsView.indicatorProgress2 = 1.0f;
                        ViewPagerFixed.this.tabsView.listView.invalidateViews();
                        ViewPagerFixed.this.tabsView.invalidate();
                    }
                }
            });
            this.tabsView.setEnabled(false);
            this.tabsAnimationInProgress = true;
            this.tabsAnimation.start();
            return;
        }
        View[] viewArr9 = this.viewPages;
        if (viewArr9[1] != null) {
            removeView(viewArr9[1]);
            this.viewPages[1] = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rebuild$3(ValueAnimator valueAnimator) {
        this.updateTabProgress.onAnimationUpdate(valueAnimator);
        this.tabsView.indicatorProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.tabsView.listView.invalidateViews();
        this.tabsView.invalidate();
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (i == 0) {
            return false;
        }
        if (!this.tabsAnimationInProgress && !this.startedTracking) {
            boolean z = i > 0;
            if ((!z && this.currentPosition == 0) || (z && this.currentPosition == this.adapter.getItemCount() - 1)) {
                return false;
            }
        }
        return true;
    }

    public View getCurrentView() {
        return this.viewPages[0];
    }

    public int getCurrentPosition() {
        return this.currentPosition;
    }

    /* renamed from: org.telegram.ui.Components.ViewPagerFixed$TabsView */
    /* loaded from: classes6.dex */
    public static class TabsView extends FrameLayout {
        private int activeTextColorKey;
        private ListAdapter adapter;
        private int additionalTabWidth;
        private int allTabsWidth;
        private boolean animatingIndicator;
        private float animatingIndicatorProgress;
        private Runnable animationRunnable;
        private float animationTime;
        private int backgroundColorKey;
        private Paint counterPaint;
        private float crossfadeAlpha;
        private Bitmap crossfadeBitmap;
        private Paint crossfadePaint;
        private int currentPosition;
        private TabsViewDelegate delegate;
        private Paint deletePaint;
        private float editingAnimationProgress;
        private float editingStartAnimationProgress;
        private float hideProgress;
        private SparseIntArray idToPosition;
        private boolean ignoreLayout;
        private float indicatorProgress2;
        private CubicBezierInterpolator interpolator;
        private boolean isEditing;
        private boolean isInHiddenMode;
        private long lastAnimationTime;
        float lastDrawnIndicatorW;
        float lastDrawnIndicatorX;
        private LinearLayoutManager layoutManager;
        private RecyclerListView listView;
        private int manualScrollingToId;
        private int manualScrollingToPosition;
        private boolean orderChanged;
        private SparseIntArray positionToId;
        private SparseIntArray positionToWidth;
        private SparseIntArray positionToX;
        private int prevLayoutWidth;
        private int previousId;
        private int previousPosition;
        private Theme.ResourcesProvider resourcesProvider;
        private int scrollingToChild;
        private int selectedTabId;
        private int selectorColorKey;
        private GradientDrawable selectorDrawable;
        private int tabLineColorKey;
        public int tabMarginDp;
        private TabType tabType;
        private ArrayList<Tab> tabs;
        ValueAnimator tabsAnimator;
        private TextPaint textCounterPaint;
        private TextPaint textPaint;
        private int unactiveTextColorKey;

        /* renamed from: org.telegram.ui.Components.ViewPagerFixed$TabsView$TabType */
        /* loaded from: classes6.dex */
        public enum TabType {
            TITLE,
            TITLE_WITH_ICON
        }

        /* renamed from: org.telegram.ui.Components.ViewPagerFixed$TabsView$TabsViewDelegate */
        /* loaded from: classes6.dex */
        public interface TabsViewDelegate {
            boolean canPerformActions();

            void invalidateBlur();

            void onPageScrolled(float f);

            void onPageSelected(int i, boolean z);

            void onSamePageSelected();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$setIsEditing$1(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void saveFromValues() {
        }

        static /* synthetic */ float access$3616(TabsView tabsView, float f) {
            float f2 = tabsView.animationTime + f;
            tabsView.animationTime = f2;
            return f2;
        }

        public void setTabType(TabType tabType) {
            this.tabType = tabType;
        }

        public void addTabWithIcon(int i, String str, int i2) {
            int size = this.tabs.size();
            if (size == 0 && this.selectedTabId == -1) {
                this.selectedTabId = i;
            }
            this.positionToId.put(size, i);
            this.idToPosition.put(i, size);
            int i3 = this.selectedTabId;
            if (i3 != -1 && i3 == i) {
                this.currentPosition = size;
            }
            TabWithIcon tabWithIcon = new TabWithIcon(i, str);
            tabWithIcon.icon = AppCompatResources.getDrawable(getContext(), i2).mutate();
            this.allTabsWidth += tabWithIcon.getWidth(true, this.textPaint) + AndroidUtilities.m107dp(32);
            this.tabs.add(tabWithIcon);
        }

        public void setColors(int i, int i2, int i3, int i4, int i5) {
            this.tabLineColorKey = i;
            this.activeTextColorKey = i2;
            this.unactiveTextColorKey = i3;
            this.selectorColorKey = i4;
            this.selectorDrawable.setColor(Theme.getColor(i));
            this.backgroundColorKey = i5;
            setBackgroundColor(Theme.getColor(i5));
        }

        public int getBackgroundColorKey() {
            return this.backgroundColorKey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.ViewPagerFixed$TabsView$TabWithIcon */
        /* loaded from: classes6.dex */
        public class TabWithIcon extends Tab {
            private Drawable icon;
            private int iconPadding;

            private TabWithIcon(TabsView tabsView, int i, String str) {
                super(i, str);
                this.iconPadding = 8;
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.TabsView.Tab
            public int getWidth(boolean z, TextPaint textPaint) {
                int ceil = ((int) Math.ceil(textPaint.measureText(this.title))) + this.icon.getIntrinsicWidth() + AndroidUtilities.m107dp(this.iconPadding);
                this.titleWidth = ceil;
                return Math.max(AndroidUtilities.m107dp(40), ceil);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.ViewPagerFixed$TabsView$Tab */
        /* loaded from: classes6.dex */
        public static class Tab {
            public float alpha = 1.0f;
            public int counter;

            /* renamed from: id */
            public int f1981id;
            public String title;
            public int titleWidth;

            public Tab(int i, String str) {
                this.f1981id = i;
                this.title = str;
            }

            public int getWidth(boolean z, TextPaint textPaint) {
                int ceil = (int) Math.ceil(textPaint.measureText(this.title));
                this.titleWidth = ceil;
                return Math.max(AndroidUtilities.m107dp(40), ceil);
            }
        }

        /* renamed from: org.telegram.ui.Components.ViewPagerFixed$TabsView$TabView */
        /* loaded from: classes6.dex */
        public class TabView extends View {
            private int currentPosition;
            private Tab currentTab;
            private String currentText;
            private RectF rect;
            private int tabWidth;
            private int textHeight;
            private StaticLayout textLayout;
            private int textOffsetX;

            public TabView(Context context) {
                super(context);
                this.rect = new RectF();
            }

            public void setTab(Tab tab, int i) {
                this.currentTab = tab;
                this.currentPosition = i;
                setContentDescription(tab.title);
                setAlpha(tab.alpha);
                requestLayout();
            }

            @Override // android.view.View
            public int getId() {
                return this.currentTab.f1981id;
            }

            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                setMeasuredDimension(this.currentTab.getWidth(false, TabsView.this.textPaint) + AndroidUtilities.m107dp(TabsView.this.tabMarginDp * 2) + TabsView.this.additionalTabWidth, View.MeasureSpec.getSize(i2));
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                int i6;
                int i7;
                String str;
                int i8;
                int i9;
                int i10;
                int i11;
                if (this.currentTab.f1981id != Integer.MAX_VALUE && TabsView.this.editingAnimationProgress != BitmapDescriptorFactory.HUE_RED) {
                    canvas.save();
                    float f = TabsView.this.editingAnimationProgress * (this.currentPosition % 2 == 0 ? 1.0f : -1.0f);
                    canvas.translate(AndroidUtilities.m108dp(0.66f) * f, BitmapDescriptorFactory.HUE_RED);
                    canvas.rotate(f, getMeasuredWidth() / 2, getMeasuredHeight() / 2);
                }
                if (TabsView.this.manualScrollingToId != -1) {
                    i = TabsView.this.manualScrollingToId;
                    i2 = TabsView.this.selectedTabId;
                } else {
                    i = TabsView.this.selectedTabId;
                    i2 = TabsView.this.previousId;
                }
                if (this.currentTab.f1981id == i) {
                    i3 = TabsView.this.activeTextColorKey;
                    i4 = TabsView.this.unactiveTextColorKey;
                    i5 = Theme.key_chats_tabUnreadActiveBackground;
                    i6 = Theme.key_chats_tabUnreadUnactiveBackground;
                } else {
                    i3 = TabsView.this.unactiveTextColorKey;
                    i4 = TabsView.this.activeTextColorKey;
                    i5 = Theme.key_chats_tabUnreadUnactiveBackground;
                    i6 = Theme.key_chats_tabUnreadActiveBackground;
                }
                if ((TabsView.this.animatingIndicator || TabsView.this.manualScrollingToId != -1) && ((i7 = this.currentTab.f1981id) == i || i7 == i2)) {
                    TabsView.this.textPaint.setColor(ColorUtils.blendARGB(Theme.getColor(i4, TabsView.this.resourcesProvider), Theme.getColor(i3, TabsView.this.resourcesProvider), TabsView.this.animatingIndicatorProgress));
                } else {
                    TabsView.this.textPaint.setColor(Theme.getColor(i3, TabsView.this.resourcesProvider));
                }
                int i12 = this.currentTab.counter;
                if (i12 > 0) {
                    str = String.format("%d", Integer.valueOf(i12));
                    i8 = (int) Math.ceil(TabsView.this.textCounterPaint.measureText(str));
                    i9 = Math.max(AndroidUtilities.m107dp(10), i8) + AndroidUtilities.m107dp(10);
                } else {
                    str = null;
                    i8 = 0;
                    i9 = 0;
                }
                if (this.currentTab.f1981id != Integer.MAX_VALUE && (TabsView.this.isEditing || TabsView.this.editingStartAnimationProgress != BitmapDescriptorFactory.HUE_RED)) {
                    i9 = (int) (i9 + ((AndroidUtilities.m107dp(20) - i9) * TabsView.this.editingStartAnimationProgress));
                }
                int i13 = this.currentTab.titleWidth;
                if (i9 != 0) {
                    i10 = AndroidUtilities.m108dp((str != null ? 1.0f : TabsView.this.editingStartAnimationProgress) * 6.0f) + i9;
                } else {
                    i10 = 0;
                }
                this.tabWidth = i13 + i10;
                int measuredWidth = (getMeasuredWidth() - this.tabWidth) / 2;
                Tab tab = this.currentTab;
                if (tab instanceof TabWithIcon) {
                    TabWithIcon tabWithIcon = (TabWithIcon) tab;
                    int measuredWidth2 = (getMeasuredWidth() - this.tabWidth) / 2;
                    tabWithIcon.icon.setColorFilter(new PorterDuffColorFilter(TabsView.this.textPaint.getColor(), PorterDuff.Mode.SRC_IN));
                    canvas.save();
                    canvas.translate(measuredWidth2, (getMeasuredHeight() - tabWithIcon.icon.getIntrinsicWidth()) / 2);
                    tabWithIcon.icon.setBounds(0, 0, tabWithIcon.icon.getIntrinsicWidth(), tabWithIcon.icon.getIntrinsicWidth());
                    tabWithIcon.icon.draw(canvas);
                    canvas.restore();
                    measuredWidth = ((tabWithIcon.icon.getIntrinsicWidth() + measuredWidth2) + AndroidUtilities.m107dp(tabWithIcon.iconPadding)) - AndroidUtilities.m107dp(3);
                }
                if (!TextUtils.equals(this.currentTab.title, this.currentText)) {
                    String str2 = this.currentTab.title;
                    this.currentText = str2;
                    StaticLayout staticLayout = new StaticLayout(Emoji.replaceEmoji((CharSequence) str2, TabsView.this.textPaint.getFontMetricsInt(), AndroidUtilities.m107dp(15), false), TabsView.this.textPaint, AndroidUtilities.m107dp(400), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.textLayout = staticLayout;
                    this.textHeight = staticLayout.getHeight();
                    this.textOffsetX = (int) (-this.textLayout.getLineLeft(0));
                }
                if (this.textLayout != null) {
                    canvas.save();
                    canvas.translate(this.textOffsetX + measuredWidth, ((getMeasuredHeight() - this.textHeight) / 2) + 1);
                    this.textLayout.draw(canvas);
                    canvas.restore();
                }
                if (str != null || (this.currentTab.f1981id != Integer.MAX_VALUE && (TabsView.this.isEditing || TabsView.this.editingStartAnimationProgress != BitmapDescriptorFactory.HUE_RED))) {
                    TabsView.this.textCounterPaint.setColor(Theme.getColor(TabsView.this.backgroundColorKey, TabsView.this.resourcesProvider));
                    if (!Theme.hasThemeKey(i5) || !Theme.hasThemeKey(i6)) {
                        TabsView.this.counterPaint.setColor(TabsView.this.textPaint.getColor());
                    } else {
                        int color = Theme.getColor(i5, TabsView.this.resourcesProvider);
                        if ((TabsView.this.animatingIndicator || TabsView.this.manualScrollingToPosition != -1) && ((i11 = this.currentTab.f1981id) == i || i11 == i2)) {
                            TabsView.this.counterPaint.setColor(ColorUtils.blendARGB(Theme.getColor(i6, TabsView.this.resourcesProvider), color, TabsView.this.animatingIndicatorProgress));
                        } else {
                            TabsView.this.counterPaint.setColor(color);
                        }
                    }
                    int m107dp = measuredWidth + this.currentTab.titleWidth + AndroidUtilities.m107dp(6);
                    int measuredHeight = (getMeasuredHeight() - AndroidUtilities.m107dp(20)) / 2;
                    if (this.currentTab.f1981id == Integer.MAX_VALUE || ((!TabsView.this.isEditing && TabsView.this.editingStartAnimationProgress == BitmapDescriptorFactory.HUE_RED) || str != null)) {
                        TabsView.this.counterPaint.setAlpha(255);
                    } else {
                        TabsView.this.counterPaint.setAlpha((int) (TabsView.this.editingStartAnimationProgress * 255.0f));
                    }
                    this.rect.set(m107dp, measuredHeight, m107dp + i9, AndroidUtilities.m107dp(20) + measuredHeight);
                    RectF rectF = this.rect;
                    float f2 = AndroidUtilities.density;
                    canvas.drawRoundRect(rectF, f2 * 11.5f, f2 * 11.5f, TabsView.this.counterPaint);
                    if (str != null) {
                        if (this.currentTab.f1981id != Integer.MAX_VALUE) {
                            TabsView.this.textCounterPaint.setAlpha((int) ((1.0f - TabsView.this.editingStartAnimationProgress) * 255.0f));
                        }
                        RectF rectF2 = this.rect;
                        canvas.drawText(str, rectF2.left + ((rectF2.width() - i8) / 2.0f), measuredHeight + AndroidUtilities.m108dp(14.5f), TabsView.this.textCounterPaint);
                    }
                    if (this.currentTab.f1981id != Integer.MAX_VALUE && (TabsView.this.isEditing || TabsView.this.editingStartAnimationProgress != BitmapDescriptorFactory.HUE_RED)) {
                        TabsView.this.deletePaint.setColor(TabsView.this.textCounterPaint.getColor());
                        TabsView.this.deletePaint.setAlpha((int) (TabsView.this.editingStartAnimationProgress * 255.0f));
                        float m107dp2 = AndroidUtilities.m107dp(3);
                        canvas.drawLine(this.rect.centerX() - m107dp2, this.rect.centerY() - m107dp2, this.rect.centerX() + m107dp2, this.rect.centerY() + m107dp2, TabsView.this.deletePaint);
                        canvas.drawLine(this.rect.centerX() - m107dp2, this.rect.centerY() + m107dp2, this.rect.centerX() + m107dp2, this.rect.centerY() - m107dp2, TabsView.this.deletePaint);
                    }
                }
                if (this.currentTab.f1981id == Integer.MAX_VALUE || TabsView.this.editingAnimationProgress == BitmapDescriptorFactory.HUE_RED) {
                    return;
                }
                canvas.restore();
            }

            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setSelected((this.currentTab == null || TabsView.this.selectedTabId == -1 || this.currentTab.f1981id != TabsView.this.selectedTabId) ? false : true);
            }
        }

        public TabsView(Context context, boolean z, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.tabType = TabType.TITLE;
            this.indicatorProgress2 = 1.0f;
            this.textPaint = new TextPaint(1);
            this.textCounterPaint = new TextPaint(1);
            this.deletePaint = new TextPaint(1);
            this.counterPaint = new Paint(1);
            this.tabs = new ArrayList<>();
            this.crossfadePaint = new Paint();
            this.tabMarginDp = 16;
            this.selectedTabId = -1;
            this.manualScrollingToPosition = -1;
            this.manualScrollingToId = -1;
            this.scrollingToChild = -1;
            this.tabLineColorKey = Theme.key_profile_tabSelectedLine;
            this.activeTextColorKey = Theme.key_profile_tabSelectedText;
            this.unactiveTextColorKey = Theme.key_profile_tabText;
            this.selectorColorKey = Theme.key_profile_tabSelector;
            this.backgroundColorKey = Theme.key_actionBarDefault;
            this.interpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.positionToId = new SparseIntArray(5);
            this.idToPosition = new SparseIntArray(5);
            this.positionToWidth = new SparseIntArray(5);
            this.positionToX = new SparseIntArray(5);
            this.animationRunnable = new Runnable() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TabsView.this.animatingIndicator) {
                        long elapsedRealtime = SystemClock.elapsedRealtime() - TabsView.this.lastAnimationTime;
                        if (elapsedRealtime > 17) {
                            elapsedRealtime = 17;
                        }
                        TabsView.access$3616(TabsView.this, ((float) elapsedRealtime) / 200.0f);
                        TabsView tabsView = TabsView.this;
                        tabsView.setAnimationIdicatorProgress(tabsView.interpolator.getInterpolation(TabsView.this.animationTime));
                        if (TabsView.this.animationTime > 1.0f) {
                            TabsView.this.animationTime = 1.0f;
                        }
                        if (TabsView.this.animationTime < 1.0f) {
                            AndroidUtilities.runOnUIThread(TabsView.this.animationRunnable);
                            return;
                        }
                        TabsView.this.animatingIndicator = false;
                        TabsView.this.setEnabled(true);
                        if (TabsView.this.delegate != null) {
                            TabsView.this.delegate.onPageScrolled(1.0f);
                        }
                    }
                }
            };
            this.resourcesProvider = resourcesProvider;
            this.textCounterPaint.setTextSize(AndroidUtilities.m107dp(13));
            this.textCounterPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textPaint.setTextSize(AndroidUtilities.m107dp(15));
            this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.deletePaint.setStyle(Paint.Style.STROKE);
            this.deletePaint.setStrokeCap(Paint.Cap.ROUND);
            this.deletePaint.setStrokeWidth(AndroidUtilities.m108dp(1.5f));
            this.selectorDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, null);
            float dpf2 = AndroidUtilities.dpf2(3.0f);
            this.selectorDrawable.setCornerRadii(new float[]{dpf2, dpf2, dpf2, dpf2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
            this.selectorDrawable.setColor(Theme.getColor(this.tabLineColorKey, resourcesProvider));
            setHorizontalScrollBarEnabled(false);
            RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.2
                @Override // android.view.ViewGroup
                public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
                    super.addView(view, i2, layoutParams);
                    if (TabsView.this.isInHiddenMode) {
                        view.setScaleX(0.3f);
                        view.setScaleY(0.3f);
                        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        return;
                    }
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                    view.setAlpha(1.0f);
                }

                @Override // android.view.View
                public void setAlpha(float f) {
                    super.setAlpha(f);
                    TabsView.this.invalidate();
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView
                protected boolean canHighlightChildAt(View view, float f, float f2) {
                    if (TabsView.this.isEditing) {
                        TabView tabView = (TabView) view;
                        float m107dp = AndroidUtilities.m107dp(6);
                        if (tabView.rect.left - m107dp < f && tabView.rect.right + m107dp > f) {
                            return false;
                        }
                    }
                    return super.canHighlightChildAt(view, f, f2);
                }
            };
            this.listView = recyclerListView;
            if (z) {
                recyclerListView.setItemAnimator(null);
            } else {
                ((DefaultItemAnimator) recyclerListView.getItemAnimator()).setDelayAnimations(false);
            }
            this.listView.setSelectorType(i);
            if (i == 3) {
                this.listView.setSelectorRadius(0);
            } else {
                this.listView.setSelectorRadius(6);
            }
            this.listView.setSelectorDrawableColor(Theme.getColor(this.selectorColorKey, resourcesProvider));
            RecyclerListView recyclerListView2 = this.listView;
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, false) { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.3
                @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i2) {
                    LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.3.1
                        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                        protected void onTargetFound(View view, RecyclerView.State state2, RecyclerView.SmoothScroller.Action action) {
                            int calculateDxToMakeVisible = calculateDxToMakeVisible(view, getHorizontalSnapPreference());
                            if (calculateDxToMakeVisible > 0 || (calculateDxToMakeVisible == 0 && view.getLeft() - AndroidUtilities.m107dp(21) < 0)) {
                                calculateDxToMakeVisible += AndroidUtilities.m107dp(60);
                            } else if (calculateDxToMakeVisible < 0 || (calculateDxToMakeVisible == 0 && view.getRight() + AndroidUtilities.m107dp(21) > TabsView.this.getMeasuredWidth())) {
                                calculateDxToMakeVisible -= AndroidUtilities.m107dp(60);
                            }
                            int calculateDyToMakeVisible = calculateDyToMakeVisible(view, getVerticalSnapPreference());
                            int max = Math.max(180, calculateTimeForDeceleration((int) Math.sqrt((calculateDxToMakeVisible * calculateDxToMakeVisible) + (calculateDyToMakeVisible * calculateDyToMakeVisible))));
                            if (max > 0) {
                                action.update(-calculateDxToMakeVisible, -calculateDyToMakeVisible, max, this.mDecelerateInterpolator);
                            }
                        }
                    };
                    linearSmoothScroller.setTargetPosition(i2);
                    startSmoothScroll(linearSmoothScroller);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
                public void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
                    if (TabsView.this.isInHiddenMode) {
                        accessibilityNodeInfoCompat.setVisibleToUser(false);
                    }
                }
            };
            this.layoutManager = linearLayoutManager;
            recyclerListView2.setLayoutManager(linearLayoutManager);
            this.listView.setPadding(AndroidUtilities.m107dp(7), 0, AndroidUtilities.m107dp(7), 0);
            this.listView.setClipToPadding(false);
            this.listView.setDrawSelectorBehind(true);
            ListAdapter listAdapter = new ListAdapter(context);
            this.adapter = listAdapter;
            listAdapter.setHasStableIds(z);
            this.listView.setAdapter(this.adapter);
            this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda1
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ boolean hasDoubleTap(View view, int i2) {
                    return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i2);
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ void onDoubleTap(View view, int i2, float f, float f2) {
                    RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i2, f, f2);
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public final void onItemClick(View view, int i2, float f, float f2) {
                    ViewPagerFixed.TabsView.this.lambda$new$0(view, i2, f, f2);
                }
            });
            this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.4
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                    TabsView.this.invalidate();
                }
            });
            addView(this.listView, LayoutHelper.createFrame(-1, -1));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, int i, float f, float f2) {
            TabsViewDelegate tabsViewDelegate;
            if (this.delegate.canPerformActions()) {
                TabView tabView = (TabView) view;
                if (i != this.currentPosition || (tabsViewDelegate = this.delegate) == null) {
                    scrollToTab(tabView.currentTab.f1981id, i);
                } else {
                    tabsViewDelegate.onSamePageSelected();
                }
            }
        }

        public void setDelegate(TabsViewDelegate tabsViewDelegate) {
            this.delegate = tabsViewDelegate;
        }

        public boolean isAnimatingIndicator() {
            return this.animatingIndicator;
        }

        public int getCurrentPosition() {
            return this.currentPosition;
        }

        public int getPreviousPosition() {
            return this.previousPosition;
        }

        public float getAnimatingIndicatorProgress() {
            return this.animatingIndicatorProgress;
        }

        public void scrollToTab(int i, int i2) {
            int i3 = this.currentPosition;
            boolean z = i3 < i2;
            this.scrollingToChild = -1;
            this.previousPosition = i3;
            this.previousId = this.selectedTabId;
            this.currentPosition = i2;
            this.selectedTabId = i;
            ValueAnimator valueAnimator = this.tabsAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            if (this.animatingIndicator) {
                this.animatingIndicator = false;
            }
            this.animationTime = BitmapDescriptorFactory.HUE_RED;
            this.animatingIndicatorProgress = BitmapDescriptorFactory.HUE_RED;
            this.animatingIndicator = true;
            setEnabled(false);
            TabsViewDelegate tabsViewDelegate = this.delegate;
            if (tabsViewDelegate != null) {
                tabsViewDelegate.onPageSelected(i2, z);
            }
            scrollToChild(i2);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.tabsAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    TabsView.this.setAnimationIdicatorProgress(floatValue);
                    if (TabsView.this.delegate != null) {
                        TabsView.this.delegate.onPageScrolled(floatValue);
                    }
                }
            });
            this.tabsAnimator.setDuration(250L);
            this.tabsAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.tabsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ViewPagerFixed.TabsView.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TabsView.this.animatingIndicator = false;
                    TabsView.this.setEnabled(true);
                    if (TabsView.this.delegate != null) {
                        TabsView.this.delegate.onPageScrolled(1.0f);
                    }
                    TabsView.this.invalidate();
                }
            });
            this.tabsAnimator.start();
        }

        public void setAnimationIdicatorProgress(float f) {
            this.animatingIndicatorProgress = f;
            this.listView.invalidateViews();
            invalidate();
            TabsViewDelegate tabsViewDelegate = this.delegate;
            if (tabsViewDelegate != null) {
                tabsViewDelegate.onPageScrolled(f);
            }
        }

        public Drawable getSelectorDrawable() {
            return this.selectorDrawable;
        }

        public RecyclerListView getTabsContainer() {
            return this.listView;
        }

        public void addTab(int i, String str) {
            int size = this.tabs.size();
            if (size == 0 && this.selectedTabId == -1) {
                this.selectedTabId = i;
            }
            this.positionToId.put(size, i);
            this.idToPosition.put(i, size);
            int i2 = this.selectedTabId;
            if (i2 != -1 && i2 == i) {
                this.currentPosition = size;
            }
            Tab tab = new Tab(i, str);
            this.allTabsWidth += tab.getWidth(true, this.textPaint) + AndroidUtilities.m107dp(this.tabMarginDp * 2);
            this.tabs.add(tab);
        }

        public void removeTabs() {
            this.tabs.clear();
            this.positionToId.clear();
            this.idToPosition.clear();
            this.positionToWidth.clear();
            this.positionToX.clear();
            this.allTabsWidth = 0;
        }

        public void finishAddingTabs() {
            this.adapter.notifyDataSetChanged();
        }

        public int getCurrentTabId() {
            return this.selectedTabId;
        }

        public int getFirstTabId() {
            return this.positionToId.get(0, 0);
        }

        private void updateTabsWidths() {
            this.positionToX.clear();
            this.positionToWidth.clear();
            int m107dp = AndroidUtilities.m107dp(7);
            int size = this.tabs.size();
            for (int i = 0; i < size; i++) {
                int width = this.tabs.get(i).getWidth(false, this.textPaint);
                this.positionToWidth.put(i, width);
                this.positionToX.put(i, (this.additionalTabWidth / 2) + m107dp);
                m107dp += width + AndroidUtilities.m107dp(this.tabMarginDp * 2) + this.additionalTabWidth;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00d1  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00f9  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
        @Override // android.view.ViewGroup
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected boolean drawChild(android.graphics.Canvas r10, android.view.View r11, long r12) {
            /*
                Method dump skipped, instructions count: 337
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ViewPagerFixed.TabsView.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            if (!this.tabs.isEmpty()) {
                int size = (View.MeasureSpec.getSize(i) - AndroidUtilities.m107dp(7)) - AndroidUtilities.m107dp(7);
                int i3 = this.additionalTabWidth;
                if (this.tabs.size() == 1) {
                    this.additionalTabWidth = 0;
                } else {
                    int i4 = this.allTabsWidth;
                    this.additionalTabWidth = i4 < size ? (size - i4) / this.tabs.size() : 0;
                }
                if (i3 != this.additionalTabWidth) {
                    this.ignoreLayout = true;
                    this.adapter.notifyDataSetChanged();
                    this.ignoreLayout = false;
                }
                updateTabsWidths();
            }
            super.onMeasure(i, i2);
        }

        public void updateColors() {
            this.selectorDrawable.setColor(Theme.getColor(this.tabLineColorKey, this.resourcesProvider));
            this.listView.invalidateViews();
            this.listView.invalidate();
            invalidate();
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        private void scrollToChild(int i) {
            if (this.tabs.isEmpty() || this.scrollingToChild == i || i < 0 || i >= this.tabs.size()) {
                return;
            }
            this.scrollingToChild = i;
            this.listView.smoothScrollToPosition(i);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            int i5 = i3 - i;
            if (this.prevLayoutWidth != i5) {
                this.prevLayoutWidth = i5;
                this.scrollingToChild = -1;
                if (this.animatingIndicator) {
                    AndroidUtilities.cancelRunOnUIThread(this.animationRunnable);
                    this.animatingIndicator = false;
                    setEnabled(true);
                    TabsViewDelegate tabsViewDelegate = this.delegate;
                    if (tabsViewDelegate != null) {
                        tabsViewDelegate.onPageScrolled(1.0f);
                    }
                }
            }
        }

        public void selectTab(int i, int i2, float f) {
            if (f < BitmapDescriptorFactory.HUE_RED) {
                f = 0.0f;
            } else if (f > 1.0f) {
                f = 1.0f;
            }
            this.currentPosition = i;
            this.selectedTabId = this.positionToId.get(i);
            if (f > BitmapDescriptorFactory.HUE_RED) {
                this.manualScrollingToPosition = i2;
                this.manualScrollingToId = this.positionToId.get(i2);
            } else {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
            }
            this.animatingIndicatorProgress = f;
            this.listView.invalidateViews();
            invalidate();
            scrollToChild(i);
            if (f >= 1.0f) {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
                this.currentPosition = i2;
                this.selectedTabId = this.positionToId.get(i2);
            }
            TabsViewDelegate tabsViewDelegate = this.delegate;
            if (tabsViewDelegate != null) {
                tabsViewDelegate.invalidateBlur();
            }
        }

        public void selectTabWithId(int i, float f) {
            int i2 = this.idToPosition.get(i, -1);
            if (i2 < 0) {
                return;
            }
            if (f < BitmapDescriptorFactory.HUE_RED) {
                f = 0.0f;
            } else if (f > 1.0f) {
                f = 1.0f;
            }
            if (f > BitmapDescriptorFactory.HUE_RED) {
                this.manualScrollingToPosition = i2;
                this.manualScrollingToId = i;
            } else {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
            }
            this.animatingIndicatorProgress = f;
            this.listView.invalidateViews();
            invalidate();
            scrollToChild(i2);
            if (f >= 1.0f) {
                this.manualScrollingToPosition = -1;
                this.manualScrollingToId = -1;
                this.currentPosition = i2;
                this.selectedTabId = i;
            }
        }

        public void setIsEditing(boolean z) {
            this.isEditing = z;
            this.listView.invalidateViews();
            invalidate();
            if (this.isEditing || !this.orderChanged) {
                return;
            }
            MessagesStorage.getInstance(UserConfig.selectedAccount).saveDialogFiltersOrder();
            TLRPC$TL_messages_updateDialogFiltersOrder tLRPC$TL_messages_updateDialogFiltersOrder = new TLRPC$TL_messages_updateDialogFiltersOrder();
            ArrayList<MessagesController.DialogFilter> arrayList = MessagesController.getInstance(UserConfig.selectedAccount).dialogFilters;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                arrayList.get(i);
                tLRPC$TL_messages_updateDialogFiltersOrder.order.add(Integer.valueOf(arrayList.get(i).f1538id));
            }
            ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tLRPC$TL_messages_updateDialogFiltersOrder, new RequestDelegate() { // from class: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ViewPagerFixed.TabsView.lambda$setIsEditing$1(tLObject, tLRPC$TL_error);
                }
            });
            this.orderChanged = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.ViewPagerFixed$TabsView$ListAdapter */
        /* loaded from: classes6.dex */
        public class ListAdapter extends RecyclerListView.SelectionAdapter {
            private Context mContext;

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return 0;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            public ListAdapter(Context context) {
                this.mContext = context;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return TabsView.this.tabs.size();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public long getItemId(int i) {
                return ((Tab) TabsView.this.tabs.get(i)).f1981id;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return new RecyclerListView.Holder(new TabView(this.mContext));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                ((TabView) viewHolder.itemView).setTab((Tab) TabsView.this.tabs.get(i), i);
            }
        }

        public void hide(boolean z, boolean z2) {
            this.isInHiddenMode = z;
            int i = 0;
            if (z2) {
                while (i < this.listView.getChildCount()) {
                    this.listView.getChildAt(i).animate().alpha(z ? 0.0f : 1.0f).scaleX(z ? 0.0f : 1.0f).scaleY(z ? 0.0f : 1.0f).setInterpolator(CubicBezierInterpolator.DEFAULT).setDuration(220L).start();
                    i++;
                }
            } else {
                while (i < this.listView.getChildCount()) {
                    View childAt = this.listView.getChildAt(i);
                    childAt.setScaleX(z ? 0.0f : 1.0f);
                    childAt.setScaleY(z ? 0.0f : 1.0f);
                    childAt.setAlpha(z ? 0.0f : 1.0f);
                    i++;
                }
                this.hideProgress = z ? 1.0f : 0.0f;
            }
            invalidate();
        }
    }

    private View findScrollingChild(ViewGroup viewGroup, float f, float f2) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(this.rect);
                if (!this.rect.contains((int) f, (int) f2)) {
                    continue;
                } else if (childAt.canScrollHorizontally(-1)) {
                    return childAt;
                } else {
                    if (childAt instanceof ViewGroup) {
                        Rect rect = this.rect;
                        View findScrollingChild = findScrollingChild((ViewGroup) childAt, f - rect.left, f2 - rect.top);
                        if (findScrollingChild != null) {
                            return findScrollingChild;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    public void drawForBlur(Canvas canvas) {
        RecyclerListView findRecyclerView;
        int i = 0;
        while (true) {
            View[] viewArr = this.viewPages;
            if (i >= viewArr.length) {
                return;
            }
            if (viewArr[i] != null && viewArr[i].getVisibility() == 0 && (findRecyclerView = findRecyclerView(this.viewPages[i])) != null) {
                for (int i2 = 0; i2 < findRecyclerView.getChildCount(); i2++) {
                    View childAt = findRecyclerView.getChildAt(i2);
                    if (childAt.getY() < AndroidUtilities.m107dp(203) + AndroidUtilities.m107dp(100)) {
                        int save = canvas.save();
                        canvas.translate(this.viewPages[i].getX(), getY() + this.viewPages[i].getY() + findRecyclerView.getY() + childAt.getY());
                        childAt.draw(canvas);
                        canvas.restoreToCount(save);
                    }
                }
            }
            i++;
        }
    }

    private RecyclerListView findRecyclerView(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof RecyclerListView) {
                    return (RecyclerListView) childAt;
                }
                if (childAt instanceof ViewGroup) {
                    findRecyclerView(childAt);
                }
            }
            return null;
        }
        return null;
    }

    public void setAllowDisallowInterceptTouch(boolean z) {
        this.allowDisallowInterceptTouch = z;
    }
}
