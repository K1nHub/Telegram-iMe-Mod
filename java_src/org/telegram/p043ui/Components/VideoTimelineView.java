package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLog;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.VideoTimelineView */
/* loaded from: classes6.dex */
public class VideoTimelineView extends View {
    private static final Object sync = new Object();
    private final Paint backgroundGrayPaint;
    private AsyncTask<Integer, Integer, Bitmap> currentTask;
    private VideoTimelineViewDelegate delegate;
    private int frameHeight;
    private long frameTimeOffset;
    private int frameWidth;
    private ArrayList<Bitmap> frames;
    private boolean framesLoaded;
    private int framesToLoad;
    private boolean isRoundFrames;
    private ArrayList<Bitmap> keyframes;
    private float maxProgressDiff;
    private MediaMetadataRetriever mediaMetadataRetriever;
    private float minProgressDiff;
    private final Paint paint2;
    Path path;
    private float pressDx;
    private boolean pressedLeft;
    private boolean pressedRight;
    private float progressLeft;
    private float progressRight;
    private Rect rect1;
    private Rect rect2;
    private Bitmap roundCornerBitmap;
    private int roundCornersSize;
    Paint thumbPaint;
    private TimeHintView timeHintView;
    boolean useClip;
    private long videoLength;

    /* renamed from: org.telegram.ui.Components.VideoTimelineView$VideoTimelineViewDelegate */
    /* loaded from: classes6.dex */
    public interface VideoTimelineViewDelegate {
        void didStartDragging();

        void didStopDragging();

        void onLeftProgressChanged(float f);

        void onRightProgressChanged(float f);
    }

    public void setKeyframes(ArrayList<Bitmap> arrayList) {
        this.keyframes.clear();
        this.keyframes.addAll(arrayList);
    }

    public VideoTimelineView(Context context) {
        super(context);
        this.progressRight = 1.0f;
        Paint paint = new Paint();
        this.paint2 = paint;
        this.backgroundGrayPaint = new Paint();
        this.frames = new ArrayList<>();
        this.maxProgressDiff = 1.0f;
        this.minProgressDiff = BitmapDescriptorFactory.HUE_RED;
        this.keyframes = new ArrayList<>();
        this.thumbPaint = new Paint(1);
        paint.setColor(2130706432);
        this.thumbPaint.setColor(-1);
        this.thumbPaint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
        this.thumbPaint.setStyle(Paint.Style.STROKE);
        this.thumbPaint.setStrokeCap(Paint.Cap.ROUND);
        updateColors();
    }

    public void updateColors() {
        this.backgroundGrayPaint.setColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.roundCornersSize = 0;
        TimeHintView timeHintView = this.timeHintView;
        if (timeHintView != null) {
            timeHintView.updateColors();
        }
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

    public void setMaxProgressDiff(float f) {
        this.maxProgressDiff = f;
        float f2 = this.progressRight;
        float f3 = this.progressLeft;
        if (f2 - f3 > f) {
            this.progressRight = f3 + f;
            invalidate();
        }
    }

    public void setRoundFrames(boolean z) {
        this.isRoundFrames = z;
        if (z) {
            this.rect1 = new Rect(AndroidUtilities.m107dp(14), AndroidUtilities.m107dp(14), AndroidUtilities.m107dp(42), AndroidUtilities.m107dp(42));
            this.rect2 = new Rect();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int measuredWidth = getMeasuredWidth() - AndroidUtilities.m107dp(24);
        float f = measuredWidth;
        int m107dp = ((int) (this.progressLeft * f)) + AndroidUtilities.m107dp(12);
        int m107dp2 = ((int) (this.progressRight * f)) + AndroidUtilities.m107dp(12);
        if (motionEvent.getAction() == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
            if (this.mediaMetadataRetriever == null) {
                return false;
            }
            int m107dp3 = AndroidUtilities.m107dp(24);
            if (m107dp - m107dp3 <= x && x <= m107dp + m107dp3 && y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate = this.delegate;
                if (videoTimelineViewDelegate != null) {
                    videoTimelineViewDelegate.didStartDragging();
                }
                this.pressedLeft = true;
                this.pressDx = (int) (x - m107dp);
                this.timeHintView.setTime((int) ((((float) this.videoLength) / 1000.0f) * this.progressLeft));
                this.timeHintView.setCx(m107dp + getLeft() + AndroidUtilities.m107dp(4));
                this.timeHintView.show(true);
                invalidate();
                return true;
            } else if (m107dp2 - m107dp3 <= x && x <= m107dp3 + m107dp2 && y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate2 = this.delegate;
                if (videoTimelineViewDelegate2 != null) {
                    videoTimelineViewDelegate2.didStartDragging();
                }
                this.pressedRight = true;
                this.pressDx = (int) (x - m107dp2);
                this.timeHintView.setTime((int) ((((float) this.videoLength) / 1000.0f) * this.progressRight));
                this.timeHintView.setCx((m107dp2 + getLeft()) - AndroidUtilities.m107dp(4));
                this.timeHintView.show(true);
                invalidate();
                return true;
            } else {
                this.timeHintView.show(false);
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (this.pressedLeft) {
                VideoTimelineViewDelegate videoTimelineViewDelegate3 = this.delegate;
                if (videoTimelineViewDelegate3 != null) {
                    videoTimelineViewDelegate3.didStopDragging();
                }
                this.pressedLeft = false;
                invalidate();
                this.timeHintView.show(false);
                return true;
            } else if (this.pressedRight) {
                VideoTimelineViewDelegate videoTimelineViewDelegate4 = this.delegate;
                if (videoTimelineViewDelegate4 != null) {
                    videoTimelineViewDelegate4.didStopDragging();
                }
                this.pressedRight = false;
                invalidate();
                this.timeHintView.show(false);
                return true;
            }
        } else if (motionEvent.getAction() == 2) {
            if (this.pressedLeft) {
                int i = (int) (x - this.pressDx);
                if (i < AndroidUtilities.m107dp(16)) {
                    m107dp2 = AndroidUtilities.m107dp(16);
                } else if (i <= m107dp2) {
                    m107dp2 = i;
                }
                float m107dp4 = (m107dp2 - AndroidUtilities.m107dp(16)) / f;
                this.progressLeft = m107dp4;
                float f2 = this.progressRight;
                float f3 = this.maxProgressDiff;
                if (f2 - m107dp4 > f3) {
                    this.progressRight = m107dp4 + f3;
                } else {
                    float f4 = this.minProgressDiff;
                    if (f4 != BitmapDescriptorFactory.HUE_RED && f2 - m107dp4 < f4) {
                        float f5 = f2 - f4;
                        this.progressLeft = f5;
                        if (f5 < BitmapDescriptorFactory.HUE_RED) {
                            this.progressLeft = BitmapDescriptorFactory.HUE_RED;
                        }
                    }
                }
                this.timeHintView.setCx((((f * this.progressLeft) + AndroidUtilities.dpf2(12.0f)) + getLeft()) - AndroidUtilities.m107dp(4));
                this.timeHintView.setTime((int) ((((float) this.videoLength) / 1000.0f) * this.progressLeft));
                this.timeHintView.show(true);
                VideoTimelineViewDelegate videoTimelineViewDelegate5 = this.delegate;
                if (videoTimelineViewDelegate5 != null) {
                    videoTimelineViewDelegate5.onLeftProgressChanged(this.progressLeft);
                }
                invalidate();
                return true;
            } else if (this.pressedRight) {
                int i2 = (int) (x - this.pressDx);
                if (i2 >= m107dp) {
                    m107dp = i2 > AndroidUtilities.m107dp(16) + measuredWidth ? measuredWidth + AndroidUtilities.m107dp(16) : i2;
                }
                float m107dp5 = (m107dp - AndroidUtilities.m107dp(16)) / f;
                this.progressRight = m107dp5;
                float f6 = this.progressLeft;
                float f7 = this.maxProgressDiff;
                if (m107dp5 - f6 > f7) {
                    this.progressLeft = m107dp5 - f7;
                } else {
                    float f8 = this.minProgressDiff;
                    if (f8 != BitmapDescriptorFactory.HUE_RED && m107dp5 - f6 < f8) {
                        float f9 = f6 + f8;
                        this.progressRight = f9;
                        if (f9 > 1.0f) {
                            this.progressRight = 1.0f;
                        }
                    }
                }
                this.timeHintView.setCx((f * this.progressRight) + AndroidUtilities.dpf2(12.0f) + getLeft() + AndroidUtilities.m107dp(4));
                this.timeHintView.show(true);
                this.timeHintView.setTime((int) ((((float) this.videoLength) / 1000.0f) * this.progressRight));
                VideoTimelineViewDelegate videoTimelineViewDelegate6 = this.delegate;
                if (videoTimelineViewDelegate6 != null) {
                    videoTimelineViewDelegate6.onRightProgressChanged(this.progressRight);
                }
                invalidate();
                return true;
            }
        }
        return false;
    }

    public void setVideoPath(String str) {
        destroy(false);
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        this.mediaMetadataRetriever = mediaMetadataRetriever;
        this.progressLeft = BitmapDescriptorFactory.HUE_RED;
        this.progressRight = 1.0f;
        try {
            mediaMetadataRetriever.setDataSource(str);
            this.videoLength = Long.parseLong(this.mediaMetadataRetriever.extractMetadata(9));
        } catch (Exception e) {
            FileLog.m102e(e);
        }
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
            if (this.isRoundFrames) {
                int m107dp = AndroidUtilities.m107dp(56);
                this.frameWidth = m107dp;
                this.frameHeight = m107dp;
                this.framesToLoad = Math.max(1, (int) Math.ceil((getMeasuredWidth() - AndroidUtilities.m107dp(16)) / (this.frameHeight / 2.0f)));
            } else {
                this.frameHeight = AndroidUtilities.m107dp(40);
                this.framesToLoad = Math.max(1, (getMeasuredWidth() - AndroidUtilities.m107dp(16)) / this.frameHeight);
                this.frameWidth = (int) Math.ceil((getMeasuredWidth() - AndroidUtilities.m107dp(16)) / this.framesToLoad);
            }
            this.frameTimeOffset = this.videoLength / this.framesToLoad;
            if (!this.keyframes.isEmpty()) {
                float size = this.keyframes.size() / this.framesToLoad;
                float f = BitmapDescriptorFactory.HUE_RED;
                for (int i2 = 0; i2 < this.framesToLoad; i2++) {
                    this.frames.add(this.keyframes.get((int) f));
                    f += size;
                }
                return;
            }
        }
        this.framesLoaded = false;
        AsyncTask<Integer, Integer, Bitmap> asyncTask = new AsyncTask<Integer, Integer, Bitmap>() { // from class: org.telegram.ui.Components.VideoTimelineView.1
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
                    frameAtTime = VideoTimelineView.this.mediaMetadataRetriever.getFrameAtTime(VideoTimelineView.this.frameTimeOffset * this.frameNum * 1000, 2);
                } catch (Exception e) {
                    e = e;
                }
                try {
                    if (isCancelled()) {
                        return null;
                    }
                    if (frameAtTime != null) {
                        Bitmap createBitmap = Bitmap.createBitmap(VideoTimelineView.this.frameWidth, VideoTimelineView.this.frameHeight, frameAtTime.getConfig());
                        Canvas canvas = new Canvas(createBitmap);
                        float max = Math.max(VideoTimelineView.this.frameWidth / frameAtTime.getWidth(), VideoTimelineView.this.frameHeight / frameAtTime.getHeight());
                        int width = (int) (frameAtTime.getWidth() * max);
                        int height = (int) (frameAtTime.getHeight() * max);
                        canvas.drawBitmap(frameAtTime, new Rect(0, 0, frameAtTime.getWidth(), frameAtTime.getHeight()), new Rect((VideoTimelineView.this.frameWidth - width) / 2, (VideoTimelineView.this.frameHeight - height) / 2, width, height), (Paint) null);
                        frameAtTime.recycle();
                        return createBitmap;
                    }
                    return frameAtTime;
                } catch (Exception e2) {
                    e = e2;
                    bitmap = frameAtTime;
                    FileLog.m102e(e);
                    return bitmap;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                if (isCancelled()) {
                    return;
                }
                VideoTimelineView.this.frames.add(bitmap);
                VideoTimelineView.this.invalidate();
                if (this.frameNum < VideoTimelineView.this.framesToLoad) {
                    VideoTimelineView.this.reloadFrames(this.frameNum + 1);
                } else {
                    VideoTimelineView.this.framesLoaded = true;
                }
            }
        };
        this.currentTask = asyncTask;
        asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Integer.valueOf(i), null, null);
    }

    public void destroy() {
        destroy(true);
    }

    public void destroy(boolean z) {
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
        if (z) {
            int i = 0;
            if (!this.keyframes.isEmpty()) {
                while (i < this.keyframes.size()) {
                    Bitmap bitmap = this.keyframes.get(i);
                    if (bitmap != null) {
                        bitmap.recycle();
                    }
                    i++;
                }
            } else {
                while (i < this.frames.size()) {
                    Bitmap bitmap2 = this.frames.get(i);
                    if (bitmap2 != null) {
                        bitmap2.recycle();
                    }
                    i++;
                }
            }
        }
        this.keyframes.clear();
        this.frames.clear();
        AsyncTask<Integer, Integer, Bitmap> asyncTask = this.currentTask;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.currentTask = null;
        }
    }

    public void clearFrames() {
        if (this.keyframes.isEmpty()) {
            for (int i = 0; i < this.frames.size(); i++) {
                Bitmap bitmap = this.frames.get(i);
                if (bitmap != null) {
                    bitmap.recycle();
                }
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
        if (this.useClip) {
            if (this.path == null) {
                this.path = new Path();
            }
            this.path.rewind();
            int measuredHeight = (getMeasuredHeight() - AndroidUtilities.m107dp(32)) >> 1;
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(BitmapDescriptorFactory.HUE_RED, measuredHeight, getMeasuredWidth(), getMeasuredHeight() - measuredHeight);
            this.path.addRoundRect(rectF, AndroidUtilities.m107dp(7), AndroidUtilities.m107dp(7), Path.Direction.CCW);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.useClip) {
            canvas.save();
            Path path = this.path;
            if (path != null) {
                canvas.clipPath(path);
            }
        }
        float measuredWidth = getMeasuredWidth() - AndroidUtilities.m107dp(24);
        int m107dp = ((int) (this.progressLeft * measuredWidth)) + AndroidUtilities.m107dp(12);
        int m107dp2 = ((int) (measuredWidth * this.progressRight)) + AndroidUtilities.m107dp(12);
        int measuredHeight = (getMeasuredHeight() - AndroidUtilities.m107dp(32)) >> 1;
        if (this.frames.isEmpty() && this.currentTask == null) {
            reloadFrames(0);
        }
        if (!this.frames.isEmpty()) {
            if (!this.framesLoaded) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, measuredHeight, getMeasuredWidth(), getMeasuredHeight() - measuredHeight, this.backgroundGrayPaint);
            }
            int i = 0;
            for (int i2 = 0; i2 < this.frames.size(); i2++) {
                Bitmap bitmap = this.frames.get(i2);
                if (bitmap != null && !bitmap.isRecycled()) {
                    boolean z = this.isRoundFrames;
                    int i3 = this.frameWidth;
                    if (z) {
                        i3 /= 2;
                    }
                    int i4 = i3 * i;
                    if (z) {
                        this.rect2.set(i4, measuredHeight, AndroidUtilities.m107dp(28) + i4, AndroidUtilities.m107dp(32) + measuredHeight);
                        canvas.drawBitmap(bitmap, this.rect1, this.rect2, (Paint) null);
                    } else {
                        canvas.drawBitmap(bitmap, i4, measuredHeight, (Paint) null);
                    }
                }
                i++;
            }
            float f = measuredHeight;
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f, m107dp, getMeasuredHeight() - measuredHeight, this.paint2);
            canvas.drawRect(m107dp2, f, getMeasuredWidth(), getMeasuredHeight() - measuredHeight, this.paint2);
            canvas.drawLine(m107dp - AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(10) + measuredHeight, m107dp - AndroidUtilities.m107dp(4), (getMeasuredHeight() - AndroidUtilities.m107dp(10)) - measuredHeight, this.thumbPaint);
            canvas.drawLine(AndroidUtilities.m107dp(4) + m107dp2, AndroidUtilities.m107dp(10) + measuredHeight, m107dp2 + AndroidUtilities.m107dp(4), (getMeasuredHeight() - AndroidUtilities.m107dp(10)) - measuredHeight, this.thumbPaint);
            if (this.useClip) {
                canvas.restore();
            } else {
                drawCorners(canvas, getMeasuredHeight() - (measuredHeight * 2), getMeasuredWidth(), 0, measuredHeight);
            }
        } else if (this.useClip) {
            canvas.restore();
        }
    }

    private void drawCorners(Canvas canvas, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (AndroidUtilities.m107dp(6) != this.roundCornersSize) {
            this.roundCornersSize = AndroidUtilities.m107dp(6);
            this.roundCornerBitmap = Bitmap.createBitmap(AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(this.roundCornerBitmap);
            Paint paint = new Paint(1);
            paint.setColor(0);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            canvas2.drawColor(Theme.getColor(Theme.key_chat_messagePanelBackground));
            int i7 = this.roundCornersSize;
            canvas2.drawCircle(i7, i7, i7, paint);
        }
        int i8 = this.roundCornersSize >> 1;
        canvas.save();
        float f = i3;
        float f2 = i4;
        canvas.drawBitmap(this.roundCornerBitmap, f, f2, (Paint) null);
        float f3 = (i + i4) - i8;
        canvas.rotate(-90.0f, i3 + i8, f3);
        canvas.drawBitmap(this.roundCornerBitmap, f, i5 - this.roundCornersSize, (Paint) null);
        canvas.restore();
        canvas.save();
        float f4 = (i3 + i2) - i8;
        canvas.rotate(180.0f, f4, f3);
        Bitmap bitmap = this.roundCornerBitmap;
        int i9 = this.roundCornersSize;
        canvas.drawBitmap(bitmap, i6 - i9, i5 - i9, (Paint) null);
        canvas.restore();
        canvas.save();
        canvas.rotate(90.0f, f4, i4 + i8);
        canvas.drawBitmap(this.roundCornerBitmap, i6 - this.roundCornersSize, f2, (Paint) null);
        canvas.restore();
    }

    public void setTimeHintView(TimeHintView timeHintView) {
        this.timeHintView = timeHintView;
    }

    /* renamed from: org.telegram.ui.Components.VideoTimelineView$TimeHintView */
    /* loaded from: classes6.dex */
    public static class TimeHintView extends View {

        /* renamed from: cx */
        private float f1980cx;
        private long lastTime;
        private float scale;
        private boolean show;
        private Drawable tooltipBackground;
        private Drawable tooltipBackgroundArrow;
        private StaticLayout tooltipLayout;
        private TextPaint tooltipPaint;

        public TimeHintView(Context context) {
            super(context);
            TextPaint textPaint = new TextPaint(1);
            this.tooltipPaint = textPaint;
            this.lastTime = -1L;
            textPaint.setTextSize(AndroidUtilities.m107dp(14));
            this.tooltipBackgroundArrow = ContextCompat.getDrawable(context, C3632R.C3634drawable.tooltip_arrow);
            this.tooltipBackground = Theme.createRoundRectDrawable(AndroidUtilities.m107dp(5), Theme.getColor(Theme.key_chat_gifSaveHintBackground));
            updateColors();
            setTime(0);
        }

        public void setTime(int i) {
            long j = i;
            if (j != this.lastTime) {
                this.lastTime = j;
                String formatShortDuration = AndroidUtilities.formatShortDuration(i);
                TextPaint textPaint = this.tooltipPaint;
                this.tooltipLayout = new StaticLayout(formatShortDuration, textPaint, (int) textPaint.measureText(formatShortDuration), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.tooltipLayout.getHeight() + AndroidUtilities.m107dp(4) + this.tooltipBackgroundArrow.getIntrinsicHeight(), 1073741824));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.tooltipLayout == null) {
                return;
            }
            if (this.show) {
                float f = this.scale;
                if (f != 1.0f) {
                    float f2 = f + 0.12f;
                    this.scale = f2;
                    if (f2 > 1.0f) {
                        this.scale = 1.0f;
                    }
                    invalidate();
                }
            } else {
                float f3 = this.scale;
                if (f3 != BitmapDescriptorFactory.HUE_RED) {
                    float f4 = f3 - 0.12f;
                    this.scale = f4;
                    if (f4 < BitmapDescriptorFactory.HUE_RED) {
                        this.scale = BitmapDescriptorFactory.HUE_RED;
                    }
                    invalidate();
                }
                if (this.scale == BitmapDescriptorFactory.HUE_RED) {
                    return;
                }
            }
            float f5 = this.scale;
            int i = (int) ((f5 > 0.5f ? 1.0f : f5 / 0.5f) * 255.0f);
            canvas.save();
            float f6 = this.scale;
            canvas.scale(f6, f6, this.f1980cx, getMeasuredHeight());
            canvas.translate(this.f1980cx - (this.tooltipLayout.getWidth() / 2.0f), BitmapDescriptorFactory.HUE_RED);
            this.tooltipBackground.setBounds(-AndroidUtilities.m107dp(8), 0, this.tooltipLayout.getWidth() + AndroidUtilities.m107dp(8), (int) (this.tooltipLayout.getHeight() + AndroidUtilities.dpf2(4.0f)));
            this.tooltipBackgroundArrow.setBounds((this.tooltipLayout.getWidth() / 2) - (this.tooltipBackgroundArrow.getIntrinsicWidth() / 2), (int) (this.tooltipLayout.getHeight() + AndroidUtilities.dpf2(4.0f)), (this.tooltipLayout.getWidth() / 2) + (this.tooltipBackgroundArrow.getIntrinsicWidth() / 2), ((int) (this.tooltipLayout.getHeight() + AndroidUtilities.dpf2(4.0f))) + this.tooltipBackgroundArrow.getIntrinsicHeight());
            this.tooltipBackgroundArrow.setAlpha(i);
            this.tooltipBackground.setAlpha(i);
            this.tooltipPaint.setAlpha(i);
            this.tooltipBackgroundArrow.draw(canvas);
            this.tooltipBackground.draw(canvas);
            canvas.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dpf2(1.0f));
            this.tooltipLayout.draw(canvas);
            canvas.restore();
        }

        public void updateColors() {
            this.tooltipPaint.setColor(Theme.getColor(Theme.key_chat_gifSaveHintText));
            int m107dp = AndroidUtilities.m107dp(5);
            int i = Theme.key_chat_gifSaveHintBackground;
            this.tooltipBackground = Theme.createRoundRectDrawable(m107dp, Theme.getColor(i));
            this.tooltipBackgroundArrow.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
        }

        public void setCx(float f) {
            this.f1980cx = f;
            invalidate();
        }

        public void show(boolean z) {
            this.show = z;
            invalidate();
        }
    }
}
