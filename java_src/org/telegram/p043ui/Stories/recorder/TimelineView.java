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
    private int f2035h;
    private boolean hadDragChange;
    private boolean hasAudio;
    private boolean hasRound;
    private boolean hasVideo;
    private boolean isMainVideoRound;
    private long lastTime;
    private float lastX;
    private final AnimatedFloat loopProgress;
    private long loopProgressFrom;
    private final Runnable onLongPress;

    /* renamed from: ph */
    private int f2036ph;
    private int pressHandle;
    private long pressTime;
    private int pressType;
    private long progress;
    private final Paint progressShadowPaint;
    private final Paint progressWhitePaint;

    /* renamed from: px */
    private int f2037px;

    /* renamed from: py */
    private int f2038py;
    private final Paint regionCutPaint;
    private final Paint regionHandlePaint;
    private final Paint regionPaint;
    private boolean resetWaveform;
    private final Theme.ResourcesProvider resourcesProvider;
    private final RectF roundBounds;
    private final Path roundClipPath;
    private long roundDuration;
    private float roundLeft;
    private long roundOffset;
    private String roundPath;
    private float roundRight;
    private boolean roundSelected;
    private final AnimatedFloat roundSelectedT;
    private final AnimatedFloat roundT;
    private VideoThumbsLoader roundThumbs;
    private float roundVolume;
    private long scroll;
    private final Scroller scroller;
    private boolean scrolling;
    private boolean scrollingVideo;
    private final Path selectedVideoClipPath;
    final float[] selectedVideoRadii;

    /* renamed from: sw */
    private int f2039sw;
    private VideoThumbsLoader thumbs;
    private VelocityTracker velocityTracker;
    private final RectF videoBounds;
    private final Path videoClipPath;
    private long videoDuration;
    private final Paint videoFramePaint;
    private float videoLeft;
    private String videoPath;
    private float videoRight;
    private final AnimatedFloat videoSelectedT;
    private float videoVolume;

    /* renamed from: w */
    private int f2040w;
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

        void onRoundLeftChange(float f);

        void onRoundOffsetChange(long j);

        void onRoundRemove();

        void onRoundRightChange(float f);

        void onRoundSelectChange(boolean z);

        void onRoundVolumeChange(float f);

        void onVideoLeftChange(float f);

        void onVideoRightChange(float f);

        void onVideoVolumeChange(float f);
    }

    public static int heightDp() {
        return 112;
    }

    private long getBaseDuration() {
        if (this.hasVideo) {
            return this.videoDuration;
        }
        if (this.hasRound) {
            return this.roundDuration;
        }
        if (this.hasAudio) {
            return this.audioDuration;
        }
        return Math.max(1L, this.audioDuration);
    }

    public TimelineView(Context context, final ViewGroup viewGroup, final View view, final Theme.ResourcesProvider resourcesProvider, final BlurringShader.BlurManager blurManager) {
        super(context);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.roundT = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.roundSelectedT = new AnimatedFloat(this, 360L, cubicBezierInterpolator);
        this.audioT = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.audioSelectedT = new AnimatedFloat(this, 360L, cubicBezierInterpolator);
        this.videoSelectedT = new AnimatedFloat(this, 360L, cubicBezierInterpolator);
        this.waveformLoaded = new AnimatedFloat(this, 0L, 600L, cubicBezierInterpolator);
        this.waveformMax = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.videoBounds = new RectF();
        this.videoFramePaint = new Paint(3);
        this.videoClipPath = new Path();
        this.selectedVideoClipPath = new Path();
        this.roundBounds = new RectF();
        this.roundClipPath = new Path();
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
        this.pressType = -1;
        this.scrollingVideo = true;
        this.scrolling = false;
        this.selectedVideoRadii = new float[8];
        this.waveformRadii = new float[8];
        this.resourcesProvider = resourcesProvider;
        paint7.setColor(Integer.MAX_VALUE);
        textPaint.setTextSize(AndroidUtilities.m107dp(12));
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textPaint.setColor(-1);
        textPaint2.setTextSize(AndroidUtilities.m107dp(12));
        textPaint2.setColor(-1);
        paint6.setColor(1090519039);
        paint8.setShader(linearGradient);
        paint8.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        paint.setColor(-1);
        paint.setShadowLayer(AndroidUtilities.m107dp(1), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(1), 436207616);
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
        this.onLongPress = new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                TimelineView.this.lambda$new$5(viewGroup, resourcesProvider, blurManager, view);
            }
        };
    }

    public /* synthetic */ void lambda$new$5(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, BlurringShader.BlurManager blurManager, View view) {
        int i = this.pressType;
        try {
            if (i == 2 && this.hasAudio) {
                SliderView onValueChange = new SliderView(getContext(), 0).setMinMax(BitmapDescriptorFactory.HUE_RED, 1.5f).setValue(this.audioVolume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        TimelineView.this.lambda$new$0((Float) obj);
                    }
                });
                long min = Math.min(getBaseDuration(), 120000L);
                int i2 = this.f2040w;
                int i3 = this.f2037px;
                int i4 = this.f2036ph;
                ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(onValueChange).addSpaceGap().add(C3632R.C3634drawable.msg_delete, LocaleController.getString(C3632R.string.StoryAudioRemove), new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TimelineView.this.lambda$new$1();
                    }
                }).setGravity(5).forceTop(true).translate((-(this.f2040w - Math.min((i2 - i3) - i4, (i3 + i4) + (((((float) (this.audioOffset - this.scroll)) + (AndroidUtilities.lerp(this.audioRight, 1.0f, this.audioSelectedT.get()) * ((float) this.audioDuration))) / ((float) min)) * this.f2039sw)))) + AndroidUtilities.m107dp(18), (((this.f2035h - this.f2038py) - (this.hasVideo ? getVideoHeight() + AndroidUtilities.m107dp(4) : BitmapDescriptorFactory.HUE_RED)) - (this.hasRound ? getRoundHeight() + AndroidUtilities.m107dp(4) : BitmapDescriptorFactory.HUE_RED)) - (this.hasAudio ? getAudioHeight() + AndroidUtilities.m107dp(4) : BitmapDescriptorFactory.HUE_RED)).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
                performHapticFeedback(0, 1);
            } else if (i == 1 && this.hasRound) {
                SliderView onValueChange2 = new SliderView(getContext(), 0).setMinMax(BitmapDescriptorFactory.HUE_RED, 1.5f).setValue(this.roundVolume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda5
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        TimelineView.this.lambda$new$2((Float) obj);
                    }
                });
                long min2 = Math.min(getBaseDuration(), 120000L);
                int i5 = this.f2040w;
                int i6 = this.f2037px;
                int i7 = this.f2036ph;
                ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(onValueChange2).addSpaceGap().add(C3632R.C3634drawable.msg_delete, LocaleController.getString(C3632R.string.StoryRoundRemove), new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TimelineView.this.lambda$new$3();
                    }
                }).setGravity(5).forceTop(true).translate((-(this.f2040w - Math.min((i5 - i6) - i7, (i6 + i7) + (((((float) (this.roundOffset - this.scroll)) + (AndroidUtilities.lerp(this.roundRight, 1.0f, this.roundSelectedT.get()) * ((float) this.roundDuration))) / ((float) min2)) * this.f2039sw)))) + AndroidUtilities.m107dp(18), ((this.f2035h - this.f2038py) - (this.hasVideo ? AndroidUtilities.m107dp(4) + getVideoHeight() : BitmapDescriptorFactory.HUE_RED)) - (this.hasRound ? getRoundHeight() + AndroidUtilities.m107dp(4) : BitmapDescriptorFactory.HUE_RED)).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
                performHapticFeedback(0, 1);
            } else if (i != 0 || !this.hasVideo) {
            } else {
                ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(new SliderView(getContext(), 0).setMinMax(BitmapDescriptorFactory.HUE_RED, 1.5f).setValue(this.videoVolume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda6
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        TimelineView.this.lambda$new$4((Float) obj);
                    }
                })).setGravity(5).forceTop(true).translate(AndroidUtilities.m107dp(18), (this.f2035h - this.f2038py) - (this.hasVideo ? getVideoHeight() + AndroidUtilities.m107dp(4) : 0.0f)).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
                performHapticFeedback(0, 1);
            }
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

    public /* synthetic */ void lambda$new$2(Float f) {
        this.roundVolume = f.floatValue();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onRoundVolumeChange(f.floatValue());
        }
    }

    public /* synthetic */ void lambda$new$3() {
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onRoundRemove();
        }
    }

    public /* synthetic */ void lambda$new$4(Float f) {
        this.videoVolume = f.floatValue();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onVideoVolumeChange(f.floatValue());
        }
    }

    public void setDelegate(TimelineDelegate timelineDelegate) {
        this.delegate = timelineDelegate;
    }

    public void setVideo(boolean z, String str, long j, float f) {
        if (TextUtils.equals(this.videoPath, str)) {
            return;
        }
        VideoThumbsLoader videoThumbsLoader = this.thumbs;
        if (videoThumbsLoader != null) {
            videoThumbsLoader.destroy();
            this.thumbs = null;
        }
        this.isMainVideoRound = z;
        if (str != null) {
            this.scroll = 0L;
            this.videoPath = str;
            this.videoDuration = j;
            this.videoVolume = f;
            setupVideoThumbs();
        } else {
            this.videoPath = null;
            this.videoDuration = 1L;
            this.scroll = 0L;
        }
        if (!this.hasRound) {
            this.roundSelected = false;
        }
        this.hasVideo = this.videoPath != null;
        this.progress = 0L;
        invalidate();
    }

    public void setRoundNull(boolean z) {
        setRound(null, 0L, 0L, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, z);
    }

    public void setRound(String str, long j, long j2, float f, float f2, float f3, boolean z) {
        if (TextUtils.equals(this.roundPath, str)) {
            return;
        }
        VideoThumbsLoader videoThumbsLoader = this.roundThumbs;
        if (videoThumbsLoader != null) {
            videoThumbsLoader.destroy();
            this.roundThumbs = null;
        }
        long j3 = this.roundDuration;
        if (str != null) {
            this.roundPath = str;
            this.roundDuration = j;
            this.roundOffset = j2 - (((float) j) * f);
            this.roundLeft = f;
            this.roundRight = f2;
            this.roundVolume = f3;
            setupRoundThumbs();
            if (!this.hasVideo) {
                this.audioSelected = false;
                this.roundSelected = true;
            }
        } else {
            this.roundPath = null;
            this.roundDuration = 1L;
            this.roundSelected = false;
        }
        this.hasRound = this.roundPath != null;
        if (j3 != j && !this.hasVideo && this.waveform != null) {
            this.resetWaveform = true;
            setupAudioWaveform();
        }
        if (this.hasAudio && this.hasRound && !this.hasVideo) {
            this.audioLeft = BitmapDescriptorFactory.HUE_RED;
            this.audioRight = Utilities.clamp(((float) j) / ((float) this.audioDuration), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        }
        if (!z) {
            this.roundSelectedT.set(this.roundSelected, true);
            this.audioSelectedT.set(this.audioSelected, true);
            this.roundT.set(this.hasRound, true);
        }
        invalidate();
    }

    public void selectRound(boolean z) {
        boolean z2 = true;
        if (z && this.hasRound) {
            this.roundSelected = true;
            this.audioSelected = false;
        } else {
            this.roundSelected = false;
            if (!this.hasAudio || this.hasVideo) {
                z2 = false;
            }
            this.audioSelected = z2;
        }
        invalidate();
    }

    private void setupVideoThumbs() {
        if (getMeasuredWidth() <= 0 || this.thumbs != null) {
            return;
        }
        boolean z = this.isMainVideoRound;
        String str = this.videoPath;
        int i = this.f2040w;
        int i2 = this.f2037px;
        int i3 = (i - i2) - i2;
        int m107dp = AndroidUtilities.m107dp(38);
        long j = this.videoDuration;
        VideoThumbsLoader videoThumbsLoader = new VideoThumbsLoader(this, z, str, i3, m107dp, j > 2 ? Long.valueOf(j) : null);
        this.thumbs = videoThumbsLoader;
        if (videoThumbsLoader.getDuration() > 0) {
            this.videoDuration = this.thumbs.getDuration();
        }
        setupRoundThumbs();
    }

    private void setupRoundThumbs() {
        if (getMeasuredWidth() <= 0 || this.roundThumbs != null) {
            return;
        }
        if (!this.hasVideo || this.videoDuration >= 1) {
            String str = this.roundPath;
            int i = this.f2040w;
            int i2 = this.f2037px;
            int i3 = (i - i2) - i2;
            int m107dp = AndroidUtilities.m107dp(38);
            long j = this.roundDuration;
            VideoThumbsLoader videoThumbsLoader = new VideoThumbsLoader(false, str, i3, m107dp, j > 2 ? Long.valueOf(j) : null, this.hasVideo ? this.videoDuration : 120000L);
            this.roundThumbs = videoThumbsLoader;
            if (videoThumbsLoader.getDuration() > 0) {
                this.roundDuration = this.roundThumbs.getDuration();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0022, code lost:
        if (((float) (r4 + 240)) >= (((float) r7) * r11.videoRight)) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0048, code lost:
        if (((float) (r4 + 240)) >= (((float) r7) * r11.audioRight)) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x006a, code lost:
        if (((float) (r4 + 240)) >= (((float) r6) * r11.audioRight)) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x006c, code lost:
        r11.loopProgressFrom = -1;
        r11.loopProgress.set(1.0f, true);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setProgress(long r12) {
        /*
            r11 = this;
            boolean r0 = r11.hasVideo
            r1 = 240(0xf0, double:1.186E-321)
            r3 = 1131413504(0x43700000, float:240.0)
            if (r0 == 0) goto L24
            long r4 = r11.progress
            int r6 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r6 >= 0) goto L24
            float r6 = (float) r12
            long r7 = r11.videoDuration
            float r9 = (float) r7
            float r10 = r11.videoLeft
            float r9 = r9 * r10
            float r9 = r9 + r3
            int r6 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r6 > 0) goto L24
            long r4 = r4 + r1
            float r4 = (float) r4
            float r5 = (float) r7
            float r6 = r11.videoRight
            float r5 = r5 * r6
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 >= 0) goto L6c
        L24:
            boolean r4 = r11.hasAudio
            if (r4 == 0) goto L4a
            boolean r4 = r11.hasRound
            if (r4 != 0) goto L4a
            if (r0 != 0) goto L4a
            long r4 = r11.progress
            int r6 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r6 >= 0) goto L4a
            float r6 = (float) r12
            long r7 = r11.audioDuration
            float r9 = (float) r7
            float r10 = r11.audioLeft
            float r9 = r9 * r10
            float r9 = r9 + r3
            int r6 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r6 > 0) goto L4a
            long r4 = r4 + r1
            float r4 = (float) r4
            float r5 = (float) r7
            float r6 = r11.audioRight
            float r5 = r5 * r6
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 >= 0) goto L6c
        L4a:
            boolean r4 = r11.hasRound
            if (r4 == 0) goto L78
            if (r0 != 0) goto L78
            long r4 = r11.progress
            int r0 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r0 >= 0) goto L78
            float r0 = (float) r12
            long r6 = r11.roundDuration
            float r8 = (float) r6
            float r9 = r11.audioLeft
            float r8 = r8 * r9
            float r8 = r8 + r3
            int r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r0 > 0) goto L78
            long r4 = r4 + r1
            float r0 = (float) r4
            float r1 = (float) r6
            float r2 = r11.audioRight
            float r1 = r1 * r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L78
        L6c:
            r0 = -1
            r11.loopProgressFrom = r0
            org.telegram.ui.Components.AnimatedFloat r0 = r11.loopProgress
            r1 = 1065353216(0x3f800000, float:1.0)
            r2 = 1
            r0.set(r1, r2)
        L78:
            r11.progress = r12
            r11.invalidate()
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
        if (getMeasuredWidth() > 0) {
            if (this.waveform == null || this.resetWaveform) {
                this.waveform = new AudioWaveformLoader(this.audioPath, (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
                this.waveformIsLoaded = false;
                this.waveformLoaded.set(BitmapDescriptorFactory.HUE_RED, true);
                this.waveformMax.set(1.0f, true);
            }
        }
    }

    private int detectHandle(MotionEvent motionEvent) {
        int i;
        int i2;
        int i3;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        long min = Math.min(getBaseDuration(), 120000L);
        float f = (float) min;
        float clamp = this.f2037px + this.f2036ph + (this.f2039sw * (((float) ((Utilities.clamp(this.progress, getBaseDuration(), 0L) + (!this.hasVideo ? this.audioOffset : 0L)) - this.scroll)) / f));
        boolean z = false;
        if (x < clamp - AndroidUtilities.m107dp(12) || x > clamp + AndroidUtilities.m107dp(12)) {
            boolean z2 = this.hasVideo && y > (((float) (this.f2035h - this.f2038py)) - getVideoHeight()) - ((float) AndroidUtilities.m107dp(2));
            if (this.hasRound && y > (((((this.f2035h - this.f2038py) - getVideoHeight()) - AndroidUtilities.m107dp(4)) - getRoundHeight()) - AndroidUtilities.m107dp(4)) - AndroidUtilities.m107dp(2) && y < ((this.f2035h - this.f2038py) - getVideoHeight()) - AndroidUtilities.m107dp(2)) {
                z = true;
            }
            if (z2) {
                int i4 = this.f2037px;
                int i5 = this.f2036ph;
                float f2 = this.videoLeft;
                long j = this.videoDuration;
                long j2 = this.scroll;
                int i6 = this.f2039sw;
                float f3 = i4 + i5 + ((((f2 * ((float) j)) - ((float) j2)) / f) * i6);
                float f4 = i4 + i5 + ((((this.videoRight * ((float) j)) - ((float) j2)) / f) * i6);
                if (x >= f3 - AndroidUtilities.m107dp(15)) {
                    i3 = 5;
                    if (x <= AndroidUtilities.m107dp(5) + f3) {
                        return 2;
                    }
                } else {
                    i3 = 5;
                }
                if (x >= f4 - AndroidUtilities.m107dp(i3) && x <= AndroidUtilities.m107dp(15) + f4) {
                    return 3;
                }
                if (x >= f3 && x <= f4 && (this.videoLeft > 0.01f || this.videoRight < 0.99f)) {
                    return 4;
                }
            } else if (z) {
                int i7 = this.f2037px;
                int i8 = this.f2036ph;
                long j3 = this.roundOffset;
                float f5 = this.roundLeft;
                long j4 = this.roundDuration;
                long j5 = this.scroll;
                int i9 = this.f2039sw;
                float f6 = i7 + i8 + ((((((float) j3) + (f5 * ((float) j4))) - ((float) j5)) / f) * i9);
                float f7 = i7 + i8 + ((((((float) j3) + (this.roundRight * ((float) j4))) - ((float) j5)) / f) * i9);
                if (this.roundSelected || !this.hasVideo) {
                    if (x >= f6 - AndroidUtilities.m107dp(15)) {
                        i2 = 5;
                        if (x <= AndroidUtilities.m107dp(5) + f6) {
                            return 10;
                        }
                    } else {
                        i2 = 5;
                    }
                    if (x >= f7 - AndroidUtilities.m107dp(i2) && x <= AndroidUtilities.m107dp(15) + f7) {
                        return 11;
                    }
                    if (x >= f6 && x <= f7) {
                        return !this.hasVideo ? 12 : 9;
                    }
                    int i10 = this.f2037px;
                    int i11 = this.f2036ph;
                    long j6 = this.roundOffset;
                    long j7 = this.scroll;
                    int i12 = this.f2039sw;
                    f7 = ((((float) ((j6 + this.roundDuration) - j7)) / f) * i12) + i10 + i11;
                    f6 = i10 + i11 + ((((float) (j6 - j7)) / f) * i12);
                }
                if (x >= f6 && x <= f7) {
                    return 9;
                }
            } else if (this.hasAudio) {
                int i13 = this.f2037px;
                int i14 = this.f2036ph;
                long j8 = this.audioOffset;
                float f8 = this.audioLeft;
                long j9 = this.audioDuration;
                long j10 = this.scroll;
                int i15 = this.f2039sw;
                float f9 = i13 + i14 + ((((((float) j8) + (f8 * ((float) j9))) - ((float) j10)) / f) * i15);
                float f10 = i13 + i14 + ((((((float) j8) + (this.audioRight * ((float) j9))) - ((float) j10)) / f) * i15);
                if (this.audioSelected || (!this.hasVideo && !this.hasRound)) {
                    if (x >= f9 - AndroidUtilities.m107dp(15)) {
                        i = 5;
                        if (x <= AndroidUtilities.m107dp(5) + f9) {
                            return 6;
                        }
                    } else {
                        i = 5;
                    }
                    if (x >= f10 - AndroidUtilities.m107dp(i) && x <= AndroidUtilities.m107dp(15) + f10) {
                        return 7;
                    }
                    if (x >= f9 && x <= f10) {
                        return !this.hasVideo ? 8 : 5;
                    }
                    int i16 = this.f2037px;
                    int i17 = this.f2036ph;
                    long j11 = this.audioOffset;
                    long j12 = this.scroll;
                    int i18 = this.f2039sw;
                    f9 = i16 + i17 + ((((float) (j11 - j12)) / f) * i18);
                    f10 = i16 + i17 + ((((float) ((j11 + this.audioDuration) - j12)) / f) * i18);
                }
                if (x >= f9 && x <= f10) {
                    return 5;
                }
            }
            return (this.videoDuration <= 120000 || !z2) ? -1 : 1;
        }
        return 0;
    }

    public boolean onBackPressed() {
        boolean z = false;
        if (this.audioSelected) {
            this.audioSelected = false;
            z = true;
            if (this.hasRound && !this.hasVideo) {
                this.roundSelected = true;
                TimelineDelegate timelineDelegate = this.delegate;
                if (timelineDelegate != null) {
                    timelineDelegate.onRoundSelectChange(true);
                }
            }
        }
        return z;
    }

    public boolean isDragging() {
        return this.dragged;
    }

    private boolean setProgressAt(float f, boolean z) {
        if (this.hasVideo || this.hasAudio) {
            float min = (((f - this.f2037px) - this.f2036ph) / this.f2039sw) * ((float) Math.min(getBaseDuration(), 120000L));
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
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        TimelineView.this.lambda$setProgressAt$6(clamp);
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

    public /* synthetic */ void lambda$setProgressAt$6(long j) {
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onProgressChange(j, false);
        }
    }

    private float getVideoHeight() {
        if (this.hasVideo) {
            return AndroidUtilities.lerp(AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(38), this.videoSelectedT.set((this.audioSelected || this.roundSelected) ? false : true));
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    private float getAudioHeight() {
        return AndroidUtilities.lerp(AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(38), this.audioSelectedT.set(this.audioSelected));
    }

    private float getRoundHeight() {
        if (this.hasRound) {
            return AndroidUtilities.lerp(AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(38), this.roundSelectedT.set(this.roundSelected));
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Removed duplicated region for block: B:825:0x093b  */
    /* JADX WARN: Removed duplicated region for block: B:828:0x0945 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:835:0x0960  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r28) {
        /*
            Method dump skipped, instructions count: 2414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.TimelineView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private long minAudioSelect() {
        return Math.max(1000.0f, ((float) Math.min(this.hasVideo ? this.videoDuration : this.hasRound ? this.roundDuration : this.audioDuration, 59000L)) * 0.15f);
    }

    private void moveAudioOffset(float f) {
        float f2;
        long j;
        float f3;
        long j2;
        float f4;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        TimelineDelegate timelineDelegate;
        long j9;
        long clamp;
        boolean z = this.hasVideo;
        if (!z && !this.hasRound) {
            long j10 = this.audioOffset;
            long clamp2 = Utilities.clamp(j10 + f, 0L, -(this.audioDuration - Math.min(getBaseDuration(), 120000L)));
            this.audioOffset = clamp2;
            float f5 = (float) (clamp2 - j10);
            this.audioLeft = Utilities.clamp(this.audioLeft - (f5 / ((float) this.audioDuration)), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            this.audioRight = Utilities.clamp(this.audioRight - (f5 / ((float) this.audioDuration)), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            TimelineDelegate timelineDelegate2 = this.delegate;
            if (timelineDelegate2 != null) {
                timelineDelegate2.onAudioLeftChange(this.audioLeft);
                this.delegate.onAudioRightChange(this.audioRight);
            }
        } else if (this.audioSelected) {
            if (z) {
                f2 = this.videoLeft;
                j = this.videoDuration;
            } else {
                f2 = this.roundLeft;
                j = this.roundDuration;
            }
            float f6 = f2 * ((float) j);
            if (z) {
                f3 = this.videoRight;
                j2 = this.videoDuration;
            } else {
                f3 = this.roundRight;
                j2 = this.roundDuration;
            }
            float f7 = f3 * ((float) j2);
            if (z) {
                f4 = this.videoRight - this.videoLeft;
                j3 = this.videoDuration;
            } else {
                f4 = this.roundRight - this.roundLeft;
                j3 = this.roundDuration;
            }
            float f8 = f4 * ((float) j3);
            float f9 = this.audioRight;
            long j11 = this.audioDuration;
            float f10 = this.audioLeft;
            long j12 = f6 - (((float) j11) * f10);
            float min = Math.min(f9 - f10, f8 / ((float) j11));
            long j13 = this.audioOffset;
            long j14 = f;
            if (j13 + j14 > f7 - (((float) j11) * f9)) {
                float clamp3 = Utilities.clamp(((f7 - ((float) j13)) - ((float) j14)) / ((float) this.audioDuration), 1.0f, min);
                this.audioRight = clamp3;
                float clamp4 = Utilities.clamp(clamp3 - min, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                this.audioLeft = clamp4;
                float f11 = this.audioRight;
                long j15 = this.audioDuration;
                long j16 = f7 - (f11 * ((float) j15));
                long j17 = f6 - (clamp4 * ((float) j15));
                if (j16 < j17) {
                    j7 = j17;
                    j6 = j16;
                } else {
                    j6 = j17;
                    j7 = j16;
                }
                this.audioOffset = Utilities.clamp(this.audioOffset + j14, j7, j6);
                TimelineDelegate timelineDelegate3 = this.delegate;
                if (timelineDelegate3 != null) {
                    timelineDelegate3.onAudioLeftChange(this.audioLeft);
                    this.delegate.onAudioRightChange(this.audioRight);
                }
            } else if (j13 + j14 < j12) {
                float clamp5 = Utilities.clamp(((f6 - ((float) j13)) - ((float) j14)) / ((float) this.audioDuration), 1.0f - min, (float) BitmapDescriptorFactory.HUE_RED);
                this.audioLeft = clamp5;
                float clamp6 = Utilities.clamp(clamp5 + min, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                this.audioRight = clamp6;
                long j18 = this.audioDuration;
                long j19 = f7 - (clamp6 * ((float) j18));
                long j20 = f6 - (this.audioLeft * ((float) j18));
                if (j19 < j20) {
                    j5 = j19;
                    j4 = j20;
                } else {
                    j4 = j19;
                    j5 = j20;
                }
                this.audioOffset = Utilities.clamp(this.audioOffset + j14, j4, j5);
                TimelineDelegate timelineDelegate4 = this.delegate;
                if (timelineDelegate4 != null) {
                    timelineDelegate4.onAudioLeftChange(this.audioLeft);
                    this.delegate.onAudioRightChange(this.audioRight);
                }
            } else {
                this.audioOffset = j13 + j14;
            }
        } else {
            long j21 = this.audioOffset + f;
            long j22 = this.audioDuration;
            this.audioOffset = Utilities.clamp(j21, ((float) getBaseDuration()) - (((float) j22) * this.audioRight), (-this.audioLeft) * ((float) j22));
        }
        invalidate();
        TimelineDelegate timelineDelegate5 = this.delegate;
        if (timelineDelegate5 != null) {
            timelineDelegate5.onAudioOffsetChange(this.audioOffset + (this.audioLeft * ((float) this.audioDuration)));
        }
        boolean z2 = this.dragged;
        if (!z2 && (timelineDelegate = this.delegate) != null) {
            timelineDelegate.onProgressDragChange(true);
            if (this.hasVideo) {
                long j23 = this.audioOffset + (this.audioLeft * ((float) this.audioDuration));
                float f12 = this.videoRight;
                long j24 = this.videoDuration;
                clamp = Utilities.clamp(j23, f12 * ((float) j24), this.videoLeft * ((float) j24));
            } else if (this.hasRound) {
                long j25 = this.audioOffset + (this.audioLeft * ((float) this.audioDuration));
                float f13 = this.roundRight;
                long j26 = this.roundDuration;
                clamp = Utilities.clamp(j25, f13 * ((float) j26), this.roundLeft * ((float) j26));
            } else {
                float f14 = this.audioLeft;
                clamp = Utilities.clamp(f14 * ((float) j9), this.audioDuration, 0L);
            }
            if (this.hasVideo && Math.abs(this.progress - clamp) > 400) {
                this.loopProgressFrom = this.progress;
                this.loopProgress.set(1.0f, true);
            }
            TimelineDelegate timelineDelegate6 = this.delegate;
            this.progress = clamp;
            timelineDelegate6.onProgressChange(clamp, false);
        } else if (z2 || this.scrolling) {
            if (this.hasVideo) {
                long j27 = this.audioOffset + (this.audioLeft * ((float) this.audioDuration));
                float f15 = this.videoRight;
                long j28 = this.videoDuration;
                this.progress = Utilities.clamp(j27, f15 * ((float) j28), this.videoLeft * ((float) j28));
            } else if (this.hasRound) {
                long j29 = this.audioOffset + (this.audioLeft * ((float) this.audioDuration));
                float f16 = this.roundRight;
                long j30 = this.videoDuration;
                this.progress = Utilities.clamp(j29, f16 * ((float) j30), this.roundLeft * ((float) j30));
            } else {
                float f17 = this.audioLeft;
                this.progress = Utilities.clamp(f17 * ((float) j8), this.audioDuration, 0L);
            }
            TimelineDelegate timelineDelegate7 = this.delegate;
            if (timelineDelegate7 != null) {
                timelineDelegate7.onProgressChange(this.progress, false);
            }
        }
    }

    private void moveRoundOffset(float f) {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        TimelineDelegate timelineDelegate;
        long j6;
        long clamp;
        if (!this.hasVideo) {
            long j7 = this.roundOffset;
            long clamp2 = Utilities.clamp(j7 + f, 0L, -(this.roundDuration - Math.min(getBaseDuration(), 120000L)));
            this.roundOffset = clamp2;
            float f2 = (float) (clamp2 - j7);
            this.roundLeft = Utilities.clamp(this.roundLeft - (f2 / ((float) this.roundDuration)), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            this.roundRight = Utilities.clamp(this.roundRight - (f2 / ((float) this.roundDuration)), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            TimelineDelegate timelineDelegate2 = this.delegate;
            if (timelineDelegate2 != null) {
                timelineDelegate2.onAudioLeftChange(this.roundLeft);
                this.delegate.onAudioRightChange(this.roundRight);
            }
        } else if (this.roundSelected) {
            float f3 = this.videoRight;
            long j8 = this.videoDuration;
            float f4 = this.roundRight;
            long j9 = this.roundDuration;
            long j10 = (((float) j8) * f3) - (((float) j9) * f4);
            float f5 = this.videoLeft;
            float f6 = this.roundLeft;
            long j11 = (((float) j8) * f5) - (((float) j9) * f6);
            float min = Math.min(f4 - f6, ((f3 - f5) * ((float) j8)) / ((float) j9));
            long j12 = this.roundOffset;
            long j13 = f;
            if (j12 + j13 > j10) {
                float clamp3 = Utilities.clamp((((this.videoRight * ((float) this.videoDuration)) - ((float) j12)) - ((float) j13)) / ((float) this.roundDuration), 1.0f, min);
                this.roundRight = clamp3;
                float clamp4 = Utilities.clamp(clamp3 - min, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                this.roundLeft = clamp4;
                float f7 = this.videoRight;
                long j14 = this.videoDuration;
                float f8 = this.roundRight;
                long j15 = this.roundDuration;
                long j16 = (f7 * ((float) j14)) - (f8 * ((float) j15));
                long j17 = (this.videoLeft * ((float) j14)) - (clamp4 * ((float) j15));
                if (j16 < j17) {
                    j4 = j17;
                    j3 = j16;
                } else {
                    j3 = j17;
                    j4 = j16;
                }
                this.roundOffset = Utilities.clamp(this.roundOffset + j13, j4, j3);
                TimelineDelegate timelineDelegate3 = this.delegate;
                if (timelineDelegate3 != null) {
                    timelineDelegate3.onRoundLeftChange(this.roundLeft);
                    this.delegate.onRoundRightChange(this.roundRight);
                }
            } else if (j12 + j13 < j11) {
                float clamp5 = Utilities.clamp((((this.videoLeft * ((float) this.videoDuration)) - ((float) j12)) - ((float) j13)) / ((float) this.roundDuration), 1.0f - min, (float) BitmapDescriptorFactory.HUE_RED);
                this.roundLeft = clamp5;
                float clamp6 = Utilities.clamp(clamp5 + min, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                this.roundRight = clamp6;
                float f9 = this.videoRight;
                long j18 = this.videoDuration;
                long j19 = this.roundDuration;
                long j20 = (f9 * ((float) j18)) - (clamp6 * ((float) j19));
                long j21 = (this.videoLeft * ((float) j18)) - (this.roundLeft * ((float) j19));
                if (j20 < j21) {
                    j2 = j20;
                    j = j21;
                } else {
                    j = j20;
                    j2 = j21;
                }
                this.roundOffset = Utilities.clamp(this.roundOffset + j13, j, j2);
                TimelineDelegate timelineDelegate4 = this.delegate;
                if (timelineDelegate4 != null) {
                    timelineDelegate4.onRoundLeftChange(this.roundLeft);
                    this.delegate.onRoundRightChange(this.roundRight);
                }
            } else {
                this.roundOffset = j12 + j13;
            }
        } else {
            long j22 = this.roundOffset + f;
            long j23 = this.roundDuration;
            this.roundOffset = Utilities.clamp(j22, ((float) getBaseDuration()) - (((float) j23) * this.roundRight), (-this.roundLeft) * ((float) j23));
        }
        invalidate();
        TimelineDelegate timelineDelegate5 = this.delegate;
        if (timelineDelegate5 != null) {
            timelineDelegate5.onRoundOffsetChange(this.roundOffset + (this.roundLeft * ((float) this.roundDuration)));
        }
        boolean z = this.dragged;
        if (!z && (timelineDelegate = this.delegate) != null) {
            timelineDelegate.onProgressDragChange(true);
            if (this.hasVideo) {
                long j24 = this.roundOffset + (this.roundLeft * ((float) this.roundDuration));
                float f10 = this.videoRight;
                long j25 = this.videoDuration;
                clamp = Utilities.clamp(j24, f10 * ((float) j25), this.videoLeft * ((float) j25));
            } else {
                float f11 = this.roundLeft;
                clamp = Utilities.clamp(f11 * ((float) j6), this.roundDuration, 0L);
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
                long j26 = this.roundOffset + (this.roundLeft * ((float) this.roundDuration));
                float f12 = this.videoRight;
                long j27 = this.videoDuration;
                this.progress = Utilities.clamp(j26, f12 * ((float) j27), this.videoLeft * ((float) j27));
            } else {
                float f13 = this.roundLeft;
                this.progress = Utilities.clamp(f13 * ((float) j5), this.roundDuration, 0L);
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
                this.scroll = Math.max((float) BitmapDescriptorFactory.HUE_RED, (((currX - this.f2037px) - this.f2036ph) / this.f2039sw) * ((float) min));
            } else if (!this.audioSelected) {
                this.scroller.abortAnimation();
                return;
            } else {
                int i = this.f2037px;
                int i2 = this.f2036ph;
                int i3 = this.f2039sw;
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
            int min = Math.min(TimelineView.this.waveform.getCount() - 1, (int) Math.ceil(((TimelineView.this.f2036ph + f3) - f) / round));
            for (int max = Math.max(0, (int) (((f2 - TimelineView.this.f2036ph) - f) / round)); max <= min; max++) {
                float f9 = max;
                float m107dp = (f9 * round) + f + AndroidUtilities.m107dp(2);
                float bar = f6 <= BitmapDescriptorFactory.HUE_RED ? 0.0f : (TimelineView.this.waveform.getBar(max) / f6) * f7 * 0.6f;
                if (f9 < f5 && max + 1 > f5) {
                    bar *= f5 - f9;
                } else if (f9 > f5) {
                    bar = 0.0f;
                }
                if (m107dp < f2 || m107dp > f3) {
                    bar *= f4;
                    if (bar <= BitmapDescriptorFactory.HUE_RED) {
                    }
                }
                float max2 = Math.max(bar, AndroidUtilities.lerp(AndroidUtilities.dpf2(0.66f), AndroidUtilities.dpf2(1.5f), f4));
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(m107dp, AndroidUtilities.lerp(f8 - max2, f8 - ((f7 + max2) / 2.0f), f4), AndroidUtilities.dpf2(1.66f) + m107dp, AndroidUtilities.lerp(f8, f8 - ((f7 - max2) / 2.0f), f4));
                TimelineView.this.waveformPath.addRoundRect(rectF, TimelineView.this.waveformRadii, Path.Direction.CW);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:426:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x03f4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void dispatchDraw(android.graphics.Canvas r45) {
        /*
            Method dump skipped, instructions count: 2999
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.TimelineView.dispatchDraw(android.graphics.Canvas):void");
    }

    private void drawRegion(Canvas canvas, Paint paint, float f, float f2, float f3, float f4, float f5) {
        if (f5 <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(f3 - AndroidUtilities.m107dp(10), f, f4 + AndroidUtilities.m107dp(10), f2);
        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f2040w, this.f2035h, 255, 31);
        int i = (int) (255.0f * f5);
        this.regionPaint.setAlpha(i);
        canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), this.regionPaint);
        rectF.inset(AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(2));
        canvas.drawRect(rectF, this.regionCutPaint);
        float m107dp = AndroidUtilities.m107dp(2);
        float m107dp2 = AndroidUtilities.m107dp(10);
        Paint paint2 = paint != null ? paint : this.regionHandlePaint;
        this.regionHandlePaint.setAlpha(255);
        paint2.setAlpha(i);
        float f6 = f + f2;
        float f7 = (f6 - m107dp2) / 2.0f;
        float f8 = (f6 + m107dp2) / 2.0f;
        rectF.set(f3 - ((AndroidUtilities.m107dp(10) - m107dp) / 2.0f), f7, f3 - ((AndroidUtilities.m107dp(10) + m107dp) / 2.0f), f8);
        canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(1), AndroidUtilities.m107dp(1), paint2);
        if (paint != null) {
            this.regionHandlePaint.setAlpha((int) (f5 * 48.0f));
            canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(1), AndroidUtilities.m107dp(1), this.regionHandlePaint);
        }
        rectF.set(f4 + ((AndroidUtilities.m107dp(10) - m107dp) / 2.0f), f7, f4 + ((AndroidUtilities.m107dp(10) + m107dp) / 2.0f), f8);
        canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(1), AndroidUtilities.m107dp(1), paint2);
        if (paint != null) {
            this.regionHandlePaint.setAlpha((int) (48.0f * f5));
            canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(1), AndroidUtilities.m107dp(1), this.regionHandlePaint);
        }
        canvas.restore();
    }

    private void drawProgress(Canvas canvas, float f, float f2, long j, float f3) {
        float clamp = this.f2037px + this.f2036ph + (this.f2039sw * (((float) ((Utilities.clamp(j, getBaseDuration(), 0L) + (!this.hasVideo ? this.audioOffset : 0L)) - this.scroll)) / ((float) Math.min(getBaseDuration(), 120000L))));
        float f4 = (((f + f2) / 2.0f) / 2.0f) * (1.0f - f3);
        float f5 = f + f4;
        float f6 = f2 - f4;
        this.progressShadowPaint.setAlpha((int) (38.0f * f3));
        this.progressWhitePaint.setAlpha((int) (f3 * 255.0f));
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(clamp - AndroidUtilities.dpf2(1.5f), f5, AndroidUtilities.dpf2(1.5f) + clamp, f6);
        rectF.inset(-AndroidUtilities.dpf2(0.66f), -AndroidUtilities.dpf2(0.66f));
        canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), this.progressShadowPaint);
        rectF.set(clamp - AndroidUtilities.dpf2(1.5f), f5, clamp + AndroidUtilities.dpf2(1.5f), f6);
        canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), this.progressWhitePaint);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        this.audioAuthorPaint.setTextSize(AndroidUtilities.m107dp(12));
        this.audioTitlePaint.setTextSize(AndroidUtilities.m107dp(12));
        float[] fArr = this.waveformRadii;
        float m107dp = AndroidUtilities.m107dp(2);
        fArr[3] = m107dp;
        fArr[2] = m107dp;
        fArr[1] = m107dp;
        fArr[0] = m107dp;
        float[] fArr2 = this.waveformRadii;
        fArr2[7] = 0.0f;
        fArr2[6] = 0.0f;
        fArr2[5] = 0.0f;
        fArr2[4] = 0.0f;
        int m107dp2 = AndroidUtilities.m107dp(12);
        this.f2037px = m107dp2;
        int m107dp3 = AndroidUtilities.m107dp(5);
        this.f2038py = m107dp3;
        setPadding(m107dp2, m107dp3, AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(5));
        int size = View.MeasureSpec.getSize(i);
        this.f2040w = size;
        int m107dp4 = AndroidUtilities.m107dp(heightDp());
        this.f2035h = m107dp4;
        setMeasuredDimension(size, m107dp4);
        int m107dp5 = AndroidUtilities.m107dp(10);
        this.f2036ph = m107dp5;
        this.f2039sw = (this.f2040w - (m107dp5 * 2)) - (this.f2037px * 2);
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
        private final Paint bitmapPaint;
        private Path clipPath;
        private final int count;
        private boolean destroyed;
        private long duration;
        private final int frameHeight;
        private final long frameIterator;
        private final int frameWidth;
        private final ArrayList<BitmapFrame> frames;
        private final boolean isRound;
        private boolean loading;
        private MediaMetadataRetriever metadataRetriever;
        private long nextFrame;

        public VideoThumbsLoader(TimelineView timelineView, boolean z, String str, int i, int i2, Long l) {
            this(z, str, i, i2, l, 120000L);
        }

        /* JADX WARN: Code restructure failed: missing block: B:60:0x0068, code lost:
            if (r7 != 270) goto L23;
         */
        /* JADX WARN: Removed duplicated region for block: B:69:0x007e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public VideoThumbsLoader(boolean r6, java.lang.String r7, int r8, int r9, java.lang.Long r10, long r11) {
            /*
                Method dump skipped, instructions count: 204
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.TimelineView.VideoThumbsLoader.<init>(org.telegram.ui.Stories.recorder.TimelineView, boolean, java.lang.String, int, int, java.lang.Long, long):void");
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
                    Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                    Rect rect2 = new Rect((int) ((createBitmap.getWidth() - (bitmap.getWidth() * max)) / 2.0f), (int) ((createBitmap.getHeight() - (bitmap.getHeight() * max)) / 2.0f), (int) ((createBitmap.getWidth() + (bitmap.getWidth() * max)) / 2.0f), (int) ((createBitmap.getHeight() + (bitmap.getHeight() * max)) / 2.0f));
                    if (this.isRound) {
                        if (this.clipPath == null) {
                            this.clipPath = new Path();
                        }
                        this.clipPath.rewind();
                        Path path = this.clipPath;
                        int i = this.frameWidth;
                        int i2 = this.frameHeight;
                        path.addCircle(i / 2.0f, i2 / 2.0f, Math.min(i, i2) / 2.0f, Path.Direction.CW);
                        canvas.clipPath(this.clipPath);
                    }
                    canvas.drawBitmap(bitmap, rect, rect2, this.bitmapPaint);
                    bitmap.recycle();
                    bitmap = createBitmap;
                }
            } catch (Exception e) {
                FileLog.m102e(e);
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
                    FileLog.m102e(e);
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
                FileLog.m102e(e);
            }
            int round = Math.round(((((float) (this.duration * 1000)) / ((float) Math.min(r8.hasVideo ? r8.videoDuration : r8.hasRound ? r8.roundDuration : this.duration * 1000, 120000L))) * i) / Math.round(AndroidUtilities.dpf2(3.3333f)));
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
                FileLog.m102e(e);
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

    public int getContentHeight() {
        float f = this.f2038py;
        boolean z = this.hasVideo;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float videoHeight = f + (z ? getVideoHeight() + AndroidUtilities.m107dp(4) : 0.0f) + (this.hasRound ? getRoundHeight() + AndroidUtilities.m107dp(4) : 0.0f);
        if (this.hasAudio) {
            f2 = getAudioHeight() + AndroidUtilities.m107dp(4);
        }
        return (int) (videoHeight + f2 + this.f2038py);
    }
}
