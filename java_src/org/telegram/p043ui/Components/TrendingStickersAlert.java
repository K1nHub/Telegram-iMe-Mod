package org.telegram.p043ui.Components;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
import org.telegram.p043ui.Components.TrendingStickersAlert;
/* renamed from: org.telegram.ui.Components.TrendingStickersAlert */
/* loaded from: classes6.dex */
public class TrendingStickersAlert extends BottomSheet {
    private final AlertContainerView alertContainerView;
    private final TrendingStickersLayout layout;
    private int scrollOffsetY;
    private final GradientDrawable shapeDrawable;
    private final int topOffset;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    public TrendingStickersAlert(Context context, BaseFragment baseFragment, TrendingStickersLayout trendingStickersLayout, Theme.ResourcesProvider resourcesProvider) {
        super(context, true, resourcesProvider);
        this.topOffset = AndroidUtilities.m107dp(12);
        this.shapeDrawable = new GradientDrawable();
        AlertContainerView alertContainerView = new AlertContainerView(context);
        this.alertContainerView = alertContainerView;
        alertContainerView.addView(trendingStickersLayout, LayoutHelper.createFrame(-1, -1));
        this.containerView = alertContainerView;
        this.layout = trendingStickersLayout;
        trendingStickersLayout.setParentFragment(baseFragment);
        trendingStickersLayout.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.TrendingStickersAlert.1
            private int scrolledY;

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                if (i == 0) {
                    this.scrolledY = 0;
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                this.scrolledY += i2;
                if (recyclerView.getScrollState() == 1 && Math.abs(this.scrolledY) > AndroidUtilities.m107dp(96)) {
                    View findFocus = TrendingStickersAlert.this.layout.findFocus();
                    if (findFocus == null) {
                        findFocus = TrendingStickersAlert.this.layout;
                    }
                    AndroidUtilities.hideKeyboard(findFocus);
                }
                if (i2 != 0) {
                    TrendingStickersAlert.this.updateLayout();
                }
            }
        });
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        setHeavyOperationsEnabled(false);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.layout.recycle();
        setHeavyOperationsEnabled(true);
    }

    public void setHeavyOperationsEnabled(boolean z) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(z ? NotificationCenter.startAllHeavyOperations : NotificationCenter.stopAllHeavyOperations, 2);
    }

    public TrendingStickersLayout getLayout() {
        return this.layout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLayout() {
        if (this.layout.update()) {
            this.scrollOffsetY = this.layout.getContentTopOffset();
            this.containerView.invalidate();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        final TrendingStickersLayout trendingStickersLayout = this.layout;
        Objects.requireNonNull(trendingStickersLayout);
        trendingStickersLayout.getThemeDescriptions(arrayList, new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.TrendingStickersAlert$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                TrendingStickersLayout.this.updateColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        });
        arrayList.add(new ThemeDescription(this.alertContainerView, 0, null, null, new Drawable[]{this.shadowDrawable}, null, Theme.key_dialogBackground));
        arrayList.add(new ThemeDescription(this.alertContainerView, 0, null, null, null, null, Theme.key_sheet_scrollUp));
        return arrayList;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void setAllowNestedScroll(boolean z) {
        this.allowNestedScroll = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.TrendingStickersAlert$AlertContainerView */
    /* loaded from: classes6.dex */
    public class AlertContainerView extends SizeNotifierFrameLayout {
        private boolean gluedToTop;
        private boolean ignoreLayout;
        private final Paint paint;
        private float[] radii;
        private float statusBarAlpha;
        private ValueAnimator statusBarAnimator;
        private boolean statusBarOpen;
        private boolean statusBarVisible;

        public AlertContainerView(Context context) {
            super(context);
            this.paint = new Paint(1);
            this.gluedToTop = false;
            this.ignoreLayout = false;
            this.statusBarVisible = false;
            this.statusBarAlpha = BitmapDescriptorFactory.HUE_RED;
            this.radii = new float[8];
            setWillNotDraw(false);
            setPadding(((BottomSheet) TrendingStickersAlert.this).backgroundPaddingLeft, 0, ((BottomSheet) TrendingStickersAlert.this).backgroundPaddingLeft, 0);
            setDelegate(new SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate(TrendingStickersAlert.this) { // from class: org.telegram.ui.Components.TrendingStickersAlert.AlertContainerView.1
                private boolean lastIsWidthGreater;
                private int lastKeyboardHeight;

                @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate
                public void onSizeChanged(int i, boolean z) {
                    if (this.lastKeyboardHeight == i && this.lastIsWidthGreater == z) {
                        return;
                    }
                    this.lastKeyboardHeight = i;
                    this.lastIsWidthGreater = z;
                    if (i <= AndroidUtilities.m107dp(20) || AlertContainerView.this.gluedToTop) {
                        return;
                    }
                    TrendingStickersAlert.this.setAllowNestedScroll(false);
                    AlertContainerView.this.gluedToTop = true;
                }
            });
        }

        @Override // android.view.View
        protected void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TrendingStickersAlert$AlertContainerView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    TrendingStickersAlert.AlertContainerView.this.requestLayout();
                }
            }, 200L);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && TrendingStickersAlert.this.scrollOffsetY != 0 && motionEvent.getY() < TrendingStickersAlert.this.scrollOffsetY) {
                TrendingStickersAlert.this.dismiss();
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return !TrendingStickersAlert.this.isDismissed() && super.onTouchEvent(motionEvent);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0;
            int measureKeyboardHeight = measureKeyboardHeight();
            int size = (int) (((View.MeasureSpec.getSize(getMeasuredHeight()) - i5) + measureKeyboardHeight) * 0.2f);
            this.ignoreLayout = true;
            if (measureKeyboardHeight > AndroidUtilities.m107dp(20)) {
                TrendingStickersAlert.this.layout.glueToTop(true);
                TrendingStickersAlert.this.setAllowNestedScroll(false);
                this.gluedToTop = true;
            } else {
                TrendingStickersAlert.this.layout.glueToTop(false);
                TrendingStickersAlert.this.setAllowNestedScroll(true);
                this.gluedToTop = false;
            }
            TrendingStickersAlert.this.layout.setContentViewPaddingTop(size);
            if (getPaddingTop() != i5) {
                setPadding(((BottomSheet) TrendingStickersAlert.this).backgroundPaddingLeft, i5, ((BottomSheet) TrendingStickersAlert.this).backgroundPaddingLeft, 0);
            }
            this.ignoreLayout = false;
            super.onLayout(z, i, i2, i3, i4);
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            TrendingStickersAlert.this.updateLayout();
            super.onDraw(canvas);
            float fraction = getFraction();
            int i = (int) (TrendingStickersAlert.this.topOffset * (1.0f - fraction));
            int i2 = (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0) - TrendingStickersAlert.this.topOffset;
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, TrendingStickersAlert.this.layout.getTranslationY() + i2);
            ((BottomSheet) TrendingStickersAlert.this).shadowDrawable.setBounds(0, (TrendingStickersAlert.this.scrollOffsetY - ((BottomSheet) TrendingStickersAlert.this).backgroundPaddingTop) + i, getMeasuredWidth(), getMeasuredHeight() + (i2 < 0 ? -i2 : 0));
            ((BottomSheet) TrendingStickersAlert.this).shadowDrawable.draw(canvas);
            if (fraction > BitmapDescriptorFactory.HUE_RED && fraction < 1.0f) {
                float m107dp = AndroidUtilities.m107dp(12) * fraction;
                TrendingStickersAlert.this.shapeDrawable.setColor(TrendingStickersAlert.this.getThemedColor(Theme.key_dialogBackground));
                float[] fArr = this.radii;
                fArr[3] = m107dp;
                fArr[2] = m107dp;
                fArr[1] = m107dp;
                fArr[0] = m107dp;
                TrendingStickersAlert.this.shapeDrawable.setCornerRadii(this.radii);
                TrendingStickersAlert.this.shapeDrawable.setBounds(((BottomSheet) TrendingStickersAlert.this).backgroundPaddingLeft, TrendingStickersAlert.this.scrollOffsetY + i, getWidth() - ((BottomSheet) TrendingStickersAlert.this).backgroundPaddingLeft, TrendingStickersAlert.this.scrollOffsetY + i + AndroidUtilities.m107dp(24));
                TrendingStickersAlert.this.shapeDrawable.draw(canvas);
            }
            canvas.restore();
        }

        private void updateLightStatusBar(boolean z) {
            if (this.statusBarOpen != z) {
                this.statusBarOpen = z;
                boolean z2 = AndroidUtilities.computePerceivedBrightness(TrendingStickersAlert.this.getThemedColor(Theme.key_dialogBackground)) > 0.721f;
                boolean z3 = AndroidUtilities.computePerceivedBrightness(Theme.blendOver(TrendingStickersAlert.this.getThemedColor(Theme.key_actionBarDefault), AndroidUtilities.DARK_STATUS_BAR_OVERLAY)) > 0.721f;
                if (!z) {
                    z2 = z3;
                }
                AndroidUtilities.setLightStatusBar(TrendingStickersAlert.this.getWindow(), z2);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            float fraction = getFraction();
            setStatusBarVisible(fraction == BitmapDescriptorFactory.HUE_RED && Build.VERSION.SDK_INT >= 21 && !TrendingStickersAlert.this.isDismissed(), true);
            updateLightStatusBar(this.statusBarAlpha > 0.5f);
            if (this.statusBarAlpha > BitmapDescriptorFactory.HUE_RED) {
                this.paint.setColor(TrendingStickersAlert.this.getThemedColor(Theme.key_dialogBackground));
                int max = (int) Math.max((float) BitmapDescriptorFactory.HUE_RED, TrendingStickersAlert.this.scrollOffsetY + (TrendingStickersAlert.this.topOffset * (1.0f - getFraction())) + AndroidUtilities.m107dp(24) + TrendingStickersAlert.this.layout.getTranslationY() + ((Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0) - TrendingStickersAlert.this.topOffset));
                canvas.drawRect(((BottomSheet) TrendingStickersAlert.this).backgroundPaddingLeft, AndroidUtilities.lerp(max, -AndroidUtilities.statusBarHeight, this.statusBarAlpha), getMeasuredWidth() - ((BottomSheet) TrendingStickersAlert.this).backgroundPaddingLeft, max, this.paint);
            }
            super.dispatchDraw(canvas);
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (TrendingStickersAlert.this.layout.getTranslationY() + (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)) - TrendingStickersAlert.this.topOffset);
            int m107dp = AndroidUtilities.m107dp(36);
            int m107dp2 = AndroidUtilities.m107dp(4);
            int i = (int) (m107dp2 * 2.0f * (1.0f - fraction));
            TrendingStickersAlert.this.shapeDrawable.setCornerRadius(AndroidUtilities.m107dp(2));
            int themedColor = TrendingStickersAlert.this.getThemedColor(Theme.key_sheet_scrollUp);
            TrendingStickersAlert.this.shapeDrawable.setColor(ColorUtils.setAlphaComponent(themedColor, (int) (Color.alpha(themedColor) * fraction)));
            TrendingStickersAlert.this.shapeDrawable.setBounds((getWidth() - m107dp) / 2, TrendingStickersAlert.this.scrollOffsetY + AndroidUtilities.m107dp(10) + i, (getWidth() + m107dp) / 2, TrendingStickersAlert.this.scrollOffsetY + AndroidUtilities.m107dp(10) + i + m107dp2);
            TrendingStickersAlert.this.shapeDrawable.draw(canvas);
            canvas.restore();
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            TrendingStickersAlert.this.layout.setTranslationY(f);
            invalidate();
        }

        @Override // android.view.View
        public float getTranslationY() {
            return TrendingStickersAlert.this.layout.getTranslationY();
        }

        private float getFraction() {
            return Math.min(1.0f, Math.max((float) BitmapDescriptorFactory.HUE_RED, TrendingStickersAlert.this.scrollOffsetY / (TrendingStickersAlert.this.topOffset * 2.0f)));
        }

        private void setStatusBarVisible(boolean z, boolean z2) {
            if (this.statusBarVisible != z) {
                ValueAnimator valueAnimator = this.statusBarAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                this.statusBarVisible = z;
                if (z2) {
                    ValueAnimator valueAnimator2 = this.statusBarAnimator;
                    if (valueAnimator2 == null) {
                        float[] fArr = new float[2];
                        fArr[0] = this.statusBarAlpha;
                        fArr[1] = z ? 1.0f : 0.0f;
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
                        this.statusBarAnimator = ofFloat;
                        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TrendingStickersAlert$AlertContainerView$$ExternalSyntheticLambda0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                                TrendingStickersAlert.AlertContainerView.this.lambda$setStatusBarVisible$0(valueAnimator3);
                            }
                        });
                        this.statusBarAnimator.setDuration(200L);
                    } else {
                        float[] fArr2 = new float[2];
                        fArr2[0] = this.statusBarAlpha;
                        fArr2[1] = z ? 1.0f : 0.0f;
                        valueAnimator2.setFloatValues(fArr2);
                    }
                    this.statusBarAnimator.start();
                    return;
                }
                this.statusBarAlpha = z ? 1.0f : 0.0f;
                invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setStatusBarVisible$0(ValueAnimator valueAnimator) {
            this.statusBarAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }
    }
}
