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
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.SpannableStringBuilder;
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
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.TextSelectionHelper;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.LoadingDrawable;
import org.telegram.p043ui.Components.ReplyMessageLine;
import org.telegram.p043ui.Components.StaticLayoutEx;
import org.telegram.p043ui.Components.Text;
import org.telegram.p043ui.Components.spoilers.SpoilerEffect;
import org.telegram.p043ui.Components.spoilers.SpoilersClickDetector;
import org.telegram.p043ui.PhotoViewer$CaptionTextView$$ExternalSyntheticLambda1;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.StoryCaptionView;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.p042tl.TL_stories$StoryFwdHeader;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
import org.telegram.tgnet.p042tl.TL_stories$TL_mediaAreaChannelPost;
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
    private float lastMotionX;
    private float lastMotionY;
    private boolean nestedScrollStarted;
    private float overScrollY;
    private final Paint paint;
    private int pendingTopMargin;
    private int prevHeight;
    private int replytextHash;
    private int replytitleHash;
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

    public void onReplyClick(Reply reply) {
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
        setFadingEdgeLength(AndroidUtilities.m107dp(12));
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
            FileLog.m102e(e);
        }
        try {
            Field declaredField = NestedScrollView.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            this.scroller = (OverScroller) declaredField.get(this);
        } catch (Exception e2) {
            this.scroller = null;
            FileLog.m102e(e2);
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

    public void updateTopMargin() {
        updateTopMargin(getWidth(), getHeight());
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
        StoryCaptionTextView.TextState[] textStateArr = storyCaptionTextView.state;
        CharSequence charSequence = textStateArr[0].text;
        CharSequence charSequence2 = textStateArr[0].reply != null ? textStateArr[0].reply.title : null;
        CharSequence charSequence3 = textStateArr[0].reply != null ? textStateArr[0].reply.text : null;
        int hashCode = charSequence.hashCode();
        int hashCode2 = charSequence2 != null ? charSequence2.hashCode() : 0;
        int hashCode3 = charSequence3 != null ? charSequence3.hashCode() : 0;
        Point point = AndroidUtilities.displaySize;
        boolean z = point.x > point.y;
        if (this.textHash == hashCode && this.replytitleHash == hashCode2 && this.replytextHash == hashCode3 && this.isLandscape == z && this.prevHeight == i2 && !storyCaptionTextView.updating) {
            return -1;
        }
        this.textHash = hashCode;
        this.replytitleHash = hashCode2;
        this.replytextHash = hashCode3;
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
        if (getScrollY() < AndroidUtilities.m107dp(2)) {
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
        return Utilities.clamp((getScrollY() - this.captionTextview.getTranslationY()) / Math.min(this.prevHeight, AndroidUtilities.m107dp(40)), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
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
        setScrollY((int) AndroidUtilities.lerp(f, Math.min((getMeasuredHeight() - this.blackoutBottomOffset) - AndroidUtilities.m107dp(64), this.captionContainer.getBottom() - getMeasuredHeight()), floatValue));
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

    /* renamed from: org.telegram.ui.Stories.StoryCaptionView$Reply */
    /* loaded from: classes6.dex */
    public static class Reply {
        private int currentAccount;
        public boolean isRepostMessage;
        private boolean loaded;
        private boolean loading;
        public Integer messageId;
        public Long peerId;
        public Integer storyId;
        public CharSequence text;
        public Text textLayout;
        public CharSequence title;
        public Text titleLayout;
        public boolean updateText;
        private View view;
        private Runnable whenLoaded;
        private int width;
        private boolean small = true;
        private final AnimatedFloat animatedSmall = new AnimatedFloat(0, 350, CubicBezierInterpolator.EASE_OUT_QUINT);
        public final ButtonBounce bounce = new ButtonBounce(null);
        public final Drawable ripple = Theme.createRadSelectorDrawable(553648127, 0, 0);
        private final Paint backgroundPaint = new Paint(1);
        private final Paint linePaint = new Paint(1);
        private final Path clipRipple = new Path();
        public final RectF bounds = new RectF();

        public void listen(View view, Runnable runnable) {
            this.view = view;
            this.whenLoaded = runnable;
            new ReplyMessageLine(view);
            this.ripple.setCallback(view);
            this.animatedSmall.setParent(view);
            this.bounce.setView(view);
            load();
        }

        public void load() {
            if (this.loaded || this.loading || this.peerId == null || this.storyId == null || this.view == null) {
                return;
            }
            this.loading = true;
            MessagesController.getInstance(this.currentAccount).getStoriesController().resolveStoryLink(this.peerId.longValue(), this.storyId.intValue(), new Consumer() { // from class: org.telegram.ui.Stories.StoryCaptionView$Reply$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    StoryCaptionView.Reply.this.lambda$load$0((TL_stories$StoryItem) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$0(TL_stories$StoryItem tL_stories$StoryItem) {
            String str;
            this.loaded = true;
            if (tL_stories$StoryItem == null || (str = tL_stories$StoryItem.caption) == null) {
                return;
            }
            this.updateText = true;
            this.text = str;
            this.small = TextUtils.isEmpty(str);
            View view = this.view;
            if (view != null) {
                view.invalidate();
            }
            Runnable runnable = this.whenLoaded;
            if (runnable != null) {
                runnable.run();
            }
        }

        public static Reply from(int i, TL_stories$StoryItem tL_stories$StoryItem) {
            TLRPC$Chat chat;
            Reply reply = null;
            if (tL_stories$StoryItem == null) {
                return null;
            }
            if (tL_stories$StoryItem.fwd_from != null) {
                Reply reply2 = new Reply();
                reply2.currentAccount = i;
                TL_stories$StoryFwdHeader tL_stories$StoryFwdHeader = tL_stories$StoryItem.fwd_from;
                TLRPC$Peer tLRPC$Peer = tL_stories$StoryFwdHeader.from;
                if (tLRPC$Peer != null) {
                    Long valueOf = Long.valueOf(DialogObject.getPeerDialogId(tLRPC$Peer));
                    reply2.peerId = valueOf;
                    long longValue = valueOf.longValue();
                    if (longValue >= 0) {
                        reply2.title = new SpannableStringBuilder(MessageObject.userSpan()).append((CharSequence) " ").append((CharSequence) UserObject.getUserName(MessagesController.getInstance(i).getUser(Long.valueOf(longValue))));
                    } else {
                        TLRPC$Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(-longValue));
                        reply2.title = new SpannableStringBuilder(ChatObject.isChannelAndNotMegaGroup(chat2) ? MessageObject.channelSpan() : MessageObject.groupSpan()).append((CharSequence) " ").append((CharSequence) (chat2 != null ? chat2.title : ""));
                    }
                } else if (tL_stories$StoryFwdHeader.from_name != null) {
                    reply2.title = new SpannableStringBuilder(MessageObject.userSpan()).append((CharSequence) " ").append((CharSequence) tL_stories$StoryItem.fwd_from.from_name);
                }
                reply2.small = true;
                TL_stories$StoryFwdHeader tL_stories$StoryFwdHeader2 = tL_stories$StoryItem.fwd_from;
                if ((tL_stories$StoryFwdHeader2.flags & 4) != 0) {
                    reply2.storyId = Integer.valueOf(tL_stories$StoryFwdHeader2.story_id);
                }
                reply2.load();
                return reply2;
            }
            if (tL_stories$StoryItem.media_areas != null) {
                TL_stories$TL_mediaAreaChannelPost tL_stories$TL_mediaAreaChannelPost = null;
                for (int i2 = 0; i2 < tL_stories$StoryItem.media_areas.size(); i2++) {
                    if (tL_stories$StoryItem.media_areas.get(i2) instanceof TL_stories$TL_mediaAreaChannelPost) {
                        tL_stories$TL_mediaAreaChannelPost = (TL_stories$TL_mediaAreaChannelPost) tL_stories$StoryItem.media_areas.get(i2);
                    }
                }
                if (tL_stories$TL_mediaAreaChannelPost != null && (chat = MessagesController.getInstance(i).getChat(Long.valueOf(tL_stories$TL_mediaAreaChannelPost.channel_id))) != null) {
                    reply = new Reply();
                    reply.peerId = Long.valueOf(-chat.f1602id);
                    reply.isRepostMessage = true;
                    reply.currentAccount = i;
                    reply.small = true;
                    reply.messageId = Integer.valueOf(tL_stories$TL_mediaAreaChannelPost.msg_id);
                    reply.title = new SpannableStringBuilder(ChatObject.isChannelAndNotMegaGroup(chat) ? MessageObject.channelSpan() : MessageObject.groupSpan()).append((CharSequence) " ").append((CharSequence) chat.title);
                }
            }
            return reply;
        }

        public static Reply from(StoriesController.UploadingStory uploadingStory) {
            StoryEntry storyEntry;
            ArrayList<MessageObject> arrayList;
            TLRPC$Chat chat;
            Reply reply = null;
            if (uploadingStory != null && (storyEntry = uploadingStory.entry) != null) {
                if (storyEntry.isRepost) {
                    Reply reply2 = new Reply();
                    StoryEntry storyEntry2 = uploadingStory.entry;
                    reply2.title = storyEntry2.repostPeerName;
                    String str = storyEntry2.repostCaption;
                    reply2.text = str;
                    reply2.small = TextUtils.isEmpty(str);
                    return reply2;
                } else if (storyEntry.isRepostMessage && (arrayList = storyEntry.messageObjects) != null && arrayList.size() > 0) {
                    MessageObject messageObject = uploadingStory.entry.messageObjects.get(0);
                    long repostDialogId = StoryEntry.getRepostDialogId(messageObject);
                    if (repostDialogId < 0 && (chat = MessagesController.getInstance(messageObject.currentAccount).getChat(Long.valueOf(-repostDialogId))) != null) {
                        reply = new Reply();
                        reply.peerId = Long.valueOf(repostDialogId);
                        reply.isRepostMessage = true;
                        reply.currentAccount = messageObject.currentAccount;
                        reply.small = true;
                        reply.messageId = Integer.valueOf(StoryEntry.getRepostMessageId(messageObject));
                        reply.title = new SpannableStringBuilder(ChatObject.isChannelAndNotMegaGroup(chat) ? MessageObject.channelSpan() : MessageObject.groupSpan()).append((CharSequence) " ").append((CharSequence) chat.title);
                    }
                }
            }
            return reply;
        }

        public int height() {
            return AndroidUtilities.m107dp(this.small ? 22 : 42);
        }

        public int width() {
            return this.width;
        }

        public void setPressed(boolean z, float f, float f2) {
            this.bounce.setPressed(z);
            this.ripple.setState(z ? new int[]{16842919, 16842910} : new int[0]);
            if (!z || Build.VERSION.SDK_INT < 21) {
                return;
            }
            this.ripple.setHotspot(f, f2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.CharSequence] */
        public void draw(Canvas canvas, float f) {
            if (this.titleLayout == null) {
                CharSequence charSequence = this.title;
                if (charSequence == null) {
                    charSequence = "";
                }
                this.titleLayout = new Text(charSequence, 14.0f, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            }
            if (this.textLayout == null || this.updateText) {
                ?? r5 = this.text;
                this.textLayout = new Text(r5 != 0 ? r5 : "", 14.0f);
            }
            float f2 = this.animatedSmall.set(this.small);
            this.backgroundPaint.setColor(1073741824);
            int min = (int) Math.min(f, AndroidUtilities.lerp(AndroidUtilities.m107dp(20), AndroidUtilities.m107dp(18), f2) + Math.max(this.titleLayout.getCurrentWidth(), this.textLayout.getCurrentWidth()));
            this.width = min;
            int lerp = AndroidUtilities.lerp(AndroidUtilities.m107dp(42), AndroidUtilities.m107dp(22), f2);
            float f3 = min;
            this.bounds.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f3, lerp);
            canvas.save();
            float scale = this.bounce.getScale(0.02f);
            canvas.scale(scale, scale, this.bounds.centerX(), this.bounds.centerY());
            float lerp2 = AndroidUtilities.lerp(AndroidUtilities.m107dp(5), AndroidUtilities.m107dp(11), f2);
            canvas.drawRoundRect(this.bounds, lerp2, lerp2, this.backgroundPaint);
            canvas.save();
            this.clipRipple.rewind();
            this.clipRipple.addRoundRect(this.bounds, lerp2, lerp2, Path.Direction.CW);
            canvas.clipPath(this.clipRipple);
            this.ripple.setBounds(0, 0, min, lerp);
            this.ripple.draw(canvas);
            canvas.restore();
            canvas.save();
            canvas.clipRect(0, 0, AndroidUtilities.m107dp(3), AndroidUtilities.m107dp(42));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(42));
            this.linePaint.setColor(-1);
            float f4 = 1.0f - f2;
            this.linePaint.setAlpha((int) (255.0f * f4));
            canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(5), AndroidUtilities.m107dp(5), this.linePaint);
            canvas.restore();
            int m107dp = min - AndroidUtilities.m107dp(20);
            if (f3 < f) {
                m107dp = (int) Math.min(m107dp + AndroidUtilities.m107dp(12), f - AndroidUtilities.m107dp(20));
            }
            int i = m107dp;
            this.titleLayout.ellipsize(i).draw(canvas, AndroidUtilities.lerp(AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(7), f2), AndroidUtilities.lerp(AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(11), f2), -1, 1.0f);
            this.textLayout.ellipsize(i).draw(canvas, AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(30), -1, f4);
            canvas.restore();
        }
    }

    /* renamed from: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView */
    /* loaded from: classes6.dex */
    public class StoryCaptionTextView extends View implements TextSelectionHelper.SimpleSelectabeleView {
        public boolean allowClickSpoilers;
        private final PorterDuffColorFilter emojiColorFilter;
        int horizontalPadding;
        private boolean isSpoilersRevealed;
        float progressToExpand;
        boolean shouldCollapse;
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
        /* loaded from: classes6.dex */
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
            public Reply reply;
            protected final List<SpoilerEffect> spoilers;
            private final Stack<SpoilerEffect> spoilersPool;
            CharSequence text;
            int textHeight;
            public final AnimatedFloat translateT;
            public boolean translating;

            public int collapsedTextHeight(int i) {
                int i2;
                int i3;
                Reply reply = this.reply;
                int height = reply != null ? reply.height() + AndroidUtilities.m107dp(8) : 0;
                StaticLayout staticLayout = this.fullLayout;
                if (staticLayout == null) {
                    i2 = StoryCaptionTextView.this.verticalPadding * 2;
                    i3 = this.textHeight;
                } else {
                    int lineCount = staticLayout.getLineCount();
                    StoryCaptionTextView storyCaptionTextView = StoryCaptionTextView.this;
                    if (!storyCaptionTextView.shouldCollapse) {
                        i2 = storyCaptionTextView.verticalPadding * 2;
                        i3 = this.textHeight;
                    } else {
                        i -= StoryCaptionTextView.this.textPaint.getFontMetricsInt(null) * (Math.min(3, lineCount) + 1);
                        return i - height;
                    }
                }
                height = i2 + i3;
                return i - height;
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
                spoilerEffect.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda0
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
                StoryCaptionTextView.this.post(new Runnable() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda1
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

            public void setup(CharSequence charSequence, Reply reply) {
                this.text = charSequence;
                this.reply = reply;
                if (reply != null) {
                    reply.listen(StoryCaptionTextView.this, new Runnable() { // from class: org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoryCaptionView.StoryCaptionTextView.TextState.this.lambda$setup$3();
                        }
                    });
                }
                StoryCaptionTextView storyCaptionTextView = StoryCaptionTextView.this;
                storyCaptionTextView.sizeCached = 0;
                storyCaptionTextView.requestLayout();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$setup$3() {
                StoryCaptionTextView storyCaptionTextView = StoryCaptionTextView.this;
                storyCaptionTextView.sizeCached = 0;
                storyCaptionTextView.requestLayout();
                StoryCaptionView.this.updateTopMargin();
                StoryCaptionView.this.requestLayout();
            }

            public void measure(int i) {
                int i2;
                StoryCaptionTextView storyCaptionTextView;
                if (TextUtils.isEmpty(this.text)) {
                    this.fullLayout = null;
                    this.textHeight = 0;
                    Reply reply = this.reply;
                    if (reply != null) {
                        this.textHeight = reply.height() + AndroidUtilities.m107dp(4) + 0;
                    }
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
                int height = makeTextLayout.getHeight();
                this.textHeight = height;
                Reply reply2 = this.reply;
                if (reply2 != null) {
                    i2 = reply2.height() + AndroidUtilities.m107dp(8);
                    this.textHeight = height + i2;
                } else {
                    i2 = 0;
                }
                float measureText = StoryCaptionTextView.this.textPaint.measureText(" ");
                StoryCaptionTextView.this.shouldCollapse = this.fullLayout.getLineCount() > 3;
                if (StoryCaptionTextView.this.shouldCollapse && this.fullLayout.getLineCount() == 4) {
                    if (TextUtils.getTrimmedLength(this.text.subSequence(this.fullLayout.getLineStart(2), this.fullLayout.getLineEnd(2))) == 0) {
                        StoryCaptionTextView.this.shouldCollapse = false;
                    }
                }
                StoryCaptionTextView storyCaptionTextView4 = StoryCaptionTextView.this;
                if (storyCaptionTextView4.shouldCollapse) {
                    float lineTop = this.fullLayout.getLineTop(2) + this.fullLayout.getTopPadding();
                    if (this == StoryCaptionTextView.this.state[0]) {
                        String string = LocaleController.getString("ShowMore", C3632R.string.ShowMore);
                        StoryCaptionTextView storyCaptionTextView5 = StoryCaptionTextView.this;
                        storyCaptionTextView5.showMore = storyCaptionTextView5.makeTextLayout(storyCaptionTextView5.showMorePaint, string, i);
                        StoryCaptionTextView.this.showMoreY = ((storyCaptionTextView.verticalPadding + i2) + lineTop) - AndroidUtilities.dpf2(0.3f);
                        StoryCaptionTextView storyCaptionTextView6 = StoryCaptionTextView.this;
                        storyCaptionTextView6.showMoreX = (storyCaptionTextView6.horizontalPadding + i) - storyCaptionTextView6.showMorePaint.measureText(string);
                    }
                    StoryCaptionTextView storyCaptionTextView7 = StoryCaptionTextView.this;
                    this.firstLayout = storyCaptionTextView7.makeTextLayout(storyCaptionTextView7.textPaint, this.text.subSequence(0, this.fullLayout.getLineEnd(2)), i);
                    this.spoilersPool.addAll(this.spoilers);
                    this.spoilers.clear();
                    SpoilerEffect.addSpoilers(StoryCaptionView.this, this.fullLayout, this.spoilersPool, this.spoilers);
                    float lineRight = this.fullLayout.getLineRight(2) + measureText;
                    if (this.nextLinesLayouts != null) {
                        int i3 = 0;
                        while (true) {
                            LineInfo[] lineInfoArr = this.nextLinesLayouts;
                            if (i3 >= lineInfoArr.length) {
                                break;
                            }
                            if (lineInfoArr[i3] != null) {
                                AnimatedEmojiSpan.release(StoryCaptionView.this, lineInfoArr[i3].layoutEmoji);
                            }
                            i3++;
                        }
                    }
                    this.nextLinesLayouts = new LineInfo[this.fullLayout.getLineCount() - 3];
                    if (this.spoilers.isEmpty()) {
                        for (int i4 = 3; i4 < this.fullLayout.getLineCount(); i4++) {
                            int lineStart = this.fullLayout.getLineStart(i4);
                            int lineEnd = this.fullLayout.getLineEnd(i4);
                            CharSequence subSequence = this.text.subSequence(Math.min(lineStart, lineEnd), Math.max(lineStart, lineEnd));
                            if (TextUtils.isEmpty(subSequence)) {
                                this.nextLinesLayouts[i4 - 3] = null;
                            } else {
                                StoryCaptionTextView storyCaptionTextView8 = StoryCaptionTextView.this;
                                StaticLayout makeTextLayout2 = storyCaptionTextView8.makeTextLayout(storyCaptionTextView8.textPaint, subSequence, i);
                                LineInfo lineInfo = new LineInfo(StoryCaptionTextView.this);
                                this.nextLinesLayouts[i4 - 3] = lineInfo;
                                lineInfo.staticLayout = makeTextLayout2;
                                lineInfo.finalX = this.fullLayout.getLineLeft(i4);
                                lineInfo.finalY = this.fullLayout.getLineTop(i4) + this.fullLayout.getTopPadding();
                                if (lineRight < StoryCaptionTextView.this.showMoreX - AndroidUtilities.m107dp(16)) {
                                    lineInfo.collapsedY = lineTop;
                                    lineInfo.collapsedX = lineRight;
                                    lineRight += Math.abs(makeTextLayout2.getLineRight(0) - makeTextLayout2.getLineLeft(0)) + measureText;
                                } else {
                                    lineInfo.collapsedY = lineInfo.finalY;
                                    lineInfo.collapsedX = lineInfo.finalX;
                                }
                            }
                        }
                    }
                } else {
                    if (this == storyCaptionTextView4.state[0]) {
                        storyCaptionTextView4.showMore = null;
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
                int i2;
                StoryCaptionTextView storyCaptionTextView;
                if (this.reply != null) {
                    canvas.save();
                    StoryCaptionTextView storyCaptionTextView2 = StoryCaptionTextView.this;
                    canvas.translate(storyCaptionTextView2.horizontalPadding, storyCaptionTextView2.verticalPadding);
                    Reply reply = this.reply;
                    int width = StoryCaptionTextView.this.getWidth();
                    int i3 = StoryCaptionTextView.this.horizontalPadding;
                    reply.draw(canvas, (width - i3) - i3);
                    canvas.restore();
                    i = this.reply.height() + AndroidUtilities.m107dp(8);
                } else {
                    i = 0;
                }
                canvas.save();
                StoryCaptionTextView storyCaptionTextView3 = StoryCaptionTextView.this;
                canvas.translate(storyCaptionTextView3.horizontalPadding, storyCaptionTextView3.verticalPadding + i);
                if (this.links.draw(canvas)) {
                    StoryCaptionTextView.this.invalidate();
                }
                canvas.restore();
                boolean z = f > BitmapDescriptorFactory.HUE_RED;
                this.loadingPath.rewind();
                if (!this.spoilers.isEmpty() || this.firstLayout == null) {
                    if (this.fullLayout != null) {
                        canvas.save();
                        StoryCaptionTextView storyCaptionTextView4 = StoryCaptionTextView.this;
                        canvas.translate(storyCaptionTextView4.horizontalPadding, storyCaptionTextView4.verticalPadding + i);
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
                            StoryCaptionTextView storyCaptionTextView5 = StoryCaptionTextView.this;
                            putLayoutRects(staticLayout, storyCaptionTextView5.horizontalPadding, storyCaptionTextView5.verticalPadding + i);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (StoryCaptionView.this.textSelectionHelper.isInSelectionMode()) {
                    canvas.save();
                    StoryCaptionTextView storyCaptionTextView6 = StoryCaptionTextView.this;
                    canvas.translate(storyCaptionTextView6.horizontalPadding, storyCaptionTextView6.verticalPadding + i);
                    StoryCaptionView.this.textSelectionHelper.draw(canvas);
                    canvas.restore();
                }
                if (this.firstLayout != null) {
                    canvas.save();
                    StoryCaptionTextView storyCaptionTextView7 = StoryCaptionTextView.this;
                    canvas.translate(storyCaptionTextView7.horizontalPadding, storyCaptionTextView7.verticalPadding + i);
                    drawLayout(this.firstLayout, canvas, this.spoilers);
                    AnimatedEmojiSpan.EmojiGroupedSpans update2 = AnimatedEmojiSpan.update(0, StoryCaptionTextView.this, this.firstLayoutEmoji, this.firstLayout);
                    this.firstLayoutEmoji = update2;
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.firstLayout, update2, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, StoryCaptionTextView.this.emojiColorFilter);
                    canvas.restore();
                    if (z) {
                        StaticLayout staticLayout2 = this.firstLayout;
                        StoryCaptionTextView storyCaptionTextView8 = StoryCaptionTextView.this;
                        putLayoutRects(staticLayout2, storyCaptionTextView8.horizontalPadding, storyCaptionTextView8.verticalPadding + i);
                    }
                }
                if (this.nextLinesLayouts == null) {
                    return;
                }
                int i4 = 0;
                while (true) {
                    LineInfo[] lineInfoArr = this.nextLinesLayouts;
                    if (i4 >= lineInfoArr.length) {
                        return;
                    }
                    LineInfo lineInfo = lineInfoArr[i4];
                    if (lineInfo != null) {
                        canvas.save();
                        float f2 = lineInfo.collapsedX;
                        float f3 = lineInfo.finalX;
                        if (f2 == f3) {
                            if (StoryCaptionTextView.this.progressToExpand != BitmapDescriptorFactory.HUE_RED) {
                                canvas.translate(storyCaptionTextView.horizontalPadding + f3, storyCaptionTextView.verticalPadding + i + lineInfo.finalY);
                                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, lineInfo.staticLayout.getWidth(), lineInfo.staticLayout.getHeight(), (int) (StoryCaptionTextView.this.progressToExpand * 255.0f), 31);
                                drawLayout(lineInfo.staticLayout, canvas, this.spoilers);
                                if (z) {
                                    StaticLayout staticLayout3 = lineInfo.staticLayout;
                                    StoryCaptionTextView storyCaptionTextView9 = StoryCaptionTextView.this;
                                    putLayoutRects(staticLayout3, storyCaptionTextView9.horizontalPadding + lineInfo.finalX, storyCaptionTextView9.verticalPadding + i + lineInfo.finalY);
                                }
                                lineInfo.staticLayout.draw(canvas);
                                AnimatedEmojiSpan.EmojiGroupedSpans update3 = AnimatedEmojiSpan.update(0, StoryCaptionTextView.this, lineInfo.layoutEmoji, lineInfo.staticLayout);
                                lineInfo.layoutEmoji = update3;
                                StaticLayout staticLayout4 = lineInfo.staticLayout;
                                List<SpoilerEffect> list = this.spoilers;
                                StoryCaptionTextView storyCaptionTextView10 = StoryCaptionTextView.this;
                                i2 = i4;
                                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout4, update3, BitmapDescriptorFactory.HUE_RED, list, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, storyCaptionTextView10.progressToExpand, storyCaptionTextView10.emojiColorFilter);
                                canvas.restore();
                            }
                        } else {
                            i2 = i4;
                            float lerp = AndroidUtilities.lerp(f2, f3, StoryCaptionTextView.this.progressToExpand);
                            float lerp2 = AndroidUtilities.lerp(lineInfo.collapsedY, lineInfo.finalY, CubicBezierInterpolator.EASE_OUT.getInterpolation(StoryCaptionTextView.this.progressToExpand));
                            StoryCaptionTextView storyCaptionTextView11 = StoryCaptionTextView.this;
                            canvas.translate(storyCaptionTextView11.horizontalPadding + lerp, storyCaptionTextView11.verticalPadding + i + lerp2);
                            if (z) {
                                StaticLayout staticLayout5 = lineInfo.staticLayout;
                                StoryCaptionTextView storyCaptionTextView12 = StoryCaptionTextView.this;
                                putLayoutRects(staticLayout5, storyCaptionTextView12.horizontalPadding + lerp, storyCaptionTextView12.verticalPadding + i + lerp2);
                            }
                            lineInfo.staticLayout.draw(canvas);
                            AnimatedEmojiSpan.EmojiGroupedSpans update4 = AnimatedEmojiSpan.update(0, StoryCaptionTextView.this, lineInfo.layoutEmoji, lineInfo.staticLayout);
                            lineInfo.layoutEmoji = update4;
                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, lineInfo.staticLayout, update4, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, StoryCaptionTextView.this.emojiColorFilter);
                        }
                        canvas.restore();
                        i4 = i2 + 1;
                    }
                    i2 = i4;
                    i4 = i2 + 1;
                }
            }

            private void drawLayout(StaticLayout staticLayout, Canvas canvas, List<SpoilerEffect> list) {
                if (!list.isEmpty()) {
                    SpoilerEffect.renderWithRipple(StoryCaptionTextView.this, false, -1, 0, this.patchedLayout, staticLayout, list, canvas, false);
                } else {
                    staticLayout.draw(canvas);
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:69:0x01a4  */
            /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean touch(android.view.MotionEvent r12) {
                /*
                    Method dump skipped, instructions count: 429
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoryCaptionView.StoryCaptionTextView.TextState.touch(android.view.MotionEvent):boolean");
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$touch$4(LinkSpanDrawable linkSpanDrawable) {
                LinkSpanDrawable<CharacterStyle> linkSpanDrawable2 = this.pressedLink;
                if (linkSpanDrawable == linkSpanDrawable2 && linkSpanDrawable2 != null && (linkSpanDrawable2.getSpan() instanceof URLSpan)) {
                    StoryCaptionTextView storyCaptionTextView = StoryCaptionTextView.this;
                    LinkSpanDrawable.LinkCollector linkCollector = this.links;
                    Objects.requireNonNull(linkCollector);
                    StoryCaptionView.this.onLinkLongPress((URLSpan) this.pressedLink.getSpan(), storyCaptionTextView, new PhotoViewer$CaptionTextView$$ExternalSyntheticLambda1(linkCollector));
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
            textPaint.setTextSize(AndroidUtilities.m107dp(15));
            this.showMorePaint.setColor(-1);
            this.showMorePaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.showMorePaint.setTextSize(AndroidUtilities.m107dp(16));
            paint.setColor(-16777216);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            paint2.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(16), (float) BitmapDescriptorFactory.HUE_RED, new int[]{0, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.emojiColorFilter = new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
            if (r0[1].reply.ripple == r5) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
            if (r0[0].reply.ripple == r5) goto L9;
         */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected boolean verifyDrawable(android.graphics.drawable.Drawable r5) {
            /*
                r4 = this;
                org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState[] r0 = r4.state
                r1 = 0
                r2 = r0[r1]
                r3 = 1
                if (r2 == 0) goto L21
                r0 = r0[r1]
                org.telegram.ui.Components.LoadingDrawable r0 = org.telegram.p043ui.Stories.StoryCaptionView.StoryCaptionTextView.TextState.access$400(r0)
                if (r0 == r5) goto L20
                org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState[] r0 = r4.state
                r2 = r0[r1]
                org.telegram.ui.Stories.StoryCaptionView$Reply r2 = r2.reply
                if (r2 == 0) goto L21
                r0 = r0[r1]
                org.telegram.ui.Stories.StoryCaptionView$Reply r0 = r0.reply
                android.graphics.drawable.Drawable r0 = r0.ripple
                if (r0 != r5) goto L21
            L20:
                return r3
            L21:
                org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState[] r0 = r4.state
                r1 = r0[r3]
                if (r1 == 0) goto L40
                r0 = r0[r3]
                org.telegram.ui.Components.LoadingDrawable r0 = org.telegram.p043ui.Stories.StoryCaptionView.StoryCaptionTextView.TextState.access$400(r0)
                if (r0 == r5) goto L3f
                org.telegram.ui.Stories.StoryCaptionView$StoryCaptionTextView$TextState[] r0 = r4.state
                r1 = r0[r3]
                org.telegram.ui.Stories.StoryCaptionView$Reply r1 = r1.reply
                if (r1 == 0) goto L40
                r0 = r0[r3]
                org.telegram.ui.Stories.StoryCaptionView$Reply r0 = r0.reply
                android.graphics.drawable.Drawable r0 = r0.ripple
                if (r0 != r5) goto L40
            L3f:
                return r3
            L40:
                boolean r5 = super.verifyDrawable(r5)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoryCaptionView.StoryCaptionTextView.verifyDrawable(android.graphics.drawable.Drawable):boolean");
        }

        public void setText(CharSequence charSequence, Reply reply, boolean z, boolean z2) {
            if (charSequence == null) {
                charSequence = "";
            }
            if (TextUtils.equals(this.state[0].text, charSequence)) {
                TextState[] textStateArr = this.state;
                if (textStateArr[0].reply == reply) {
                    textStateArr[0].translating = z;
                    invalidate();
                    return;
                }
            }
            this.isSpoilersRevealed = false;
            ValueAnimator valueAnimator = this.updateAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.updating = false;
            if (z2) {
                TextState[] textStateArr2 = this.state;
                if (textStateArr2[1] == null) {
                    textStateArr2[1] = new TextState();
                }
                TextState[] textStateArr3 = this.state;
                textStateArr3[1].setup(textStateArr3[0].text, textStateArr3[0].reply);
                TextState[] textStateArr4 = this.state;
                textStateArr4[1].translating = textStateArr4[0].translating;
                textStateArr4[1].translateT.set(textStateArr4[0].translateT.get(), true);
                this.state[0].setup(charSequence, reply);
                TextState[] textStateArr5 = this.state;
                textStateArr5[0].translating = z;
                textStateArr5[0].translateT.set(BitmapDescriptorFactory.HUE_RED, true);
                this.updateT = 1.0f;
                animateUpdate();
                return;
            }
            this.state[0].setup(charSequence, reply);
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
            this.horizontalPadding = AndroidUtilities.m107dp(16);
            this.verticalPadding = AndroidUtilities.m107dp(8);
            if (this.sizeCached != i3) {
                this.sizeCached = i3;
                int max = Math.max(0, View.MeasureSpec.getSize(i) - (this.horizontalPadding * 2));
                this.state[0].measure(max);
                TextState[] textStateArr = this.state;
                if (textStateArr[1] != null) {
                    textStateArr[1].measure(max);
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
                canvas.translate(this.showMoreX - AndroidUtilities.m107dp(32), scrollY);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(32), this.showMore.getHeight() + this.verticalPadding, this.xRefGradinetPaint);
                canvas.restore();
                canvas.drawRect(this.showMoreX - AndroidUtilities.m107dp(16), scrollY, getMeasuredWidth(), this.showMore.getHeight() + scrollY + this.verticalPadding, this.xRefPaint);
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
        /* loaded from: classes6.dex */
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

        @Override // android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            StaticLayout staticLayout;
            boolean z;
            TextState[] textStateArr;
            boolean z2;
            int i;
            if (motionEvent.getAction() == 0) {
                StoryCaptionView.this.startMotionX = motionEvent.getX();
                StoryCaptionView.this.startMotionY = motionEvent.getY();
            }
            StoryCaptionView.this.lastMotionX = motionEvent.getX();
            StoryCaptionView.this.lastMotionY = motionEvent.getY();
            if (this.showMore != null) {
                RectF rectF = AndroidUtilities.rectTmp;
                float f = this.showMoreX;
                rectF.set(f, this.showMoreY, staticLayout.getWidth() + f, this.showMoreY + this.showMore.getHeight());
                if (rectF.contains(motionEvent.getX(), motionEvent.getY())) {
                    z = false;
                    textStateArr = this.state;
                    if (textStateArr[0] != null || textStateArr[0].reply == null) {
                        z2 = false;
                    } else {
                        RectF rectF2 = AndroidUtilities.rectTmp;
                        rectF2.set(this.horizontalPadding, this.verticalPadding, i + textStateArr[0].reply.width(), this.verticalPadding + this.state[0].reply.height());
                        z2 = rectF2.contains(motionEvent.getX(), motionEvent.getY());
                        if (z2) {
                            z = false;
                        }
                        if (motionEvent.getAction() == 0 && z2) {
                            this.state[0].reply.setPressed(true, motionEvent.getX(), motionEvent.getY());
                        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                            if (motionEvent.getAction() == 1 && this.state[0].reply.bounce.isPressed()) {
                                StoryCaptionView.this.onReplyClick(this.state[0].reply);
                            }
                            this.state[0].reply.setPressed(false, motionEvent.getX(), motionEvent.getY());
                        }
                    }
                    if (z && (StoryCaptionView.this.expanded || this.state[0].firstLayout == null)) {
                        TextState[] textStateArr2 = this.state;
                        StoryCaptionView.this.textSelectionHelper.update(this.horizontalPadding, this.verticalPadding + ((textStateArr2[0] != null || textStateArr2[0].reply == null) ? 0 : textStateArr2[0].reply.height() + AndroidUtilities.m107dp(8)));
                        StoryCaptionView.this.textSelectionHelper.onTouchEvent(motionEvent);
                    }
                    if (!StoryCaptionView.this.textSelectionHelper.isInSelectionMode() || !z || !this.allowClickSpoilers || !this.state[0].clickDetector.onTouchEvent(motionEvent)) {
                        return super.dispatchTouchEvent(motionEvent) || z2;
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    StoryCaptionView.this.textSelectionHelper.clear();
                    return true;
                }
            }
            z = true;
            textStateArr = this.state;
            if (textStateArr[0] != null) {
            }
            z2 = false;
            if (z) {
                TextState[] textStateArr22 = this.state;
                StoryCaptionView.this.textSelectionHelper.update(this.horizontalPadding, this.verticalPadding + ((textStateArr22[0] != null || textStateArr22[0].reply == null) ? 0 : textStateArr22[0].reply.height() + AndroidUtilities.m107dp(8)));
                StoryCaptionView.this.textSelectionHelper.onTouchEvent(motionEvent);
            }
            if (!StoryCaptionView.this.textSelectionHelper.isInSelectionMode()) {
            }
            if (super.dispatchTouchEvent(motionEvent)) {
                return true;
            }
        }
    }
}
