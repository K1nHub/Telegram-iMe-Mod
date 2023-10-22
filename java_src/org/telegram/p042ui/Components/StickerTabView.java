package org.telegram.p042ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SvgHelper;
import org.telegram.p042ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.StickerTabView */
/* loaded from: classes6.dex */
public class StickerTabView extends FrameLayout {
    private static int indexPointer;
    public float dragOffset;
    ValueAnimator dragOffsetAnimator;
    boolean expanded;
    boolean hasSavedLeft;
    ImageView iconView;
    BackupImageView imageView;
    public final int index;
    public boolean inited;
    public boolean isChatSticker;
    float lastLeft;
    boolean roundImage;
    public SvgHelper.SvgDrawable svgThumb;
    TextView textView;
    private float textWidth;
    public int type;
    View visibleView;

    public StickerTabView(Context context, int i) {
        super(context);
        this.type = i;
        int i2 = indexPointer;
        indexPointer = i2 + 1;
        this.index = i2;
        if (i == 2) {
            BackupImageView backupImageView = new BackupImageView(getContext());
            this.imageView = backupImageView;
            backupImageView.setLayerNum(1);
            this.imageView.setAspectFit(false);
            this.imageView.setRoundRadius(AndroidUtilities.m102dp(6));
            addView(this.imageView, LayoutHelper.createFrame(26, 26, 17));
            this.visibleView = this.imageView;
        } else if (i == 1 || i == 100) {
            ImageView imageView = new ImageView(context);
            this.iconView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            addView(this.iconView, LayoutHelper.createFrame(24, 24, 17));
            this.visibleView = this.iconView;
        } else {
            BackupImageView backupImageView2 = new BackupImageView(getContext());
            this.imageView = backupImageView2;
            backupImageView2.setLayerNum(1);
            this.imageView.setAspectFit(true);
            this.imageView.setRoundRadius(AndroidUtilities.m102dp(6));
            addView(this.imageView, LayoutHelper.createFrame(26, 26, 17));
            this.visibleView = this.imageView;
        }
        TextView textView = new TextView(this, context) { // from class: org.telegram.ui.Components.StickerTabView.1
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(charSequence, bufferType);
            }
        };
        this.textView = textView;
        textView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.telegram.ui.Components.StickerTabView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                StickerTabView.this.lambda$new$0(view, i3, i4, i5, i6, i7, i8, i9, i10);
            }
        });
        this.textView.setLines(1);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        this.textView.setTextSize(1, 11.0f);
        this.textView.setGravity(1);
        this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        addView(this.textView, LayoutHelper.createFrame(-1, -2, 81, 8, 0, 8, 10));
        this.textView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        TextView textView = this.textView;
        if (textView == null || textView.getLayout() == null) {
            return;
        }
        this.textWidth = this.textView.getLayout().getLineWidth(0);
    }

    public float getTextWidth() {
        return this.textWidth;
    }

    public void setExpanded(boolean z) {
        int i = this.type;
        if (i == 2) {
            return;
        }
        this.expanded = z;
        float f = i == 1 ? 24.0f : 26.0f;
        float f2 = i == 1 ? 38.0f : 44.0f;
        this.visibleView.getLayoutParams().width = AndroidUtilities.m103dp(z ? f2 : f);
        ViewGroup.LayoutParams layoutParams = this.visibleView.getLayoutParams();
        if (z) {
            f = f2;
        }
        layoutParams.height = AndroidUtilities.m103dp(f);
        this.textView.setVisibility(z ? 0 : 8);
        if (this.type == 1 || !this.roundImage) {
            return;
        }
        this.imageView.setRoundRadius(AndroidUtilities.m103dp(this.visibleView.getLayoutParams().width / 2.0f));
    }

    public void updateExpandProgress(float f) {
        int i = this.type;
        if (i == 2) {
            return;
        }
        if (this.expanded) {
            float f2 = i == 1 ? 24.0f : 26.0f;
            float f3 = i == 1 ? 38.0f : 44.0f;
            float f4 = 1.0f - f;
            this.visibleView.setTranslationY((((AndroidUtilities.m103dp(36.0f - f2) / 2.0f) - (AndroidUtilities.m103dp(86.0f - f3) / 2.0f)) * f4) - (AndroidUtilities.m102dp(8) * f));
            this.visibleView.setTranslationX(((AndroidUtilities.m103dp(33.0f - f2) / 2.0f) - (AndroidUtilities.m103dp(ScrollSlidingTabStrip.EXPANDED_WIDTH - f3) / 2.0f)) * f4);
            this.textView.setAlpha(Math.max((float) BitmapDescriptorFactory.HUE_RED, (f - 0.5f) / 0.5f));
            this.textView.setTranslationY((-AndroidUtilities.m102dp(40)) * f4);
            this.textView.setTranslationX((-AndroidUtilities.m102dp(12)) * f4);
            this.visibleView.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.visibleView.setPivotY(BitmapDescriptorFactory.HUE_RED);
            float f5 = ((f2 / f3) * f4) + f;
            this.visibleView.setScaleX(f5);
            this.visibleView.setScaleY(f5);
            return;
        }
        this.visibleView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.visibleView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.visibleView.setScaleX(1.0f);
        this.visibleView.setScaleY(1.0f);
    }

    public void saveXPosition() {
        this.lastLeft = getLeft();
        this.hasSavedLeft = true;
        invalidate();
    }

    public void animateIfPositionChanged(final ViewGroup viewGroup) {
        float f = this.lastLeft;
        if (getLeft() != f && this.hasSavedLeft) {
            this.dragOffset = f - getLeft();
            ValueAnimator valueAnimator = this.dragOffsetAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.dragOffsetAnimator.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.dragOffset, BitmapDescriptorFactory.HUE_RED);
            this.dragOffsetAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.StickerTabView.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    StickerTabView.this.dragOffset = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    StickerTabView.this.invalidate();
                    viewGroup.invalidate();
                }
            });
            this.dragOffsetAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.StickerTabView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StickerTabView stickerTabView = StickerTabView.this;
                    stickerTabView.dragOffset = BitmapDescriptorFactory.HUE_RED;
                    stickerTabView.invalidate();
                    viewGroup.invalidate();
                }
            });
            this.dragOffsetAnimator.start();
        }
        this.hasSavedLeft = false;
    }

    public void setRoundImage() {
        this.roundImage = true;
    }
}
