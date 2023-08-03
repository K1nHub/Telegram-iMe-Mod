package org.telegram.p043ui.Stories;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import androidx.core.graphics.ColorUtils;
import androidx.core.widget.NestedScrollView;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.StaticLayoutEx;
import org.telegram.p043ui.Components.spoilers.SpoilerEffect;
import org.telegram.p043ui.Components.spoilers.SpoilersClickDetector;
import org.telegram.p043ui.Stories.StoryCaptionView;
/* renamed from: org.telegram.ui.Stories.StoryCaptionView */
/* loaded from: classes6.dex */
public class StoryCaptionView extends NestedScrollView {
    private Method abortAnimatedScrollMethod;
    public int blackoutBottomOffset;
    FrameLayout captionContainer;
    public StoryCaptionTextView captionTextview;
    private boolean disableDraw;
    public boolean disableTouches;
    private boolean dontChangeTopMargin;
    boolean expanded;
    int gradientColor;
    private boolean isLandscape;
    private boolean nestedScrollStarted;
    private float overScrollY;
    private final Paint paint;
    private int pendingTopMargin;
    private int prevHeight;
    private OverScroller scroller;
    private final SpringAnimation springAnimation;
    private int textHash;
    boolean touched;
    private float velocitySign;
    private float velocityY;

    @Override // androidx.core.widget.NestedScrollView, android.view.View
    protected float getBottomFadingEdgeStrength() {
        return 1.0f;
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.View
    protected float getTopFadingEdgeStrength() {
        return 1.0f;
    }

    public void onEmojiClick(AnimatedEmojiSpan animatedEmojiSpan) {
    }

    public void onLinkClick(CharacterStyle characterStyle, View view) {
    }

    public void onLinkLongPress(URLSpan uRLSpan, View view, Runnable runnable) {
    }

    public StoryCaptionView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        Paint paint = new Paint(1);
        this.paint = paint;
        this.pendingTopMargin = -1;
        this.gradientColor = ColorUtils.setAlphaComponent(-16777216, 51);
        new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, this.gradientColor});
        this.captionContainer = new FrameLayout(context);
        setClipChildren(false);
        setOverScrollMode(2);
        NotificationCenter.listenEmojiLoading(this);
        StoryCaptionTextView storyCaptionTextView = new StoryCaptionTextView(getContext(), resourcesProvider);
        this.captionTextview = storyCaptionTextView;
        this.captionContainer.addView(storyCaptionTextView, -1, -2);
        addView(this.captionContainer, new ViewGroup.LayoutParams(-1, -2));
        paint.setColor(-16777216);
        setFadingEdgeLength(AndroidUtilities.m72dp(12));
        setVerticalFadingEdgeEnabled(true);
        setWillNotDraw(false);
        SpringAnimation springAnimation = new SpringAnimation(this.captionTextview, DynamicAnimation.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED);
        this.springAnimation = springAnimation;
        springAnimation.getSpring().setStiffness(100.0f);
        springAnimation.setMinimumVisibleChange(1.0f);
        springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Stories.StoryCaptionView$$ExternalSyntheticLambda2
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                StoryCaptionView.this.lambda$new$0(dynamicAnimation, f, f2);
            }
        });
        springAnimation.getSpring().setDampingRatio(1.0f);
        try {
            Method declaredMethod = NestedScrollView.class.getDeclaredMethod("abortAnimatedScroll", new Class[0]);
            this.abortAnimatedScrollMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (Exception e) {
            this.abortAnimatedScrollMethod = null;
            FileLog.m67e(e);
        }
        try {
            Field declaredField = NestedScrollView.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            this.scroller = (OverScroller) declaredField.get(this);
        } catch (Exception e2) {
            this.scroller = null;
            FileLog.m67e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.overScrollY = f;
        this.velocityY = f2;
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.captionTextview.progressToExpand != 1.0f || this.disableTouches || (motionEvent.getAction() == 0 && motionEvent.getY() < (this.captionContainer.getTop() - getScrollY()) + this.captionTextview.getTranslationY())) {
            if (this.touched) {
                this.touched = false;
                invalidate();
            }
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.touched = true;
            invalidate();
        } else if (this.touched && (motionEvent.getAction() == 1 || motionEvent.getAction() == 3)) {
            this.touched = false;
            invalidate();
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.captionTextview.progressToExpand != 1.0f || this.disableTouches || (motionEvent.getAction() == 0 && motionEvent.getY() < (this.captionContainer.getTop() - getScrollY()) + this.captionTextview.getTranslationY())) {
            if (this.touched) {
                this.touched = false;
                invalidate();
            }
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.touched = true;
            invalidate();
        } else if (this.touched && (motionEvent.getAction() == 1 || motionEvent.getAction() == 3)) {
            this.touched = false;
            invalidate();
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.widget.NestedScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        updateTopMargin(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        super.onMeasure(i, i2);
    }

    public int getPendingMarginTopDiff() {
        int i = this.pendingTopMargin;
        if (i >= 0) {
            return i - ((ViewGroup.MarginLayoutParams) this.captionContainer.getLayoutParams()).topMargin;
        }
        return 0;
    }

    private void updateTopMargin(int i, int i2) {
        int calculateNewContainerMarginTop = calculateNewContainerMarginTop(i, i2);
        if (calculateNewContainerMarginTop >= 0) {
            if (this.dontChangeTopMargin) {
                this.pendingTopMargin = calculateNewContainerMarginTop;
                return;
            }
            ((ViewGroup.MarginLayoutParams) this.captionContainer.getLayoutParams()).topMargin = calculateNewContainerMarginTop;
            this.pendingTopMargin = -1;
        }
    }

    public int calculateNewContainerMarginTop(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return -1;
        }
        StoryCaptionTextView storyCaptionTextView = this.captionTextview;
        int hashCode = storyCaptionTextView.text.hashCode();
        Point point = AndroidUtilities.displaySize;
        boolean z = point.x > point.y;
        if (this.textHash == hashCode && this.isLandscape == z && this.prevHeight == i2) {
            return -1;
        }
        this.textHash = hashCode;
        this.isLandscape = z;
        this.prevHeight = i2;
        storyCaptionTextView.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
        int lineCount = storyCaptionTextView.fullLayout.getLineCount();
        if (lineCount <= 3) {
            return i2 - storyCaptionTextView.getMeasuredHeight();
        }
        return i2 - (storyCaptionTextView.textPaint.getFontMetricsInt(null) * (Math.min(3, lineCount) + 1));
    }

    public void reset() {
        scrollTo(0, 0);
        this.expanded = false;
        StoryCaptionTextView storyCaptionTextView = this.captionTextview;
        storyCaptionTextView.progressToExpand = BitmapDescriptorFactory.HUE_RED;
        storyCaptionTextView.invalidate();
    }

    @Override // androidx.core.widget.NestedScrollView
    public void fling(int i) {
        super.fling(i);
        this.velocitySign = Math.signum(i);
        this.velocityY = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.core.widget.NestedScrollView
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        iArr[1] = 0;
        if (this.nestedScrollStarted) {
            float f = this.overScrollY;
            if ((f > BitmapDescriptorFactory.HUE_RED && i2 > 0) || (f < BitmapDescriptorFactory.HUE_RED && i2 < 0)) {
                float f2 = i2;
                float f3 = f - f2;
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    if (f3 < BitmapDescriptorFactory.HUE_RED) {
                        this.overScrollY = BitmapDescriptorFactory.HUE_RED;
                        iArr[1] = (int) (iArr[1] + f2 + f3);
                    } else {
                        this.overScrollY = f3;
                        iArr[1] = iArr[1] + i2;
                    }
                } else if (f3 > BitmapDescriptorFactory.HUE_RED) {
                    this.overScrollY = BitmapDescriptorFactory.HUE_RED;
                    iArr[1] = (int) (iArr[1] + f2 + f3);
                } else {
                    this.overScrollY = f3;
                    iArr[1] = iArr[1] + i2;
                }
                this.captionTextview.setTranslationY(this.overScrollY);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.core.widget.NestedScrollView
    public void dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        int round;
        float f;
        if (i4 == 0 || (round = Math.round(i4 * (1.0f - Math.abs((-this.overScrollY) / (this.captionContainer.getTop() + 0))))) == 0) {
            return;
        }
        if (!this.nestedScrollStarted) {
            if (this.springAnimation.isRunning()) {
                return;
            }
            OverScroller overScroller = this.scroller;
            float currVelocity = overScroller != null ? overScroller.getCurrVelocity() : Float.NaN;
            if (Float.isNaN(currVelocity)) {
                f = BitmapDescriptorFactory.HUE_RED;
            } else {
                Point point = AndroidUtilities.displaySize;
                float min = Math.min(point.x > point.y ? 3000.0f : 5000.0f, currVelocity);
                round = (int) ((round * min) / currVelocity);
                f = min * (-this.velocitySign);
            }
            if (round != 0) {
                float f2 = this.overScrollY - round;
                this.overScrollY = f2;
                this.captionTextview.setTranslationY(f2);
            }
            startSpringAnimationIfNotRunning(f);
            return;
        }
        float f3 = this.overScrollY - round;
        this.overScrollY = f3;
        this.captionTextview.setTranslationY(f3);
    }

    private void startSpringAnimationIfNotRunning(float f) {
        if (!this.springAnimation.isRunning()) {
            this.springAnimation.setStartVelocity(f);
            this.springAnimation.start();
        }
        if (getScrollY() < AndroidUtilities.m72dp(2)) {
            collapse();
        }
    }

    @Override // androidx.core.widget.NestedScrollView
    public boolean startNestedScroll(int i, int i2) {
        if (i2 == 0) {
            this.springAnimation.cancel();
            this.nestedScrollStarted = true;
            this.overScrollY = this.captionTextview.getTranslationY();
        }
        return true;
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.View
    public void computeScroll() {
        OverScroller overScroller;
        super.computeScroll();
        if (this.nestedScrollStarted || this.overScrollY == BitmapDescriptorFactory.HUE_RED || (overScroller = this.scroller) == null || !overScroller.isFinished()) {
            return;
        }
        startSpringAnimationIfNotRunning(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // androidx.core.widget.NestedScrollView
    public void stopNestedScroll(int i) {
        OverScroller overScroller;
        if (this.nestedScrollStarted && i == 0) {
            this.nestedScrollStarted = false;
            if (this.overScrollY == BitmapDescriptorFactory.HUE_RED || (overScroller = this.scroller) == null || !overScroller.isFinished()) {
                return;
            }
            startSpringAnimationIfNotRunning(this.velocityY);
        }
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.View
    public void draw(Canvas canvas) {
        if (this.disableDraw) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        int scrollY = getScrollY();
        int save = canvas.save();
        int i = height + scrollY;
        canvas.clipRect(0, scrollY, width, this.blackoutBottomOffset + i);
        canvas.clipRect(0, scrollY, width, i);
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    public float getTextTop() {
        return (this.captionContainer.getTop() + this.captionTextview.getTranslationY()) - getScrollY();
    }

    public float getMaxTop() {
        return this.captionContainer.getTop() - (this.captionContainer.getBottom() - getMeasuredHeight());
    }

    public boolean allowInterceptTouchEvent(float f, float f2) {
        return this.captionTextview.progressToExpand == 1.0f && !this.disableTouches && f2 > ((float) (this.captionContainer.getTop() - getScrollY())) + this.captionTextview.getTranslationY();
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        super.scrollBy(i, i2);
        invalidate();
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getParent() != null) {
            ((View) getParent()).invalidate();
        }
    }

    public float getProgressToBlackout() {
        return Utilities.clamp((getScrollY() - this.captionTextview.getTranslationY()) / Math.min(this.prevHeight, AndroidUtilities.m72dp(40)), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
    }

    public void expand() {
        if (this.expanded) {
            return;
        }
        this.expanded = true;
        final float scrollY = getScrollY();
        final float bottom = this.captionContainer.getBottom() - getMeasuredHeight();
        final float f = this.captionTextview.progressToExpand;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryCaptionView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                StoryCaptionView.this.lambda$expand$1(scrollY, bottom, f, r5, valueAnimator);
            }
        });
        ofFloat.setDuration(250L);
        ofFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$expand$1(float f, float f2, float f3, float f4, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        setScrollY((int) AndroidUtilities.lerp(f, f2, floatValue));
        this.captionTextview.progressToExpand = AndroidUtilities.lerp(f3, f4, floatValue);
        this.captionTextview.invalidate();
    }

    public void collapse() {
        if (this.expanded) {
            this.expanded = false;
            final float scrollY = getScrollY();
            final float f = this.captionTextview.progressToExpand;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryCaptionView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    StoryCaptionView.this.lambda$collapse$2(scrollY, r3, f, r5, valueAnimator);
                }
            });
            ofFloat.setDuration(250L);
            ofFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
            ofFloat.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$collapse$2(float f, float f2, float f3, float f4, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        setScrollY((int) AndroidUtilities.lerp(f, f2, floatValue));
        this.captionTextview.progressToExpand = AndroidUtilities.lerp(f3, f4, floatValue);
        this.captionTextview.invalidate();
    }

    public void disableDraw(boolean z) {
        if (this.disableDraw != z) {
            this.disableDraw = z;
            invalidate();
        }
    }

    public boolean isTouched() {
        return this.touched;
    }

    public void cancelTouch() {
        this.touched = false;
    }

    public boolean hasScroll() {
        return this.captionContainer.getBottom() - getMeasuredHeight() > 0;
    }

    /* renamed from: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView */
    /* loaded from: classes6.dex */
    public class StoryCaptionTextView extends View {
        public boolean allowClickSpoilers;
        private SpoilersClickDetector clickDetector;
        private final PorterDuffColorFilter emojiColorFilter;
        StaticLayout firstLayout;
        private AnimatedEmojiSpan.EmojiGroupedSpans firstLayoutEmoji;
        StaticLayout fullLayout;
        private AnimatedEmojiSpan.EmojiGroupedSpans fullLayoutEmoji;
        int horizontalPadding;
        private boolean isSpoilersRevealed;
        private LinkSpanDrawable.LinkCollector links;
        LineInfo[] nextLinesLayouts;
        AtomicReference<Layout> patchedLayout;
        private AnimatedEmojiSpan pressedEmoji;
        private LinkSpanDrawable<CharacterStyle> pressedLink;
        float progressToExpand;
        StaticLayout showMore;
        TextPaint showMorePaint;
        float showMoreX;
        float showMoreY;
        int sizeCached;
        protected List<SpoilerEffect> spoilers;
        private Stack<SpoilerEffect> spoilersPool;
        CharSequence text;
        int textHeight;
        TextPaint textPaint;
        float textX;
        float textY;
        int verticalPadding;
        private final Paint xRefGradinetPaint;
        private final Paint xRefPaint;

        public StoryCaptionTextView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.links = new LinkSpanDrawable.LinkCollector(this);
            this.textPaint = new TextPaint(1);
            this.showMorePaint = new TextPaint(1);
            Paint paint = new Paint();
            this.xRefPaint = paint;
            Paint paint2 = new Paint(1);
            this.xRefGradinetPaint = paint2;
            this.sizeCached = 0;
            this.text = "";
            this.spoilers = new ArrayList();
            this.spoilersPool = new Stack<>();
            new Path();
            this.allowClickSpoilers = true;
            this.patchedLayout = new AtomicReference<>();
            this.textPaint.setColor(-1);
            this.textPaint.linkColor = Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider);
            this.textPaint.setTextSize(AndroidUtilities.m72dp(15));
            this.showMorePaint.setColor(-1);
            this.showMorePaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.showMorePaint.setTextSize(AndroidUtilities.m72dp(16));
            paint.setColor(-16777216);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            paint2.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(16), (float) BitmapDescriptorFactory.HUE_RED, new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.clickDetector = new SpoilersClickDetector(this, this.spoilers, new SpoilersClickDetector.OnSpoilerClickedListener() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda4
                @Override // org.telegram.p043ui.Components.spoilers.SpoilersClickDetector.OnSpoilerClickedListener
                public final void onSpoilerClicked(SpoilerEffect spoilerEffect, float f, float f2) {
                    StoryCaptionView.StoryCaptionTextView.this.lambda$new$2(spoilerEffect, f, f2);
                }
            });
            this.emojiColorFilter = new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(SpoilerEffect spoilerEffect, float f, float f2) {
            if (this.isSpoilersRevealed) {
                return;
            }
            spoilerEffect.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    StoryCaptionView.StoryCaptionTextView.this.lambda$new$1();
                }
            });
            float sqrt = (float) Math.sqrt(Math.pow(getWidth(), 2.0d) + Math.pow(getHeight(), 2.0d));
            for (SpoilerEffect spoilerEffect2 : this.spoilers) {
                spoilerEffect2.startRipple(f, f2, sqrt);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1() {
            post(new Runnable() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    StoryCaptionView.StoryCaptionTextView.this.lambda$new$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            this.isSpoilersRevealed = true;
        }

        public void setText(CharSequence charSequence) {
            if (charSequence == null) {
                charSequence = "";
            }
            this.isSpoilersRevealed = false;
            this.text = charSequence;
            this.sizeCached = 0;
            requestLayout();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3 = (i2 + i) << 16;
            this.horizontalPadding = AndroidUtilities.m72dp(16);
            this.verticalPadding = AndroidUtilities.m72dp(8);
            if (this.sizeCached != i3) {
                this.sizeCached = i3;
                int size = View.MeasureSpec.getSize(i) - (this.horizontalPadding * 2);
                StaticLayout makeTextLayout = makeTextLayout(this.textPaint, this.text, size);
                this.fullLayout = makeTextLayout;
                this.textHeight = makeTextLayout.getHeight();
                this.textX = this.horizontalPadding;
                this.textY = this.verticalPadding;
                float measureText = this.textPaint.measureText(" ");
                if (this.fullLayout.getLineCount() > 3) {
                    String string = LocaleController.getString("ShowMore", C3419R.string.ShowMore);
                    this.showMore = makeTextLayout(this.showMorePaint, string, size);
                    float lineTop = this.fullLayout.getLineTop(2) + this.fullLayout.getTopPadding();
                    this.showMoreY = (this.textY + lineTop) - AndroidUtilities.dpf2(0.3f);
                    this.showMoreX = (View.MeasureSpec.getSize(i) - this.horizontalPadding) - this.showMorePaint.measureText(string);
                    this.firstLayout = makeTextLayout(this.textPaint, this.text.subSequence(0, this.fullLayout.getLineEnd(2)), size);
                    this.spoilersPool.addAll(this.spoilers);
                    this.spoilers.clear();
                    SpoilerEffect.addSpoilers(this, this.fullLayout, this.spoilersPool, this.spoilers);
                    float lineRight = this.fullLayout.getLineRight(2) + measureText;
                    if (this.nextLinesLayouts != null) {
                        int i4 = 0;
                        while (true) {
                            LineInfo[] lineInfoArr = this.nextLinesLayouts;
                            if (i4 >= lineInfoArr.length) {
                                break;
                            }
                            if (lineInfoArr[i4] != null) {
                                AnimatedEmojiSpan.release(this, lineInfoArr[i4].layoutEmoji);
                            }
                            i4++;
                        }
                    }
                    this.nextLinesLayouts = new LineInfo[this.fullLayout.getLineCount() - 3];
                    if (this.spoilers.isEmpty()) {
                        for (int i5 = 3; i5 < this.fullLayout.getLineCount(); i5++) {
                            int lineStart = this.fullLayout.getLineStart(i5);
                            int lineEnd = this.fullLayout.getLineEnd(i5);
                            StaticLayout makeTextLayout2 = makeTextLayout(this.textPaint, this.text.subSequence(Math.min(lineStart, lineEnd), Math.max(lineStart, lineEnd)), size);
                            LineInfo lineInfo = new LineInfo(this);
                            this.nextLinesLayouts[i5 - 3] = lineInfo;
                            lineInfo.staticLayout = makeTextLayout2;
                            lineInfo.finalX = this.fullLayout.getLineLeft(i5);
                            lineInfo.finalY = this.fullLayout.getLineTop(i5) + this.fullLayout.getTopPadding();
                            if (lineRight < this.showMoreX - AndroidUtilities.m72dp(16)) {
                                lineInfo.collapsedY = lineTop;
                                lineInfo.collapsedX = lineRight;
                                lineRight += makeTextLayout2.getLineRight(0) + measureText;
                            } else {
                                lineInfo.collapsedY = lineInfo.finalY;
                                lineInfo.collapsedX = lineInfo.finalX;
                            }
                        }
                    }
                } else {
                    this.showMore = null;
                    this.firstLayout = null;
                    this.spoilersPool.addAll(this.spoilers);
                    this.spoilers.clear();
                    SpoilerEffect.addSpoilers(this, this.fullLayout, this.spoilersPool, this.spoilers);
                }
            }
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((this.verticalPadding * 2) + this.textHeight, 1073741824));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            StaticLayout staticLayout;
            if (this.showMore != null) {
                canvas.saveLayerAlpha(this.textX - this.horizontalPadding, this.textY, getMeasuredWidth(), getMeasuredHeight() - this.verticalPadding, 255, 31);
            } else {
                canvas.save();
            }
            canvas.save();
            canvas.translate(this.textX, this.textY);
            if (this.links.draw(canvas)) {
                invalidate();
            }
            canvas.restore();
            if (!this.spoilers.isEmpty() || (staticLayout = this.firstLayout) == null) {
                if (this.fullLayout != null) {
                    canvas.save();
                    canvas.translate(this.textX, this.textY);
                    drawLayout(this.fullLayout, canvas);
                    AnimatedEmojiSpan.EmojiGroupedSpans update = AnimatedEmojiSpan.update(0, this, this.fullLayoutEmoji, this.fullLayout);
                    this.fullLayoutEmoji = update;
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.fullLayout, update, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, this.emojiColorFilter);
                    canvas.restore();
                }
            } else {
                if (staticLayout != null) {
                    canvas.save();
                    canvas.translate(this.textX, this.textY);
                    drawLayout(this.firstLayout, canvas);
                    AnimatedEmojiSpan.EmojiGroupedSpans update2 = AnimatedEmojiSpan.update(0, this, this.firstLayoutEmoji, this.firstLayout);
                    this.firstLayoutEmoji = update2;
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.firstLayout, update2, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, this.emojiColorFilter);
                    canvas.restore();
                }
                if (this.nextLinesLayouts != null) {
                    int i = 0;
                    while (true) {
                        LineInfo[] lineInfoArr = this.nextLinesLayouts;
                        if (i >= lineInfoArr.length) {
                            break;
                        }
                        LineInfo lineInfo = lineInfoArr[i];
                        canvas.save();
                        float f = lineInfo.collapsedX;
                        float f2 = lineInfo.finalX;
                        if (f == f2) {
                            this.textPaint.setAlpha((int) (this.progressToExpand * 255.0f));
                            canvas.translate(this.textX + lineInfo.finalX, this.textY + lineInfo.finalY);
                            drawLayout(lineInfo.staticLayout, canvas);
                            lineInfo.staticLayout.draw(canvas);
                            lineInfo.layoutEmoji = AnimatedEmojiSpan.update(0, this, lineInfo.layoutEmoji, lineInfo.staticLayout);
                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, lineInfo.staticLayout, lineInfo.layoutEmoji, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.progressToExpand, this.emojiColorFilter);
                            this.textPaint.setAlpha(255);
                        } else {
                            canvas.translate(this.textX + AndroidUtilities.lerp(f, f2, this.progressToExpand), this.textY + AndroidUtilities.lerp(lineInfo.collapsedY, lineInfo.finalY, CubicBezierInterpolator.EASE_OUT.getInterpolation(this.progressToExpand)));
                            lineInfo.staticLayout.draw(canvas);
                            lineInfo.layoutEmoji = AnimatedEmojiSpan.update(0, this, lineInfo.layoutEmoji, lineInfo.staticLayout);
                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, lineInfo.staticLayout, lineInfo.layoutEmoji, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, this.emojiColorFilter);
                        }
                        canvas.restore();
                        i++;
                    }
                }
            }
            if (this.showMore != null) {
                float scrollY = this.showMoreY + StoryCaptionView.this.getScrollY();
                int clamp = (int) ((1.0f - Utilities.clamp(this.progressToExpand / 0.5f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED)) * 255.0f);
                this.xRefGradinetPaint.setAlpha(clamp);
                this.xRefPaint.setAlpha(clamp);
                this.showMorePaint.setAlpha(clamp);
                canvas.save();
                canvas.translate(this.showMoreX - AndroidUtilities.m72dp(32), scrollY);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(32), this.showMore.getHeight() + this.verticalPadding, this.xRefGradinetPaint);
                canvas.restore();
                canvas.drawRect(this.showMoreX - AndroidUtilities.m72dp(16), scrollY, getMeasuredWidth(), this.showMore.getHeight() + scrollY + this.verticalPadding, this.xRefPaint);
                canvas.save();
                canvas.translate(this.showMoreX, scrollY);
                this.showMore.draw(canvas);
                canvas.restore();
            }
            canvas.restore();
        }

        private void drawLayout(StaticLayout staticLayout, Canvas canvas) {
            if (!this.spoilers.isEmpty()) {
                SpoilerEffect.renderWithRipple(this, false, -1, 0, this.patchedLayout, staticLayout, this.spoilers, canvas, false);
            } else {
                staticLayout.draw(canvas);
            }
        }

        private StaticLayout makeTextLayout(TextPaint textPaint, CharSequence charSequence, int i) {
            if (Build.VERSION.SDK_INT >= 24) {
                return StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i).setBreakStrategy(0).setHyphenationFrequency(0).setAlignment(LocaleController.isRTL ? StaticLayoutEx.ALIGN_RIGHT() : StaticLayoutEx.ALIGN_LEFT()).build();
            }
            return new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        }

        public Paint getPaint() {
            return this.textPaint;
        }

        /* renamed from: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$LineInfo */
        /* loaded from: classes6.dex */
        public class LineInfo {
            float collapsedX;
            float collapsedY;
            float finalX;
            float finalY;
            private AnimatedEmojiSpan.EmojiGroupedSpans layoutEmoji;
            StaticLayout staticLayout;

            public LineInfo(StoryCaptionTextView storyCaptionTextView) {
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:69:0x017b  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0182  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0185  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouchEvent(android.view.MotionEvent r12) {
            /*
                Method dump skipped, instructions count: 397
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoryCaptionView.StoryCaptionTextView.onTouchEvent(android.view.MotionEvent):boolean");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$4(LinkSpanDrawable linkSpanDrawable) {
            LinkSpanDrawable<CharacterStyle> linkSpanDrawable2 = this.pressedLink;
            if (linkSpanDrawable == linkSpanDrawable2 && linkSpanDrawable2 != null && (linkSpanDrawable2.getSpan() instanceof URLSpan)) {
                StoryCaptionView.this.onLinkLongPress((URLSpan) this.pressedLink.getSpan(), this, new Runnable() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryCaptionView.StoryCaptionTextView.this.lambda$onTouchEvent$3();
                    }
                });
                this.pressedLink = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$3() {
            this.links.clear();
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AnimatedEmojiSpan.release(this, this.fullLayoutEmoji);
            AnimatedEmojiSpan.release(this, this.firstLayoutEmoji);
            if (this.nextLinesLayouts == null) {
                return;
            }
            int i = 0;
            while (true) {
                LineInfo[] lineInfoArr = this.nextLinesLayouts;
                if (i >= lineInfoArr.length) {
                    return;
                }
                if (lineInfoArr[i] != null) {
                    AnimatedEmojiSpan.release(this, lineInfoArr[i].layoutEmoji);
                }
                i++;
            }
        }

        private void clearPressedLinks() {
            this.links.clear();
            this.pressedLink = null;
            invalidate();
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            boolean z2 = z != isPressed();
            super.setPressed(z);
            if (z2) {
                invalidate();
            }
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            if (getTranslationY() != f) {
                super.setTranslationY(f);
                StoryCaptionView.this.invalidate();
            }
        }

        @Override // android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            StaticLayout staticLayout;
            boolean z;
            if (this.showMore != null) {
                RectF rectF = AndroidUtilities.rectTmp;
                float f = this.showMoreX;
                rectF.set(f, this.showMoreY, staticLayout.getWidth() + f, this.showMoreY + this.showMore.getHeight());
                if (rectF.contains(motionEvent.getX(), motionEvent.getY())) {
                    z = false;
                    if (!z && this.allowClickSpoilers && this.clickDetector.onTouchEvent(motionEvent)) {
                        return true;
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }
            }
            z = true;
            if (!z) {
            }
            return super.dispatchTouchEvent(motionEvent);
        }
    }
}
