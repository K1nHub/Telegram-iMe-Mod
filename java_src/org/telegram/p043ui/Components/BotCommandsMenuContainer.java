package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.BotCommandsMenuContainer */
/* loaded from: classes6.dex */
public class BotCommandsMenuContainer extends FrameLayout implements NestedScrollingParent {
    Paint backgroundPaint;
    private ObjectAnimator currentAnimation;
    boolean dismissed;
    private boolean entering;
    public RecyclerListView listView;
    private NestedScrollingParentHelper nestedScrollingParentHelper;
    float scrollYOffset;
    Drawable shadowDrawable;
    Paint topBackground;

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDismiss() {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    public BotCommandsMenuContainer(Context context) {
        super(context);
        this.currentAnimation = null;
        this.backgroundPaint = new Paint();
        this.topBackground = new Paint(1);
        this.dismissed = true;
        this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        this.shadowDrawable = context.getResources().getDrawable(C3558R.C3560drawable.sheet_shadow_round).mutate();
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.BotCommandsMenuContainer.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                if (BotCommandsMenuContainer.this.listView.getLayoutManager() == null || BotCommandsMenuContainer.this.listView.getAdapter() == null || BotCommandsMenuContainer.this.listView.getAdapter().getItemCount() == 0) {
                    super.dispatchDraw(canvas);
                    return;
                }
                View findViewByPosition = BotCommandsMenuContainer.this.listView.getLayoutManager().findViewByPosition(0);
                float y = findViewByPosition != null ? findViewByPosition.getY() : 0.0f;
                if (y < BitmapDescriptorFactory.HUE_RED) {
                    y = 0.0f;
                }
                BotCommandsMenuContainer.this.scrollYOffset = y;
                float m72dp = y - AndroidUtilities.m72dp(8);
                if (m72dp > BitmapDescriptorFactory.HUE_RED) {
                    int i = (int) m72dp;
                    BotCommandsMenuContainer.this.shadowDrawable.setBounds(-AndroidUtilities.m72dp(8), i - AndroidUtilities.m72dp(24), getMeasuredWidth() + AndroidUtilities.m72dp(8), i);
                    BotCommandsMenuContainer.this.shadowDrawable.draw(canvas);
                }
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, m72dp, getMeasuredWidth(), getMeasuredHeight() + AndroidUtilities.m72dp(16), BotCommandsMenuContainer.this.backgroundPaint);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set((getMeasuredWidth() / 2.0f) - AndroidUtilities.m72dp(12), m72dp - AndroidUtilities.m72dp(4), (getMeasuredWidth() / 2.0f) + AndroidUtilities.m72dp(12), m72dp);
                canvas.drawRoundRect(rectF, AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(4), BotCommandsMenuContainer.this.topBackground);
                super.dispatchDraw(canvas);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setOverScrollMode(2);
        this.listView.setClipToPadding(false);
        addView(this.listView);
        updateColors();
        setClipChildren(false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return !this.dismissed && i == 2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.nestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i);
        if (this.dismissed) {
            return;
        }
        cancelCurrentAnimation();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        this.nestedScrollingParentHelper.onStopNestedScroll(view);
        if (this.dismissed) {
            return;
        }
        checkDismiss();
    }

    private void checkDismiss() {
        if (this.dismissed) {
            return;
        }
        if (this.listView.getTranslationY() > AndroidUtilities.m72dp(16)) {
            dismiss();
        } else {
            playEnterAnim(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        if (this.dismissed) {
            return;
        }
        cancelCurrentAnimation();
        if (i4 != 0) {
            float translationY = this.listView.getTranslationY() - i4;
            if (translationY < BitmapDescriptorFactory.HUE_RED) {
                translationY = 0.0f;
            }
            this.listView.setTranslationY(translationY);
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (this.dismissed) {
            return;
        }
        cancelCurrentAnimation();
        float translationY = this.listView.getTranslationY();
        float f = BitmapDescriptorFactory.HUE_RED;
        if (translationY <= BitmapDescriptorFactory.HUE_RED || i2 <= 0) {
            return;
        }
        float f2 = translationY - i2;
        iArr[1] = i2;
        if (f2 >= BitmapDescriptorFactory.HUE_RED) {
            f = f2;
        }
        this.listView.setTranslationY(f);
        invalidate();
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.nestedScrollingParentHelper.getNestedScrollAxes();
    }

    private void cancelCurrentAnimation() {
        ObjectAnimator objectAnimator = this.currentAnimation;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.currentAnimation.cancel();
            this.currentAnimation = null;
        }
    }

    public void show() {
        if (getVisibility() != 0) {
            setVisibility(0);
            this.listView.scrollToPosition(0);
            this.entering = true;
            this.dismissed = false;
        } else if (this.dismissed) {
            this.dismissed = false;
            cancelCurrentAnimation();
            playEnterAnim(false);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.entering || this.dismissed) {
            return;
        }
        RecyclerListView recyclerListView = this.listView;
        recyclerListView.setTranslationY((recyclerListView.getMeasuredHeight() - this.listView.getPaddingTop()) + AndroidUtilities.m72dp(16));
        playEnterAnim(true);
        this.entering = false;
    }

    private void playEnterAnim(boolean z) {
        if (this.dismissed) {
            return;
        }
        RecyclerListView recyclerListView = this.listView;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(recyclerListView, FrameLayout.TRANSLATION_Y, recyclerListView.getTranslationY(), BitmapDescriptorFactory.HUE_RED);
        this.currentAnimation = ofFloat;
        if (z) {
            ofFloat.setDuration(320L);
            this.currentAnimation.setInterpolator(new OvershootInterpolator(0.8f));
        } else {
            ofFloat.setDuration(150L);
            this.currentAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
        }
        this.currentAnimation.start();
    }

    public void dismiss() {
        if (this.dismissed) {
            return;
        }
        this.dismissed = true;
        cancelCurrentAnimation();
        RecyclerListView recyclerListView = this.listView;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(recyclerListView, FrameLayout.TRANSLATION_Y, recyclerListView.getTranslationY(), (getMeasuredHeight() - this.scrollYOffset) + AndroidUtilities.m72dp(40));
        this.currentAnimation = ofFloat;
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.BotCommandsMenuContainer.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BotCommandsMenuContainer.this.setVisibility(8);
                BotCommandsMenuContainer.this.currentAnimation = null;
            }
        });
        this.currentAnimation.setDuration(150L);
        this.currentAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.currentAnimation.start();
        onDismiss();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || motionEvent.getY() >= this.scrollYOffset - AndroidUtilities.m72dp(24)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    public void updateColors() {
        this.topBackground.setColor(Theme.getColor(Theme.key_sheet_scrollUp));
        Paint paint = this.backgroundPaint;
        int i = Theme.key_windowBackgroundWhite;
        paint.setColor(Theme.getColor(i));
        this.shadowDrawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
        invalidate();
    }
}
