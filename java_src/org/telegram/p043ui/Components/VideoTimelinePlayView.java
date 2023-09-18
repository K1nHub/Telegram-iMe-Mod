package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
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
/* renamed from: org.telegram.ui.Components.VideoTimelinePlayView */
/* loaded from: classes7.dex */
public class VideoTimelinePlayView extends View {
    public static int TYPE_LEFT = 0;
    public static int TYPE_PROGRESS = 2;
    public static int TYPE_RIGHT = 1;
    private static final Object sync = new Object();
    Paint bitmapPaint;
    private Path clipPath;
    private int currentMode;
    private AsyncTask<Integer, Integer, Bitmap> currentTask;
    private VideoTimelineViewDelegate delegate;
    private ArrayList<Rect> exclusionRects;
    private Rect exclustionRect;
    private int frameHeight;
    private long frameTimeOffset;
    private int frameWidth;
    private ArrayList<BitmapFrame> frames;
    private int framesToLoad;
    private int lastWidth;
    private float maxProgressDiff;
    private MediaMetadataRetriever mediaMetadataRetriever;
    private float minProgressDiff;
    private Paint paint;
    private Paint paint2;
    private Paint paint3;
    private float playProgress;
    private float pressDx;
    private boolean pressedLeft;
    private boolean pressedPlay;
    private boolean pressedRight;
    private float progressLeft;
    private float progressRight;
    private RectF rect3;
    private long videoLength;

    /* renamed from: org.telegram.ui.Components.VideoTimelinePlayView$VideoTimelineViewDelegate */
    /* loaded from: classes7.dex */
    public interface VideoTimelineViewDelegate {
        void didStartDragging(int i);

        void didStopDragging(int i);

        void onLeftProgressChanged(float f);

        void onPlayProgressChanged(float f);

        void onRightProgressChanged(float f);
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
        this.clipPath = new Path();
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setColor(-1);
        Paint paint2 = new Paint();
        this.paint2 = paint2;
        paint2.setColor(1291845632);
        Paint paint3 = new Paint();
        this.paint3 = paint3;
        paint3.setColor(-16777216);
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

    public float getProgressOf(int i) {
        if (i == TYPE_LEFT) {
            return getLeftProgress();
        }
        if (i == TYPE_PROGRESS) {
            return getProgress();
        }
        return i == TYPE_RIGHT ? getRightProgress() : BitmapDescriptorFactory.HUE_RED;
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
        int measuredWidth = getMeasuredWidth() - AndroidUtilities.m72dp(32);
        float f = measuredWidth;
        int m72dp = ((int) (this.progressLeft * f)) + AndroidUtilities.m72dp(16);
        int m72dp2 = ((int) (this.playProgress * f)) + AndroidUtilities.m72dp(16);
        int m72dp3 = ((int) (this.progressRight * f)) + AndroidUtilities.m72dp(16);
        if (motionEvent.getAction() == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
            if (this.mediaMetadataRetriever == null) {
                return false;
            }
            int m72dp4 = AndroidUtilities.m72dp(16);
            int m72dp5 = AndroidUtilities.m72dp(8);
            if (m72dp3 != m72dp && m72dp2 - m72dp5 <= x && x <= m72dp5 + m72dp2 && y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate = this.delegate;
                if (videoTimelineViewDelegate != null) {
                    videoTimelineViewDelegate.didStartDragging(TYPE_PROGRESS);
                }
                this.pressedPlay = true;
                this.pressDx = (int) (x - m72dp2);
                invalidate();
                return true;
            } else if (m72dp - m72dp4 <= x && x <= Math.min(m72dp + m72dp4, m72dp3) && y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate2 = this.delegate;
                if (videoTimelineViewDelegate2 != null) {
                    videoTimelineViewDelegate2.didStartDragging(TYPE_LEFT);
                }
                this.pressedLeft = true;
                this.pressDx = (int) (x - m72dp);
                invalidate();
                return true;
            } else if (m72dp3 - m72dp4 <= x && x <= m72dp4 + m72dp3 && y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate3 = this.delegate;
                if (videoTimelineViewDelegate3 != null) {
                    videoTimelineViewDelegate3.didStartDragging(TYPE_RIGHT);
                }
                this.pressedRight = true;
                this.pressDx = (int) (x - m72dp3);
                invalidate();
                return true;
            } else if (m72dp <= x && x <= m72dp3 && y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate4 = this.delegate;
                if (videoTimelineViewDelegate4 != null) {
                    videoTimelineViewDelegate4.didStartDragging(TYPE_PROGRESS);
                }
                this.pressedPlay = true;
                float m72dp6 = (x - AndroidUtilities.m72dp(16)) / f;
                this.playProgress = m72dp6;
                VideoTimelineViewDelegate videoTimelineViewDelegate5 = this.delegate;
                if (videoTimelineViewDelegate5 != null) {
                    videoTimelineViewDelegate5.onPlayProgressChanged(m72dp6);
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
                float m72dp7 = (((int) (x - this.pressDx)) - AndroidUtilities.m72dp(16)) / f;
                this.playProgress = m72dp7;
                float f2 = this.progressLeft;
                if (m72dp7 < f2) {
                    this.playProgress = f2;
                } else {
                    float f3 = this.progressRight;
                    if (m72dp7 > f3) {
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
                if (i < AndroidUtilities.m72dp(16)) {
                    m72dp3 = AndroidUtilities.m72dp(16);
                } else if (i <= m72dp3) {
                    m72dp3 = i;
                }
                float m72dp8 = (m72dp3 - AndroidUtilities.m72dp(16)) / f;
                this.progressLeft = m72dp8;
                float f4 = this.progressRight;
                float f5 = this.maxProgressDiff;
                if (f4 - m72dp8 > f5) {
                    this.progressRight = m72dp8 + f5;
                } else {
                    float f6 = this.minProgressDiff;
                    if (f6 != BitmapDescriptorFactory.HUE_RED && f4 - m72dp8 < f6) {
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
                if (i2 >= m72dp) {
                    m72dp = i2 > AndroidUtilities.m72dp(16) + measuredWidth ? measuredWidth + AndroidUtilities.m72dp(16) : i2;
                }
                float m72dp9 = (m72dp - AndroidUtilities.m72dp(16)) / f;
                this.progressRight = m72dp9;
                float f11 = this.progressLeft;
                float f12 = this.maxProgressDiff;
                if (m72dp9 - f11 > f12) {
                    this.progressLeft = m72dp9 - f12;
                } else {
                    float f13 = this.minProgressDiff;
                    if (f13 != BitmapDescriptorFactory.HUE_RED && m72dp9 - f11 < f13) {
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
        destroy();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        this.mediaMetadataRetriever = mediaMetadataRetriever;
        this.progressLeft = f;
        this.progressRight = f2;
        try {
            mediaMetadataRetriever.setDataSource(str);
            this.videoLength = Long.parseLong(this.mediaMetadataRetriever.extractMetadata(9));
        } catch (Exception e) {
            FileLog.m67e(e);
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

    public void setLeftRightProgress(float f, float f2) {
        this.progressRight = f2;
        this.progressLeft = f;
        invalidate();
    }

    public void setDelegate(VideoTimelineViewDelegate videoTimelineViewDelegate) {
        this.delegate = videoTimelineViewDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadFrames(int i) {
        if (this.mediaMetadataRetriever == null) {
            return;
        }
        if (i == 0) {
            this.frameHeight = AndroidUtilities.m72dp(40);
            this.framesToLoad = Math.max(1, (getMeasuredWidth() - AndroidUtilities.m72dp(16)) / this.frameHeight);
            this.frameWidth = (int) Math.ceil((getMeasuredWidth() - AndroidUtilities.m72dp(16)) / this.framesToLoad);
            this.frameTimeOffset = this.videoLength / this.framesToLoad;
        }
        AsyncTask<Integer, Integer, Bitmap> asyncTask = new AsyncTask<Integer, Integer, Bitmap>() { // from class: org.telegram.ui.Components.VideoTimelinePlayView.1
            private int frameNum = 0;

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
                    if (isCancelled()) {
                        return null;
                    }
                    if (frameAtTime != null) {
                        Bitmap createBitmap = Bitmap.createBitmap(VideoTimelinePlayView.this.frameWidth, VideoTimelinePlayView.this.frameHeight, frameAtTime.getConfig());
                        Canvas canvas = new Canvas(createBitmap);
                        float max = Math.max(VideoTimelinePlayView.this.frameWidth / frameAtTime.getWidth(), VideoTimelinePlayView.this.frameHeight / frameAtTime.getHeight());
                        int width = (int) (frameAtTime.getWidth() * max);
                        int height = (int) (frameAtTime.getHeight() * max);
                        canvas.drawBitmap(frameAtTime, new Rect(0, 0, frameAtTime.getWidth(), frameAtTime.getHeight()), new Rect((VideoTimelinePlayView.this.frameWidth - width) / 2, (VideoTimelinePlayView.this.frameHeight - height) / 2, (VideoTimelinePlayView.this.frameWidth + width) / 2, (VideoTimelinePlayView.this.frameHeight + height) / 2), (Paint) null);
                        frameAtTime.recycle();
                        return createBitmap;
                    }
                    return frameAtTime;
                } catch (Exception e2) {
                    e = e2;
                    bitmap = frameAtTime;
                    FileLog.m67e(e);
                    return bitmap;
                }
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
                FileLog.m67e(e);
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

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int measuredWidth = getMeasuredWidth() - AndroidUtilities.m72dp(32);
        float f = measuredWidth;
        int i = 16;
        int m72dp = ((int) (this.progressLeft * f)) + AndroidUtilities.m72dp(16);
        int m72dp2 = ((int) (this.progressRight * f)) + AndroidUtilities.m72dp(16);
        int i2 = 6;
        int m72dp3 = AndroidUtilities.m72dp(6);
        int m72dp4 = AndroidUtilities.m72dp(48);
        canvas.save();
        canvas.clipRect(AndroidUtilities.m72dp(16), AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(20) + measuredWidth, AndroidUtilities.m72dp(48));
        if (this.frames.isEmpty() && this.currentTask == null) {
            canvas.drawRect(AndroidUtilities.m72dp(16), m72dp3, AndroidUtilities.m72dp(16) + measuredWidth + AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(46), this.paint2);
            reloadFrames(0);
        } else {
            int i3 = 0;
            canvas.save();
            this.clipPath.rewind();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(AndroidUtilities.m72dp(16), AndroidUtilities.m72dp(6), AndroidUtilities.m72dp(20) + measuredWidth, AndroidUtilities.m72dp(46));
            this.clipPath.addRoundRect(rectF, AndroidUtilities.m72dp(6), AndroidUtilities.m72dp(6), Path.Direction.CW);
            canvas.clipPath(this.clipPath);
            float f2 = m72dp;
            float f3 = m72dp3;
            canvas.drawRect(f2, f3, m72dp2, AndroidUtilities.m72dp(46), this.paint2);
            int i4 = 0;
            while (i4 < this.frames.size()) {
                BitmapFrame bitmapFrame = this.frames.get(i4);
                if (bitmapFrame.bitmap != null) {
                    int m72dp5 = AndroidUtilities.m72dp(i) + (this.frameWidth * i3);
                    int m72dp6 = AndroidUtilities.m72dp(i2);
                    float f4 = bitmapFrame.alpha;
                    if (f4 != 1.0f) {
                        float f5 = f4 + 0.045714285f;
                        bitmapFrame.alpha = f5;
                        if (f5 > 1.0f) {
                            bitmapFrame.alpha = 1.0f;
                        } else {
                            invalidate();
                        }
                        this.bitmapPaint.setAlpha((int) (CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(bitmapFrame.alpha) * 255.0f));
                        canvas.drawBitmap(bitmapFrame.bitmap, m72dp5, m72dp6, this.bitmapPaint);
                    } else {
                        canvas.drawBitmap(bitmapFrame.bitmap, m72dp5, m72dp6, (Paint) null);
                    }
                }
                i3++;
                i4++;
                i = 16;
                i2 = 6;
            }
            canvas.drawRect(AndroidUtilities.m72dp(i), f3, f2, AndroidUtilities.m72dp(46), this.paint2);
            canvas.drawRect(AndroidUtilities.m72dp(4) + m72dp2, f3, AndroidUtilities.m72dp(16) + measuredWidth + AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(46), this.paint2);
            canvas.restore();
        }
        float f6 = m72dp;
        float f7 = m72dp4;
        canvas.drawRect(f6, AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(2) + m72dp, f7, this.paint);
        canvas.drawRect(AndroidUtilities.m72dp(2) + m72dp2, AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(4) + m72dp2, f7, this.paint);
        canvas.drawRect(AndroidUtilities.m72dp(2) + m72dp, AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(4) + m72dp2, m72dp3, this.paint);
        canvas.drawRect(AndroidUtilities.m72dp(2) + m72dp, m72dp4 - AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(4) + m72dp2, f7, this.paint);
        canvas.restore();
        this.rect3.set(m72dp - AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(4), m72dp + AndroidUtilities.m72dp(2), f7);
        canvas.drawRoundRect(this.rect3, AndroidUtilities.m72dp(3), AndroidUtilities.m72dp(3), this.paint);
        this.rect3.set(f6 - AndroidUtilities.dpf2(2.0f), AndroidUtilities.m73dp(21.17f), f6 - AndroidUtilities.dpf2(4.0f), AndroidUtilities.m73dp(30.83f));
        canvas.drawRoundRect(this.rect3, AndroidUtilities.m72dp(3), AndroidUtilities.m72dp(3), this.paint3);
        this.rect3.set(AndroidUtilities.m72dp(2) + m72dp2, AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(12) + m72dp2, f7);
        canvas.drawRoundRect(this.rect3, AndroidUtilities.m72dp(3), AndroidUtilities.m72dp(3), this.paint);
        float f8 = m72dp2;
        this.rect3.set(AndroidUtilities.dpf2(6.0f) + f8, AndroidUtilities.m73dp(21.17f), f8 + AndroidUtilities.dpf2(8.0f), AndroidUtilities.m73dp(30.83f));
        canvas.drawRoundRect(this.rect3, AndroidUtilities.m72dp(3), AndroidUtilities.m72dp(3), this.paint3);
        float m72dp7 = AndroidUtilities.m72dp(18) + (f * this.playProgress);
        this.rect3.set(m72dp7 - AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2) + m72dp7, AndroidUtilities.m72dp(50));
        canvas.drawRoundRect(this.rect3, AndroidUtilities.m72dp(1), AndroidUtilities.m72dp(1), this.paint2);
        this.rect3.set(m72dp7 - AndroidUtilities.dpf2(1.5f), AndroidUtilities.m72dp(2), m72dp7 + AndroidUtilities.dpf2(1.5f), AndroidUtilities.m72dp(50));
        canvas.drawRoundRect(this.rect3, AndroidUtilities.m72dp(1), AndroidUtilities.m72dp(1), this.paint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.VideoTimelinePlayView$BitmapFrame */
    /* loaded from: classes7.dex */
    public static class BitmapFrame {
        float alpha;
        Bitmap bitmap;

        public BitmapFrame(Bitmap bitmap) {
            this.bitmap = bitmap;
        }
    }
}
