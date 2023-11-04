package org.telegram.p043ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextPaint;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieDrawable;
/* renamed from: org.telegram.ui.Stories.StoriesIntro */
/* loaded from: classes6.dex */
public class StoriesIntro extends FrameLayout {
    private int current;
    private final ArrayList<StoriesIntroItemView> items;
    private int prev;
    private final Runnable startItemAnimationRunnable;
    private ValueAnimator valueAnimator;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        updateCurrentAnimatedItem();
        startAnimation(true);
    }

    public StoriesIntro(Context context, final View view) {
        super(context);
        this.prev = -1;
        this.current = 0;
        this.startItemAnimationRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesIntro$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                StoriesIntro.this.lambda$new$0();
            }
        };
        ImageView imageView = new ImageView(context);
        addView(imageView, -1, -1);
        View view2 = new View(context);
        view2.setBackgroundColor(1677721600);
        addView(view2, -1, -1);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, AndroidUtilities.m104dp(48), 0, AndroidUtilities.m104dp(48));
        linearLayout.setGravity(1);
        TextView textView = new TextView(context);
        textView.setTextColor(-1);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setText(LocaleController.getString("StoriesIntroHeader", C3634R.string.StoriesIntroHeader));
        textView.setTextSize(1, 20.0f);
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2));
        final TextView textView2 = new TextView(context);
        textView2.setTextColor(-1761607681);
        textView2.setText(LocaleController.getString("StoriesIntroSubHeader", C3634R.string.StoriesIntroSubHeader));
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(1);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 68, 8, 68, 36));
        ArrayList<StoriesIntroItemView> arrayList = new ArrayList<>(4);
        this.items = arrayList;
        arrayList.add(new StoriesIntroItemView(context, C3634R.raw.stories_intro_go_forward, LocaleController.getString("StoriesIntroGoForwardHeader", C3634R.string.StoriesIntroGoForwardHeader), LocaleController.getString("StoriesIntroGoForwardSubHeader", C3634R.string.StoriesIntroGoForwardSubHeader)));
        arrayList.add(new StoriesIntroItemView(context, C3634R.raw.stories_intro_pause, LocaleController.getString("StoriesIntroPauseAndSeekHeader", C3634R.string.StoriesIntroPauseAndSeekHeader), LocaleController.getString("StoriesIntroPauseAndSeekSubHeader", C3634R.string.StoriesIntroPauseAndSeekSubHeader)));
        arrayList.add(new StoriesIntroItemView(context, C3634R.raw.stories_intro_go_back, LocaleController.getString("StoriesIntroGoBackHeader", C3634R.string.StoriesIntroGoBackHeader), LocaleController.getString("StoriesIntroGoBackSubHeader", C3634R.string.StoriesIntroGoBackSubHeader)));
        arrayList.add(new StoriesIntroItemView(context, C3634R.raw.stories_intro_go_to_next, LocaleController.getString("StoriesIntroGoToNextAuthorHeader", C3634R.string.StoriesIntroGoToNextAuthorHeader), LocaleController.getString("StoriesIntroGoToNextAuthorSubHeader", C3634R.string.StoriesIntroGoToNextAuthorSubHeader)));
        int measuredWidth = view.getMeasuredWidth() - AndroidUtilities.m104dp(100);
        Iterator<StoriesIntroItemView> it = arrayList.iterator();
        while (it.hasNext()) {
            int requiredWidth = it.next().getRequiredWidth();
            if (requiredWidth > measuredWidth) {
                measuredWidth = requiredWidth;
            }
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(AndroidUtilities.m104dp(8) + measuredWidth > view.getMeasuredWidth() ? view.getMeasuredWidth() - AndroidUtilities.m104dp(8) : measuredWidth, AndroidUtilities.m104dp(64));
        layoutParams.setMargins(0, AndroidUtilities.m104dp(5), 0, AndroidUtilities.m104dp(5));
        Iterator<StoriesIntroItemView> it2 = this.items.iterator();
        while (it2.hasNext()) {
            linearLayout.addView(it2.next(), layoutParams);
        }
        final TextView textView3 = new TextView(context);
        textView3.setTextColor(-1);
        textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView3.setText(LocaleController.getString("StoriesIntroDismiss", C3634R.string.StoriesIntroDismiss));
        textView3.setTextSize(1, 14.0f);
        linearLayout.addView(textView3, LayoutHelper.createLinear(-2, -2, 0, 73, 0, 0));
        addView(linearLayout, LayoutHelper.createFrame(-1, -2, 17));
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getContext().getResources(), AndroidUtilities.makeBlurBitmap(view, 12.0f, 10));
        bitmapDrawable.setColorFilter(new PorterDuffColorFilter(-587202560, PorterDuff.Mode.DST_OVER));
        imageView.setImageDrawable(bitmapDrawable);
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: org.telegram.ui.Stories.StoriesIntro.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int[] iArr = new int[2];
                textView3.getLocationOnScreen(iArr);
                if (iArr[1] + AndroidUtilities.m104dp(24) > view.getMeasuredHeight()) {
                    textView3.setLayoutParams(LayoutHelper.createLinear(-2, -2, 0, 13, 0, 0));
                    textView2.setLayoutParams(LayoutHelper.createLinear(-2, -2, 68, 8, 68, 13));
                    StoriesIntro.this.requestLayout();
                }
                StoriesIntro.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startAnimation(boolean z) {
        ValueAnimator valueAnimator = this.valueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.valueAnimator = ofFloat;
        if (z) {
            ofFloat.setStartDelay(50L);
        }
        this.valueAnimator.setDuration(350L);
        this.valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        this.valueAnimator.getCurrentPlayTime();
        this.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoriesIntro.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                ((StoriesIntroItemView) StoriesIntro.this.items.get(StoriesIntro.this.current)).startIconAnimation();
            }
        });
        this.valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoriesIntro$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                StoriesIntro.this.lambda$startAnimation$1(valueAnimator2);
            }
        });
        this.valueAnimator.start();
        AndroidUtilities.runOnUIThread(this.startItemAnimationRunnable, this.items.get(this.current).getLottieAnimationDuration() + 100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startAnimation$1(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.items.get(this.current).setProgress(floatValue);
        int i = this.prev;
        if (i != -1) {
            this.items.get(i).setProgress(1.0f - floatValue);
        }
    }

    public void stopAnimation() {
        AndroidUtilities.cancelRunOnUIThread(this.startItemAnimationRunnable);
        ValueAnimator valueAnimator = this.valueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.valueAnimator = null;
        }
        int i = this.prev;
        if (i != -1) {
            this.items.get(i).stopAnimation();
        }
        this.items.get(this.current).stopAnimation();
        updateCurrentAnimatedItem();
    }

    private void updateCurrentAnimatedItem() {
        int i = this.current + 1;
        this.current = i;
        if (i >= this.items.size()) {
            this.current = 0;
        }
        int i2 = this.prev + 1;
        this.prev = i2;
        if (i2 >= this.items.size()) {
            this.prev = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.StoriesIntro$StoriesIntroItemView */
    /* loaded from: classes6.dex */
    public static class StoriesIntroItemView extends View {
        private final Paint backgroundPaint;
        private final String header;
        private final TextPaint headerTextPaint;
        private final RLottieDrawable lottieDrawable;
        private float progress;
        private final RectF rectF;
        private final String subHeader;
        private final TextPaint subHeaderTextPaint;
        private final Rect textBounds;

        public StoriesIntroItemView(Context context, int i, String str, String str2) {
            super(context);
            this.textBounds = new Rect();
            this.header = str;
            this.subHeader = str2;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m104dp(36), AndroidUtilities.m104dp(36), true, null);
            this.lottieDrawable = rLottieDrawable;
            rLottieDrawable.setAutoRepeat(1);
            rLottieDrawable.setMasterParent(this);
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            paint.setColor(383310040);
            TextPaint textPaint = new TextPaint(1);
            this.headerTextPaint = textPaint;
            textPaint.setColor(-1);
            textPaint.setTextSize(TypedValue.applyDimension(1, 16.0f, getResources().getDisplayMetrics()));
            textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            TextPaint textPaint2 = new TextPaint(1);
            this.subHeaderTextPaint = textPaint2;
            textPaint2.setColor(-1761607681);
            textPaint2.setTextSize(TypedValue.applyDimension(1, 14.0f, getResources().getDisplayMetrics()));
            this.rectF = new RectF();
        }

        public int getRequiredWidth() {
            TextPaint textPaint = this.headerTextPaint;
            String str = this.header;
            textPaint.getTextBounds(str, 0, str.length(), this.textBounds);
            int width = this.textBounds.width();
            TextPaint textPaint2 = this.subHeaderTextPaint;
            String str2 = this.subHeader;
            textPaint2.getTextBounds(str2, 0, str2.length(), this.textBounds);
            return AndroidUtilities.m104dp(88) + AndroidUtilities.m104dp(8) + Math.max(width, this.textBounds.width());
        }

        public long getLottieAnimationDuration() {
            return this.lottieDrawable.getDuration() * 2;
        }

        public void stopAnimation() {
            this.lottieDrawable.setCurrentFrame(0);
            this.lottieDrawable.stop();
            this.progress = BitmapDescriptorFactory.HUE_RED;
            invalidate();
        }

        public void startIconAnimation() {
            this.lottieDrawable.setAutoRepeatCount(2);
            this.lottieDrawable.start();
        }

        public void setProgress(float f) {
            this.progress = f;
            invalidate();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int m104dp = AndroidUtilities.m104dp(40);
            int m104dp2 = AndroidUtilities.m104dp(36);
            int i3 = m104dp2 / 2;
            int i4 = m104dp - i3;
            int measuredHeight = (getMeasuredHeight() / 2) - i3;
            this.lottieDrawable.setBounds(i4, measuredHeight, i4 + m104dp2, m104dp2 + measuredHeight);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int m104dp = AndroidUtilities.m104dp(40);
            int m104dp2 = (int) (AndroidUtilities.m104dp(36) + (AndroidUtilities.m104dp(8) * this.progress));
            int i = m104dp2 / 2;
            int i2 = m104dp - i;
            int measuredHeight = (getMeasuredHeight() / 2) - i;
            this.lottieDrawable.setBounds(i2, measuredHeight, i2 + m104dp2, m104dp2 + measuredHeight);
            this.lottieDrawable.draw(canvas);
            if (this.progress > BitmapDescriptorFactory.HUE_RED) {
                float dpf2 = AndroidUtilities.dpf2(4.0f) * (1.0f - this.progress);
                float f = dpf2 * 2.0f;
                this.rectF.set(dpf2, dpf2, getMeasuredWidth() - f, getMeasuredHeight() - f);
                this.backgroundPaint.setAlpha((int) (this.progress * 30.0f));
                canvas.drawRoundRect(this.rectF, AndroidUtilities.dpf2(12.0f), AndroidUtilities.dpf2(12.0f), this.backgroundPaint);
                canvas.save();
                float f2 = this.progress;
                canvas.scale((f2 * 0.05f) + 1.0f, (f2 * 0.05f) + 1.0f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
            }
            canvas.drawText(this.header, AndroidUtilities.dpf2(80.0f), (getMeasuredHeight() / 2.0f) - AndroidUtilities.dpf2(4.0f), this.headerTextPaint);
            canvas.drawText(this.subHeader, AndroidUtilities.dpf2(80.0f), (getMeasuredHeight() / 2.0f) + AndroidUtilities.dpf2(18.0f), this.subHeaderTextPaint);
            if (this.progress > BitmapDescriptorFactory.HUE_RED) {
                canvas.restore();
            }
        }
    }
}
