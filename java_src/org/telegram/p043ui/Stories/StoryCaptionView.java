package org.telegram.p043ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
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
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
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
import java.util.Objects;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.TextSelectionHelper;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.LoadingDrawable;
import org.telegram.p043ui.Components.StaticLayoutEx;
import org.telegram.p043ui.Components.spoilers.SpoilerEffect;
import org.telegram.p043ui.Components.spoilers.SpoilersClickDetector;
import org.telegram.p043ui.Stories.StoryCaptionView;
/* renamed from: org.telegram.ui.Stories.StoryCaptionView */
/* loaded from: classes7.dex */
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
    private float lastMotionX;
    private float lastMotionY;
    private boolean nestedScrollStarted;
    private float overScrollY;
    private final Paint paint;
    private int pendingTopMargin;
    private int prevHeight;
    private OverScroller scroller;
    private final SpringAnimation springAnimation;
    private float startMotionX;
    private float startMotionY;
    private int textHash;
    TextSelectionHelper.SimpleTextSelectionHelper textSelectionHelper;
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
        TextSelectionHelper.SimpleTextSelectionHelper simpleTextSelectionHelper = new TextSelectionHelper.SimpleTextSelectionHelper(storyCaptionTextView, resourcesProvider);
        this.textSelectionHelper = simpleTextSelectionHelper;
        simpleTextSelectionHelper.useMovingOffset = false;
        this.captionContainer.addView(this.captionTextview, -1, -2);
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
        int hashCode = storyCaptionTextView.state[0].text.hashCode();
        Point point = AndroidUtilities.displaySize;
        boolean z = point.x > point.y;
        if (this.textHash == hashCode && this.isLandscape == z && this.prevHeight == i2 && !storyCaptionTextView.updating) {
            return -1;
        }
        this.textHash = hashCode;
        this.isLandscape = z;
        this.prevHeight = i2;
        storyCaptionTextView.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
        return storyCaptionTextView.collapsedTextHeight(i2);
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
                this.textSelectionHelper.invalidate();
                return true;
            }
        }
        return false;
    }

    @Override // androidx.core.widget.NestedScrollView
    public void dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        int round;
        float f;
        if (i4 != 0 && (round = Math.round(i4 * (1.0f - Math.abs((-this.overScrollY) / (this.captionContainer.getTop() + 0))))) != 0) {
            if (!this.nestedScrollStarted) {
                if (!this.springAnimation.isRunning()) {
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
                }
            } else {
                float f3 = this.overScrollY - round;
                this.overScrollY = f3;
                this.captionTextview.setTranslationY(f3);
            }
        }
        this.textSelectionHelper.invalidate();
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
        this.textSelectionHelper.invalidate();
    }

    public float getProgressToBlackout() {
        return Utilities.clamp((getScrollY() - this.captionTextview.getTranslationY()) / Math.min(this.prevHeight, AndroidUtilities.m72dp(40)), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
    }

    public void expand() {
        expand(false);
    }

    public void expand(boolean z) {
        if (!this.expanded || z) {
            this.expanded = true;
            final float scrollY = getScrollY();
            final float f = this.captionTextview.progressToExpand;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryCaptionView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    StoryCaptionView.this.lambda$expand$1(scrollY, f, r4, valueAnimator);
                }
            });
            ofFloat.setDuration(250L);
            ofFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
            ofFloat.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$expand$1(float f, float f2, float f3, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        setScrollY((int) AndroidUtilities.lerp(f, Math.min((getMeasuredHeight() - this.blackoutBottomOffset) - AndroidUtilities.m72dp(64), this.captionContainer.getBottom() - getMeasuredHeight()), floatValue));
        this.captionTextview.progressToExpand = AndroidUtilities.lerp(f2, f3, floatValue);
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

    public void checkCancelTextSelection() {
        if (!this.textSelectionHelper.isInSelectionMode() || Math.abs(this.startMotionX - this.lastMotionX) >= AndroidUtilities.touchSlop || Math.abs(this.startMotionY - this.lastMotionY) >= AndroidUtilities.touchSlop) {
            return;
        }
        this.textSelectionHelper.getOverlayView(getContext()).checkCancel(this.lastMotionX, this.lastMotionY, false);
    }

    /* renamed from: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView */
    /* loaded from: classes7.dex */
    public class StoryCaptionTextView extends View implements TextSelectionHelper.SimpleSelectabeleView {
        public boolean allowClickSpoilers;
        private final PorterDuffColorFilter emojiColorFilter;
        int horizontalPadding;
        private boolean isSpoilersRevealed;
        float progressToExpand;
        StaticLayout showMore;
        TextPaint showMorePaint;
        float showMoreX;
        float showMoreY;
        int sizeCached;
        TextState[] state;
        TextPaint textPaint;
        private ValueAnimator updateAnimator;
        public float updateT;
        public boolean updating;
        int verticalPadding;
        private final Paint xRefGradinetPaint;
        private final Paint xRefPaint;

        public int collapsedTextHeight(int i) {
            int collapsedTextHeight = this.state[0].collapsedTextHeight(i);
            TextState[] textStateArr = this.state;
            return AndroidUtilities.lerp(collapsedTextHeight, textStateArr[1] != null ? textStateArr[1].collapsedTextHeight(i) : 0, this.updateT);
        }

        /* renamed from: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState */
        /* loaded from: classes7.dex */
        public class TextState {
            private final SpoilersClickDetector clickDetector;
            StaticLayout firstLayout;
            private AnimatedEmojiSpan.EmojiGroupedSpans firstLayoutEmoji;
            StaticLayout fullLayout;
            private AnimatedEmojiSpan.EmojiGroupedSpans fullLayoutEmoji;
            private final LinkSpanDrawable.LinkCollector links;
            private final LoadingDrawable loadingDrawable;
            private Path loadingPath;
            LineInfo[] nextLinesLayouts;
            final AtomicReference<Layout> patchedLayout;
            private AnimatedEmojiSpan pressedEmoji;
            private LinkSpanDrawable<CharacterStyle> pressedLink;
            protected final List<SpoilerEffect> spoilers;
            private final Stack<SpoilerEffect> spoilersPool;
            CharSequence text;
            int textHeight;
            public final AnimatedFloat translateT;
            public boolean translating;

            public int collapsedTextHeight(int i) {
                StaticLayout staticLayout = this.fullLayout;
                if (staticLayout == null) {
                    return i - ((StoryCaptionTextView.this.verticalPadding * 2) + this.textHeight);
                }
                int lineCount = staticLayout.getLineCount();
                if (lineCount <= 3) {
                    return i - ((StoryCaptionTextView.this.verticalPadding * 2) + this.textHeight);
                }
                return i - (StoryCaptionTextView.this.textPaint.getFontMetricsInt(null) * (Math.min(3, lineCount) + 1));
            }

            public TextState() {
                this.links = new LinkSpanDrawable.LinkCollector(StoryCaptionTextView.this);
                ArrayList arrayList = new ArrayList();
                this.spoilers = arrayList;
                this.spoilersPool = new Stack<>();
                this.text = "";
                this.translateT = new AnimatedFloat(StoryCaptionView.this, 0L, 400L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.loadingPath = new Path();
                this.patchedLayout = new AtomicReference<>();
                this.clickDetector = new SpoilersClickDetector(StoryCaptionTextView.this, arrayList, new SpoilersClickDetector.OnSpoilerClickedListener() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda4
                    @Override // org.telegram.p043ui.Components.spoilers.SpoilersClickDetector.OnSpoilerClickedListener
                    public final void onSpoilerClicked(SpoilerEffect spoilerEffect, float f, float f2) {
                        StoryCaptionView.StoryCaptionTextView.TextState.this.lambda$new$2(spoilerEffect, f, f2);
                    }
                });
                LoadingDrawable loadingDrawable = new LoadingDrawable();
                this.loadingDrawable = loadingDrawable;
                loadingDrawable.usePath(this.loadingPath);
                loadingDrawable.setRadiiDp(4.0f);
                loadingDrawable.setColors(Theme.multAlpha(-1, 0.3f), Theme.multAlpha(-1, 0.1f), Theme.multAlpha(-1, 0.2f), Theme.multAlpha(-1, 0.7f));
                loadingDrawable.setCallback(StoryCaptionTextView.this);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$new$2(SpoilerEffect spoilerEffect, float f, float f2) {
                if (StoryCaptionTextView.this.isSpoilersRevealed) {
                    return;
                }
                spoilerEffect.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryCaptionView.StoryCaptionTextView.TextState.this.lambda$new$1();
                    }
                });
                float sqrt = (float) Math.sqrt(Math.pow(StoryCaptionTextView.this.getWidth(), 2.0d) + Math.pow(StoryCaptionTextView.this.getHeight(), 2.0d));
                for (SpoilerEffect spoilerEffect2 : this.spoilers) {
                    spoilerEffect2.startRipple(f, f2, sqrt);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$new$1() {
                StoryCaptionTextView.this.post(new Runnable() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryCaptionView.StoryCaptionTextView.TextState.this.lambda$new$0();
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$new$0() {
                StoryCaptionTextView.this.isSpoilersRevealed = true;
            }

            public void setup(CharSequence charSequence) {
                this.text = charSequence;
                StoryCaptionTextView storyCaptionTextView = StoryCaptionTextView.this;
                storyCaptionTextView.sizeCached = 0;
                storyCaptionTextView.requestLayout();
            }

            public void measure(int i) {
                StoryCaptionTextView storyCaptionTextView;
                if (TextUtils.isEmpty(this.text)) {
                    this.fullLayout = null;
                    this.textHeight = 0;
                    StoryCaptionTextView storyCaptionTextView2 = StoryCaptionTextView.this;
                    if (this == storyCaptionTextView2.state[0]) {
                        storyCaptionTextView2.showMore = null;
                    }
                    this.firstLayout = null;
                    this.spoilersPool.addAll(this.spoilers);
                    this.spoilers.clear();
                    return;
                }
                StoryCaptionTextView storyCaptionTextView3 = StoryCaptionTextView.this;
                StaticLayout makeTextLayout = storyCaptionTextView3.makeTextLayout(storyCaptionTextView3.textPaint, this.text, i);
                this.fullLayout = makeTextLayout;
                this.textHeight = makeTextLayout.getHeight();
                float measureText = StoryCaptionTextView.this.textPaint.measureText(" ");
                if (this.fullLayout.getLineCount() > 3) {
                    float lineTop = this.fullLayout.getLineTop(2) + this.fullLayout.getTopPadding();
                    if (this == StoryCaptionTextView.this.state[0]) {
                        String string = LocaleController.getString("ShowMore", C3473R.string.ShowMore);
                        StoryCaptionTextView storyCaptionTextView4 = StoryCaptionTextView.this;
                        storyCaptionTextView4.showMore = storyCaptionTextView4.makeTextLayout(storyCaptionTextView4.showMorePaint, string, i);
                        StoryCaptionTextView.this.showMoreY = (storyCaptionTextView.verticalPadding + lineTop) - AndroidUtilities.dpf2(0.3f);
                        StoryCaptionTextView storyCaptionTextView5 = StoryCaptionTextView.this;
                        storyCaptionTextView5.showMoreX = (storyCaptionTextView5.horizontalPadding + i) - storyCaptionTextView5.showMorePaint.measureText(string);
                    }
                    StoryCaptionTextView storyCaptionTextView6 = StoryCaptionTextView.this;
                    this.firstLayout = storyCaptionTextView6.makeTextLayout(storyCaptionTextView6.textPaint, this.text.subSequence(0, this.fullLayout.getLineEnd(2)), i);
                    this.spoilersPool.addAll(this.spoilers);
                    this.spoilers.clear();
                    SpoilerEffect.addSpoilers(StoryCaptionView.this, this.fullLayout, this.spoilersPool, this.spoilers);
                    float lineRight = this.fullLayout.getLineRight(2) + measureText;
                    if (this.nextLinesLayouts != null) {
                        int i2 = 0;
                        while (true) {
                            LineInfo[] lineInfoArr = this.nextLinesLayouts;
                            if (i2 >= lineInfoArr.length) {
                                break;
                            }
                            if (lineInfoArr[i2] != null) {
                                AnimatedEmojiSpan.release(StoryCaptionView.this, lineInfoArr[i2].layoutEmoji);
                            }
                            i2++;
                        }
                    }
                    this.nextLinesLayouts = new LineInfo[this.fullLayout.getLineCount() - 3];
                    if (this.spoilers.isEmpty()) {
                        for (int i3 = 3; i3 < this.fullLayout.getLineCount(); i3++) {
                            int lineStart = this.fullLayout.getLineStart(i3);
                            int lineEnd = this.fullLayout.getLineEnd(i3);
                            CharSequence subSequence = this.text.subSequence(Math.min(lineStart, lineEnd), Math.max(lineStart, lineEnd));
                            if (TextUtils.isEmpty(subSequence)) {
                                this.nextLinesLayouts[i3 - 3] = null;
                            } else {
                                StoryCaptionTextView storyCaptionTextView7 = StoryCaptionTextView.this;
                                StaticLayout makeTextLayout2 = storyCaptionTextView7.makeTextLayout(storyCaptionTextView7.textPaint, subSequence, i);
                                LineInfo lineInfo = new LineInfo(StoryCaptionTextView.this);
                                this.nextLinesLayouts[i3 - 3] = lineInfo;
                                lineInfo.staticLayout = makeTextLayout2;
                                lineInfo.finalX = this.fullLayout.getLineLeft(i3);
                                lineInfo.finalY = this.fullLayout.getLineTop(i3) + this.fullLayout.getTopPadding();
                                if (lineRight < StoryCaptionTextView.this.showMoreX - AndroidUtilities.m72dp(16)) {
                                    lineInfo.collapsedY = lineTop;
                                    lineInfo.collapsedX = lineRight;
                                    lineRight += makeTextLayout2.getLineRight(0) + measureText;
                                } else {
                                    lineInfo.collapsedY = lineInfo.finalY;
                                    lineInfo.collapsedX = lineInfo.finalX;
                                }
                            }
                        }
                    }
                } else {
                    StoryCaptionTextView storyCaptionTextView8 = StoryCaptionTextView.this;
                    if (this == storyCaptionTextView8.state[0]) {
                        storyCaptionTextView8.showMore = null;
                    }
                    this.firstLayout = null;
                    this.spoilersPool.addAll(this.spoilers);
                    this.spoilers.clear();
                    SpoilerEffect.addSpoilers(StoryCaptionTextView.this, this.fullLayout, this.spoilersPool, this.spoilers);
                }
                SpoilersClickDetector spoilersClickDetector = this.clickDetector;
                StoryCaptionTextView storyCaptionTextView9 = StoryCaptionTextView.this;
                spoilersClickDetector.setAdditionalOffsets(storyCaptionTextView9.horizontalPadding, storyCaptionTextView9.verticalPadding);
            }

            public void draw(Canvas canvas, float f) {
                float f2 = this.translateT.set(this.translating);
                if (f <= BitmapDescriptorFactory.HUE_RED) {
                    return;
                }
                float lerp = AndroidUtilities.lerp(f, 0.7f * f, f2);
                if (lerp >= 1.0f) {
                    drawInternal(canvas, f2);
                } else {
                    canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, StoryCaptionView.this.getWidth(), StoryCaptionView.this.getHeight(), (int) (lerp * 255.0f), 31);
                    drawInternal(canvas, f2);
                    canvas.restore();
                }
                if (f2 > BitmapDescriptorFactory.HUE_RED || this.translating) {
                    this.loadingDrawable.setAlpha((int) (f2 * 255.0f * lerp));
                    this.loadingDrawable.draw(canvas);
                    StoryCaptionTextView.this.invalidate();
                }
            }

            private void putLayoutRects(Layout layout, float f, float f2) {
                float f3 = BitmapDescriptorFactory.HUE_RED;
                int i = 0;
                while (i < layout.getLineCount()) {
                    float lineLeft = layout.getLineLeft(i) - (StoryCaptionTextView.this.horizontalPadding / 3.0f);
                    float lineRight = layout.getLineRight(i) + (StoryCaptionTextView.this.horizontalPadding / 3.0f);
                    if (i == 0) {
                        f3 = layout.getLineTop(i) - (StoryCaptionTextView.this.verticalPadding / 3.0f);
                    }
                    float lineBottom = layout.getLineBottom(i);
                    if (i >= layout.getLineCount() - 1) {
                        lineBottom += StoryCaptionTextView.this.verticalPadding / 3.0f;
                    }
                    this.loadingPath.addRect(f + lineLeft, f2 + f3, f + lineRight, f2 + lineBottom, Path.Direction.CW);
                    i++;
                    f3 = lineBottom;
                }
            }

            private void drawInternal(Canvas canvas, float f) {
                int i;
                StoryCaptionTextView storyCaptionTextView;
                canvas.save();
                StoryCaptionTextView storyCaptionTextView2 = StoryCaptionTextView.this;
                canvas.translate(storyCaptionTextView2.horizontalPadding, storyCaptionTextView2.verticalPadding);
                if (this.links.draw(canvas)) {
                    StoryCaptionTextView.this.invalidate();
                }
                canvas.restore();
                boolean z = f > BitmapDescriptorFactory.HUE_RED;
                this.loadingPath.rewind();
                if (!this.spoilers.isEmpty() || this.firstLayout == null) {
                    if (this.fullLayout != null) {
                        canvas.save();
                        StoryCaptionTextView storyCaptionTextView3 = StoryCaptionTextView.this;
                        canvas.translate(storyCaptionTextView3.horizontalPadding, storyCaptionTextView3.verticalPadding);
                        if (StoryCaptionView.this.textSelectionHelper.isInSelectionMode()) {
                            StoryCaptionView.this.textSelectionHelper.draw(canvas);
                        }
                        drawLayout(this.fullLayout, canvas, this.spoilers);
                        AnimatedEmojiSpan.EmojiGroupedSpans update = AnimatedEmojiSpan.update(0, StoryCaptionTextView.this, this.fullLayoutEmoji, this.fullLayout);
                        this.fullLayoutEmoji = update;
                        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.fullLayout, update, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, StoryCaptionTextView.this.emojiColorFilter);
                        canvas.restore();
                        if (z) {
                            StaticLayout staticLayout = this.fullLayout;
                            StoryCaptionTextView storyCaptionTextView4 = StoryCaptionTextView.this;
                            putLayoutRects(staticLayout, storyCaptionTextView4.horizontalPadding, storyCaptionTextView4.verticalPadding);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (StoryCaptionView.this.textSelectionHelper.isInSelectionMode()) {
                    canvas.save();
                    StoryCaptionTextView storyCaptionTextView5 = StoryCaptionTextView.this;
                    canvas.translate(storyCaptionTextView5.horizontalPadding, storyCaptionTextView5.verticalPadding);
                    StoryCaptionView.this.textSelectionHelper.draw(canvas);
                    canvas.restore();
                }
                if (this.firstLayout != null) {
                    canvas.save();
                    StoryCaptionTextView storyCaptionTextView6 = StoryCaptionTextView.this;
                    canvas.translate(storyCaptionTextView6.horizontalPadding, storyCaptionTextView6.verticalPadding);
                    drawLayout(this.firstLayout, canvas, this.spoilers);
                    AnimatedEmojiSpan.EmojiGroupedSpans update2 = AnimatedEmojiSpan.update(0, StoryCaptionTextView.this, this.firstLayoutEmoji, this.firstLayout);
                    this.firstLayoutEmoji = update2;
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.firstLayout, update2, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, StoryCaptionTextView.this.emojiColorFilter);
                    canvas.restore();
                    if (z) {
                        StaticLayout staticLayout2 = this.firstLayout;
                        StoryCaptionTextView storyCaptionTextView7 = StoryCaptionTextView.this;
                        putLayoutRects(staticLayout2, storyCaptionTextView7.horizontalPadding, storyCaptionTextView7.verticalPadding);
                    }
                }
                if (this.nextLinesLayouts == null) {
                    return;
                }
                int i2 = 0;
                while (true) {
                    LineInfo[] lineInfoArr = this.nextLinesLayouts;
                    if (i2 >= lineInfoArr.length) {
                        return;
                    }
                    LineInfo lineInfo = lineInfoArr[i2];
                    if (lineInfo != null) {
                        canvas.save();
                        float f2 = lineInfo.collapsedX;
                        float f3 = lineInfo.finalX;
                        if (f2 == f3) {
                            if (StoryCaptionTextView.this.progressToExpand != BitmapDescriptorFactory.HUE_RED) {
                                canvas.translate(storyCaptionTextView.horizontalPadding + f3, storyCaptionTextView.verticalPadding + lineInfo.finalY);
                                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, lineInfo.staticLayout.getWidth(), lineInfo.staticLayout.getHeight(), (int) (StoryCaptionTextView.this.progressToExpand * 255.0f), 31);
                                drawLayout(lineInfo.staticLayout, canvas, this.spoilers);
                                if (z) {
                                    StaticLayout staticLayout3 = lineInfo.staticLayout;
                                    StoryCaptionTextView storyCaptionTextView8 = StoryCaptionTextView.this;
                                    putLayoutRects(staticLayout3, storyCaptionTextView8.horizontalPadding + lineInfo.finalX, storyCaptionTextView8.verticalPadding + lineInfo.finalY);
                                }
                                lineInfo.staticLayout.draw(canvas);
                                AnimatedEmojiSpan.EmojiGroupedSpans update3 = AnimatedEmojiSpan.update(0, StoryCaptionTextView.this, lineInfo.layoutEmoji, lineInfo.staticLayout);
                                lineInfo.layoutEmoji = update3;
                                StaticLayout staticLayout4 = lineInfo.staticLayout;
                                List<SpoilerEffect> list = this.spoilers;
                                StoryCaptionTextView storyCaptionTextView9 = StoryCaptionTextView.this;
                                i = i2;
                                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout4, update3, BitmapDescriptorFactory.HUE_RED, list, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, storyCaptionTextView9.progressToExpand, storyCaptionTextView9.emojiColorFilter);
                                canvas.restore();
                            }
                        } else {
                            i = i2;
                            float lerp = AndroidUtilities.lerp(f2, f3, StoryCaptionTextView.this.progressToExpand);
                            float lerp2 = AndroidUtilities.lerp(lineInfo.collapsedY, lineInfo.finalY, CubicBezierInterpolator.EASE_OUT.getInterpolation(StoryCaptionTextView.this.progressToExpand));
                            StoryCaptionTextView storyCaptionTextView10 = StoryCaptionTextView.this;
                            canvas.translate(storyCaptionTextView10.horizontalPadding + lerp, storyCaptionTextView10.verticalPadding + lerp2);
                            if (z) {
                                StaticLayout staticLayout5 = lineInfo.staticLayout;
                                StoryCaptionTextView storyCaptionTextView11 = StoryCaptionTextView.this;
                                putLayoutRects(staticLayout5, storyCaptionTextView11.horizontalPadding + lerp, storyCaptionTextView11.verticalPadding + lerp2);
                            }
                            lineInfo.staticLayout.draw(canvas);
                            AnimatedEmojiSpan.EmojiGroupedSpans update4 = AnimatedEmojiSpan.update(0, StoryCaptionTextView.this, lineInfo.layoutEmoji, lineInfo.staticLayout);
                            lineInfo.layoutEmoji = update4;
                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, lineInfo.staticLayout, update4, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, StoryCaptionTextView.this.emojiColorFilter);
                        }
                        canvas.restore();
                        i2 = i + 1;
                    }
                    i = i2;
                    i2 = i + 1;
                }
            }

            private void drawLayout(StaticLayout staticLayout, Canvas canvas, List<SpoilerEffect> list) {
                if (!list.isEmpty()) {
                    SpoilerEffect.renderWithRipple(StoryCaptionTextView.this, false, -1, 0, this.patchedLayout, staticLayout, list, canvas, false);
                } else {
                    staticLayout.draw(canvas);
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:65:0x0191  */
            /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean touch(android.view.MotionEvent r12) {
                /*
                    Method dump skipped, instructions count: 410
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoryCaptionView.StoryCaptionTextView.TextState.touch(android.view.MotionEvent):boolean");
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$touch$3(LinkSpanDrawable linkSpanDrawable) {
                LinkSpanDrawable<CharacterStyle> linkSpanDrawable2 = this.pressedLink;
                if (linkSpanDrawable == linkSpanDrawable2 && linkSpanDrawable2 != null && (linkSpanDrawable2.getSpan() instanceof URLSpan)) {
                    StoryCaptionTextView storyCaptionTextView = StoryCaptionTextView.this;
                    final LinkSpanDrawable.LinkCollector linkCollector = this.links;
                    Objects.requireNonNull(linkCollector);
                    StoryCaptionView.this.onLinkLongPress((URLSpan) this.pressedLink.getSpan(), storyCaptionTextView, new Runnable() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            LinkSpanDrawable.LinkCollector.this.clear();
                        }
                    });
                    this.pressedLink = null;
                }
            }

            public void detach() {
                AnimatedEmojiSpan.release(StoryCaptionTextView.this, this.fullLayoutEmoji);
                AnimatedEmojiSpan.release(StoryCaptionTextView.this, this.firstLayoutEmoji);
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
                        AnimatedEmojiSpan.release(StoryCaptionTextView.this, lineInfoArr[i].layoutEmoji);
                    }
                    i++;
                }
            }
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.SimpleSelectabeleView
        public CharSequence getText() {
            return this.state[0].text;
        }

        @Override // org.telegram.p043ui.Cells.TextSelectionHelper.SimpleSelectabeleView
        public Layout getStaticTextLayout() {
            return this.state[0].fullLayout;
        }

        public StoryCaptionTextView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.textPaint = new TextPaint(1);
            this.showMorePaint = new TextPaint(1);
            Paint paint = new Paint();
            this.xRefPaint = paint;
            Paint paint2 = new Paint(1);
            this.xRefGradinetPaint = paint2;
            this.state = new TextState[2];
            this.sizeCached = 0;
            new Path();
            this.allowClickSpoilers = true;
            this.updating = false;
            this.state[0] = new TextState();
            this.state[1] = null;
            this.textPaint.setColor(-1);
            TextPaint textPaint = this.textPaint;
            textPaint.linkColor = -1;
            textPaint.setTextSize(AndroidUtilities.m72dp(15));
            this.showMorePaint.setColor(-1);
            this.showMorePaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.showMorePaint.setTextSize(AndroidUtilities.m72dp(16));
            paint.setColor(-16777216);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            paint2.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(16), (float) BitmapDescriptorFactory.HUE_RED, new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.emojiColorFilter = new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN);
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            TextState[] textStateArr = this.state;
            if (textStateArr[0] == null || textStateArr[0].loadingDrawable != drawable) {
                TextState[] textStateArr2 = this.state;
                if (textStateArr2[1] == null || textStateArr2[1].loadingDrawable != drawable) {
                    return super.verifyDrawable(drawable);
                }
                return true;
            }
            return true;
        }

        public void setText(CharSequence charSequence, boolean z, boolean z2) {
            if (charSequence == null) {
                charSequence = "";
            }
            if (TextUtils.equals(this.state[0].text, charSequence)) {
                this.state[0].translating = z;
                invalidate();
                return;
            }
            this.isSpoilersRevealed = false;
            ValueAnimator valueAnimator = this.updateAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.updating = false;
            if (z2) {
                TextState[] textStateArr = this.state;
                if (textStateArr[1] == null) {
                    textStateArr[1] = new TextState();
                }
                TextState[] textStateArr2 = this.state;
                textStateArr2[1].setup(textStateArr2[0].text);
                TextState[] textStateArr3 = this.state;
                textStateArr3[1].translating = textStateArr3[0].translating;
                textStateArr3[1].translateT.set(textStateArr3[0].translateT.get(), true);
                this.state[0].setup(charSequence);
                TextState[] textStateArr4 = this.state;
                textStateArr4[0].translating = z;
                textStateArr4[0].translateT.set(BitmapDescriptorFactory.HUE_RED, true);
                this.updateT = 1.0f;
                animateUpdate();
                return;
            }
            this.state[0].setup(charSequence);
            this.state[0].translating = z;
            invalidate();
            this.updateT = BitmapDescriptorFactory.HUE_RED;
        }

        public void animateUpdate() {
            ValueAnimator valueAnimator = this.updateAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.updating = true;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.updateT, BitmapDescriptorFactory.HUE_RED);
            this.updateAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    StoryCaptionView.StoryCaptionTextView.this.lambda$animateUpdate$0(valueAnimator2);
                }
            });
            this.updateAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryCaptionView.StoryCaptionTextView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryCaptionTextView storyCaptionTextView = StoryCaptionTextView.this;
                    storyCaptionTextView.updating = false;
                    storyCaptionTextView.updateT = BitmapDescriptorFactory.HUE_RED;
                    storyCaptionTextView.invalidate();
                    StoryCaptionTextView.this.requestLayout();
                    StoryCaptionView.this.requestLayout();
                }
            });
            this.updateAnimator.setDuration(180L);
            this.updateAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            this.updateAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateUpdate$0(ValueAnimator valueAnimator) {
            this.updateT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
            requestLayout();
            StoryCaptionView.this.requestLayout();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int i3 = (i2 + i) << 16;
            this.horizontalPadding = AndroidUtilities.m72dp(16);
            this.verticalPadding = AndroidUtilities.m72dp(8);
            if (this.sizeCached != i3) {
                this.sizeCached = i3;
                int size = View.MeasureSpec.getSize(i) - (this.horizontalPadding * 2);
                this.state[0].measure(size);
                TextState[] textStateArr = this.state;
                if (textStateArr[1] != null) {
                    textStateArr[1].measure(size);
                }
            }
            int i4 = this.verticalPadding * 2;
            TextState[] textStateArr2 = this.state;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i4 + AndroidUtilities.lerp(textStateArr2[0].textHeight, textStateArr2[1] != null ? textStateArr2[1].textHeight : 0, this.updateT), 1073741824));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.showMore != null) {
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
            } else {
                canvas.save();
            }
            this.state[0].draw(canvas, 1.0f - this.updateT);
            TextState[] textStateArr = this.state;
            if (textStateArr[1] != null) {
                textStateArr[1].draw(canvas, this.updateT);
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

        /* JADX INFO: Access modifiers changed from: private */
        public StaticLayout makeTextLayout(TextPaint textPaint, CharSequence charSequence, int i) {
            if (Build.VERSION.SDK_INT >= 24) {
                return StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i).setBreakStrategy(0).setHyphenationFrequency(0).setAlignment(LocaleController.isRTL ? StaticLayoutEx.ALIGN_RIGHT() : StaticLayoutEx.ALIGN_LEFT()).build();
            }
            return new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        }

        public Paint getPaint() {
            return this.textPaint;
        }

        /* renamed from: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$LineInfo */
        /* loaded from: classes7.dex */
        public class LineInfo {
            float collapsedX;
            float collapsedY;
            float finalX;
            float finalY;
            public AnimatedEmojiSpan.EmojiGroupedSpans layoutEmoji;
            StaticLayout staticLayout;

            public LineInfo(StoryCaptionTextView storyCaptionTextView) {
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            TextState[] textStateArr;
            if (StoryCaptionView.this.disableTouches || (textStateArr = this.state) == null || textStateArr[0].fullLayout == null) {
                return false;
            }
            return textStateArr[0].touch(motionEvent) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.state[0].detach();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPressedLinks() {
            this.state[0].links.clear();
            this.state[0].pressedLink = null;
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

        /* JADX WARN: Removed duplicated region for block: B:12:0x005c  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean dispatchTouchEvent(android.view.MotionEvent r9) {
            /*
                r8 = this;
                int r0 = r9.getAction()
                if (r0 != 0) goto L18
                org.telegram.ui.Stories.StoryCaptionView r0 = org.telegram.p043ui.Stories.StoryCaptionView.this
                float r1 = r9.getX()
                org.telegram.p043ui.Stories.StoryCaptionView.access$702(r0, r1)
                org.telegram.ui.Stories.StoryCaptionView r0 = org.telegram.p043ui.Stories.StoryCaptionView.this
                float r1 = r9.getY()
                org.telegram.p043ui.Stories.StoryCaptionView.access$802(r0, r1)
            L18:
                org.telegram.ui.Stories.StoryCaptionView r0 = org.telegram.p043ui.Stories.StoryCaptionView.this
                float r1 = r9.getX()
                org.telegram.p043ui.Stories.StoryCaptionView.access$902(r0, r1)
                org.telegram.ui.Stories.StoryCaptionView r0 = org.telegram.p043ui.Stories.StoryCaptionView.this
                float r1 = r9.getY()
                org.telegram.p043ui.Stories.StoryCaptionView.access$1002(r0, r1)
                android.text.StaticLayout r0 = r8.showMore
                r1 = 0
                r2 = 1
                if (r0 == 0) goto L59
                android.graphics.RectF r3 = org.telegram.messenger.AndroidUtilities.rectTmp
                float r4 = r8.showMoreX
                float r5 = r8.showMoreY
                int r0 = r0.getWidth()
                float r0 = (float) r0
                float r0 = r0 + r4
                float r6 = r8.showMoreY
                android.text.StaticLayout r7 = r8.showMore
                int r7 = r7.getHeight()
                float r7 = (float) r7
                float r6 = r6 + r7
                r3.set(r4, r5, r0, r6)
                float r0 = r9.getX()
                float r4 = r9.getY()
                boolean r0 = r3.contains(r0, r4)
                if (r0 == 0) goto L59
                r0 = r1
                goto L5a
            L59:
                r0 = r2
            L5a:
                if (r0 == 0) goto L7c
                org.telegram.ui.Stories.StoryCaptionView r3 = org.telegram.p043ui.Stories.StoryCaptionView.this
                boolean r4 = r3.expanded
                if (r4 != 0) goto L6a
                org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState[] r4 = r8.state
                r4 = r4[r1]
                android.text.StaticLayout r4 = r4.firstLayout
                if (r4 != 0) goto L7c
            L6a:
                org.telegram.ui.Cells.TextSelectionHelper$SimpleTextSelectionHelper r3 = r3.textSelectionHelper
                int r4 = r8.horizontalPadding
                float r4 = (float) r4
                int r5 = r8.verticalPadding
                float r5 = (float) r5
                r3.update(r4, r5)
                org.telegram.ui.Stories.StoryCaptionView r3 = org.telegram.p043ui.Stories.StoryCaptionView.this
                org.telegram.ui.Cells.TextSelectionHelper$SimpleTextSelectionHelper r3 = r3.textSelectionHelper
                r3.onTouchEvent(r9)
            L7c:
                org.telegram.ui.Stories.StoryCaptionView r3 = org.telegram.p043ui.Stories.StoryCaptionView.this
                org.telegram.ui.Cells.TextSelectionHelper$SimpleTextSelectionHelper r3 = r3.textSelectionHelper
                boolean r3 = r3.isInSelectionMode()
                if (r3 != 0) goto La9
                if (r0 == 0) goto La9
                boolean r0 = r8.allowClickSpoilers
                if (r0 == 0) goto La9
                org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState[] r0 = r8.state
                r0 = r0[r1]
                org.telegram.ui.Components.spoilers.SpoilersClickDetector r0 = org.telegram.p043ui.Stories.StoryCaptionView.StoryCaptionTextView.TextState.access$1100(r0)
                boolean r0 = r0.onTouchEvent(r9)
                if (r0 == 0) goto La9
                android.view.ViewParent r9 = r8.getParent()
                r9.requestDisallowInterceptTouchEvent(r2)
                org.telegram.ui.Stories.StoryCaptionView r9 = org.telegram.p043ui.Stories.StoryCaptionView.this
                org.telegram.ui.Cells.TextSelectionHelper$SimpleTextSelectionHelper r9 = r9.textSelectionHelper
                r9.clear()
                return r2
            La9:
                boolean r9 = super.dispatchTouchEvent(r9)
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoryCaptionView.StoryCaptionTextView.dispatchTouchEvent(android.view.MotionEvent):boolean");
        }
    }
}
