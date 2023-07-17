package com.iMe.p031ui.wallet.crypto.create;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import com.iMe.p031ui.wallet.crypto.create.CreateWalletFragment;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.SimpleTextView;
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createScrollView$1 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$createScrollView$1 extends ScrollView {
    private AnimatorSet actionBarAnimator;
    private boolean isLayoutDirty;
    private final int[] location;
    private final Rect tempRect;
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$createScrollView$1(CreateWalletFragment createWalletFragment, Activity activity) {
        super(activity);
        this.this$0 = createWalletFragment;
        this.location = new int[2];
        this.tempRect = new Rect();
        this.isLayoutDirty = true;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        TextView titleTextView;
        TextView titleTextView2;
        C3484ActionBar c3484ActionBar;
        TextView titleTextView3;
        TextView titleTextView4;
        View actionBarBackground;
        C3484ActionBar c3484ActionBar2;
        super.onScrollChanged(i, i2, i3, i4);
        this.this$0.hideHint();
        titleTextView = this.this$0.getTitleTextView();
        titleTextView.getLocationOnScreen(this.location);
        int i5 = this.location[1];
        titleTextView2 = this.this$0.getTitleTextView();
        int measuredHeight = i5 + titleTextView2.getMeasuredHeight();
        c3484ActionBar = ((BaseFragment) this.this$0).actionBar;
        boolean z = measuredHeight < c3484ActionBar.getBottom();
        titleTextView3 = this.this$0.getTitleTextView();
        if (z != (titleTextView3.getTag() == null)) {
            titleTextView4 = this.this$0.getTitleTextView();
            titleTextView4.setTag(z ? null : 1);
            AnimatorSet animatorSet = this.actionBarAnimator;
            if (animatorSet != null) {
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                this.actionBarAnimator = null;
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            CreateWalletFragment createWalletFragment = this.this$0;
            Animator[] animatorArr = new Animator[2];
            actionBarBackground = createWalletFragment.getActionBarBackground();
            Property property = ScrollView.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : 0.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(actionBarBackground, property, fArr);
            c3484ActionBar2 = ((BaseFragment) createWalletFragment).actionBar;
            SimpleTextView titleTextView5 = c3484ActionBar2.getTitleTextView();
            Property property2 = ScrollView.ALPHA;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 1.0f : 0.0f;
            animatorArr[1] = ObjectAnimator.ofFloat(titleTextView5, property2, fArr2);
            animatorSet2.playTogether(animatorArr);
            animatorSet2.setDuration(150L);
            animatorSet2.addListener(new Animator.AnimatorListener() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createScrollView$1$onScrollChanged$lambda$1$$inlined$doOnEnd$1
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    Intrinsics.checkNotNullParameter(animator, "animator");
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                    Intrinsics.checkNotNullParameter(animator, "animator");
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    Intrinsics.checkNotNullParameter(animator, "animator");
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AnimatorSet animatorSet3;
                    Intrinsics.checkNotNullParameter(animator, "animator");
                    animatorSet3 = CreateWalletFragment$createScrollView$1.this.actionBarAnimator;
                    if (Intrinsics.areEqual(animator, animatorSet3)) {
                        CreateWalletFragment$createScrollView$1.this.actionBarAnimator = null;
                    }
                }
            });
            animatorSet2.start();
            this.actionBarAnimator = animatorSet2;
        }
    }

    @Override // android.widget.ScrollView
    public void scrollToDescendant(View child) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(child, "child");
        child.getDrawingRect(this.tempRect);
        offsetDescendantRectToMyCoords(child, this.tempRect);
        Rect rect = this.tempRect;
        int i = rect.bottom;
        List list = this.this$0.editTexts;
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this.this$0.editTexts);
        rect.bottom = i + AndroidUtilities.m54dp(((CreateWalletFragment.NumericEditText) list.get(lastIndex)).getEditText() == child ? 90 : 10);
        int computeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(this.tempRect);
        if (computeScrollDeltaToGetChildRectOnScreen < 0) {
            int measuredHeight = getMeasuredHeight() - child.getMeasuredHeight();
            Unit unit = Unit.INSTANCE;
            computeScrollDeltaToGetChildRectOnScreen -= measuredHeight / 2;
        }
        if (computeScrollDeltaToGetChildRectOnScreen != 0) {
            smoothScrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View child, View focused) {
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(focused, "focused");
        if (Build.VERSION.SDK_INT < 29 && !this.isLayoutDirty) {
            scrollToDescendant(focused);
        }
        super.requestChildFocus(child, focused);
    }

    @Override // android.widget.ScrollView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.isLayoutDirty = true;
        super.requestLayout();
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.isLayoutDirty = false;
        super.onLayout(z, i, i2, i3, i4);
    }
}
