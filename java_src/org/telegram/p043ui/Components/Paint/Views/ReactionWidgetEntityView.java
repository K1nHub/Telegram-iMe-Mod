package org.telegram.p043ui.Components.Paint.Views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.Paint.Views.EntityView;
import org.telegram.p043ui.Components.Point;
import org.telegram.p043ui.Components.Reactions.ReactionImageHolder;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p043ui.Components.Size;
import org.telegram.p043ui.Stories.StoryReactionWidgetBackground;
import org.telegram.tgnet.TLRPC$TL_availableReaction;
/* renamed from: org.telegram.ui.Components.Paint.Views.ReactionWidgetEntityView */
/* loaded from: classes6.dex */
public class ReactionWidgetEntityView extends EntityView {
    Size baseSize;
    AnimatedFloat crossfadeBackgrounds;
    ReactionsLayoutInBubble.VisibleReaction currentReaction;
    private float drawScale;
    boolean mirror;
    ReactionImageHolder nextReactionHolder;
    StoryReactionWidgetBackground outBackground;
    AnimatedFloat progressToNext;
    ReactionImageHolder reactionHolder;
    StoryReactionWidgetBackground storyReactionWidgetBackground;

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected boolean allowHaptic() {
        return false;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    public boolean allowLongPressOnSelected() {
        return true;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected float getMaxScale() {
        return 1.8f;
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected float getMinScale() {
        return 0.5f;
    }

    public ReactionWidgetEntityView(Context context, Point point, Size size) {
        super(context, point);
        this.storyReactionWidgetBackground = new StoryReactionWidgetBackground(this);
        this.outBackground = new StoryReactionWidgetBackground(this);
        this.reactionHolder = new ReactionImageHolder(this);
        this.nextReactionHolder = new ReactionImageHolder(this);
        this.progressToNext = new AnimatedFloat(this);
        AnimatedFloat animatedFloat = new AnimatedFloat(this);
        this.crossfadeBackgrounds = animatedFloat;
        this.drawScale = 1.0f;
        this.baseSize = size;
        animatedFloat.set(1.0f, true);
        this.progressToNext.set(1.0f, true);
        List<TLRPC$TL_availableReaction> reactionsList = MediaDataController.getInstance(UserConfig.selectedAccount).getReactionsList();
        ReactionImageHolder reactionImageHolder = this.reactionHolder;
        ReactionsLayoutInBubble.VisibleReaction fromEmojicon = ReactionsLayoutInBubble.VisibleReaction.fromEmojicon(findHeartReaction(reactionsList));
        this.currentReaction = fromEmojicon;
        reactionImageHolder.setVisibleReaction(fromEmojicon);
        updatePosition();
    }

    private String findHeartReaction(List<TLRPC$TL_availableReaction> list) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).title.equals("Red Heart")) {
                return list.get(i).reaction;
            }
        }
        return list.get(0).reaction;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    public void updatePosition() {
        Size size = this.baseSize;
        setX(getPositionX() - (size.width / 2.0f));
        setY(getPositionY() - (size.height / 2.0f));
        updateSelectionView();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec((int) this.baseSize.width, 1073741824), View.MeasureSpec.makeMeasureSpec((int) this.baseSize.height, 1073741824));
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int padding = getPadding();
        float f = this.crossfadeBackgrounds.set(1.0f);
        if (f == 1.0f) {
            this.outBackground = null;
        }
        canvas.save();
        float f2 = this.drawScale;
        canvas.scale(f2, f2, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        StoryReactionWidgetBackground storyReactionWidgetBackground = this.outBackground;
        if (storyReactionWidgetBackground != null) {
            storyReactionWidgetBackground.setAlpha((int) ((1.0f - f) * 255.0f));
            StoryReactionWidgetBackground storyReactionWidgetBackground2 = this.outBackground;
            Size size = this.baseSize;
            storyReactionWidgetBackground2.setBounds(padding, padding, ((int) size.width) - padding, ((int) size.height) - padding);
            this.outBackground.draw(canvas);
        }
        this.storyReactionWidgetBackground.setAlpha((int) (f * 255.0f));
        StoryReactionWidgetBackground storyReactionWidgetBackground3 = this.storyReactionWidgetBackground;
        Size size2 = this.baseSize;
        storyReactionWidgetBackground3.setBounds(padding, padding, ((int) size2.width) - padding, ((int) size2.height) - padding);
        this.storyReactionWidgetBackground.draw(canvas);
        Rect rect = AndroidUtilities.rectTmp2;
        float width = (this.storyReactionWidgetBackground.getBounds().width() * 0.61f) / 2.0f;
        rect.set((int) (this.storyReactionWidgetBackground.getBounds().centerX() - width), (int) (this.storyReactionWidgetBackground.getBounds().centerY() - width), (int) (this.storyReactionWidgetBackground.getBounds().centerX() + width), (int) (this.storyReactionWidgetBackground.getBounds().centerY() + width));
        float f3 = this.progressToNext.set(1.0f);
        this.reactionHolder.setBounds(rect);
        this.nextReactionHolder.setBounds(rect);
        this.reactionHolder.setColor(this.storyReactionWidgetBackground.isDarkStyle() ? -1 : -16777216);
        if (f3 == 1.0f) {
            this.reactionHolder.draw(canvas);
        } else {
            canvas.save();
            float f4 = 1.0f - f3;
            canvas.scale(f4, f4, rect.centerX(), rect.top);
            this.nextReactionHolder.setAlpha(f4);
            this.nextReactionHolder.draw(canvas);
            canvas.restore();
            canvas.save();
            canvas.scale(f3, f3, rect.centerX(), rect.bottom);
            this.reactionHolder.setAlpha(f3);
            this.reactionHolder.draw(canvas);
            canvas.restore();
        }
        canvas.restore();
    }

    public int getPadding() {
        return (int) ((this.baseSize.height - AndroidUtilities.m107dp(84)) / 2.0f);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    public org.telegram.p043ui.Components.Rect getSelectionBounds() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return new org.telegram.p043ui.Components.Rect();
        }
        float scaleX = viewGroup.getScaleX();
        float measuredWidth = getMeasuredWidth() * (getScale() + 0.4f);
        float f = measuredWidth / 2.0f;
        float f2 = measuredWidth * scaleX;
        return new org.telegram.p043ui.Components.Rect((getPositionX() - f) * scaleX, (getPositionY() - f) * scaleX, f2, f2);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected EntityView.SelectionView createSelectionView() {
        return new StickerViewSelectionView(this, getContext());
    }

    public void setCurrentReaction(ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z) {
        if (Objects.equals(this.currentReaction, visibleReaction)) {
            return;
        }
        if (!z) {
            this.currentReaction = visibleReaction;
            this.reactionHolder.setVisibleReaction(visibleReaction);
            invalidate();
            return;
        }
        this.currentReaction = visibleReaction;
        this.nextReactionHolder.setVisibleReaction(visibleReaction);
        ReactionImageHolder reactionImageHolder = this.reactionHolder;
        this.reactionHolder = this.nextReactionHolder;
        this.nextReactionHolder = reactionImageHolder;
        this.progressToNext.set(BitmapDescriptorFactory.HUE_RED, true);
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.reactionHolder.onAttachedToWindow(true);
        this.nextReactionHolder.onAttachedToWindow(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.reactionHolder.onAttachedToWindow(false);
        this.nextReactionHolder.onAttachedToWindow(false);
    }

    public ReactionsLayoutInBubble.VisibleReaction getCurrentReaction() {
        return this.currentReaction;
    }

    public void mirror(boolean z) {
        boolean z2 = !this.mirror;
        this.mirror = z2;
        if (!z) {
            this.storyReactionWidgetBackground.setMirror(z2, z);
            return;
        }
        final boolean[] zArr = {false};
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Views.ReactionWidgetEntityView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ReactionWidgetEntityView.this.lambda$mirror$0(zArr, valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Views.ReactionWidgetEntityView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                boolean[] zArr2 = zArr;
                if (!zArr2[0]) {
                    zArr2[0] = true;
                    ReactionWidgetEntityView reactionWidgetEntityView = ReactionWidgetEntityView.this;
                    reactionWidgetEntityView.storyReactionWidgetBackground.setMirror(reactionWidgetEntityView.mirror, false);
                }
                ReactionWidgetEntityView.this.setRotationY(BitmapDescriptorFactory.HUE_RED);
                ReactionWidgetEntityView.this.drawScale = 1.0f;
            }
        });
        ofFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        ofFloat.setDuration(350L);
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$mirror$0(boolean[] zArr, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (floatValue < 0.5f) {
            float f = floatValue / 0.5f;
            setRotationY(90.0f * f);
            this.drawScale = ((1.0f - f) * 0.3f) + 0.7f;
            invalidate();
            return;
        }
        if (!zArr[0]) {
            zArr[0] = true;
            this.storyReactionWidgetBackground.setMirror(this.mirror, false);
        }
        float f2 = (floatValue - 0.5f) / 0.5f;
        setRotationY((1.0f - f2) * (-90.0f));
        this.drawScale = (f2 * 0.3f) + 0.7f;
        invalidate();
    }

    public void changeStyle(boolean z) {
        if (!z) {
            this.storyReactionWidgetBackground.nextStyle();
        } else {
            this.outBackground = this.storyReactionWidgetBackground;
            this.storyReactionWidgetBackground = new StoryReactionWidgetBackground(this);
            if (!this.outBackground.isDarkStyle()) {
                this.storyReactionWidgetBackground.nextStyle();
            }
            this.storyReactionWidgetBackground.setMirror(this.mirror, false);
            this.storyReactionWidgetBackground.updateShadowLayer(getScaleX());
            this.crossfadeBackgrounds.set(BitmapDescriptorFactory.HUE_RED, true);
        }
        invalidate();
    }

    public boolean isMirrored() {
        return this.mirror;
    }

    public boolean isDark() {
        return this.storyReactionWidgetBackground.isDarkStyle();
    }

    /* renamed from: org.telegram.ui.Components.Paint.Views.ReactionWidgetEntityView$StickerViewSelectionView */
    /* loaded from: classes6.dex */
    public class StickerViewSelectionView extends EntityView.SelectionView {
        private RectF arcRect;

        public StickerViewSelectionView(ReactionWidgetEntityView reactionWidgetEntityView, Context context) {
            super(context);
            this.arcRect = new RectF();
        }

        @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.SelectionView
        protected int pointInsideHandle(float f, float f2) {
            float m108dp = AndroidUtilities.m108dp(19.5f);
            float m108dp2 = AndroidUtilities.m108dp(1.0f) + m108dp;
            float f3 = m108dp2 * 2.0f;
            float measuredHeight = ((getMeasuredHeight() - f3) / 2.0f) + m108dp2;
            if (f <= m108dp2 - m108dp || f2 <= measuredHeight - m108dp || f >= m108dp2 + m108dp || f2 >= measuredHeight + m108dp) {
                if (f <= ((getMeasuredWidth() - f3) + m108dp2) - m108dp || f2 <= measuredHeight - m108dp || f >= m108dp2 + (getMeasuredWidth() - f3) + m108dp || f2 >= measuredHeight + m108dp) {
                    float measuredWidth = getMeasuredWidth() / 2.0f;
                    return Math.pow((double) (f - measuredWidth), 2.0d) + Math.pow((double) (f2 - measuredWidth), 2.0d) < Math.pow((double) measuredWidth, 2.0d) ? 3 : 0;
                }
                return 2;
            }
            return 1;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int saveCount = canvas.getSaveCount();
            float showAlpha = getShowAlpha();
            if (showAlpha <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            if (showAlpha < 1.0f) {
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (showAlpha * 255.0f), 31);
            }
            float dpf2 = AndroidUtilities.dpf2(5.66f);
            float m108dp = AndroidUtilities.m108dp(1.0f) + dpf2 + AndroidUtilities.m107dp(15);
            float measuredWidth = (getMeasuredWidth() / 2) - m108dp;
            float f = m108dp + (2.0f * measuredWidth);
            this.arcRect.set(m108dp, m108dp, f, f);
            canvas.drawArc(this.arcRect, BitmapDescriptorFactory.HUE_RED, 180.0f, false, this.paint);
            canvas.drawArc(this.arcRect, 180.0f, 180.0f, false, this.paint);
            float f2 = measuredWidth + m108dp;
            canvas.drawCircle(m108dp, f2, dpf2, this.dotStrokePaint);
            canvas.drawCircle(m108dp, f2, dpf2 - AndroidUtilities.m107dp(1), this.dotPaint);
            canvas.drawCircle(f, f2, dpf2, this.dotStrokePaint);
            canvas.drawCircle(f, f2, dpf2 - AndroidUtilities.m107dp(1), this.dotPaint);
            canvas.restoreToCount(saveCount);
        }
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        if (getScaleX() != f) {
            super.setScaleX(f);
            this.storyReactionWidgetBackground.updateShadowLayer(f);
            invalidate();
        }
    }
}
