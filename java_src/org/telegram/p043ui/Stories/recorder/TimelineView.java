package org.telegram.p043ui.Stories.recorder;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.BlurringShader;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.ItemOptions;
import org.telegram.p043ui.Components.Scroller;
import org.telegram.p043ui.Stories.recorder.TimelineView;
/* renamed from: org.telegram.ui.Stories.recorder.TimelineView */
/* loaded from: classes6.dex */
public class TimelineView extends View {
    private Runnable askExactSeek;
    private StaticLayout audioAuthor;
    private float audioAuthorLeft;
    private final TextPaint audioAuthorPaint;
    private float audioAuthorWidth;
    private final BlurringShader.StoryBlurDrawer audioBlur;
    private final RectF audioBounds;
    private final Path audioClipPath;
    private final Paint audioDotPaint;
    private long audioDuration;
    private final Drawable audioIcon;
    private float audioLeft;
    private long audioOffset;
    private String audioPath;
    private float audioRight;
    private boolean audioSelected;
    private final AnimatedFloat audioSelectedT;
    private final AnimatedFloat audioT;
    private StaticLayout audioTitle;
    private float audioTitleLeft;
    private final TextPaint audioTitlePaint;
    private float audioTitleWidth;
    private float audioVolume;
    private final BlurringShader.StoryBlurDrawer audioWaveformBlur;
    private final BlurringShader.StoryBlurDrawer backgroundBlur;
    private TimelineDelegate delegate;
    private boolean dragged;
    private boolean draggingProgress;
    private final LinearGradient ellipsizeGradient;
    private final Matrix ellipsizeMatrix;
    private final Paint ellipsizePaint;

    /* renamed from: h */
    private int f2019h;
    private boolean hadDragChange;
    private boolean hasAudio;
    private boolean hasVideo;
    private long lastTime;
    private float lastX;
    private final AnimatedFloat loopProgress;
    private long loopProgressFrom;
    private final Runnable onLongPress;

    /* renamed from: ph */
    private int f2020ph;
    private int pressHandle;
    private long pressTime;
    private boolean pressVideo;
    private long progress;
    private final Paint progressShadowPaint;
    private final Paint progressWhitePaint;

    /* renamed from: px */
    private int f2021px;

    /* renamed from: py */
    private int f2022py;
    private final Paint regionCutPaint;
    private final Paint regionHandlePaint;
    private final Paint regionPaint;
    private final Theme.ResourcesProvider resourcesProvider;
    private long scroll;
    private final Scroller scroller;
    private boolean scrolling;
    private boolean scrollingVideo;
    private final Path selectedVideoClipPath;
    final float[] selectedVideoRadii;

    /* renamed from: sw */
    private int f2023sw;
    private VideoThumbsLoader thumbs;
    private VelocityTracker velocityTracker;
    private final RectF videoBounds;
    private final Path videoClipPath;
    private long videoDuration;
    private final Paint videoFramePaint;
    private float videoLeft;
    private String videoPath;
    private float videoRight;

    /* renamed from: w */
    private int f2024w;
    private int wasScrollX;
    private AudioWaveformLoader waveform;
    private boolean waveformIsLoaded;
    private final AnimatedFloat waveformLoaded;
    private final AnimatedFloat waveformMax;
    private final Paint waveformPaint;
    private final WaveformPath waveformPath;
    final float[] waveformRadii;

    /* renamed from: org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate */
    /* loaded from: classes6.dex */
    public interface TimelineDelegate {
        void onAudioLeftChange(float f);

        void onAudioOffsetChange(long j);

        void onAudioRemove();

        void onAudioRightChange(float f);

        void onAudioVolumeChange(float f);

        void onProgressChange(long j, boolean z);

        void onProgressDragChange(boolean z);

        void onVideoLeftChange(float f);

        void onVideoRightChange(float f);
    }

    private long getBaseDuration() {
        if (this.hasVideo) {
            return this.videoDuration;
        }
        if (this.hasAudio) {
            return this.audioDuration;
        }
        return Math.max(1L, this.audioDuration);
    }

    public TimelineView(Context context, final ViewGroup viewGroup, final View view, final Theme.ResourcesProvider resourcesProvider, final BlurringShader.BlurManager blurManager) {
        super(context);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.audioT = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.audioSelectedT = new AnimatedFloat(this, 360L, cubicBezierInterpolator);
        this.waveformLoaded = new AnimatedFloat(this, 0L, 600L, cubicBezierInterpolator);
        this.waveformMax = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.videoBounds = new RectF();
        this.videoFramePaint = new Paint(3);
        this.videoClipPath = new Path();
        this.selectedVideoClipPath = new Path();
        Paint paint = new Paint(1);
        this.regionPaint = paint;
        Paint paint2 = new Paint(1);
        this.regionCutPaint = paint2;
        Paint paint3 = new Paint(1);
        this.regionHandlePaint = paint3;
        Paint paint4 = new Paint(1);
        this.progressShadowPaint = paint4;
        Paint paint5 = new Paint(1);
        this.progressWhitePaint = paint5;
        this.audioBounds = new RectF();
        this.audioClipPath = new Path();
        Paint paint6 = new Paint(1);
        this.waveformPaint = paint6;
        this.waveformPath = new WaveformPath();
        Paint paint7 = new Paint(1);
        this.audioDotPaint = paint7;
        TextPaint textPaint = new TextPaint(1);
        this.audioAuthorPaint = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.audioTitlePaint = textPaint2;
        LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 16.0f, (float) BitmapDescriptorFactory.HUE_RED, new int[]{16777215, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
        this.ellipsizeGradient = linearGradient;
        this.ellipsizeMatrix = new Matrix();
        Paint paint8 = new Paint(1);
        this.ellipsizePaint = paint8;
        this.scroller = new Scroller(getContext());
        this.loopProgress = new AnimatedFloat((float) BitmapDescriptorFactory.HUE_RED, this, 0L, 340L, cubicBezierInterpolator);
        this.loopProgressFrom = -1L;
        this.pressHandle = -1;
        this.pressVideo = true;
        this.scrollingVideo = true;
        this.scrolling = false;
        this.selectedVideoRadii = new float[8];
        this.waveformRadii = new float[8];
        this.resourcesProvider = resourcesProvider;
        paint7.setColor(Integer.MAX_VALUE);
        textPaint.setTextSize(AndroidUtilities.m104dp(12));
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textPaint.setColor(-1);
        textPaint2.setTextSize(AndroidUtilities.m104dp(12));
        textPaint2.setColor(-1);
        paint6.setColor(1090519039);
        paint8.setShader(linearGradient);
        paint8.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        paint.setColor(-1);
        paint.setShadowLayer(AndroidUtilities.m104dp(1), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(1), 436207616);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        paint3.setColor(-16777216);
        paint5.setColor(-1);
        paint4.setColor(637534208);
        Drawable mutate = getContext().getResources().getDrawable(C3632R.C3634drawable.filled_widget_music).mutate();
        this.audioIcon = mutate;
        mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        this.backgroundBlur = new BlurringShader.StoryBlurDrawer(blurManager, this, 0);
        this.audioBlur = new BlurringShader.StoryBlurDrawer(blurManager, this, 3);
        this.audioWaveformBlur = new BlurringShader.StoryBlurDrawer(blurManager, this, 4);
        this.onLongPress = new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                TimelineView.this.lambda$new$2(viewGroup, resourcesProvider, blurManager, view);
            }
        };
    }

    public /* synthetic */ void lambda$new$2(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, BlurringShader.BlurManager blurManager, View view) {
        int i;
        if (this.pressVideo || !this.hasAudio) {
            return;
        }
        SliderView onValueChange = new SliderView(getContext(), 0).setValue(this.audioVolume).setMinMax(BitmapDescriptorFactory.HUE_RED, 1.5f).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                TimelineView.this.lambda$new$0((Float) obj);
            }
        });
        long min = Math.min(getBaseDuration(), 120000L);
        int i2 = this.f2024w;
        int i3 = this.f2021px;
        int i4 = this.f2020ph;
        float min2 = Math.min((i2 - i3) - i4, i3 + i4 + (((((float) (this.audioOffset - this.scroll)) + (AndroidUtilities.lerp(this.audioRight, 1.0f, this.audioSelectedT.get()) * ((float) this.audioDuration))) / ((float) min)) * this.f2023sw));
        ItemOptions forceTop = ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(onValueChange).addSpaceGap().add(C3632R.C3634drawable.msg_delete, LocaleController.getString(C3632R.string.StoryAudioRemove), new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TimelineView.this.lambda$new$1();
            }
        }).setGravity(5).forceTop(true);
        float m104dp = (-(this.f2024w - min2)) + AndroidUtilities.m104dp(18);
        int m104dp2 = AndroidUtilities.m104dp(4);
        if (this.hasVideo) {
            i = 0;
        } else {
            i = AndroidUtilities.m104dp(this.audioSelected ? 35 : 40);
        }
        forceTop.translate(m104dp, m104dp2 + i).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
        try {
            performHapticFeedback(0, 1);
        } catch (Exception unused) {
        }
    }

    public /* synthetic */ void lambda$new$0(Float f) {
        this.audioVolume = f.floatValue();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onAudioVolumeChange(f.floatValue());
        }
    }

    public /* synthetic */ void lambda$new$1() {
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onAudioRemove();
        }
    }

    public void setDelegate(TimelineDelegate timelineDelegate) {
        this.delegate = timelineDelegate;
    }

    public void setVideo(String str, long j) {
        if (TextUtils.equals(this.videoPath, str)) {
            return;
        }
        VideoThumbsLoader videoThumbsLoader = this.thumbs;
        if (videoThumbsLoader != null) {
            videoThumbsLoader.destroy();
            this.thumbs = null;
        }
        if (str != null) {
            this.scroll = 0L;
            this.videoPath = str;
            this.videoDuration = j;
            setupVideoThumbs();
        } else {
            this.videoPath = null;
            this.videoDuration = 1L;
            this.scroll = 0L;
        }
        this.hasVideo = this.videoPath != null;
        this.progress = 0L;
        invalidate();
    }

    private void setupVideoThumbs() {
        if (getMeasuredWidth() <= 0 || this.thumbs != null) {
            return;
        }
        VideoThumbsLoader videoThumbsLoader = new VideoThumbsLoader(this.videoPath, (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), AndroidUtilities.m104dp(38));
        this.thumbs = videoThumbsLoader;
        if (videoThumbsLoader.getDuration() > 0) {
            this.videoDuration = this.thumbs.getDuration();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0022, code lost:
        if (((float) (r4 + 240)) >= (((float) r6) * r10.videoRight)) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0042, code lost:
        if (((float) (r4 + 240)) >= (((float) r6) * r10.audioRight)) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0044, code lost:
        r10.loopProgressFrom = -1;
        r10.loopProgress.set(1.0f, true);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setProgress(long r11) {
        /*
            r10 = this;
            boolean r0 = r10.hasVideo
            r1 = 240(0xf0, double:1.186E-321)
            r3 = 1131413504(0x43700000, float:240.0)
            if (r0 == 0) goto L24
            long r4 = r10.progress
            int r0 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r0 >= 0) goto L24
            float r0 = (float) r11
            long r6 = r10.videoDuration
            float r8 = (float) r6
            float r9 = r10.videoLeft
            float r8 = r8 * r9
            float r8 = r8 + r3
            int r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r0 > 0) goto L24
            long r4 = r4 + r1
            float r0 = (float) r4
            float r4 = (float) r6
            float r5 = r10.videoRight
            float r4 = r4 * r5
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 >= 0) goto L44
        L24:
            boolean r0 = r10.hasAudio
            if (r0 == 0) goto L50
            long r4 = r10.progress
            int r0 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r0 >= 0) goto L50
            float r0 = (float) r11
            long r6 = r10.audioDuration
            float r8 = (float) r6
            float r9 = r10.audioLeft
            float r8 = r8 * r9
            float r8 = r8 + r3
            int r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r0 > 0) goto L50
            long r4 = r4 + r1
            float r0 = (float) r4
            float r1 = (float) r6
            float r2 = r10.audioRight
            float r1 = r1 * r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L50
        L44:
            r0 = -1
            r10.loopProgressFrom = r0
            org.telegram.ui.Components.AnimatedFloat r0 = r10.loopProgress
            r1 = 1065353216(0x3f800000, float:1.0)
            r2 = 1
            r0.set(r1, r2)
        L50:
            r10.progress = r11
            r10.invalidate()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.TimelineView.setProgress(long):void");
    }

    public void setVideoLeft(float f) {
        this.videoLeft = f;
        invalidate();
    }

    public void setVideoRight(float f) {
        this.videoRight = f;
        invalidate();
    }

    public void setAudio(String str, String str2, String str3, long j, long j2, float f, float f2, float f3, boolean z) {
        String str4;
        String str5;
        boolean equals = TextUtils.equals(this.audioPath, str);
        float f4 = BitmapDescriptorFactory.HUE_RED;
        if (!equals) {
            AudioWaveformLoader audioWaveformLoader = this.waveform;
            if (audioWaveformLoader != null) {
                audioWaveformLoader.destroy();
                this.waveform = null;
                this.waveformIsLoaded = false;
                this.waveformLoaded.set(BitmapDescriptorFactory.HUE_RED, true);
            }
            this.audioPath = str;
            setupAudioWaveform();
        }
        this.audioPath = str;
        boolean z2 = !TextUtils.isEmpty(str);
        this.hasAudio = z2;
        if (z2) {
            str4 = str2;
            str5 = str3;
        } else {
            this.audioSelected = false;
            str4 = null;
            str5 = null;
        }
        if (TextUtils.isEmpty(str4)) {
            str4 = null;
        }
        if (TextUtils.isEmpty(str5)) {
            str5 = null;
        }
        if (this.hasAudio) {
            this.audioDuration = j;
            this.audioOffset = j2 - (((float) j) * f);
            this.audioLeft = f;
            this.audioRight = f2;
            this.audioVolume = f3;
            if (str4 != null) {
                StaticLayout staticLayout = new StaticLayout(str4, this.audioAuthorPaint, 99999, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.audioAuthor = staticLayout;
                this.audioAuthorWidth = staticLayout.getLineCount() > 0 ? this.audioAuthor.getLineWidth(0) : 0.0f;
                this.audioAuthorLeft = this.audioAuthor.getLineCount() > 0 ? this.audioAuthor.getLineLeft(0) : 0.0f;
            } else {
                this.audioAuthorWidth = BitmapDescriptorFactory.HUE_RED;
                this.audioAuthor = null;
            }
            if (str5 != null) {
                StaticLayout staticLayout2 = new StaticLayout(str5, this.audioTitlePaint, 99999, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.audioTitle = staticLayout2;
                this.audioTitleWidth = staticLayout2.getLineCount() > 0 ? this.audioTitle.getLineWidth(0) : 0.0f;
                if (this.audioTitle.getLineCount() > 0) {
                    f4 = this.audioTitle.getLineLeft(0);
                }
                this.audioTitleLeft = f4;
            } else {
                this.audioTitleWidth = BitmapDescriptorFactory.HUE_RED;
                this.audioTitle = null;
            }
        }
        if (!z) {
            this.audioT.set(this.hasAudio, true);
        }
        invalidate();
    }

    private void setupAudioWaveform() {
        if (getMeasuredWidth() <= 0 || this.waveform != null) {
            return;
        }
        this.waveform = new AudioWaveformLoader(this.audioPath, (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        this.waveformIsLoaded = false;
        this.waveformLoaded.set(BitmapDescriptorFactory.HUE_RED, true);
        this.waveformMax.set(1.0f, true);
    }

    private int detectHandle(MotionEvent motionEvent) {
        int i;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        float min = (float) Math.min(getBaseDuration(), 120000L);
        float clamp = this.f2021px + this.f2020ph + (this.f2023sw * (((float) ((Utilities.clamp(this.progress, getBaseDuration(), 0L) + (!this.hasVideo ? this.audioOffset : 0L)) - this.scroll)) / min));
        if (x < clamp - AndroidUtilities.m104dp(12) || x > clamp + AndroidUtilities.m104dp(12)) {
            boolean z = y > (((float) (this.f2019h - this.f2022py)) - getVideoHeight()) - ((float) AndroidUtilities.m104dp(2));
            if (z) {
                int i2 = this.f2021px;
                int i3 = this.f2020ph;
                float f = this.videoLeft;
                long j = this.videoDuration;
                long j2 = this.scroll;
                int i4 = this.f2023sw;
                float f2 = i2 + i3 + ((((f * ((float) j)) - ((float) j2)) / min) * i4);
                float f3 = i2 + i3 + ((((this.videoRight * ((float) j)) - ((float) j2)) / min) * i4);
                if (x >= f2 - AndroidUtilities.m104dp(15) && x <= AndroidUtilities.m104dp(5) + f2) {
                    return 2;
                }
                if (x >= f3 - AndroidUtilities.m104dp(5) && x <= AndroidUtilities.m104dp(15) + f3) {
                    return 3;
                }
                if (x >= f2 && x <= f3 && (this.videoLeft > 0.01f || this.videoRight < 0.99f)) {
                    return 4;
                }
            } else if (this.hasAudio) {
                int i5 = this.f2021px;
                int i6 = this.f2020ph;
                long j3 = this.audioOffset;
                float f4 = this.audioLeft;
                long j4 = this.audioDuration;
                float f5 = ((float) j3) + (f4 * ((float) j4));
                long j5 = this.scroll;
                int i7 = this.f2023sw;
                float f6 = i5 + i6 + (((f5 - ((float) j5)) / min) * i7);
                float f7 = i5 + i6 + ((((((float) j3) + (this.audioRight * ((float) j4))) - ((float) j5)) / min) * i7);
                if (this.audioSelected || !this.hasVideo) {
                    if (x >= f6 - AndroidUtilities.m104dp(15)) {
                        i = 5;
                        if (x <= AndroidUtilities.m104dp(5) + f6) {
                            return 6;
                        }
                    } else {
                        i = 5;
                    }
                    if (x >= f7 - AndroidUtilities.m104dp(i) && x <= AndroidUtilities.m104dp(15) + f7) {
                        return 7;
                    }
                    if (x >= f6 && x <= f7) {
                        Math.max(0L, this.scroll - this.audioOffset);
                        Math.min(1.0f, Math.max((float) BitmapDescriptorFactory.HUE_RED, ((float) (this.scroll - this.audioOffset)) + ((float) Math.min(120000L, getBaseDuration()))) / ((float) this.audioDuration));
                        return !this.hasVideo ? 8 : 5;
                    }
                    int i8 = this.f2021px;
                    int i9 = this.f2020ph;
                    long j6 = this.audioOffset;
                    long j7 = this.scroll;
                    int i10 = this.f2023sw;
                    f7 = i8 + i9 + ((((float) ((j6 + this.audioDuration) - j7)) / min) * i10);
                    f6 = i8 + i9 + ((((float) (j6 - j7)) / min) * i10);
                }
                if (x >= f6 && x <= f7) {
                    return 5;
                }
            }
            return (this.videoDuration <= 120000 || !z) ? -1 : 1;
        }
        return 0;
    }

    public boolean onBackPressed() {
        if (this.audioSelected) {
            this.audioSelected = false;
            return true;
        }
        return false;
    }

    public boolean isDragging() {
        return this.dragged;
    }

    private boolean setProgressAt(float f, boolean z) {
        if (this.hasVideo || this.hasAudio) {
            float min = (((f - this.f2021px) - this.f2020ph) / this.f2023sw) * ((float) Math.min(getBaseDuration(), 120000L));
            boolean z2 = this.hasVideo;
            final long clamp = Utilities.clamp(min + ((float) (!z2 ? -this.audioOffset : 0L)) + ((float) this.scroll), (float) (z2 ? this.videoDuration : this.audioDuration), (float) BitmapDescriptorFactory.HUE_RED);
            boolean z3 = this.hasVideo;
            if (z3) {
                float f2 = (float) clamp;
                long j = this.videoDuration;
                if (f2 / ((float) j) < this.videoLeft || f2 / ((float) j) > this.videoRight) {
                    return false;
                }
            }
            if (this.hasAudio && !z3) {
                float f3 = (float) clamp;
                long j2 = this.audioDuration;
                if (f3 / ((float) j2) < this.audioLeft || f3 / ((float) j2) > this.audioRight) {
                    return false;
                }
            }
            this.progress = clamp;
            invalidate();
            TimelineDelegate timelineDelegate = this.delegate;
            if (timelineDelegate != null) {
                timelineDelegate.onProgressChange(clamp, z);
            }
            Runnable runnable = this.askExactSeek;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.askExactSeek = null;
            }
            if (z) {
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TimelineView.this.lambda$setProgressAt$3(clamp);
                    }
                };
                this.askExactSeek = runnable2;
                AndroidUtilities.runOnUIThread(runnable2, 150L);
                return true;
            }
            return true;
        }
        return false;
    }

    public /* synthetic */ void lambda$setProgressAt$3(long j) {
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onProgressChange(j, false);
        }
    }

    private float getVideoHeight() {
        if (this.hasVideo) {
            return AndroidUtilities.lerp(AndroidUtilities.m104dp(28), AndroidUtilities.m104dp(38), 1.0f - this.audioSelectedT.set(this.audioSelected));
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    private float getAudioHeight() {
        return AndroidUtilities.lerp(AndroidUtilities.m104dp(28), AndroidUtilities.m104dp(38), this.audioSelectedT.set(this.audioSelected));
    }

    /* JADX WARN: Removed duplicated region for block: B:518:0x059e  */
    /* JADX WARN: Removed duplicated region for block: B:527:0x05bf  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r30) {
        /*
            Method dump skipped, instructions count: 1484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.TimelineView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private long minAudioSelect() {
        return Math.max(1000.0f, ((float) Math.min(this.hasVideo ? this.videoDuration : this.audioDuration, 59000L)) * 0.15f);
    }

    private void moveAudioOffset(float f) {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        TimelineDelegate timelineDelegate;
        long j6;
        long clamp;
        Math.min(getBaseDuration(), 120000L);
        if (!this.hasVideo) {
            long j7 = this.audioOffset;
            long clamp2 = Utilities.clamp(j7 + f, 0L, -(this.audioDuration - Math.min(getBaseDuration(), 120000L)));
            this.audioOffset = clamp2;
            float f2 = (float) (clamp2 - j7);
            this.audioLeft = Utilities.clamp(this.audioLeft - (f2 / ((float) this.audioDuration)), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            this.audioRight = Utilities.clamp(this.audioRight - (f2 / ((float) this.audioDuration)), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            TimelineDelegate timelineDelegate2 = this.delegate;
            if (timelineDelegate2 != null) {
                timelineDelegate2.onAudioLeftChange(this.audioLeft);
                this.delegate.onAudioRightChange(this.audioRight);
            }
        } else if (this.audioSelected) {
            float f3 = this.videoRight;
            long j8 = this.videoDuration;
            float f4 = this.audioRight;
            long j9 = this.audioDuration;
            long j10 = (((float) j8) * f3) - (((float) j9) * f4);
            float f5 = this.videoLeft;
            float f6 = this.audioLeft;
            long j11 = (((float) j8) * f5) - (((float) j9) * f6);
            float min = Math.min(f4 - f6, ((f3 - f5) * ((float) j8)) / ((float) j9));
            long j12 = this.audioOffset;
            long j13 = f;
            if (j12 + j13 > j10) {
                float clamp3 = Utilities.clamp((((this.videoRight * ((float) this.videoDuration)) - ((float) j12)) - ((float) j13)) / ((float) this.audioDuration), 1.0f, min);
                this.audioRight = clamp3;
                float clamp4 = Utilities.clamp(clamp3 - min, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                this.audioLeft = clamp4;
                float f7 = this.videoRight;
                long j14 = this.videoDuration;
                float f8 = this.audioRight;
                long j15 = this.audioDuration;
                long j16 = (f7 * ((float) j14)) - (f8 * ((float) j15));
                long j17 = (this.videoLeft * ((float) j14)) - (clamp4 * ((float) j15));
                if (j16 < j17) {
                    j4 = j17;
                    j3 = j16;
                } else {
                    j3 = j17;
                    j4 = j16;
                }
                this.audioOffset = Utilities.clamp(this.audioOffset + j13, j4, j3);
                TimelineDelegate timelineDelegate3 = this.delegate;
                if (timelineDelegate3 != null) {
                    timelineDelegate3.onAudioLeftChange(this.audioLeft);
                    this.delegate.onAudioRightChange(this.audioRight);
                }
            } else if (j12 + j13 < j11) {
                float clamp5 = Utilities.clamp((((this.videoLeft * ((float) this.videoDuration)) - ((float) j12)) - ((float) j13)) / ((float) this.audioDuration), 1.0f - min, (float) BitmapDescriptorFactory.HUE_RED);
                this.audioLeft = clamp5;
                float clamp6 = Utilities.clamp(clamp5 + min, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                this.audioRight = clamp6;
                float f9 = this.videoRight;
                long j18 = this.videoDuration;
                long j19 = this.audioDuration;
                long j20 = (f9 * ((float) j18)) - (clamp6 * ((float) j19));
                long j21 = (this.videoLeft * ((float) j18)) - (this.audioLeft * ((float) j19));
                if (j20 < j21) {
                    j2 = j20;
                    j = j21;
                } else {
                    j = j20;
                    j2 = j21;
                }
                this.audioOffset = Utilities.clamp(this.audioOffset + j13, j, j2);
                TimelineDelegate timelineDelegate4 = this.delegate;
                if (timelineDelegate4 != null) {
                    timelineDelegate4.onAudioLeftChange(this.audioLeft);
                    this.delegate.onAudioRightChange(this.audioRight);
                }
            } else {
                this.audioOffset = j12 + j13;
            }
        } else {
            long j22 = this.audioOffset + f;
            long j23 = this.audioDuration;
            this.audioOffset = Utilities.clamp(j22, ((float) getBaseDuration()) - (((float) j23) * this.audioRight), (-this.audioLeft) * ((float) j23));
        }
        invalidate();
        TimelineDelegate timelineDelegate5 = this.delegate;
        if (timelineDelegate5 != null) {
            timelineDelegate5.onAudioOffsetChange(this.audioOffset + (this.audioLeft * ((float) this.audioDuration)));
        }
        boolean z = this.dragged;
        if (!z && (timelineDelegate = this.delegate) != null) {
            timelineDelegate.onProgressDragChange(true);
            if (this.hasVideo) {
                long j24 = this.audioOffset + (this.audioLeft * ((float) this.audioDuration));
                float f10 = this.videoRight;
                long j25 = this.videoDuration;
                clamp = Utilities.clamp(j24, f10 * ((float) j25), this.videoLeft * ((float) j25));
            } else {
                float f11 = this.audioLeft;
                clamp = Utilities.clamp(f11 * ((float) j6), this.audioDuration, 0L);
            }
            if (this.hasVideo && Math.abs(this.progress - clamp) > 400) {
                this.loopProgressFrom = this.progress;
                this.loopProgress.set(1.0f, true);
            }
            TimelineDelegate timelineDelegate6 = this.delegate;
            this.progress = clamp;
            timelineDelegate6.onProgressChange(clamp, false);
        } else if (z || this.scrolling) {
            if (this.hasVideo) {
                long j26 = this.audioOffset + (this.audioLeft * ((float) this.audioDuration));
                float f12 = this.videoRight;
                long j27 = this.videoDuration;
                this.progress = Utilities.clamp(j26, f12 * ((float) j27), this.videoLeft * ((float) j27));
            } else {
                float f13 = this.audioLeft;
                this.progress = Utilities.clamp(f13 * ((float) j5), this.audioDuration, 0L);
            }
            TimelineDelegate timelineDelegate7 = this.delegate;
            if (timelineDelegate7 != null) {
                timelineDelegate7.onProgressChange(this.progress, false);
            }
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.scroller.computeScrollOffset()) {
            int currX = this.scroller.getCurrX();
            long min = Math.min(getBaseDuration(), 120000L);
            if (this.scrollingVideo) {
                this.scroll = Math.max((float) BitmapDescriptorFactory.HUE_RED, (((currX - this.f2021px) - this.f2020ph) / this.f2023sw) * ((float) min));
            } else {
                int i = this.f2021px;
                int i2 = this.f2020ph;
                int i3 = this.f2023sw;
                float f = (float) min;
                moveAudioOffset(((((currX - i) - i2) / i3) * f) - ((((this.wasScrollX - i) - i2) / i3) * f));
            }
            invalidate();
            this.wasScrollX = currX;
        } else if (this.scrolling) {
            this.scrolling = false;
            TimelineDelegate timelineDelegate = this.delegate;
            if (timelineDelegate != null) {
                timelineDelegate.onProgressDragChange(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.recorder.TimelineView$WaveformPath */
    /* loaded from: classes6.dex */
    public class WaveformPath extends Path {
        private float lastAnimatedLoaded;
        private float lastAudioHeight;
        private float lastAudioSelected;
        private float lastBottom;
        private float lastLeft;
        private float lastMaxBar;
        private float lastRight;
        private long lastScrollDuration;
        private float lastStart;
        private int lastWaveformCount;

        WaveformPath() {
            TimelineView.this = r1;
        }

        public void check(float f, float f2, float f3, float f4, float f5, long j, float f6, float f7, float f8) {
            if (TimelineView.this.waveform != null) {
                if (this.lastWaveformCount != TimelineView.this.waveform.getCount() || Math.abs(this.lastAnimatedLoaded - f5) > 0.01f || this.lastScrollDuration != j || Math.abs(this.lastAudioHeight - f6) > 1.0f || Math.abs(this.lastMaxBar - f7) > 0.01f || Math.abs(this.lastAudioSelected - f4) > 0.1f || Math.abs(this.lastBottom - f8) > 1.0f || Math.abs(this.lastStart - f) > 1.0f || Math.abs(this.lastLeft - f2) > 1.0f || Math.abs(this.lastRight - f3) > 1.0f) {
                    this.lastWaveformCount = TimelineView.this.waveform.getCount();
                    this.lastStart = f;
                    this.lastLeft = f2;
                    this.lastRight = f3;
                    this.lastAudioSelected = f4;
                    this.lastAnimatedLoaded = f5;
                    this.lastScrollDuration = j;
                    this.lastMaxBar = f7;
                    this.lastAudioHeight = f6;
                    this.lastBottom = f8;
                    layout(f, f2, f3, f4, f5, j, f7, f6, f8);
                    return;
                }
                return;
            }
            rewind();
        }

        private void layout(float f, float f2, float f3, float f4, float f5, long j, float f6, float f7, float f8) {
            TimelineView.this.waveformPath.rewind();
            float round = Math.round(AndroidUtilities.dpf2(3.3333f));
            int min = Math.min(TimelineView.this.waveform.getCount() - 1, (int) Math.ceil(((TimelineView.this.f2020ph + f3) - f) / round));
            for (int max = Math.max(0, (int) (((f2 - TimelineView.this.f2020ph) - f) / round)); max <= min; max++) {
                float f9 = max;
                float m104dp = (f9 * round) + f + AndroidUtilities.m104dp(2);
                float bar = f6 <= BitmapDescriptorFactory.HUE_RED ? 0.0f : (TimelineView.this.waveform.getBar(max) / f6) * f7 * 0.6f;
                if (f9 < f5 && max + 1 > f5) {
                    bar *= f5 - f9;
                } else if (f9 > f5) {
                    bar = 0.0f;
                }
                if (m104dp < f2 || m104dp > f3) {
                    bar *= f4;
                    if (bar <= BitmapDescriptorFactory.HUE_RED) {
                    }
                }
                float max2 = Math.max(bar, AndroidUtilities.lerp(AndroidUtilities.dpf2(0.66f), AndroidUtilities.dpf2(1.5f), f4));
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(m104dp, AndroidUtilities.lerp(f8 - max2, f8 - ((f7 + max2) / 2.0f), f4), AndroidUtilities.dpf2(1.66f) + m104dp, AndroidUtilities.lerp(f8, f8 - ((f7 - max2) / 2.0f), f4));
                TimelineView.this.waveformPath.addRoundRect(rectF, TimelineView.this.waveformRadii, Path.Direction.CW);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:253:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x016e  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void dispatchDraw(android.graphics.Canvas r38) {
        /*
            Method dump skipped, instructions count: 2136
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.TimelineView.dispatchDraw(android.graphics.Canvas):void");
    }

    private void drawRegion(Canvas canvas, Paint paint, float f, float f2, float f3, float f4, float f5) {
        if (f5 <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(f3 - AndroidUtilities.m104dp(10), f, f4 + AndroidUtilities.m104dp(10), f2);
        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f2024w, this.f2019h, 255, 31);
        int i = (int) (255.0f * f5);
        this.regionPaint.setAlpha(i);
        canvas.drawRoundRect(rectF, AndroidUtilities.m104dp(6), AndroidUtilities.m104dp(6), this.regionPaint);
        rectF.inset(AndroidUtilities.m104dp(10), AndroidUtilities.m104dp(2));
        canvas.drawRect(rectF, this.regionCutPaint);
        float m104dp = AndroidUtilities.m104dp(2);
        float m104dp2 = AndroidUtilities.m104dp(10);
        Paint paint2 = paint != null ? paint : this.regionHandlePaint;
        this.regionHandlePaint.setAlpha(255);
        paint2.setAlpha(i);
        float f6 = f + f2;
        float f7 = (f6 - m104dp2) / 2.0f;
        float f8 = (f6 + m104dp2) / 2.0f;
        rectF.set(f3 - ((AndroidUtilities.m104dp(10) - m104dp) / 2.0f), f7, f3 - ((AndroidUtilities.m104dp(10) + m104dp) / 2.0f), f8);
        canvas.drawRoundRect(rectF, AndroidUtilities.m104dp(1), AndroidUtilities.m104dp(1), paint2);
        if (paint != null) {
            this.regionHandlePaint.setAlpha((int) (f5 * 48.0f));
            canvas.drawRoundRect(rectF, AndroidUtilities.m104dp(1), AndroidUtilities.m104dp(1), this.regionHandlePaint);
        }
        rectF.set(f4 + ((AndroidUtilities.m104dp(10) - m104dp) / 2.0f), f7, f4 + ((AndroidUtilities.m104dp(10) + m104dp) / 2.0f), f8);
        canvas.drawRoundRect(rectF, AndroidUtilities.m104dp(1), AndroidUtilities.m104dp(1), paint2);
        if (paint != null) {
            this.regionHandlePaint.setAlpha((int) (48.0f * f5));
            canvas.drawRoundRect(rectF, AndroidUtilities.m104dp(1), AndroidUtilities.m104dp(1), this.regionHandlePaint);
        }
        canvas.restore();
    }

    private void drawProgress(Canvas canvas, float f, float f2, long j, float f3) {
        float clamp = this.f2021px + this.f2020ph + (this.f2023sw * (((float) ((Utilities.clamp(j, getBaseDuration(), 0L) + (!this.hasVideo ? this.audioOffset : 0L)) - this.scroll)) / ((float) Math.min(getBaseDuration(), 120000L))));
        float f4 = (((f + f2) / 2.0f) / 2.0f) * (1.0f - f3);
        float f5 = f + f4;
        float f6 = f2 - f4;
        this.progressShadowPaint.setAlpha((int) (38.0f * f3));
        this.progressWhitePaint.setAlpha((int) (f3 * 255.0f));
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(clamp - AndroidUtilities.dpf2(1.5f), f5, AndroidUtilities.dpf2(1.5f) + clamp, f6);
        rectF.inset(-AndroidUtilities.dpf2(0.66f), -AndroidUtilities.dpf2(0.66f));
        canvas.drawRoundRect(rectF, AndroidUtilities.m104dp(6), AndroidUtilities.m104dp(6), this.progressShadowPaint);
        rectF.set(clamp - AndroidUtilities.dpf2(1.5f), f5, clamp + AndroidUtilities.dpf2(1.5f), f6);
        canvas.drawRoundRect(rectF, AndroidUtilities.m104dp(6), AndroidUtilities.m104dp(6), this.progressWhitePaint);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        this.audioAuthorPaint.setTextSize(AndroidUtilities.m104dp(12));
        this.audioTitlePaint.setTextSize(AndroidUtilities.m104dp(12));
        float[] fArr = this.waveformRadii;
        float m104dp = AndroidUtilities.m104dp(2);
        fArr[3] = m104dp;
        fArr[2] = m104dp;
        fArr[1] = m104dp;
        fArr[0] = m104dp;
        float[] fArr2 = this.waveformRadii;
        fArr2[7] = 0.0f;
        fArr2[6] = 0.0f;
        fArr2[5] = 0.0f;
        fArr2[4] = 0.0f;
        int m104dp2 = AndroidUtilities.m104dp(12);
        this.f2021px = m104dp2;
        int m104dp3 = AndroidUtilities.m104dp(5);
        this.f2022py = m104dp3;
        setPadding(m104dp2, m104dp3, AndroidUtilities.m104dp(12), AndroidUtilities.m104dp(5));
        int size = View.MeasureSpec.getSize(i);
        this.f2024w = size;
        int m104dp4 = AndroidUtilities.m104dp(80);
        this.f2019h = m104dp4;
        setMeasuredDimension(size, m104dp4);
        int m104dp5 = AndroidUtilities.m104dp(10);
        this.f2020ph = m104dp5;
        this.f2023sw = (this.f2024w - (m104dp5 * 2)) - (this.f2021px * 2);
        if (this.videoPath != null && this.thumbs == null) {
            setupVideoThumbs();
        }
        if (this.audioPath == null || this.waveform != null) {
            return;
        }
        setupAudioWaveform();
    }

    /* renamed from: org.telegram.ui.Stories.recorder.TimelineView$VideoThumbsLoader */
    /* loaded from: classes6.dex */
    public class VideoThumbsLoader {
        private final int count;
        private boolean destroyed;
        private long duration;
        private final int frameHeight;
        private final long frameIterator;
        private final int frameWidth;
        private MediaMetadataRetriever metadataRetriever;
        private long nextFrame;
        private final ArrayList<BitmapFrame> frames = new ArrayList<>();
        private boolean loading = false;
        private final Paint bitmapPaint = new Paint(3);

        /* JADX WARN: Code restructure failed: missing block: B:67:0x0068, code lost:
            if (r0 != 270) goto L25;
         */
        /* JADX WARN: Removed duplicated region for block: B:80:0x0084 A[ADDED_TO_REGION] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public VideoThumbsLoader(java.lang.String r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 202
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.TimelineView.VideoThumbsLoader.<init>(org.telegram.ui.Stories.recorder.TimelineView, java.lang.String, int, int):void");
        }

        public int getFrameWidth() {
            return this.frameWidth;
        }

        public long getDuration() {
            return this.duration;
        }

        public void load() {
            if (this.loading || this.metadataRetriever == null || this.frames.size() >= this.count) {
                return;
            }
            this.loading = true;
            this.nextFrame += this.frameIterator;
            Utilities.themeQueue.cancelRunnable(new TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0(this));
            Utilities.themeQueue.postRunnable(new TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0(this));
        }

        public void retrieveFrame() {
            MediaMetadataRetriever mediaMetadataRetriever = this.metadataRetriever;
            if (mediaMetadataRetriever == null) {
                return;
            }
            final Bitmap bitmap = null;
            try {
                bitmap = mediaMetadataRetriever.getFrameAtTime(this.nextFrame * 1000, 2);
                if (bitmap != null) {
                    Bitmap createBitmap = Bitmap.createBitmap(this.frameWidth, this.frameHeight, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    float max = Math.max(this.frameWidth / bitmap.getWidth(), this.frameHeight / bitmap.getHeight());
                    canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), new Rect((int) ((createBitmap.getWidth() - (bitmap.getWidth() * max)) / 2.0f), (int) ((createBitmap.getHeight() - (bitmap.getHeight() * max)) / 2.0f), (int) ((createBitmap.getWidth() + (bitmap.getWidth() * max)) / 2.0f), (int) ((createBitmap.getHeight() + (bitmap.getHeight() * max)) / 2.0f)), this.bitmapPaint);
                    bitmap.recycle();
                    bitmap = createBitmap;
                }
            } catch (Exception e) {
                FileLog.m99e(e);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    TimelineView.VideoThumbsLoader.this.lambda$retrieveFrame$0(bitmap);
                }
            });
        }

        /* renamed from: receiveFrame */
        public void lambda$retrieveFrame$0(Bitmap bitmap) {
            if (!this.loading || this.destroyed) {
                return;
            }
            this.frames.add(new BitmapFrame(bitmap));
            this.loading = false;
            TimelineView.this.invalidate();
        }

        public void destroy() {
            this.destroyed = true;
            Utilities.themeQueue.cancelRunnable(new TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0(this));
            Iterator<BitmapFrame> it = this.frames.iterator();
            while (it.hasNext()) {
                Bitmap bitmap = it.next().bitmap;
                if (bitmap != null) {
                    bitmap.recycle();
                }
            }
            this.frames.clear();
            MediaMetadataRetriever mediaMetadataRetriever = this.metadataRetriever;
            if (mediaMetadataRetriever != null) {
                try {
                    mediaMetadataRetriever.release();
                } catch (Exception e) {
                    this.metadataRetriever = null;
                    FileLog.m99e(e);
                }
            }
        }

        /* renamed from: org.telegram.ui.Stories.recorder.TimelineView$VideoThumbsLoader$BitmapFrame */
        /* loaded from: classes6.dex */
        public class BitmapFrame {
            private final AnimatedFloat alpha;
            public Bitmap bitmap;

            public BitmapFrame(Bitmap bitmap) {
                VideoThumbsLoader.this = r10;
                this.alpha = new AnimatedFloat((float) BitmapDescriptorFactory.HUE_RED, TimelineView.this, 0L, 240L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.bitmap = bitmap;
            }

            public float getAlpha() {
                return this.alpha.set(1.0f);
            }
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.TimelineView$AudioWaveformLoader */
    /* loaded from: classes6.dex */
    public class AudioWaveformLoader {
        private final int count;
        private final short[] data;
        private long duration;
        private final MediaExtractor extractor;
        private MediaFormat inputFormat;
        private short max;
        private FfmpegAudioWaveformLoader waveformLoader;
        private int loaded = 0;
        private final Object lock = new Object();
        private boolean stop = false;

        public AudioWaveformLoader(String str, int i) {
            TimelineView.this = r8;
            int i2 = 0;
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.extractor = mediaExtractor;
            String str2 = null;
            try {
                mediaExtractor.setDataSource(str);
                int trackCount = mediaExtractor.getTrackCount();
                while (true) {
                    if (i2 < trackCount) {
                        MediaFormat trackFormat = this.extractor.getTrackFormat(i2);
                        str2 = trackFormat.getString("mime");
                        if (str2 != null && str2.startsWith("audio/")) {
                            this.extractor.selectTrack(i2);
                            this.inputFormat = trackFormat;
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                }
                MediaFormat mediaFormat = this.inputFormat;
                if (mediaFormat != null) {
                    this.duration = mediaFormat.getLong("durationUs") / 1000000;
                }
            } catch (Exception e) {
                FileLog.m99e(e);
            }
            int round = Math.round(((((float) (this.duration * 1000)) / ((float) Math.min(r8.hasVideo ? r8.videoDuration : this.duration * 1000, 120000L))) * i) / Math.round(AndroidUtilities.dpf2(3.3333f)));
            this.count = round;
            this.data = new short[round];
            if (this.duration <= 0 || this.inputFormat == null) {
                return;
            }
            if (MimeTypes.AUDIO_MPEG.equals(str2) || "audio/mp3".equals(str2)) {
                this.waveformLoader = new FfmpegAudioWaveformLoader(str, round, new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        TimelineView.AudioWaveformLoader.this.lambda$run$0((short[]) obj, ((Integer) obj2).intValue());
                    }
                });
            } else {
                Utilities.phoneBookQueue.postRunnable(new TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda0(this));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1, types: [int] */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r5v13, types: [android.media.MediaExtractor] */
        public void run() {
            MediaCodec.BufferInfo bufferInfo;
            int i;
            boolean z;
            int i2;
            ByteBuffer outputBuffer;
            int i3;
            short s;
            ByteBuffer outputBuffer2;
            ByteBuffer inputBuffer;
            try {
                int round = Math.round((((float) (this.duration * this.inputFormat.getInteger("sample-rate"))) / this.count) / 5.0f);
                MediaCodec createDecoderByType = MediaCodec.createDecoderByType(this.inputFormat.getString("mime"));
                if (createDecoderByType == null) {
                    return;
                }
                ?? r10 = 0;
                createDecoderByType.configure(this.inputFormat, (Surface) null, (MediaCrypto) null, 0);
                createDecoderByType.start();
                ByteBuffer[] inputBuffers = createDecoderByType.getInputBuffers();
                ByteBuffer[] outputBuffers = createDecoderByType.getOutputBuffers();
                final short[] sArr = new short[32];
                boolean z2 = false;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                short s2 = 0;
                int i7 = -1;
                while (true) {
                    MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
                    int dequeueInputBuffer = createDecoderByType.dequeueInputBuffer(2500L);
                    if (dequeueInputBuffer >= 0) {
                        if (Build.VERSION.SDK_INT < 21) {
                            inputBuffer = inputBuffers[dequeueInputBuffer];
                        } else {
                            inputBuffer = createDecoderByType.getInputBuffer(dequeueInputBuffer);
                        }
                        int readSampleData = this.extractor.readSampleData(inputBuffer, r10);
                        if (readSampleData < 0) {
                            bufferInfo = bufferInfo2;
                            i = i7;
                            createDecoderByType.queueInputBuffer(dequeueInputBuffer, 0, 0, 0L, 4);
                            z2 = true;
                        } else {
                            bufferInfo = bufferInfo2;
                            i = i7;
                            createDecoderByType.queueInputBuffer(dequeueInputBuffer, 0, readSampleData, this.extractor.getSampleTime(), 0);
                            this.extractor.advance();
                        }
                    } else {
                        bufferInfo = bufferInfo2;
                        i = i7;
                    }
                    if (i >= 0) {
                        if (Build.VERSION.SDK_INT < 21) {
                            outputBuffer2 = outputBuffers[i];
                        } else {
                            outputBuffer2 = createDecoderByType.getOutputBuffer(i);
                        }
                        outputBuffer2.position(0);
                    }
                    i7 = createDecoderByType.dequeueOutputBuffer(bufferInfo, 2500L);
                    while (i7 != -1 && !z2) {
                        if (i7 >= 0) {
                            if (Build.VERSION.SDK_INT < 21) {
                                outputBuffer = outputBuffers[i7];
                            } else {
                                outputBuffer = createDecoderByType.getOutputBuffer(i7);
                            }
                            if (outputBuffer == null || bufferInfo.size <= 0) {
                                i3 = i6;
                            } else {
                                int i8 = i6;
                                while (outputBuffer.remaining() > 0) {
                                    short s3 = (short) (((outputBuffer.get() & 255) << 8) | (outputBuffer.get() & 255));
                                    if (i8 >= round) {
                                        sArr[i4 - i5] = s2;
                                        int i9 = i4 + 1;
                                        final int i10 = i9 - i5;
                                        if (i10 >= sArr.length || i9 >= this.count) {
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    TimelineView.AudioWaveformLoader.this.lambda$run$0(sArr, i10);
                                                }
                                            });
                                            sArr = new short[sArr.length];
                                            i5 = i9;
                                        }
                                        i4 = i9;
                                        if (i9 >= this.data.length) {
                                            z = false;
                                            i3 = 0;
                                            s2 = 0;
                                            break;
                                        }
                                        s = 0;
                                        i8 = 0;
                                    } else {
                                        s = s2;
                                    }
                                    s2 = s < s3 ? s3 : s;
                                    i8++;
                                    if (outputBuffer.remaining() < 8) {
                                        break;
                                    }
                                    outputBuffer.position(outputBuffer.position() + 8);
                                }
                                i3 = i8;
                            }
                            z = false;
                            createDecoderByType.releaseOutputBuffer(i7, z);
                            if ((bufferInfo.flags & 4) != 0) {
                                i6 = i3;
                                i2 = i4;
                                z2 = true;
                                break;
                            }
                            i6 = i3;
                        } else if (i7 == -3) {
                            outputBuffers = createDecoderByType.getOutputBuffers();
                        }
                        i7 = createDecoderByType.dequeueOutputBuffer(bufferInfo, 2500L);
                    }
                    z = false;
                    i2 = i4;
                    synchronized (this.lock) {
                        if (!this.stop) {
                            if (z2 || i2 >= this.count) {
                                break;
                            }
                            r10 = z;
                            i4 = i2;
                        } else {
                            break;
                        }
                    }
                }
                createDecoderByType.stop();
                createDecoderByType.release();
                this.extractor.release();
            } catch (Exception e) {
                FileLog.m99e(e);
            }
        }

        /* renamed from: receiveData */
        public void lambda$run$0(short[] sArr, int i) {
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = this.loaded;
                int i4 = i3 + i2;
                short[] sArr2 = this.data;
                if (i4 >= sArr2.length) {
                    break;
                }
                sArr2[i3 + i2] = sArr[i2];
                if (this.max < sArr[i2]) {
                    this.max = sArr[i2];
                }
            }
            this.loaded += i;
            TimelineView.this.invalidate();
        }

        public void destroy() {
            FfmpegAudioWaveformLoader ffmpegAudioWaveformLoader = this.waveformLoader;
            if (ffmpegAudioWaveformLoader != null) {
                ffmpegAudioWaveformLoader.destroy();
            }
            Utilities.phoneBookQueue.cancelRunnable(new TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda0(this));
            synchronized (this.lock) {
                this.stop = true;
            }
        }

        public short getMaxBar() {
            return this.max;
        }

        public short getBar(int i) {
            return this.data[i];
        }

        public int getLoadedCount() {
            return this.loaded;
        }

        public int getCount() {
            return this.count;
        }
    }
}
