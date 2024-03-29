package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
/* renamed from: org.telegram.ui.Components.VideoTimelinePlayView */
/* loaded from: classes6.dex */
public class VideoTimelinePlayView extends View {
    public static int TYPE_LEFT = 0;
    public static int TYPE_PROGRESS = 2;
    public static int TYPE_RIGHT = 1;
    private static final Object sync = new Object();
    Paint bitmapPaint;
    private Path clipPath;
    private int currentMode;
    private AsyncTask<Integer, Integer, Bitmap> currentTask;
    private final Paint cutPaint;
    private VideoTimelineViewDelegate delegate;
    private final Paint dimPaint;
    private ArrayList<Rect> exclusionRects;
    private Rect exclustionRect;
    private int frameHeight;
    private long frameTimeOffset;
    private int frameWidth;
    private ArrayList<BitmapFrame> frames;
    private int framesToLoad;
    private final Paint handlePaint;
    private boolean hasBlur;
    private int lastWidth;
    private final AnimatedFloat loopProgress;
    private float maxProgressDiff;
    private MediaMetadataRetriever mediaMetadataRetriever;
    private float minProgressDiff;
    private float playProgress;
    private float pressDx;
    private boolean pressedLeft;
    private boolean pressedPlay;
    private boolean pressedRight;
    private float progressLeft;
    private float progressRight;
    private RectF rect3;
    private final Paint shadowPaint;
    private int videoHeight;
    private long videoLength;
    private int videoWidth;
    private final Paint whitePaint;

    /* renamed from: org.telegram.ui.Components.VideoTimelinePlayView$VideoTimelineViewDelegate */
    /* loaded from: classes6.dex */
    public interface VideoTimelineViewDelegate {
        void didStartDragging(int i);

        void didStopDragging(int i);

        void onLeftProgressChanged(float f);

        void onPlayProgressChanged(float f);

        void onRightProgressChanged(float f);
    }

    protected boolean customBlur() {
        return false;
    }

    protected void drawBlur(Canvas canvas, RectF rectF) {
    }

    public VideoTimelinePlayView(Context context) {
        super(context);
        this.progressRight = 1.0f;
        this.playProgress = 0.5f;
        this.frames = new ArrayList<>();
        this.maxProgressDiff = 1.0f;
        this.minProgressDiff = BitmapDescriptorFactory.HUE_RED;
        this.rect3 = new RectF();
        this.currentMode = 0;
        this.bitmapPaint = new Paint(3);
        this.exclusionRects = new ArrayList<>();
        this.exclustionRect = new Rect();
        Paint paint = new Paint(1);
        this.whitePaint = paint;
        Paint paint2 = new Paint(1);
        this.shadowPaint = paint2;
        Paint paint3 = new Paint(1);
        this.dimPaint = paint3;
        Paint paint4 = new Paint(1);
        this.cutPaint = paint4;
        Paint paint5 = new Paint(1);
        this.handlePaint = paint5;
        this.loopProgress = new AnimatedFloat((float) BitmapDescriptorFactory.HUE_RED, this, 0L, 200L, CubicBezierInterpolator.EASE_BOTH);
        this.clipPath = new Path();
        paint.setColor(-1);
        paint2.setColor(637534208);
        paint3.setColor(1291845632);
        paint4.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        paint5.setColor(-16777216);
        this.exclusionRects.add(this.exclustionRect);
    }

    public float getProgress() {
        return this.playProgress;
    }

    public float getLeftProgress() {
        return this.progressLeft;
    }

    public float getRightProgress() {
        return this.progressRight;
    }

    public void setMinProgressDiff(float f) {
        this.minProgressDiff = f;
    }

    public void setMode(int i) {
        if (this.currentMode == i) {
            return;
        }
        this.currentMode = i;
        invalidate();
    }

    public void setMaxProgressDiff(float f) {
        this.maxProgressDiff = f;
        float f2 = this.progressRight;
        float f3 = this.progressLeft;
        if (f2 - f3 > f) {
            this.progressRight = f3 + f;
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT >= 29) {
            this.exclustionRect.set(i, 0, i3, getMeasuredHeight());
            setSystemGestureExclusionRects(this.exclusionRects);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int measuredWidth = getMeasuredWidth() - AndroidUtilities.m107dp(44);
        float f = measuredWidth;
        int m107dp = ((int) (this.progressLeft * f)) + AndroidUtilities.m107dp(22);
        int m107dp2 = ((int) (this.playProgress * f)) + AndroidUtilities.m107dp(22);
        int m107dp3 = ((int) (this.progressRight * f)) + AndroidUtilities.m107dp(22);
        if (motionEvent.getAction() == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
            if (this.mediaMetadataRetriever == null) {
                return false;
            }
            int m107dp4 = AndroidUtilities.m107dp(16);
            int m107dp5 = AndroidUtilities.m107dp(8);
            if (m107dp3 != m107dp && m107dp2 - m107dp5 <= x && x <= m107dp5 + m107dp2 && y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate = this.delegate;
                if (videoTimelineViewDelegate != null) {
                    videoTimelineViewDelegate.didStartDragging(TYPE_PROGRESS);
                }
                this.pressedPlay = true;
                this.pressDx = (int) (x - m107dp2);
                invalidate();
                return true;
            } else if (m107dp - m107dp4 <= x && x <= Math.min(m107dp + m107dp4, m107dp3) && y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate2 = this.delegate;
                if (videoTimelineViewDelegate2 != null) {
                    videoTimelineViewDelegate2.didStartDragging(TYPE_LEFT);
                }
                this.pressedLeft = true;
                this.pressDx = (int) (x - m107dp);
                invalidate();
                return true;
            } else if (m107dp3 - m107dp4 <= x && x <= m107dp4 + m107dp3 && y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate3 = this.delegate;
                if (videoTimelineViewDelegate3 != null) {
                    videoTimelineViewDelegate3.didStartDragging(TYPE_RIGHT);
                }
                this.pressedRight = true;
                this.pressDx = (int) (x - m107dp3);
                invalidate();
                return true;
            } else if (m107dp <= x && x <= m107dp3 && y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate4 = this.delegate;
                if (videoTimelineViewDelegate4 != null) {
                    videoTimelineViewDelegate4.didStartDragging(TYPE_PROGRESS);
                }
                this.pressedPlay = true;
                float m107dp6 = (x - AndroidUtilities.m107dp(16)) / f;
                this.playProgress = m107dp6;
                VideoTimelineViewDelegate videoTimelineViewDelegate5 = this.delegate;
                if (videoTimelineViewDelegate5 != null) {
                    videoTimelineViewDelegate5.onPlayProgressChanged(m107dp6);
                }
                this.pressDx = BitmapDescriptorFactory.HUE_RED;
                invalidate();
                return true;
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (this.pressedLeft) {
                VideoTimelineViewDelegate videoTimelineViewDelegate6 = this.delegate;
                if (videoTimelineViewDelegate6 != null) {
                    videoTimelineViewDelegate6.didStopDragging(TYPE_LEFT);
                }
                this.pressedLeft = false;
                return true;
            } else if (this.pressedRight) {
                VideoTimelineViewDelegate videoTimelineViewDelegate7 = this.delegate;
                if (videoTimelineViewDelegate7 != null) {
                    videoTimelineViewDelegate7.didStopDragging(TYPE_RIGHT);
                }
                this.pressedRight = false;
                return true;
            } else if (this.pressedPlay) {
                VideoTimelineViewDelegate videoTimelineViewDelegate8 = this.delegate;
                if (videoTimelineViewDelegate8 != null) {
                    videoTimelineViewDelegate8.didStopDragging(TYPE_PROGRESS);
                }
                this.pressedPlay = false;
            }
        } else if (motionEvent.getAction() == 2) {
            if (this.pressedPlay) {
                float m107dp7 = (((int) (x - this.pressDx)) - AndroidUtilities.m107dp(16)) / f;
                this.playProgress = m107dp7;
                float f2 = this.progressLeft;
                if (m107dp7 < f2) {
                    this.playProgress = f2;
                } else {
                    float f3 = this.progressRight;
                    if (m107dp7 > f3) {
                        this.playProgress = f3;
                    }
                }
                VideoTimelineViewDelegate videoTimelineViewDelegate9 = this.delegate;
                if (videoTimelineViewDelegate9 != null) {
                    videoTimelineViewDelegate9.onPlayProgressChanged(this.playProgress);
                }
                invalidate();
                return true;
            } else if (this.pressedLeft) {
                int i = (int) (x - this.pressDx);
                if (i < AndroidUtilities.m107dp(16)) {
                    m107dp3 = AndroidUtilities.m107dp(16);
                } else if (i <= m107dp3) {
                    m107dp3 = i;
                }
                float m107dp8 = (m107dp3 - AndroidUtilities.m107dp(16)) / f;
                this.progressLeft = m107dp8;
                float f4 = this.progressRight;
                float f5 = this.maxProgressDiff;
                if (f4 - m107dp8 > f5) {
                    this.progressRight = m107dp8 + f5;
                } else {
                    float f6 = this.minProgressDiff;
                    if (f6 != BitmapDescriptorFactory.HUE_RED && f4 - m107dp8 < f6) {
                        float f7 = f4 - f6;
                        this.progressLeft = f7;
                        if (f7 < BitmapDescriptorFactory.HUE_RED) {
                            this.progressLeft = BitmapDescriptorFactory.HUE_RED;
                        }
                    }
                }
                float f8 = this.progressLeft;
                float f9 = this.playProgress;
                if (f8 > f9) {
                    this.playProgress = f8;
                } else {
                    float f10 = this.progressRight;
                    if (f10 < f9) {
                        this.playProgress = f10;
                    }
                }
                VideoTimelineViewDelegate videoTimelineViewDelegate10 = this.delegate;
                if (videoTimelineViewDelegate10 != null) {
                    videoTimelineViewDelegate10.onLeftProgressChanged(f8);
                }
                invalidate();
                return true;
            } else if (this.pressedRight) {
                int i2 = (int) (x - this.pressDx);
                if (i2 >= m107dp) {
                    m107dp = i2 > AndroidUtilities.m107dp(16) + measuredWidth ? measuredWidth + AndroidUtilities.m107dp(16) : i2;
                }
                float m107dp9 = (m107dp - AndroidUtilities.m107dp(16)) / f;
                this.progressRight = m107dp9;
                float f11 = this.progressLeft;
                float f12 = this.maxProgressDiff;
                if (m107dp9 - f11 > f12) {
                    this.progressLeft = m107dp9 - f12;
                } else {
                    float f13 = this.minProgressDiff;
                    if (f13 != BitmapDescriptorFactory.HUE_RED && m107dp9 - f11 < f13) {
                        float f14 = f11 + f13;
                        this.progressRight = f14;
                        if (f14 > 1.0f) {
                            this.progressRight = 1.0f;
                        }
                    }
                }
                float f15 = this.progressLeft;
                float f16 = this.playProgress;
                if (f15 > f16) {
                    this.playProgress = f15;
                } else {
                    float f17 = this.progressRight;
                    if (f17 < f16) {
                        this.playProgress = f17;
                    }
                }
                VideoTimelineViewDelegate videoTimelineViewDelegate11 = this.delegate;
                if (videoTimelineViewDelegate11 != null) {
                    videoTimelineViewDelegate11.onRightProgressChanged(this.progressRight);
                }
                invalidate();
                return true;
            }
        }
        return true;
    }

    public void setVideoPath(String str, float f, float f2) {
        int parseInt;
        destroy();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        this.mediaMetadataRetriever = mediaMetadataRetriever;
        this.progressLeft = f;
        this.progressRight = f2;
        float f3 = this.playProgress;
        if (f3 < f) {
            this.playProgress = f;
        } else if (f3 > f2) {
            this.playProgress = f2;
        }
        try {
            mediaMetadataRetriever.setDataSource(str);
            String extractMetadata = this.mediaMetadataRetriever.extractMetadata(9);
            if (extractMetadata != null) {
                this.videoLength = Long.parseLong(extractMetadata);
            }
            String extractMetadata2 = this.mediaMetadataRetriever.extractMetadata(18);
            if (extractMetadata2 != null) {
                this.videoWidth = Integer.parseInt(extractMetadata2);
            }
            String extractMetadata3 = this.mediaMetadataRetriever.extractMetadata(19);
            if (extractMetadata3 != null) {
                this.videoHeight = Integer.parseInt(extractMetadata3);
            }
            String extractMetadata4 = this.mediaMetadataRetriever.extractMetadata(24);
            if (extractMetadata4 != null && ((parseInt = Integer.parseInt(extractMetadata4)) == 90 || parseInt == 270)) {
                int i = this.videoWidth;
                this.videoWidth = this.videoHeight;
                this.videoHeight = i;
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        invalidate();
    }

    public long getLength() {
        return Math.max(1L, this.videoLength);
    }

    public void setRightProgress(float f) {
        this.progressRight = f;
        VideoTimelineViewDelegate videoTimelineViewDelegate = this.delegate;
        if (videoTimelineViewDelegate != null) {
            videoTimelineViewDelegate.didStartDragging(TYPE_RIGHT);
        }
        VideoTimelineViewDelegate videoTimelineViewDelegate2 = this.delegate;
        if (videoTimelineViewDelegate2 != null) {
            videoTimelineViewDelegate2.onRightProgressChanged(this.progressRight);
        }
        VideoTimelineViewDelegate videoTimelineViewDelegate3 = this.delegate;
        if (videoTimelineViewDelegate3 != null) {
            videoTimelineViewDelegate3.didStopDragging(TYPE_RIGHT);
        }
        invalidate();
    }

    public void setDelegate(VideoTimelineViewDelegate videoTimelineViewDelegate) {
        this.delegate = videoTimelineViewDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadFrames(int i) {
        int i2;
        if (this.mediaMetadataRetriever == null) {
            return;
        }
        if (i == 0) {
            this.frameHeight = AndroidUtilities.m107dp(38);
            float f = 1.0f;
            int i3 = this.videoWidth;
            if (i3 != 0 && (i2 = this.videoHeight) != 0) {
                f = i3 / i2;
            }
            this.framesToLoad = Math.max(1, (int) Math.ceil((getMeasuredWidth() - AndroidUtilities.m107dp(32)) / (this.frameHeight * Utilities.clamp(f, 1.3333334f, 0.5625f))));
            this.frameWidth = (int) Math.ceil((getMeasuredWidth() - AndroidUtilities.m107dp(32)) / this.framesToLoad);
            this.frameTimeOffset = this.videoLength / this.framesToLoad;
        }
        AsyncTask<Integer, Integer, Bitmap> asyncTask = new AsyncTask<Integer, Integer, Bitmap>() { // from class: org.telegram.ui.Components.VideoTimelinePlayView.1
            private int frameNum = 0;
            private final Paint paint = new Paint(3);

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Bitmap doInBackground(Integer... numArr) {
                Bitmap frameAtTime;
                this.frameNum = numArr[0].intValue();
                Bitmap bitmap = null;
                if (isCancelled()) {
                    return null;
                }
                try {
                    frameAtTime = VideoTimelinePlayView.this.mediaMetadataRetriever.getFrameAtTime(VideoTimelinePlayView.this.frameTimeOffset * this.frameNum * 1000, 2);
                } catch (Exception e) {
                    e = e;
                }
                try {
                } catch (Exception e2) {
                    e = e2;
                    bitmap = frameAtTime;
                    FileLog.m102e(e);
                    return bitmap;
                }
                if (isCancelled()) {
                    return null;
                }
                if (frameAtTime != null) {
                    bitmap = Bitmap.createBitmap(VideoTimelinePlayView.this.frameWidth, VideoTimelinePlayView.this.frameHeight, frameAtTime.getConfig());
                    Canvas canvas = new Canvas(bitmap);
                    float max = Math.max(VideoTimelinePlayView.this.frameWidth / frameAtTime.getWidth(), VideoTimelinePlayView.this.frameHeight / frameAtTime.getHeight());
                    int width = (int) (frameAtTime.getWidth() * max);
                    int height = (int) (frameAtTime.getHeight() * max);
                    canvas.drawBitmap(frameAtTime, new Rect(0, 0, frameAtTime.getWidth(), frameAtTime.getHeight()), new Rect((VideoTimelinePlayView.this.frameWidth - width) / 2, (VideoTimelinePlayView.this.frameHeight - height) / 2, (VideoTimelinePlayView.this.frameWidth + width) / 2, (VideoTimelinePlayView.this.frameHeight + height) / 2), this.paint);
                    frameAtTime.recycle();
                    return bitmap;
                }
                return frameAtTime;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                if (isCancelled()) {
                    return;
                }
                VideoTimelinePlayView.this.frames.add(new BitmapFrame(bitmap));
                VideoTimelinePlayView.this.invalidate();
                if (this.frameNum < VideoTimelinePlayView.this.framesToLoad) {
                    VideoTimelinePlayView.this.reloadFrames(this.frameNum + 1);
                }
            }
        };
        this.currentTask = asyncTask;
        asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Integer.valueOf(i), null, null);
    }

    public void destroy() {
        Bitmap bitmap;
        synchronized (sync) {
            try {
                MediaMetadataRetriever mediaMetadataRetriever = this.mediaMetadataRetriever;
                if (mediaMetadataRetriever != null) {
                    mediaMetadataRetriever.release();
                    this.mediaMetadataRetriever = null;
                }
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
        for (int i = 0; i < this.frames.size(); i++) {
            BitmapFrame bitmapFrame = this.frames.get(i);
            if (bitmapFrame != null && (bitmap = bitmapFrame.bitmap) != null) {
                bitmap.recycle();
            }
        }
        this.frames.clear();
        AsyncTask<Integer, Integer, Bitmap> asyncTask = this.currentTask;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.currentTask = null;
        }
    }

    public boolean isDragging() {
        return this.pressedPlay;
    }

    public void setProgress(float f) {
        long j = this.videoLength;
        float f2 = j == 0 ? BitmapDescriptorFactory.HUE_RED : 240.0f / ((float) j);
        float f3 = this.playProgress;
        if (f < f3 && f <= this.progressLeft + f2 && f3 + f2 >= this.progressRight) {
            this.loopProgress.set(1.0f, true);
        }
        this.playProgress = f;
        invalidate();
    }

    public void clearFrames() {
        Bitmap bitmap;
        for (int i = 0; i < this.frames.size(); i++) {
            BitmapFrame bitmapFrame = this.frames.get(i);
            if (bitmapFrame != null && (bitmap = bitmapFrame.bitmap) != null) {
                bitmap.recycle();
            }
        }
        this.frames.clear();
        AsyncTask<Integer, Integer, Bitmap> asyncTask = this.currentTask;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.currentTask = null;
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        if (this.lastWidth != size) {
            clearFrames();
            this.lastWidth = size;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x012f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r19) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.VideoTimelinePlayView.onDraw(android.graphics.Canvas):void");
    }

    private void drawProgress(Canvas canvas, float f, float f2) {
        float dpf2 = AndroidUtilities.dpf2(12.0f);
        float m107dp = AndroidUtilities.m107dp(2);
        float m107dp2 = AndroidUtilities.m107dp(46) + m107dp;
        float f3 = ((m107dp2 - m107dp) / 2.0f) * (1.0f - f2);
        float f4 = m107dp + f3;
        float f5 = m107dp2 - f3;
        this.shadowPaint.setAlpha((int) (38.0f * f2));
        this.whitePaint.setAlpha((int) (f2 * 255.0f));
        float m107dp3 = dpf2 + AndroidUtilities.m107dp(10) + (((getMeasuredWidth() - (dpf2 * 2.0f)) - AndroidUtilities.m107dp(20)) * f);
        this.rect3.set(m107dp3 - AndroidUtilities.dpf2(1.5f), f4, AndroidUtilities.dpf2(1.5f) + m107dp3, f5);
        this.rect3.inset(-AndroidUtilities.dpf2(0.66f), -AndroidUtilities.dpf2(0.66f));
        canvas.drawRoundRect(this.rect3, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), this.shadowPaint);
        this.rect3.set(m107dp3 - AndroidUtilities.dpf2(1.5f), f4, m107dp3 + AndroidUtilities.dpf2(1.5f), f5);
        canvas.drawRoundRect(this.rect3, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), this.whitePaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.VideoTimelinePlayView$BitmapFrame */
    /* loaded from: classes6.dex */
    public static class BitmapFrame {
        float alpha;
        Bitmap bitmap;

        public BitmapFrame(Bitmap bitmap) {
            this.bitmap = bitmap;
        }
    }

    public void invalidateBlur() {
        if (customBlur() && this.hasBlur) {
            invalidate();
        }
    }
}
