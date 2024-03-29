package org.telegram.p043ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p043ui.Components.AnimatedFileDrawable;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Paint.Views.EntityView;
import org.telegram.p043ui.Components.Point;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.Rect;
import org.telegram.p043ui.Components.Size;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$TL_documentAttributeSticker;
import org.telegram.tgnet.TLRPC$TL_maskCoords;
/* renamed from: org.telegram.ui.Components.Paint.Views.StickerView */
/* loaded from: classes6.dex */
public class StickerView extends EntityView {
    private int anchor;
    private Size baseSize;
    public final ImageReceiver centerImage;
    private FrameLayoutDrawer containerView;
    private final AnimatedFloat mirrorT;
    private boolean mirrored;
    private Object parentObject;
    private TLRPC$Document sticker;

    protected void didSetAnimatedSticker(RLottieDrawable rLottieDrawable) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Paint.Views.StickerView$FrameLayoutDrawer */
    /* loaded from: classes6.dex */
    public class FrameLayoutDrawer extends FrameLayout {
        public FrameLayoutDrawer(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            StickerView.this.stickerDraw(canvas);
        }
    }

    public StickerView(Context context, Point point, float f, float f2, Size size, TLRPC$Document tLRPC$Document, Object obj) {
        super(context, point);
        this.anchor = -1;
        int i = 0;
        this.mirrored = false;
        this.centerImage = new ImageReceiver();
        setRotation(f);
        setScale(f2);
        this.sticker = tLRPC$Document;
        this.baseSize = size;
        this.parentObject = obj;
        while (true) {
            if (i >= tLRPC$Document.attributes.size()) {
                break;
            }
            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$Document.attributes.get(i);
            if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeSticker) {
                TLRPC$TL_maskCoords tLRPC$TL_maskCoords = tLRPC$DocumentAttribute.mask_coords;
                if (tLRPC$TL_maskCoords != null) {
                    this.anchor = tLRPC$TL_maskCoords.f1683n;
                }
            } else {
                i++;
            }
        }
        FrameLayoutDrawer frameLayoutDrawer = new FrameLayoutDrawer(context);
        this.containerView = frameLayoutDrawer;
        addView(frameLayoutDrawer, LayoutHelper.createFrame(-1, -1));
        this.mirrorT = new AnimatedFloat(this.containerView, 0L, 500L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.centerImage.setAspectFit(true);
        this.centerImage.setInvalidateAll(true);
        this.centerImage.setParentView(this.containerView);
        this.centerImage.setImage(ImageLocation.getForDocument(tLRPC$Document), (String) null, ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90), tLRPC$Document), (String) null, "webp", obj, 1);
        this.centerImage.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.Paint.Views.StickerView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                StickerView.this.lambda$new$0(imageReceiver, z, z2, z3);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
            }
        });
        updatePosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        RLottieDrawable lottieAnimation;
        if (!z || z2 || (lottieAnimation = imageReceiver.getLottieAnimation()) == null) {
            return;
        }
        didSetAnimatedSticker(lottieAnimation);
    }

    public StickerView(Context context, StickerView stickerView, Point point) {
        this(context, point, stickerView.getRotation(), stickerView.getScale(), stickerView.baseSize, stickerView.sticker, stickerView.parentObject);
        if (stickerView.mirrored) {
            mirror();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.centerImage.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.centerImage.onAttachedToWindow();
    }

    public int getAnchor() {
        return this.anchor;
    }

    public void mirror() {
        mirror(false);
    }

    public void mirror(boolean z) {
        boolean z2 = !this.mirrored;
        this.mirrored = z2;
        if (!z) {
            this.mirrorT.set(z2, true);
        }
        this.containerView.invalidate();
    }

    public boolean isMirrored() {
        return this.mirrored;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    public void updatePosition() {
        Size size = this.baseSize;
        setX(getPositionX() - (size.width / 2.0f));
        setY(getPositionY() - (size.height / 2.0f));
        updateSelectionView();
    }

    protected void stickerDraw(Canvas canvas) {
        if (this.containerView == null) {
            return;
        }
        canvas.save();
        float f = this.mirrorT.set(this.mirrored);
        canvas.scale(1.0f - (f * 2.0f), 1.0f, this.baseSize.width / 2.0f, BitmapDescriptorFactory.HUE_RED);
        canvas.skew(BitmapDescriptorFactory.HUE_RED, 4.0f * f * (1.0f - f) * 0.25f);
        ImageReceiver imageReceiver = this.centerImage;
        Size size = this.baseSize;
        imageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (int) size.width, (int) size.height);
        this.centerImage.draw(canvas);
        canvas.restore();
    }

    public long getDuration() {
        RLottieDrawable lottieAnimation = this.centerImage.getLottieAnimation();
        if (lottieAnimation != null) {
            return lottieAnimation.getDuration();
        }
        AnimatedFileDrawable animation = this.centerImage.getAnimation();
        if (animation != null) {
            return animation.getDurationMs();
        }
        return 0L;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec((int) this.baseSize.width, 1073741824), View.MeasureSpec.makeMeasureSpec((int) this.baseSize.height, 1073741824));
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    public Rect getSelectionBounds() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return new Rect();
        }
        float scaleX = viewGroup.getScaleX();
        float measuredWidth = getMeasuredWidth() * (getScale() + 0.5f);
        float f = measuredWidth / 2.0f;
        float f2 = measuredWidth * scaleX;
        return new Rect((getPositionX() - f) * scaleX, (getPositionY() - f) * scaleX, f2, f2);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected EntityView.SelectionView createSelectionView() {
        return new StickerViewSelectionView(this, getContext());
    }

    public TLRPC$Document getSticker() {
        return this.sticker;
    }

    public Object getParentObject() {
        return this.parentObject;
    }

    public Size getBaseSize() {
        return this.baseSize;
    }

    /* renamed from: org.telegram.ui.Components.Paint.Views.StickerView$StickerViewSelectionView */
    /* loaded from: classes6.dex */
    public class StickerViewSelectionView extends EntityView.SelectionView {
        private RectF arcRect;

        public StickerViewSelectionView(StickerView stickerView, Context context) {
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
}
