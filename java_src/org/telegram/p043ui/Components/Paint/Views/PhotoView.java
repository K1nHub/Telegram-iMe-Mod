package org.telegram.p043ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
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
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
/* renamed from: org.telegram.ui.Components.Paint.Views.PhotoView */
/* loaded from: classes6.dex */
public class PhotoView extends EntityView {
    private int anchor;
    private Size baseSize;
    public final ImageReceiver centerImage;
    private FrameLayoutDrawer containerView;
    private final AnimatedFloat mirrorT;
    private boolean mirrored;
    private TLObject object;
    private String path;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Paint.Views.PhotoView$FrameLayoutDrawer */
    /* loaded from: classes6.dex */
    public class FrameLayoutDrawer extends FrameLayout {
        public FrameLayoutDrawer(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            PhotoView.this.stickerDraw(canvas);
        }
    }

    public PhotoView(Context context, Point point, float f, float f2, Size size, String str, int i, int i2) {
        super(context, point);
        this.anchor = -1;
        this.mirrored = false;
        ImageReceiver imageReceiver = new ImageReceiver();
        this.centerImage = imageReceiver;
        setRotation(f);
        setScale(f2);
        this.path = str;
        this.baseSize = size;
        FrameLayoutDrawer frameLayoutDrawer = new FrameLayoutDrawer(context);
        this.containerView = frameLayoutDrawer;
        addView(frameLayoutDrawer, LayoutHelper.createFrame(-1, -1));
        this.mirrorT = new AnimatedFloat(this.containerView, 0L, 500L, CubicBezierInterpolator.EASE_OUT_QUINT);
        imageReceiver.setAspectFit(true);
        imageReceiver.setInvalidateAll(true);
        imageReceiver.setParentView(this.containerView);
        imageReceiver.setRoundRadius(AndroidUtilities.m72dp(12));
        imageReceiver.setOrientation(i, i2, true);
        android.graphics.Point point2 = AndroidUtilities.displaySize;
        int round = Math.round((Math.min(point2.x, point2.y) * 0.8f) / AndroidUtilities.density);
        ImageLocation forPath = ImageLocation.getForPath(str);
        imageReceiver.setImage(forPath, round + "_" + round, null, null, null, 1);
        updatePosition();
    }

    public PhotoView(Context context, Point point, float f, float f2, Size size, TLObject tLObject) {
        super(context, point);
        this.anchor = -1;
        this.mirrored = false;
        ImageReceiver imageReceiver = new ImageReceiver();
        this.centerImage = imageReceiver;
        setRotation(f);
        setScale(f2);
        this.object = tLObject;
        this.baseSize = size;
        FrameLayoutDrawer frameLayoutDrawer = new FrameLayoutDrawer(context);
        this.containerView = frameLayoutDrawer;
        addView(frameLayoutDrawer, LayoutHelper.createFrame(-1, -1));
        this.mirrorT = new AnimatedFloat(this.containerView, 0L, 500L, CubicBezierInterpolator.EASE_OUT_QUINT);
        imageReceiver.setAspectFit(true);
        imageReceiver.setInvalidateAll(true);
        imageReceiver.setParentView(this.containerView);
        imageReceiver.setRoundRadius(AndroidUtilities.m72dp(12));
        android.graphics.Point point2 = AndroidUtilities.displaySize;
        int round = Math.round((Math.min(point2.x, point2.y) * 0.8f) / AndroidUtilities.density);
        TLObject tLObject2 = this.object;
        if (tLObject2 instanceof TLRPC$Photo) {
            TLRPC$Photo tLRPC$Photo = (TLRPC$Photo) tLObject2;
            TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, 1000);
            TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, 90);
            imageReceiver.setImage(ImageLocation.getForPhoto(closestPhotoSizeWithSize, tLRPC$Photo), round + "_" + round, ImageLocation.getForPhoto(closestPhotoSizeWithSize2, tLRPC$Photo), round + "_" + round, (String) null, (Object) null, 1);
        }
        updatePosition();
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
    protected Rect getSelectionBounds() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return new Rect();
        }
        float scaleX = viewGroup.getScaleX();
        float measuredWidth = (getMeasuredWidth() * getScale()) + (AndroidUtilities.m72dp(64) / scaleX);
        float measuredHeight = (getMeasuredHeight() * getScale()) + (AndroidUtilities.m72dp(64) / scaleX);
        float positionX = (getPositionX() - (measuredWidth / 2.0f)) * scaleX;
        return new Rect(positionX, (getPositionY() - (measuredHeight / 2.0f)) * scaleX, ((measuredWidth * scaleX) + positionX) - positionX, measuredHeight * scaleX);
    }

    @Override // org.telegram.p043ui.Components.Paint.Views.EntityView
    protected EntityView.SelectionView createSelectionView() {
        return new PhotoViewSelectionView(this, getContext());
    }

    public String getPath(int i) {
        TLObject tLObject = this.object;
        if (tLObject instanceof TLRPC$Photo) {
            try {
                return FileLoader.getInstance(i).getPathToAttach(FileLoader.getClosestPhotoSizeWithSize(((TLRPC$Photo) tLObject).sizes, 1000), true).getAbsolutePath();
            } catch (Exception unused) {
            }
        }
        return this.path;
    }

    public Size getBaseSize() {
        return this.baseSize;
    }

    /* renamed from: org.telegram.ui.Components.Paint.Views.PhotoView$PhotoViewSelectionView */
    /* loaded from: classes6.dex */
    public class PhotoViewSelectionView extends EntityView.SelectionView {
        private final Paint clearPaint;
        private Path path;

        public PhotoViewSelectionView(PhotoView photoView, Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.clearPaint = paint;
            this.path = new Path();
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }

        @Override // org.telegram.p043ui.Components.Paint.Views.EntityView.SelectionView
        protected int pointInsideHandle(float f, float f2) {
            float m73dp = AndroidUtilities.m73dp(19.5f);
            float m73dp2 = AndroidUtilities.m73dp(1.0f) + m73dp;
            float f3 = m73dp2 * 2.0f;
            float measuredWidth = getMeasuredWidth() - f3;
            float measuredHeight = getMeasuredHeight() - f3;
            float f4 = (measuredHeight / 2.0f) + m73dp2;
            if (f <= m73dp2 - m73dp || f2 <= f4 - m73dp || f >= m73dp2 + m73dp || f2 >= f4 + m73dp) {
                float f5 = m73dp2 + measuredWidth;
                if (f <= f5 - m73dp || f2 <= f4 - m73dp || f >= f5 + m73dp || f2 >= f4 + m73dp) {
                    return (f <= m73dp2 || f >= measuredWidth || f2 <= m73dp2 || f2 >= measuredHeight) ? 0 : 3;
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
            float m73dp = AndroidUtilities.m73dp(2.0f) + dpf2 + AndroidUtilities.m72dp(15);
            float f = m73dp * 2.0f;
            float measuredWidth = getMeasuredWidth() - f;
            float measuredHeight = getMeasuredHeight() - f;
            RectF rectF = AndroidUtilities.rectTmp;
            float f2 = m73dp + measuredWidth;
            float f3 = m73dp + measuredHeight;
            rectF.set(m73dp, m73dp, f2, f3);
            float m72dp = AndroidUtilities.m72dp(12);
            float min = Math.min(m72dp, measuredWidth / 2.0f);
            float f4 = measuredHeight / 2.0f;
            float min2 = Math.min(m72dp, f4);
            this.path.rewind();
            float f5 = min * 2.0f;
            float f6 = m73dp + f5;
            float f7 = 2.0f * min2;
            float f8 = m73dp + f7;
            rectF.set(m73dp, m73dp, f6, f8);
            this.path.arcTo(rectF, 180.0f, 90.0f);
            float f9 = f2 - f5;
            rectF.set(f9, m73dp, f2, f8);
            this.path.arcTo(rectF, 270.0f, 90.0f);
            canvas.drawPath(this.path, this.paint);
            this.path.rewind();
            float f10 = f3 - f7;
            rectF.set(m73dp, f10, f6, f3);
            this.path.arcTo(rectF, 180.0f, -90.0f);
            rectF.set(f9, f10, f2, f3);
            this.path.arcTo(rectF, 90.0f, -90.0f);
            canvas.drawPath(this.path, this.paint);
            float f11 = m73dp + f4;
            canvas.drawCircle(m73dp, f11, dpf2, this.dotStrokePaint);
            canvas.drawCircle(m73dp, f11, (dpf2 - AndroidUtilities.m72dp(1)) + 1.0f, this.dotPaint);
            canvas.drawCircle(f2, f11, dpf2, this.dotStrokePaint);
            canvas.drawCircle(f2, f11, (dpf2 - AndroidUtilities.m72dp(1)) + 1.0f, this.dotPaint);
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
            float f12 = m73dp + min2;
            float f13 = f3 - min2;
            canvas.drawLine(m73dp, f12, m73dp, f13, this.paint);
            canvas.drawLine(f2, f12, f2, f13, this.paint);
            canvas.drawCircle(f2, f11, (AndroidUtilities.m72dp(1) + dpf2) - 1.0f, this.clearPaint);
            canvas.drawCircle(m73dp, f11, (dpf2 + AndroidUtilities.m72dp(1)) - 1.0f, this.clearPaint);
            canvas.restoreToCount(saveCount);
        }
    }
}
