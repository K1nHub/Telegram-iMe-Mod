package org.telegram.p043ui.Components.voip;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.voip.RateCallLayout;
/* renamed from: org.telegram.ui.Components.voip.RateCallLayout */
/* loaded from: classes6.dex */
public class RateCallLayout extends FrameLayout {
    private OnRateSelected onRateSelected;
    private final RateCallContainer rateCallContainer;
    private final FrameLayout starsContainer;
    private final StarContainer[] startsViews;

    /* renamed from: org.telegram.ui.Components.voip.RateCallLayout$OnRateSelected */
    /* loaded from: classes6.dex */
    public interface OnRateSelected {
        void onRateSelected(int i);
    }

    public RateCallLayout(final Context context, VoIPBackgroundProvider voIPBackgroundProvider) {
        super(context);
        this.startsViews = new StarContainer[5];
        setWillNotDraw(false);
        RateCallContainer rateCallContainer = new RateCallContainer(context, voIPBackgroundProvider);
        this.rateCallContainer = rateCallContainer;
        FrameLayout frameLayout = new FrameLayout(context);
        this.starsContainer = frameLayout;
        rateCallContainer.setVisibility(8);
        frameLayout.setVisibility(8);
        for (int i = 0; i < 5; i++) {
            this.startsViews[i] = new StarContainer(context);
            this.startsViews[i].setAllStarsProvider(new StarContainer.AllStarsProvider() { // from class: org.telegram.ui.Components.voip.RateCallLayout$$ExternalSyntheticLambda2
                @Override // org.telegram.p043ui.Components.voip.RateCallLayout.StarContainer.AllStarsProvider
                public final RateCallLayout.StarContainer[] getAllStartsViews() {
                    RateCallLayout.StarContainer[] lambda$new$0;
                    lambda$new$0 = RateCallLayout.this.lambda$new$0();
                    return lambda$new$0;
                }
            });
            this.startsViews[i].setOnSelectedStar(new StarContainer.OnSelectedStar() { // from class: org.telegram.ui.Components.voip.RateCallLayout$$ExternalSyntheticLambda3
                @Override // org.telegram.p043ui.Components.voip.RateCallLayout.StarContainer.OnSelectedStar
                public final void onSelected(float f, float f2, int i2) {
                    RateCallLayout.this.lambda$new$3(context, f, f2, i2);
                }
            }, i);
            this.starsContainer.addView(this.startsViews[i], LayoutHelper.createFrame(-2, -2, 51, i * 41, 0, 0, 0));
        }
        addView(this.rateCallContainer, LayoutHelper.createFrame(300, 152, 49, 0, 0, 0, 0));
        addView(this.starsContainer, LayoutHelper.createFrame(201, 100, 49, 0, 90, 0, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StarContainer[] lambda$new$0() {
        return this.startsViews;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(Context context, float f, float f2, int i) {
        if (i >= 4) {
            final RLottieImageView rLottieImageView = new RLottieImageView(context);
            int m107dp = AndroidUtilities.m107dp(133);
            rLottieImageView.setAnimation(C3632R.raw.rate, 133, 133);
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            addView(rLottieImageView, LayoutHelper.createFrame(133, 133));
            float f3 = m107dp / 2.0f;
            rLottieImageView.setTranslationX((f - i2) - f3);
            rLottieImageView.setTranslationY((f2 - i3) - f3);
            rLottieImageView.setOnAnimationEndListener(new Runnable() { // from class: org.telegram.ui.Components.voip.RateCallLayout$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    RateCallLayout.this.lambda$new$2(rLottieImageView);
                }
            });
            rLottieImageView.playAnimation();
        }
        OnRateSelected onRateSelected = this.onRateSelected;
        if (onRateSelected != null) {
            onRateSelected.onRateSelected(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(RLottieImageView rLottieImageView) {
        removeView(rLottieImageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(final RLottieImageView rLottieImageView) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.voip.RateCallLayout$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RateCallLayout.this.lambda$new$1(rLottieImageView);
            }
        });
    }

    public void show(OnRateSelected onRateSelected) {
        this.onRateSelected = onRateSelected;
        this.rateCallContainer.setVisibility(0);
        this.starsContainer.setVisibility(0);
        AnimatorSet animatorSet = new AnimatorSet();
        int i = 4;
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.rateCallContainer, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(this.rateCallContainer, View.SCALE_X, 0.7f, 1.0f), ObjectAnimator.ofFloat(this.rateCallContainer, View.SCALE_Y, 0.7f, 1.0f), ObjectAnimator.ofFloat(this.rateCallContainer, View.TRANSLATION_Y, AndroidUtilities.m107dp(24), BitmapDescriptorFactory.HUE_RED));
        animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
        animatorSet.setDuration(250L);
        int i2 = 0;
        while (i2 < this.startsViews.length) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.startsViews[i2].setAlpha(BitmapDescriptorFactory.HUE_RED);
            Animator[] animatorArr = new Animator[i];
            animatorArr[0] = ObjectAnimator.ofFloat(this.startsViews[i2], View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f);
            animatorArr[1] = ObjectAnimator.ofFloat(this.startsViews[i2], View.SCALE_X, 0.3f, 1.0f);
            animatorArr[2] = ObjectAnimator.ofFloat(this.startsViews[i2], View.SCALE_Y, 0.3f, 1.0f);
            animatorArr[3] = ObjectAnimator.ofFloat(this.startsViews[i2], View.TRANSLATION_Y, AndroidUtilities.m107dp(30), BitmapDescriptorFactory.HUE_RED);
            animatorSet2.playTogether(animatorArr);
            animatorSet2.setDuration(250L);
            animatorSet2.setStartDelay(i2 * 16);
            animatorSet2.start();
            i2++;
            i = 4;
        }
        animatorSet.start();
    }

    /* renamed from: org.telegram.ui.Components.voip.RateCallLayout$StarContainer */
    /* loaded from: classes6.dex */
    public static class StarContainer extends FrameLayout {
        private AllStarsProvider allStarsProvider;
        public RLottieImageView defaultStar;
        private OnSelectedStar onSelectedStar;
        private int pos;
        private final Drawable rippleDrawable;
        public RLottieImageView selectedStar;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Components.voip.RateCallLayout$StarContainer$AllStarsProvider */
        /* loaded from: classes6.dex */
        public interface AllStarsProvider {
            StarContainer[] getAllStartsViews();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Components.voip.RateCallLayout$StarContainer$OnSelectedStar */
        /* loaded from: classes6.dex */
        public interface OnSelectedStar {
            void onSelected(float f, float f2, int i);
        }

        public void setOnSelectedStar(OnSelectedStar onSelectedStar, int i) {
            this.onSelectedStar = onSelectedStar;
            this.pos = i;
        }

        public void setAllStarsProvider(AllStarsProvider allStarsProvider) {
            this.allStarsProvider = allStarsProvider;
        }

        public StarContainer(Context context) {
            super(context);
            this.pos = 0;
            setWillNotDraw(false);
            this.defaultStar = new RLottieImageView(context);
            this.selectedStar = new RLottieImageView(context);
            this.defaultStar.setAnimation(C3632R.raw.star_stroke, 37, 37);
            this.selectedStar.setAnimation(C3632R.raw.star_fill, 37, 37);
            this.selectedStar.setAlpha(BitmapDescriptorFactory.HUE_RED);
            addView(this.defaultStar, LayoutHelper.createFrame(37, 37));
            addView(this.selectedStar, LayoutHelper.createFrame(37, 37));
            Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m107dp(37), 0, ColorUtils.setAlphaComponent(-1, 76));
            this.rippleDrawable = createSimpleSelectorCircleDrawable;
            createSimpleSelectorCircleDrawable.setCallback(this);
            setClickable(true);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            this.rippleDrawable.setBounds(0, 0, getWidth(), getHeight());
            this.rippleDrawable.draw(canvas);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            Drawable drawable = this.rippleDrawable;
            if (drawable != null) {
                drawable.setState(getDrawableState());
            }
        }

        @Override // android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            return this.rippleDrawable == drawable || super.verifyDrawable(drawable);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void jumpDrawablesToCurrentState() {
            super.jumpDrawablesToCurrentState();
            Drawable drawable = this.rippleDrawable;
            if (drawable != null) {
                drawable.jumpToCurrentState();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            int i;
            int[] iArr;
            AllStarsProvider allStarsProvider;
            int action = motionEvent.getAction();
            int i2 = 0;
            if (action == 0) {
                AllStarsProvider allStarsProvider2 = this.allStarsProvider;
                if (allStarsProvider2 != null) {
                    StarContainer[] allStartsViews = allStarsProvider2.getAllStartsViews();
                    while (true) {
                        i = this.pos;
                        if (i2 > i) {
                            break;
                        }
                        RLottieImageView rLottieImageView = allStartsViews[i2].defaultStar;
                        RLottieImageView rLottieImageView2 = allStartsViews[i2].selectedStar;
                        rLottieImageView.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleX(0.8f).scaleY(0.8f).setDuration(250L).start();
                        rLottieImageView2.animate().alpha(1.0f).scaleX(0.8f).scaleY(0.8f).setDuration(250L).start();
                        i2++;
                    }
                    for (int i3 = i + 1; i3 < allStartsViews.length; i3++) {
                        RLottieImageView rLottieImageView3 = allStartsViews[i3].defaultStar;
                        RLottieImageView rLottieImageView4 = allStartsViews[i3].selectedStar;
                        rLottieImageView3.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(250L).start();
                        rLottieImageView4.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleX(1.0f).scaleY(1.0f).setDuration(250L).start();
                    }
                }
            } else if (action == 1) {
                AllStarsProvider allStarsProvider3 = this.allStarsProvider;
                if (allStarsProvider3 != null) {
                    StarContainer[] allStartsViews2 = allStarsProvider3.getAllStartsViews();
                    for (int i4 = 0; i4 <= this.pos; i4++) {
                        RLottieImageView rLottieImageView5 = allStartsViews2[i4].defaultStar;
                        RLottieImageView rLottieImageView6 = allStartsViews2[i4].selectedStar;
                        rLottieImageView5.animate().scaleX(1.0f).scaleY(1.0f).setDuration(250L).start();
                        rLottieImageView6.animate().scaleX(1.0f).scaleY(1.0f).setDuration(250L).start();
                    }
                }
                if (this.onSelectedStar != null) {
                    getLocationOnScreen(new int[2]);
                    this.onSelectedStar.onSelected(iArr[0] + (getWidth() / 2.0f), iArr[1] + (getHeight() / 2.0f), this.pos + 1);
                }
            } else if (action == 3 && (allStarsProvider = this.allStarsProvider) != null) {
                StarContainer[] allStartsViews3 = allStarsProvider.getAllStartsViews();
                int length = allStartsViews3.length;
                while (i2 < length) {
                    StarContainer starContainer = allStartsViews3[i2];
                    RLottieImageView rLottieImageView7 = starContainer.defaultStar;
                    RLottieImageView rLottieImageView8 = starContainer.selectedStar;
                    rLottieImageView7.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(250L).start();
                    rLottieImageView8.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleX(1.0f).scaleY(1.0f).setDuration(250L).start();
                    i2++;
                }
            }
            return super.dispatchTouchEvent(motionEvent);
        }
    }

    /* renamed from: org.telegram.ui.Components.voip.RateCallLayout$RateCallContainer */
    /* loaded from: classes6.dex */
    public static class RateCallContainer extends FrameLayout {
        private final VoIPBackgroundProvider backgroundProvider;
        private final RectF bgRect;
        private final TextView messageTextView;
        private final TextView titleTextView;

        public RateCallContainer(Context context, VoIPBackgroundProvider voIPBackgroundProvider) {
            super(context);
            this.bgRect = new RectF();
            this.backgroundProvider = voIPBackgroundProvider;
            voIPBackgroundProvider.attach(this);
            setWillNotDraw(false);
            TextView textView = new TextView(context);
            this.titleTextView = textView;
            textView.setTextColor(-1);
            textView.setText(LocaleController.getString("VoipRateCallTitle", C3632R.string.VoipRateCallTitle));
            textView.setTextSize(1, 15.0f);
            textView.setGravity(1);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            TextView textView2 = new TextView(context);
            this.messageTextView = textView2;
            textView2.setTextSize(1, 15.0f);
            textView2.setTextColor(-1);
            textView2.setGravity(1);
            textView2.setText(LocaleController.getString("VoipRateCallDescription", C3632R.string.VoipRateCallDescription));
            addView(textView, LayoutHelper.createFrame(-1, -2, 3, 0, 24, 0, 0));
            addView(textView2, LayoutHelper.createFrame(-1, -2, 3, 0, 50, 0, 0));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.bgRect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            this.backgroundProvider.setDarkTranslation(getX() + ((View) getParent()).getX(), getY() + ((View) getParent()).getY());
            canvas.drawRoundRect(this.bgRect, AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(28), this.backgroundProvider.getDarkPaint());
            super.dispatchDraw(canvas);
        }
    }
}
