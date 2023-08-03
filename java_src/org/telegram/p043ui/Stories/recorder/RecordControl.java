package org.telegram.p043ui.Stories.recorder;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.zxing.common.detector.MathUtils;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.Point;
/* renamed from: org.telegram.ui.Stories.recorder.RecordControl */
/* loaded from: classes6.dex */
public class RecordControl extends View {
    private final Paint buttonPaint;
    private final Paint buttonPaintWhite;
    private Path circlePath;

    /* renamed from: cx */
    private float f1898cx;

    /* renamed from: cy */
    private float f1899cy;
    private Delegate delegate;
    private boolean discardParentTouch;
    private boolean dual;
    private final AnimatedFloat dualT;
    private final ButtonBounce flipButton;
    private boolean flipButtonWasPressed;
    private final Drawable flipDrawableBlack;
    private float flipDrawableRotate;
    private final AnimatedFloat flipDrawableRotateT;
    private final Drawable flipDrawableWhite;
    private final ImageReceiver galleryImage;

    /* renamed from: h1 */
    private final Point f1900h1;

    /* renamed from: h2 */
    private final Point f1901h2;

    /* renamed from: h3 */
    private final Point f1902h3;

    /* renamed from: h4 */
    private final Point f1903h4;
    private final Paint hintLinePaintBlack;
    private final Paint hintLinePaintWhite;
    private long lastDuration;
    private float leftCx;
    private float[] loadingSegments;
    private final ButtonBounce lockButton;
    private final Drawable lockDrawable;
    private final AnimatedFloat lockedT;
    private boolean longpressRecording;
    private final Paint mainPaint;
    private Path metaballsPath;
    private final CombinedDrawable noGalleryDrawable;
    private final Runnable onFlipLongPressRunnable;
    private final Runnable onRecordLongPressRunnable;
    private final Paint outlineFilledPaint;
    private final Paint outlinePaint;
    private float overrideStartModeIsVideoT;

    /* renamed from: p1 */
    private final Point f1904p1;

    /* renamed from: p2 */
    private final Point f1905p2;

    /* renamed from: p3 */
    private final Point f1906p3;

    /* renamed from: p4 */
    private final Point f1907p4;
    private final Drawable pauseDrawable;
    private final ButtonBounce recordButton;
    private final AnimatedFloat recordCx;
    private boolean recording;
    private boolean recordingLoading;
    private long recordingLoadingStart;
    private final AnimatedFloat recordingLoadingT;
    private final AnimatedFloat recordingLongT;
    private long recordingStart;
    private final AnimatedFloat recordingT;
    private RadialGradient redGradient;
    private final Matrix redMatrix;
    private final Paint redPaint;
    private float rightCx;
    private boolean showLock;
    private boolean startModeIsVideo;
    private final AnimatedFloat startModeIsVideoT;
    private boolean touch;
    private final AnimatedFloat touchIsButtonT;
    private final AnimatedFloat touchIsCenter2T;
    private final AnimatedFloat touchIsCenterT;
    private final AnimatedFloat touchT;
    private float touchX;
    private final Drawable unlockDrawable;

    /* renamed from: org.telegram.ui.Stories.recorder.RecordControl$Delegate */
    /* loaded from: classes6.dex */
    public interface Delegate {
        boolean canRecordAudio();

        void onFlipClick();

        void onFlipLongClick();

        void onGalleryClick();

        void onPhotoShoot();

        void onVideoDuration(long j);

        void onVideoRecordEnd(boolean z);

        void onVideoRecordLocked();

        void onVideoRecordStart(boolean z, Runnable runnable);

        void onZoom(float f);
    }

    public void startAsVideo(boolean z) {
        this.overrideStartModeIsVideoT = -1.0f;
        this.startModeIsVideo = z;
        invalidate();
    }

    public void startAsVideoT(float f) {
        this.overrideStartModeIsVideoT = f;
        invalidate();
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    public RecordControl(Context context) {
        super(context);
        ImageReceiver imageReceiver = new ImageReceiver();
        this.galleryImage = imageReceiver;
        this.mainPaint = new Paint(1);
        Paint paint = new Paint(1);
        this.outlinePaint = paint;
        Paint paint2 = new Paint(1);
        this.outlineFilledPaint = paint2;
        Paint paint3 = new Paint(1);
        this.buttonPaint = paint3;
        Paint paint4 = new Paint(1);
        this.buttonPaintWhite = paint4;
        Paint paint5 = new Paint(1);
        this.redPaint = paint5;
        Paint paint6 = new Paint(1);
        this.hintLinePaintWhite = paint6;
        Paint paint7 = new Paint(1);
        this.hintLinePaintBlack = paint7;
        Matrix matrix = new Matrix();
        this.redMatrix = matrix;
        this.recordButton = new ButtonBounce(this);
        this.flipButton = new ButtonBounce(this);
        this.lockButton = new ButtonBounce(this);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.flipDrawableRotateT = new AnimatedFloat(this, 0L, 310L, cubicBezierInterpolator);
        this.dualT = new AnimatedFloat(this, 0L, 330L, cubicBezierInterpolator);
        this.startModeIsVideoT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.overrideStartModeIsVideoT = -1.0f;
        this.startModeIsVideo = true;
        this.recordingT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.recordingLongT = new AnimatedFloat(this, 0L, 850L, cubicBezierInterpolator);
        this.loadingSegments = new float[2];
        this.recordingLoadingT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.touchT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.touchIsCenterT = new AnimatedFloat(this, 0L, 650L, cubicBezierInterpolator);
        this.touchIsCenter2T = new AnimatedFloat(this, 0L, 160L, CubicBezierInterpolator.EASE_IN);
        this.recordCx = new AnimatedFloat(this, 0L, 750L, cubicBezierInterpolator);
        this.touchIsButtonT = new AnimatedFloat(this, 0L, 650L, cubicBezierInterpolator);
        this.lockedT = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
        this.onRecordLongPressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.RecordControl$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RecordControl.this.lambda$new$1();
            }
        };
        this.onFlipLongPressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.RecordControl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                RecordControl.this.lambda$new$2();
            }
        };
        this.metaballsPath = new Path();
        this.circlePath = new Path();
        this.f1904p1 = new Point();
        this.f1905p2 = new Point();
        this.f1906p3 = new Point();
        this.f1907p4 = new Point();
        this.f1900h1 = new Point();
        this.f1901h2 = new Point();
        this.f1902h3 = new Point();
        this.f1903h4 = new Point();
        setWillNotDraw(false);
        RadialGradient radialGradient = new RadialGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(48), new int[]{-577231, -577231, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.64f, 1.0f}, Shader.TileMode.CLAMP);
        this.redGradient = radialGradient;
        radialGradient.setLocalMatrix(matrix);
        paint5.setShader(this.redGradient);
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        paint2.setColor(-577231);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        paint2.setStyle(Paint.Style.STROKE);
        paint3.setColor(1677721600);
        paint4.setColor(-1);
        paint6.setColor(1493172223);
        paint6.setStyle(Paint.Style.STROKE);
        paint6.setStrokeCap(Paint.Cap.ROUND);
        paint7.setColor(402653184);
        paint7.setStyle(Paint.Style.STROKE);
        paint7.setStrokeCap(Paint.Cap.ROUND);
        imageReceiver.setParentView(this);
        imageReceiver.setCrossfadeWithOldImage(true);
        imageReceiver.setRoundRadius(AndroidUtilities.m72dp(6));
        Drawable mutate = context.getResources().getDrawable(C3419R.C3421drawable.msg_media_gallery).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(1308622847, PorterDuff.Mode.MULTIPLY));
        CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m72dp(6), -13750737), mutate);
        this.noGalleryDrawable = combinedDrawable;
        combinedDrawable.setFullsize(false);
        combinedDrawable.setIconSize(AndroidUtilities.m72dp(24), AndroidUtilities.m72dp(24));
        Resources resources = context.getResources();
        int i = C3419R.C3421drawable.msg_photo_switch2;
        Drawable mutate2 = resources.getDrawable(i).mutate();
        this.flipDrawableWhite = mutate2;
        mutate2.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        Drawable mutate3 = context.getResources().getDrawable(i).mutate();
        this.flipDrawableBlack = mutate3;
        mutate3.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
        Drawable mutate4 = context.getResources().getDrawable(C3419R.C3421drawable.msg_filled_unlockedrecord).mutate();
        this.unlockDrawable = mutate4;
        mutate4.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        Drawable mutate5 = context.getResources().getDrawable(C3419R.C3421drawable.msg_filled_lockedrecord).mutate();
        this.lockDrawable = mutate5;
        mutate5.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
        Drawable mutate6 = context.getResources().getDrawable(C3419R.C3421drawable.msg_round_pause_m).mutate();
        this.pauseDrawable = mutate6;
        mutate6.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        updateGalleryImage();
    }

    public void updateGalleryImage() {
        String str;
        ArrayList<MediaController.PhotoEntry> arrayList;
        ArrayList<StoryEntry> arrayList2 = MessagesController.getInstance(this.galleryImage.getCurrentAccount()).getStoriesController().getDraftsController().drafts;
        this.galleryImage.setOrientation(0, 0, true);
        if (arrayList2 != null && !arrayList2.isEmpty() && arrayList2.get(0).draftThumbFile != null) {
            this.galleryImage.setImage(ImageLocation.getForPath(arrayList2.get(0).draftThumbFile.getAbsolutePath()), "80_80", null, null, this.noGalleryDrawable, 0L, null, null, 0);
            return;
        }
        MediaController.AlbumEntry albumEntry = MediaController.allMediaAlbumEntry;
        MediaController.PhotoEntry photoEntry = null;
        if (albumEntry != null && (arrayList = albumEntry.photos) != null && !arrayList.isEmpty()) {
            photoEntry = albumEntry.photos.get(0);
        }
        if (photoEntry != null && (str = photoEntry.thumbPath) != null) {
            this.galleryImage.setImage(ImageLocation.getForPath(str), "80_80", null, null, this.noGalleryDrawable, 0L, null, null, 0);
        } else if (photoEntry != null && photoEntry.path != null) {
            if (photoEntry.isVideo) {
                ImageReceiver imageReceiver = this.galleryImage;
                imageReceiver.setImage(ImageLocation.getForPath("vthumb://" + photoEntry.imageId + ":" + photoEntry.path), "80_80", null, null, this.noGalleryDrawable, 0L, null, null, 0);
                return;
            }
            this.galleryImage.setOrientation(photoEntry.orientation, photoEntry.invert, true);
            ImageReceiver imageReceiver2 = this.galleryImage;
            imageReceiver2.setImage(ImageLocation.getForPath("thumb://" + photoEntry.imageId + ":" + photoEntry.path), "80_80", null, null, this.noGalleryDrawable, 0L, null, null, 0);
        } else {
            this.galleryImage.setImageBitmap(this.noGalleryDrawable);
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.galleryImage.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.galleryImage.onDetachedFromWindow();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int m72dp = AndroidUtilities.m72dp(100);
        float f = size;
        this.f1898cx = f / 2.0f;
        this.f1899cy = m72dp / 2.0f;
        float min = Math.min(AndroidUtilities.m72dp((int) TsExtractor.TS_STREAM_TYPE_E_AC3), f * 0.35f);
        float f2 = this.f1898cx;
        this.leftCx = f2 - min;
        float f3 = f2 + min;
        this.rightCx = f3;
        setDrawableBounds(this.flipDrawableWhite, f3, this.f1899cy, AndroidUtilities.m72dp(14));
        setDrawableBounds(this.flipDrawableBlack, this.rightCx, this.f1899cy, AndroidUtilities.m72dp(14));
        setDrawableBounds(this.unlockDrawable, this.leftCx, this.f1899cy);
        setDrawableBounds(this.lockDrawable, this.leftCx, this.f1899cy);
        setDrawableBounds(this.pauseDrawable, this.leftCx, this.f1899cy);
        this.galleryImage.setImageCoords(this.leftCx - AndroidUtilities.m72dp(20), this.f1899cy - AndroidUtilities.m72dp(20), AndroidUtilities.m72dp(40), AndroidUtilities.m72dp(40));
        this.redMatrix.reset();
        this.redMatrix.postTranslate(this.f1898cx, this.f1899cy);
        this.redGradient.setLocalMatrix(this.redMatrix);
        setMeasuredDimension(size, m72dp);
    }

    private static void setDrawableBounds(Drawable drawable, float f, float f2) {
        setDrawableBounds(drawable, f, f2, Math.max(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight()) / 2.0f);
    }

    private static void setDrawableBounds(Drawable drawable, float f, float f2, float f3) {
        drawable.setBounds((int) (f - f3), (int) (f2 - f3), (int) (f + f3), (int) (f2 + f3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        if (this.recording) {
            return;
        }
        if (!this.delegate.canRecordAudio()) {
            this.touch = false;
            this.recordButton.setPressed(false);
            this.flipButton.setPressed(false);
            this.lockButton.setPressed(false);
            return;
        }
        this.longpressRecording = true;
        this.showLock = true;
        this.delegate.onVideoRecordStart(true, new Runnable() { // from class: org.telegram.ui.Stories.recorder.RecordControl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RecordControl.this.lambda$new$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.recordingStart = System.currentTimeMillis();
        this.recording = true;
        Delegate delegate = this.delegate;
        this.lastDuration = 0L;
        delegate.onVideoDuration(0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        if (this.recording) {
            return;
        }
        this.delegate.onFlipLongClick();
        rotateFlip(360.0f);
        this.touch = false;
        this.recordButton.setPressed(false);
        this.flipButton.setPressed(false);
        this.lockButton.setPressed(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0673  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x06a6  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r48) {
        /*
            Method dump skipped, instructions count: 1798
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.RecordControl.onDraw(android.graphics.Canvas):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$3() {
        this.recording = false;
        this.longpressRecording = false;
        this.recordingLoadingStart = SystemClock.elapsedRealtime();
        this.recordingLoading = true;
        this.touch = false;
        this.recordButton.setPressed(false);
        this.flipButton.setPressed(false);
        this.lockButton.setPressed(false);
        this.delegate.onVideoRecordEnd(true);
    }

    private void getVector(float f, float f2, double d, float f3, Point point) {
        double d2 = f3;
        point.f1797x = (float) (f + (Math.cos(d) * d2));
        point.f1798y = (float) (f2 + (Math.sin(d) * d2));
    }

    private float dist(Point point, Point point2) {
        return MathUtils.distance(point.f1797x, point.f1798y, point2.f1797x, point2.f1798y);
    }

    public void rotateFlip(float f) {
        this.flipDrawableRotateT.setDuration(f > 180.0f ? 620L : 310L);
        this.flipDrawableRotate += f;
        invalidate();
    }

    private boolean isPressed(float f, float f2, float f3, float f4, float f5, boolean z) {
        return this.recording ? (!z || f4 - f2 <= ((float) AndroidUtilities.m72dp(100))) && Math.abs(f3 - f) <= f5 : MathUtils.distance(f, f2, f3, f4) <= f5;
    }

    public boolean isTouch() {
        return this.discardParentTouch;
    }

    public void setDual(boolean z) {
        if (z != this.dual) {
            this.dual = z;
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        float clamp = Utilities.clamp(motionEvent.getX() + BitmapDescriptorFactory.HUE_RED, this.rightCx, this.leftCx);
        float y = motionEvent.getY() + BitmapDescriptorFactory.HUE_RED;
        boolean isPressed = isPressed(clamp, y, this.rightCx, this.f1899cy, AndroidUtilities.m72dp(7), true);
        boolean z = false;
        if (this.recordingLoading) {
            this.recordButton.setPressed(false);
            this.flipButton.setPressed(false);
            this.lockButton.setPressed(false);
        } else if (action == 0 || this.touch) {
            this.recordButton.setPressed(isPressed(clamp, y, this.f1898cx, this.f1899cy, AndroidUtilities.m72dp(60), false));
            this.flipButton.setPressed(isPressed(clamp, y, this.rightCx, this.f1899cy, AndroidUtilities.m72dp(30), true));
            this.lockButton.setPressed(isPressed(clamp, y, this.leftCx, this.f1899cy, AndroidUtilities.m72dp(30), false));
        }
        if (action == 0) {
            this.touch = true;
            if (this.recordButton.isPressed() || this.flipButton.isPressed()) {
                z = true;
            }
            this.discardParentTouch = z;
            System.currentTimeMillis();
            this.touchX = clamp;
            if (Math.abs(clamp - this.f1898cx) < AndroidUtilities.m72dp(50)) {
                AndroidUtilities.runOnUIThread(this.onRecordLongPressRunnable, ViewConfiguration.getLongPressTimeout());
            }
            if (this.flipButton.isPressed()) {
                AndroidUtilities.runOnUIThread(this.onFlipLongPressRunnable, ViewConfiguration.getLongPressTimeout());
            }
        } else if (action == 2) {
            if (!this.touch) {
                return false;
            }
            this.touchX = Utilities.clamp(clamp, this.rightCx, this.leftCx);
            invalidate();
            if (this.recording && !this.flipButtonWasPressed && isPressed) {
                rotateFlip(180.0f);
                this.delegate.onFlipClick();
            }
            if (this.recording && this.longpressRecording) {
                this.delegate.onZoom(Utilities.clamp(((this.f1899cy - AndroidUtilities.m72dp(48)) - y) / (AndroidUtilities.displaySize.y / 2.0f), 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
            }
        } else {
            if (action == 1 || action == 3) {
                if (!this.touch) {
                    return false;
                }
                this.touch = false;
                this.discardParentTouch = false;
                AndroidUtilities.cancelRunOnUIThread(this.onRecordLongPressRunnable);
                AndroidUtilities.cancelRunOnUIThread(this.onFlipLongPressRunnable);
                if (!this.recording && this.lockButton.isPressed()) {
                    this.delegate.onGalleryClick();
                } else if (this.recording && this.longpressRecording) {
                    if (this.lockButton.isPressed()) {
                        this.longpressRecording = false;
                        this.lockedT.set(1.0f, true);
                        this.delegate.onVideoRecordLocked();
                    } else {
                        this.recording = false;
                        this.recordingLoadingStart = SystemClock.elapsedRealtime();
                        this.recordingLoading = true;
                        this.delegate.onVideoRecordEnd(false);
                    }
                } else if (this.recordButton.isPressed()) {
                    if (!this.startModeIsVideo && !this.recording && !this.longpressRecording) {
                        this.delegate.onPhotoShoot();
                    } else if (!this.recording) {
                        if (this.delegate.canRecordAudio()) {
                            this.lastDuration = 0L;
                            this.recordingStart = System.currentTimeMillis();
                            this.showLock = false;
                            this.delegate.onVideoRecordStart(false, new Runnable() { // from class: org.telegram.ui.Stories.recorder.RecordControl$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    RecordControl.this.lambda$onTouchEvent$4();
                                }
                            });
                        }
                    } else {
                        this.recording = false;
                        this.recordingLoadingStart = SystemClock.elapsedRealtime();
                        this.recordingLoading = true;
                        this.delegate.onVideoRecordEnd(false);
                    }
                }
                this.longpressRecording = false;
                if (this.flipButton.isPressed()) {
                    rotateFlip(180.0f);
                    this.delegate.onFlipClick();
                }
                this.recordButton.setPressed(false);
                this.flipButton.setPressed(false);
                this.lockButton.setPressed(false);
                invalidate();
            }
            this.flipButtonWasPressed = isPressed;
            return z;
        }
        z = true;
        this.flipButtonWasPressed = isPressed;
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$4() {
        this.recordingStart = System.currentTimeMillis();
        this.lastDuration = 0L;
        this.recording = true;
        this.delegate.onVideoDuration(0L);
    }

    public void stopRecording() {
        if (this.recording) {
            this.recording = false;
            this.recordingLoadingStart = SystemClock.elapsedRealtime();
            this.recordingLoading = true;
            this.delegate.onVideoRecordEnd(false);
            this.recordButton.setPressed(false);
            this.flipButton.setPressed(false);
            this.lockButton.setPressed(false);
            invalidate();
        }
    }

    public void stopRecordingLoading(boolean z) {
        this.recordingLoading = false;
        if (!z) {
            this.recordingLoadingT.set(false, true);
        }
        invalidate();
    }
}
