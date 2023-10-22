package org.telegram.p042ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.C0479C;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.LocaleController;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Cells.ChatMessageCell;
import org.telegram.p042ui.Components.ChecksHintView;
/* renamed from: org.telegram.ui.Components.ChecksHintView */
/* loaded from: classes6.dex */
public class ChecksHintView extends FrameLayout {
    private AnimatorSet animatorSet;
    private ImageView arrowImageView;
    private View currentView;
    private Runnable hideRunnable;
    private RLottieImageView[] imageView;
    private ChatMessageCell messageCell;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView[] textView;
    private float translationY;

    public ChecksHintView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.textView = new TextView[2];
        this.imageView = new RLottieImageView[2];
        this.resourcesProvider = resourcesProvider;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m102dp(6), getThemedColor(Theme.key_chat_gifSaveHintBackground)));
        frameLayout.setPadding(AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), 0, AndroidUtilities.m102dp(8));
        addView(frameLayout, LayoutHelper.createFrame(-2, -2, 51, 0, 0, 0, 6));
        int i = 0;
        while (i < 2) {
            this.imageView[i] = new RLottieImageView(context);
            this.imageView[i].setScaleType(ImageView.ScaleType.CENTER);
            frameLayout.addView(this.imageView[i], LayoutHelper.createFrame(24, 24, 51, 0, i == 0 ? 0 : 24, 0, 0));
            this.textView[i] = new TextView(context);
            this.textView[i].setTextColor(getThemedColor(Theme.key_chat_gifSaveHintText));
            this.textView[i].setTextSize(1, 14.0f);
            this.textView[i].setMaxLines(1);
            this.textView[i].setSingleLine(true);
            this.textView[i].setMaxWidth(AndroidUtilities.m102dp(250));
            this.textView[i].setGravity(51);
            this.textView[i].setPivotX(BitmapDescriptorFactory.HUE_RED);
            frameLayout.addView(this.textView[i], LayoutHelper.createFrame(-2, -2, 51, 32, i == 0 ? 2 : 26, 10, 0));
            if (i == 0) {
                this.imageView[i].setAnimation(C3630R.raw.ticks_single, 24, 24);
                this.textView[i].setText(LocaleController.getString("HintSent", C3630R.string.HintSent));
            } else {
                this.imageView[i].setAnimation(C3630R.raw.ticks_double, 24, 24);
                this.textView[i].setText(LocaleController.getString("HintRead", C3630R.string.HintRead));
            }
            this.imageView[i].playAnimation();
            i++;
        }
        ImageView imageView = new ImageView(context);
        this.arrowImageView = imageView;
        imageView.setImageResource(C3630R.C3632drawable.tooltip_arrow);
        this.arrowImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_gifSaveHintBackground), PorterDuff.Mode.MULTIPLY));
        addView(this.arrowImageView, LayoutHelper.createFrame(14, 6, 83, 0, 0, 0, 0));
    }

    public float getBaseTranslationY() {
        return this.translationY;
    }

    public boolean showForMessageCell(ChatMessageCell chatMessageCell, boolean z) {
        Runnable runnable = this.hideRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.hideRunnable = null;
        }
        int[] iArr = new int[2];
        chatMessageCell.getLocationInWindow(iArr);
        int i = iArr[1];
        ((View) getParent()).getLocationInWindow(iArr);
        int i2 = i - iArr[1];
        View view = (View) chatMessageCell.getParent();
        measure(View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE));
        final int i3 = 0;
        if (i2 <= getMeasuredHeight() + AndroidUtilities.m102dp(10)) {
            return false;
        }
        int checksY = i2 + chatMessageCell.getChecksY() + AndroidUtilities.m102dp(6);
        int checksX = chatMessageCell.getChecksX() + AndroidUtilities.m102dp(5);
        int measuredWidth = view.getMeasuredWidth();
        float measuredHeight = checksY - getMeasuredHeight();
        this.translationY = measuredHeight;
        setTranslationY(measuredHeight);
        int left = chatMessageCell.getLeft() + checksX;
        int m102dp = AndroidUtilities.m102dp(15);
        if (left > view.getMeasuredWidth() / 2) {
            int measuredWidth2 = (measuredWidth - getMeasuredWidth()) - AndroidUtilities.m102dp(20);
            setTranslationX(measuredWidth2);
            m102dp += measuredWidth2;
        } else {
            setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        float left2 = ((chatMessageCell.getLeft() + checksX) - m102dp) - (this.arrowImageView.getMeasuredWidth() / 2);
        this.arrowImageView.setTranslationX(left2);
        if (left > view.getMeasuredWidth() / 2) {
            if (left2 < AndroidUtilities.m102dp(10)) {
                float m102dp2 = left2 - AndroidUtilities.m102dp(10);
                setTranslationX(getTranslationX() + m102dp2);
                this.arrowImageView.setTranslationX(left2 - m102dp2);
            }
        } else if (left2 > getMeasuredWidth() - AndroidUtilities.m102dp(24)) {
            float measuredWidth3 = (left2 - getMeasuredWidth()) + AndroidUtilities.m102dp(24);
            setTranslationX(measuredWidth3);
            this.arrowImageView.setTranslationX(left2 - measuredWidth3);
        } else if (left2 < AndroidUtilities.m102dp(10)) {
            float m102dp3 = left2 - AndroidUtilities.m102dp(10);
            setTranslationX(getTranslationX() + m102dp3);
            this.arrowImageView.setTranslationX(left2 - m102dp3);
        }
        setPivotX(left2);
        setPivotY(getMeasuredHeight());
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.animatorSet = null;
        }
        setTag(1);
        setVisibility(0);
        if (z) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(this, View.SCALE_X, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(this, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED, 1.0f));
            this.animatorSet.addListener(new C48431());
            this.animatorSet.setDuration(180L);
            this.animatorSet.start();
            while (i3 < 2) {
                this.textView[i3].animate().scaleX(1.04f).scaleY(1.04f).setInterpolator(CubicBezierInterpolator.EASE_IN).setStartDelay((i3 == 0 ? 132 : 500) + 140).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChecksHintView.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ChecksHintView.this.textView[i3].animate().scaleX(1.0f).scaleY(1.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT).setStartDelay(0L).setDuration(100L).start();
                    }
                }).start();
                i3++;
            }
        } else {
            setAlpha(1.0f);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.ChecksHintView$1 */
    /* loaded from: classes6.dex */
    public class C48431 extends AnimatorListenerAdapter {
        C48431() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ChecksHintView.this.animatorSet = null;
            AndroidUtilities.runOnUIThread(ChecksHintView.this.hideRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChecksHintView$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ChecksHintView.C48431.this.lambda$onAnimationEnd$0();
                }
            }, C0479C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            ChecksHintView.this.hide();
        }
    }

    public void hide() {
        if (getTag() == null) {
            return;
        }
        setTag(null);
        Runnable runnable = this.hideRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.hideRunnable = null;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.animatorSet = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.animatorSet = animatorSet2;
        animatorSet2.playTogether(ObjectAnimator.ofFloat(this, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this, View.SCALE_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
        this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChecksHintView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChecksHintView.this.setVisibility(4);
                ChecksHintView.this.currentView = null;
                ChecksHintView.this.messageCell = null;
                ChecksHintView.this.animatorSet = null;
            }
        });
        this.animatorSet.setDuration(180L);
        this.animatorSet.start();
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
