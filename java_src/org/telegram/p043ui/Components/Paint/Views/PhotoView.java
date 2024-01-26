package org.telegram.p043ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.segmentation.subject.SubjectSegmentation;
import com.google.mlkit.vision.segmentation.subject.SubjectSegmentationResult;
import com.google.mlkit.vision.segmentation.subject.SubjectSegmenter;
import com.google.mlkit.vision.segmentation.subject.SubjectSegmenterOptions;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p043ui.Components.AnimatedFileDrawable;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Paint.Views.EntityView;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.Size;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Photo;
/* renamed from: org.telegram.ui.Components.Paint.Views.PhotoView */
/* loaded from: classes6.dex */
public class PhotoView extends EntityView {
    private int anchor;
    private Size baseSize;
    public final ImageReceiver centerImage;
    private final FrameLayoutDrawer containerView;
    private final RectF dest;
    private LinearGradient highlightGradient;
    private Matrix highlightGradientMatrix;
    private Paint highlightPaint;
    private long highlightStart;
    private final AnimatedFloat mirrorT;
    private boolean mirrored;
    private boolean needHighlight;
    private TLObject object;
    private int orientation;
    private boolean overridenSegmented;
    private String path;
    private Path roundRectPath;
    private final Paint segmentPaint;
    private boolean segmented;
    private File segmentedFile;
    public Bitmap segmentedImage;
    private AnimatedFloat segmentedT;
    private boolean segmentingLoaded;
    private boolean segmentingLoading;
    private final Rect src;

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

    public void preloadSegmented(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.segmentingLoading = true;
        Point point = AndroidUtilities.displaySize;
        int round = Math.round((Math.min(point.x, point.y) * 0.8f) / AndroidUtilities.density);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = StoryEntry.calculateInSampleSize(options, round, round);
        options.inJustDecodeBounds = false;
        options.inDither = true;
        Bitmap decodeFile = BitmapFactory.decodeFile(str, options);
        this.segmentedImage = decodeFile;
        if (decodeFile != null) {
            this.segmentedFile = new File(str);
            this.segmentingLoaded = true;
        }
        this.segmentingLoading = false;
    }

    public PhotoView(Context context, org.telegram.p043ui.Components.Point point, float f, float f2, Size size, String str, int i, int i2) {
        super(context, point);
        this.anchor = -1;
        this.mirrored = false;
        this.overridenSegmented = false;
        this.segmented = false;
        ImageReceiver imageReceiver = new ImageReceiver() { // from class: org.telegram.ui.Components.Paint.Views.PhotoView.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.ImageReceiver
            public boolean setImageBitmapByKey(Drawable drawable, String str2, int i3, boolean z, int i4) {
                if (i3 == 0 && (drawable instanceof BitmapDrawable)) {
                    PhotoView.this.lambda$segmentImage$1(((BitmapDrawable) drawable).getBitmap());
                }
                return super.setImageBitmapByKey(drawable, str2, i3, z, i4);
            }
        };
        this.centerImage = imageReceiver;
        this.src = new Rect();
        this.dest = new RectF();
        this.segmentPaint = new Paint(3);
        this.highlightStart = -1L;
        setRotation(f);
        setScale(f2);
        this.path = str;
        this.baseSize = size;
        FrameLayoutDrawer frameLayoutDrawer = new FrameLayoutDrawer(context);
        this.containerView = frameLayoutDrawer;
        addView(frameLayoutDrawer, LayoutHelper.createFrame(-1, -1));
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.mirrorT = new AnimatedFloat(frameLayoutDrawer, 0L, 500L, cubicBezierInterpolator);
        this.segmentedT = new AnimatedFloat(frameLayoutDrawer, 0L, 350L, cubicBezierInterpolator);
        this.orientation = i;
        imageReceiver.setAspectFit(true);
        imageReceiver.setInvalidateAll(true);
        imageReceiver.setParentView(frameLayoutDrawer);
        imageReceiver.setRoundRadius(AndroidUtilities.m107dp(12));
        imageReceiver.setOrientation(i, i2, true);
        imageReceiver.setImage(ImageLocation.getForPath(str), getImageFilter(), null, null, null, 1);
        updatePosition();
    }

    public PhotoView(Context context, org.telegram.p043ui.Components.Point point, float f, float f2, Size size, TLObject tLObject) {
        super(context, point);
        this.anchor = -1;
        this.mirrored = false;
        this.overridenSegmented = false;
        this.segmented = false;
        ImageReceiver imageReceiver = new ImageReceiver() { // from class: org.telegram.ui.Components.Paint.Views.PhotoView.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.ImageReceiver
            public boolean setImageBitmapByKey(Drawable drawable, String str2, int i3, boolean z, int i4) {
                if (i3 == 0 && (drawable instanceof BitmapDrawable)) {
                    PhotoView.this.lambda$segmentImage$1(((BitmapDrawable) drawable).getBitmap());
                }
                return super.setImageBitmapByKey(drawable, str2, i3, z, i4);
            }
        };
        this.centerImage = imageReceiver;
        this.src = new Rect();
        this.dest = new RectF();
        this.segmentPaint = new Paint(3);
        this.highlightStart = -1L;
        setRotation(f);
        setScale(f2);
        this.object = tLObject;
        this.baseSize = size;
        FrameLayoutDrawer frameLayoutDrawer = new FrameLayoutDrawer(context);
        this.containerView = frameLayoutDrawer;
        addView(frameLayoutDrawer, LayoutHelper.createFrame(-1, -1));
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.mirrorT = new AnimatedFloat(frameLayoutDrawer, 0L, 500L, cubicBezierInterpolator);
        this.segmentedT = new AnimatedFloat(frameLayoutDrawer, 0L, 350L, cubicBezierInterpolator);
        imageReceiver.setAspectFit(true);
        imageReceiver.setInvalidateAll(true);
        imageReceiver.setParentView(frameLayoutDrawer);
        imageReceiver.setRoundRadius(AndroidUtilities.m107dp(12));
        TLObject tLObject2 = this.object;
        if (tLObject2 instanceof TLRPC$Photo) {
            TLRPC$Photo tLRPC$Photo = (TLRPC$Photo) tLObject2;
            imageReceiver.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, 1000), tLRPC$Photo), getImageFilter(), ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, 90), tLRPC$Photo), getImageFilter(), (String) null, (Object) null, 1);
        }
        updatePosition();
    }

    private String getImageFilter() {
        Point point = AndroidUtilities.displaySize;
        int round = Math.round((Math.min(point.x, point.y) * 0.8f) / AndroidUtilities.density);
        return round + "_" + round;
    }

    /* renamed from: segmentImage */
    public void lambda$segmentImage$1(final Bitmap bitmap) {
        if (this.segmentingLoaded || this.segmentingLoading || bitmap == null || Build.VERSION.SDK_INT < 24) {
            return;
        }
        SubjectSegmenter client = SubjectSegmentation.getClient(new SubjectSegmenterOptions.Builder().enableForegroundBitmap().build());
        this.segmentingLoading = true;
        client.process(InputImage.fromBitmap(bitmap, this.orientation)).addOnSuccessListener(new OnSuccessListener() { // from class: org.telegram.ui.Components.Paint.Views.PhotoView$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                PhotoView.this.lambda$segmentImage$0((SubjectSegmentationResult) obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: org.telegram.ui.Components.Paint.Views.PhotoView$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                PhotoView.this.lambda$segmentImage$2(bitmap, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$segmentImage$0(SubjectSegmentationResult subjectSegmentationResult) {
        this.segmentingLoaded = true;
        this.segmentingLoading = false;
        this.segmentedImage = subjectSegmentationResult.getForegroundBitmap();
        highlightSegmented();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$segmentImage$2(final Bitmap bitmap, Exception exc) {
        this.segmentingLoading = false;
        FileLog.m102e(exc);
        if (isWaitingMlKitError(exc) && isAttachedToWindow()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Paint.Views.PhotoView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoView.this.lambda$segmentImage$1(bitmap);
                }
            }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        } else {
            this.segmentingLoaded = true;
        }
    }

    public boolean hasSegmentedImage() {
        return this.segmentedImage != null;
    }

    public static boolean isWaitingMlKitError(Exception exc) {
        return Build.VERSION.SDK_INT >= 24 && (exc instanceof MlKitException) && exc.getMessage() != null && exc.getMessage().contains("segmentation optional module to be downloaded");
    }

    public File saveSegmentedImage(int i) {
        if (this.segmentedImage == null) {
            return null;
        }
        if (this.segmentedFile == null) {
            this.segmentedFile = StoryEntry.makeCacheFile(i, "webp");
            try {
                this.segmentedImage.compress(Bitmap.CompressFormat.WEBP, 100, new FileOutputStream(this.segmentedFile));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
        return this.segmentedFile;
    }

    public void deleteSegmentedFile() {
        File file = this.segmentedFile;
        if (file != null) {
            try {
                file.delete();
            } catch (Exception unused) {
            }
            this.segmentedFile = null;
        }
    }

    public void onSwitchSegmentedAnimationStarted(boolean z) {
        this.overridenSegmented = true;
        FrameLayoutDrawer frameLayoutDrawer = this.containerView;
        if (frameLayoutDrawer != null) {
            frameLayoutDrawer.invalidate();
        }
    }

    public Bitmap getSegmentedOutBitmap() {
        if (this.centerImage.getImageDrawable() instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) this.centerImage.getImageDrawable()).getBitmap();
            Bitmap bitmap2 = this.segmentedImage;
            if (bitmap == null || bitmap2 == null) {
                return null;
            }
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i = this.orientation;
            if (i == 90 || i == 270 || i == -90 || i == -270) {
                width = bitmap.getHeight();
                height = bitmap.getWidth();
            }
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            this.roundRectPath.rewind();
            RectF rectF = AndroidUtilities.rectTmp;
            float f = width;
            float f2 = height;
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, f2);
            float f3 = this.mirrorT.get();
            float f4 = f / 2.0f;
            canvas.scale(1.0f - (f3 * 2.0f), 1.0f, f4, BitmapDescriptorFactory.HUE_RED);
            canvas.skew(BitmapDescriptorFactory.HUE_RED, 4.0f * f3 * (1.0f - f3) * 0.25f);
            this.roundRectPath.addRoundRect(rectF, AndroidUtilities.m107dp(12) * getScaleX(), AndroidUtilities.m107dp(12) * getScaleY(), Path.Direction.CW);
            canvas.clipPath(this.roundRectPath);
            canvas.translate(f4, f2 / 2.0f);
            canvas.rotate(this.orientation);
            canvas.translate((-bitmap.getWidth()) / 2.0f, (-bitmap.getHeight()) / 2.0f);
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, bitmap.getWidth(), bitmap.getHeight());
            canvas.saveLayerAlpha(rectF, 255, 31);
            canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
            Paint paint = new Paint(3);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            canvas.save();
            canvas.drawBitmap(bitmap2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
            canvas.restore();
            canvas.restore();
            return createBitmap;
        }
        return null;
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
        FrameLayoutDrawer frameLayoutDrawer = this.containerView;
        if (frameLayoutDrawer != null) {
            frameLayoutDrawer.invalidate();
        }
    }

    public boolean isMirrored() {
        return this.mirrored;
    }

    public boolean isSegmented() {
        return this.segmented;
    }

    public void toggleSegmented(boolean z) {
        boolean z2 = !this.segmented;
        this.segmented = z2;
        if (z && z2) {
            this.overridenSegmented = false;
        }
        if (!z) {
            this.segmentedT.set(z2, true);
        }
        FrameLayoutDrawer frameLayoutDrawer = this.containerView;
        if (frameLayoutDrawer != null) {
            frameLayoutDrawer.invalidate();
        }
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
        float f2 = this.segmentedT.set(this.segmented);
        if (!this.segmented) {
            this.centerImage.setAlpha(1.0f - f2);
            ImageReceiver imageReceiver = this.centerImage;
            Size size = this.baseSize;
            imageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (int) size.width, (int) size.height);
            this.centerImage.draw(canvas);
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                drawSegmented(canvas);
            }
            if (this.segmentedImage != null) {
                Size size2 = this.baseSize;
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, size2.width, size2.height, 255, 31);
                drawSegmented(canvas);
                canvas.save();
                long currentTimeMillis = System.currentTimeMillis();
                if (this.highlightStart <= 0) {
                    this.highlightStart = currentTimeMillis;
                }
                float f3 = this.baseSize.width;
                float f4 = f3 * 0.8f;
                float f5 = ((float) (currentTimeMillis - this.highlightStart)) / 1000.0f;
                float f6 = (((2.0f * f4) + f3) * f5) - f4;
                if (this.highlightPaint == null) {
                    Paint paint = new Paint(1);
                    this.highlightPaint = paint;
                    paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                    this.highlightGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, f4, (float) BitmapDescriptorFactory.HUE_RED, new int[]{16707212, 1727983244, 1727983244, 16707212}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.4f, 0.6f, 1.0f}, Shader.TileMode.CLAMP);
                    Matrix matrix = new Matrix();
                    this.highlightGradientMatrix = matrix;
                    this.highlightGradient.setLocalMatrix(matrix);
                    this.highlightPaint.setShader(this.highlightGradient);
                }
                this.highlightGradientMatrix.reset();
                this.highlightGradientMatrix.postTranslate(f6, BitmapDescriptorFactory.HUE_RED);
                this.highlightGradient.setLocalMatrix(this.highlightGradientMatrix);
                Size size3 = this.baseSize;
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (int) size3.width, (int) size3.height, this.highlightPaint);
                canvas.restore();
                canvas.restore();
                if ((f5 > BitmapDescriptorFactory.HUE_RED || this.needHighlight) && f5 < 1.0f) {
                    this.needHighlight = false;
                    this.containerView.invalidate();
                }
            }
        } else {
            this.highlightStart = -1L;
            this.needHighlight = false;
            if (!this.overridenSegmented) {
                ImageReceiver imageReceiver2 = this.centerImage;
                Size size4 = this.baseSize;
                imageReceiver2.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (int) size4.width, (int) size4.height);
                this.centerImage.setAlpha(1.0f);
                this.centerImage.draw(canvas);
            }
            drawSegmented(canvas);
        }
        canvas.restore();
    }

    private void drawSegmented(Canvas canvas) {
        Bitmap bitmap = this.segmentedImage;
        if (bitmap == null) {
            return;
        }
        this.src.set(0, 0, bitmap.getWidth(), this.segmentedImage.getHeight());
        int width = this.segmentedImage.getWidth();
        int height = this.segmentedImage.getHeight();
        int i = this.orientation;
        if (i == 90 || i == 270 || i == -90 || i == -270) {
            width = this.segmentedImage.getHeight();
            height = this.segmentedImage.getWidth();
        }
        Size size = this.baseSize;
        float max = Math.max(width / size.width, height / size.height);
        float width2 = this.segmentedImage.getWidth() / max;
        float height2 = this.segmentedImage.getHeight() / max;
        RectF rectF = this.dest;
        Size size2 = this.baseSize;
        float f = size2.width;
        float f2 = size2.height;
        rectF.set((f - width2) / 2.0f, (f2 - height2) / 2.0f, (f + width2) / 2.0f, (f2 + height2) / 2.0f);
        canvas.save();
        int i2 = this.orientation;
        if (i2 != 0) {
            canvas.rotate(i2, this.dest.centerX(), this.dest.centerY());
        }
        if (this.roundRectPath == null) {
            this.roundRectPath = new Path();
        }
        this.roundRectPath.rewind();
        this.roundRectPath.addRoundRect(this.dest, AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), Path.Direction.CW);
        canvas.clipPath(this.roundRectPath);
        canvas.drawBitmap(this.segmentedImage, this.src, this.dest, this.segmentPaint);
        canvas.restore();
    }

    public void highlightSegmented() {
        this.needHighlight = true;
        if (this.highlightStart <= 0 || System.currentTimeMillis() - this.highlightStart >= 1000) {
            this.highlightStart = System.currentTimeMillis();
        }
        FrameLayoutDrawer frameLayoutDrawer = this.containerView;
        if (frameLayoutDrawer != null) {
            frameLayoutDrawer.invalidate();
        }
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
    public org.telegram.p043ui.Components.Rect getSelectionBounds() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return new org.telegram.p043ui.Components.Rect();
        }
        float scaleX = viewGroup.getScaleX();
        float measuredWidth = (getMeasuredWidth() * getScale()) + (AndroidUtilities.m107dp(64) / scaleX);
        float measuredHeight = (getMeasuredHeight() * getScale()) + (AndroidUtilities.m107dp(64) / scaleX);
        float positionX = (getPositionX() - (measuredWidth / 2.0f)) * scaleX;
        return new org.telegram.p043ui.Components.Rect(positionX, (getPositionY() - (measuredHeight / 2.0f)) * scaleX, ((measuredWidth * scaleX) + positionX) - positionX, measuredHeight * scaleX);
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
            float m108dp = AndroidUtilities.m108dp(19.5f);
            float m108dp2 = AndroidUtilities.m108dp(1.0f) + m108dp;
            float f3 = m108dp2 * 2.0f;
            float measuredWidth = getMeasuredWidth() - f3;
            float measuredHeight = getMeasuredHeight() - f3;
            float f4 = (measuredHeight / 2.0f) + m108dp2;
            if (f <= m108dp2 - m108dp || f2 <= f4 - m108dp || f >= m108dp2 + m108dp || f2 >= f4 + m108dp) {
                float f5 = m108dp2 + measuredWidth;
                if (f <= f5 - m108dp || f2 <= f4 - m108dp || f >= f5 + m108dp || f2 >= f4 + m108dp) {
                    return (f <= m108dp2 || f >= measuredWidth || f2 <= m108dp2 || f2 >= measuredHeight) ? 0 : 3;
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
            float m108dp = AndroidUtilities.m108dp(2.0f) + dpf2 + AndroidUtilities.m107dp(15);
            float f = m108dp * 2.0f;
            float measuredWidth = getMeasuredWidth() - f;
            float measuredHeight = getMeasuredHeight() - f;
            RectF rectF = AndroidUtilities.rectTmp;
            float f2 = m108dp + measuredWidth;
            float f3 = m108dp + measuredHeight;
            rectF.set(m108dp, m108dp, f2, f3);
            float m107dp = AndroidUtilities.m107dp(12);
            float min = Math.min(m107dp, measuredWidth / 2.0f);
            float f4 = measuredHeight / 2.0f;
            float min2 = Math.min(m107dp, f4);
            this.path.rewind();
            float f5 = min * 2.0f;
            float f6 = m108dp + f5;
            float f7 = 2.0f * min2;
            float f8 = m108dp + f7;
            rectF.set(m108dp, m108dp, f6, f8);
            this.path.arcTo(rectF, 180.0f, 90.0f);
            float f9 = f2 - f5;
            rectF.set(f9, m108dp, f2, f8);
            this.path.arcTo(rectF, 270.0f, 90.0f);
            canvas.drawPath(this.path, this.paint);
            this.path.rewind();
            float f10 = f3 - f7;
            rectF.set(m108dp, f10, f6, f3);
            this.path.arcTo(rectF, 180.0f, -90.0f);
            rectF.set(f9, f10, f2, f3);
            this.path.arcTo(rectF, 90.0f, -90.0f);
            canvas.drawPath(this.path, this.paint);
            float f11 = m108dp + f4;
            canvas.drawCircle(m108dp, f11, dpf2, this.dotStrokePaint);
            canvas.drawCircle(m108dp, f11, (dpf2 - AndroidUtilities.m107dp(1)) + 1.0f, this.dotPaint);
            canvas.drawCircle(f2, f11, dpf2, this.dotStrokePaint);
            canvas.drawCircle(f2, f11, (dpf2 - AndroidUtilities.m107dp(1)) + 1.0f, this.dotPaint);
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
            float f12 = m108dp + min2;
            float f13 = f3 - min2;
            canvas.drawLine(m108dp, f12, m108dp, f13, this.paint);
            canvas.drawLine(f2, f12, f2, f13, this.paint);
            canvas.drawCircle(f2, f11, (AndroidUtilities.m107dp(1) + dpf2) - 1.0f, this.clearPaint);
            canvas.drawCircle(m108dp, f11, (dpf2 + AndroidUtilities.m107dp(1)) - 1.0f, this.clearPaint);
            canvas.restoreToCount(saveCount);
        }
    }
}
