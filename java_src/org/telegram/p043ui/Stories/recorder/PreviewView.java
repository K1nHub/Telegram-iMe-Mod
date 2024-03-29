package org.telegram.p043ui.Stories.recorder;

import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Size;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.C0483C;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.zxing.common.detector.MathUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.EmojiThemes;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.BlurringShader;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.MotionBackgroundDrawable;
import org.telegram.p043ui.Components.Paint.Views.RoundView;
import org.telegram.p043ui.Components.PhotoFilterView;
import org.telegram.p043ui.Components.VideoEditTextureView;
import org.telegram.p043ui.Components.VideoPlayer;
import org.telegram.p043ui.Stories.recorder.PreviewView;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.p043ui.Stories.recorder.TimelineView;
import org.telegram.tgnet.ResultCallback;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_documentAttributeFilename;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$WallPaper;
/* renamed from: org.telegram.ui.Stories.recorder.PreviewView */
/* loaded from: classes6.dex */
public class PreviewView extends FrameLayout {
    private boolean allowCropping;
    private boolean allowRotation;
    private boolean allowWithSingleTouch;
    private float angle;
    private VideoPlayer audioPlayer;
    private Bitmap bitmap;
    private final Paint bitmapPaint;
    private final BlurringShader.BlurManager blurManager;

    /* renamed from: cx */
    private float f2019cx;

    /* renamed from: cy */
    private float f2020cy;
    private boolean doNotSpanRotation;
    private boolean draw;
    public boolean drawForThemeToggle;
    private StoryEntry entry;
    public TextureView filterTextureView;
    private Matrix finalMatrix;
    private int gradientBottom;
    private final Paint gradientPaint;
    private int gradientTop;
    public Runnable invalidateBlur;
    public boolean isMuted;
    private long lastPos;
    private final PointF lastTouch;
    private float lastTouchDistance;
    private double lastTouchRotation;
    private Drawable lastWallpaperDrawable;
    private final Matrix matrix;
    private boolean moving;
    private boolean multitouch;
    private Runnable onErrorListener;
    private Runnable onTap;
    private final HashSet<Integer> pauseLinks;
    private PhotoFilterView photoFilterView;
    private float rotationDiff;
    private VideoPlayer roundPlayer;
    private int roundPlayerHeight;
    private int roundPlayerWidth;
    private RoundView roundView;
    private long seekedLastTime;
    private final Paint snapPaint;
    private boolean snappedRotation;
    private long tapTime;
    private VideoEditTextureView textureView;
    private final TextureViewHolder textureViewHolder;
    private final AnimatedFloat thumbAlpha;
    private Bitmap thumbBitmap;
    private TimelineView timelineView;
    private final PointF touch;
    private Matrix touchMatrix;
    private final Runnable updateAudioProgressRunnable;
    private final Runnable updateProgressRunnable;
    private final Runnable updateRoundProgressRunnable;
    private final float[] vertices;
    private int videoHeight;
    private VideoPlayer videoPlayer;
    private int videoWidth;
    private Drawable wallpaperDrawable;
    private AnimatedFloat wallpaperDrawableCrossfade;

    public boolean additionalTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    protected void invalidateTextureViewHolder() {
    }

    public void onEntityDraggedBottom(boolean z) {
    }

    public void onEntityDraggedTop(boolean z) {
    }

    public void onRoundRemove() {
    }

    public void onRoundSelectChange(boolean z) {
    }

    public PreviewView(Context context, BlurringShader.BlurManager blurManager, TextureViewHolder textureViewHolder) {
        super(context);
        Paint paint = new Paint(1);
        this.snapPaint = paint;
        this.updateProgressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PreviewView.this.lambda$new$5();
            }
        };
        this.updateAudioProgressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                PreviewView.this.lambda$new$6();
            }
        };
        this.updateRoundProgressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PreviewView.this.lambda$new$7();
            }
        };
        this.wallpaperDrawableCrossfade = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.bitmapPaint = new Paint(7);
        this.gradientPaint = new Paint(1);
        this.matrix = new Matrix();
        this.vertices = new float[2];
        this.draw = true;
        this.thumbAlpha = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT);
        this.drawForThemeToggle = false;
        this.allowCropping = true;
        this.lastTouch = new PointF();
        this.touch = new PointF();
        this.touchMatrix = new Matrix();
        this.finalMatrix = new Matrix();
        this.pauseLinks = new HashSet<>();
        this.blurManager = blurManager;
        this.textureViewHolder = textureViewHolder;
        paint.setStrokeWidth(AndroidUtilities.m107dp(1));
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(-1);
        paint.setShadowLayer(AndroidUtilities.m107dp(3), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(1), 1073741824);
    }

    public long getDuration() {
        StoryEntry storyEntry = this.entry;
        if (storyEntry != null) {
            double d = storyEntry.fileDuration;
            if (d >= 0.0d) {
                return (long) (d * 1000.0d);
            }
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null || videoPlayer.getDuration() == C0483C.TIME_UNSET) {
            return 1L;
        }
        return this.videoPlayer.getDuration();
    }

    public void set(StoryEntry storyEntry) {
        set(storyEntry, null, 0L);
    }

    public void set(StoryEntry storyEntry, Runnable runnable, long j) {
        this.entry = storyEntry;
        if (storyEntry == null) {
            setupVideoPlayer(null, runnable, j);
            setupImage(null);
            setupWallpaper(null, false);
            this.gradientPaint.setShader(null);
            setupAudio((StoryEntry) null, false);
            setupRound(null, null, false);
            return;
        }
        if (storyEntry.isVideo) {
            setupImage(storyEntry);
            setupVideoPlayer(storyEntry, runnable, j);
            if (storyEntry.gradientTopColor != 0 || storyEntry.gradientBottomColor != 0) {
                setupGradient();
            } else {
                storyEntry.setupGradient(new PreviewView$$ExternalSyntheticLambda2(this));
            }
        } else {
            setupVideoPlayer(null, runnable, 0L);
            setupImage(storyEntry);
            setupGradient();
        }
        applyMatrix();
        setupWallpaper(storyEntry, false);
        setupAudio(storyEntry, false);
        setupRound(storyEntry, null, false);
    }

    public void preset(StoryEntry storyEntry) {
        this.entry = storyEntry;
        if (storyEntry == null) {
            setupImage(null);
            setupWallpaper(null, false);
            this.gradientPaint.setShader(null);
            setupAudio((StoryEntry) null, false);
            setupRound(null, null, false);
            return;
        }
        if (storyEntry.isVideo) {
            setupImage(storyEntry);
            if (storyEntry.gradientTopColor != 0 || storyEntry.gradientBottomColor != 0) {
                setupGradient();
            } else {
                storyEntry.setupGradient(new PreviewView$$ExternalSyntheticLambda2(this));
            }
        } else {
            setupImage(storyEntry);
            setupGradient();
        }
        applyMatrix();
        setupWallpaper(storyEntry, false);
        setupAudio(storyEntry, false);
        setupRound(storyEntry, null, false);
    }

    public void setupAudio(StoryEntry storyEntry, boolean z) {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer != null) {
            videoPlayer.pause();
            this.audioPlayer.releasePlayer(true);
            this.audioPlayer = null;
        }
        if (storyEntry == null) {
            return;
        }
        TimelineView timelineView = this.timelineView;
        if (timelineView != null) {
            timelineView.setAudio(storyEntry.audioPath, storyEntry.audioAuthor, storyEntry.audioTitle, storyEntry.audioDuration, storyEntry.audioOffset, storyEntry.audioLeft, storyEntry.audioRight, storyEntry.audioVolume, z);
        }
        if (storyEntry.audioPath != null) {
            VideoPlayer videoPlayer2 = new VideoPlayer();
            this.audioPlayer = videoPlayer2;
            videoPlayer2.allowMultipleInstances = true;
            videoPlayer2.setDelegate(new VideoPlayer.VideoPlayerDelegate() { // from class: org.telegram.ui.Stories.recorder.PreviewView.1
                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onError(VideoPlayer videoPlayer3, Exception exc) {
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onRenderedFirstFrame() {
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
                    return false;
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onVideoSizeChanged(int i, int i2, int i3, float f) {
                }

                {
                    PreviewView.this = this;
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onStateChanged(boolean z2, int i) {
                    AndroidUtilities.cancelRunOnUIThread(PreviewView.this.updateAudioProgressRunnable);
                    if (PreviewView.this.audioPlayer == null || !PreviewView.this.audioPlayer.isPlaying()) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(PreviewView.this.updateAudioProgressRunnable);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                    PreviewView.this.invalidateTextureViewHolder();
                }
            });
            this.audioPlayer.preparePlayer(Uri.fromFile(new File(storyEntry.audioPath)), "other");
            checkVolumes();
            if (this.videoPlayer != null && getDuration() > 0) {
                long duration = storyEntry.left * ((float) getDuration());
                this.videoPlayer.seekTo(duration);
                this.timelineView.setProgress(duration);
            }
            updateAudioPlayer(true);
        }
    }

    public void setupAudio(MessageObject messageObject, boolean z) {
        TLRPC$Message tLRPC$Message;
        StoryEntry storyEntry = this.entry;
        if (storyEntry != null) {
            storyEntry.editedMedia = true;
            if (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null) {
                storyEntry.audioPath = null;
                storyEntry.audioAuthor = null;
                storyEntry.audioTitle = null;
                storyEntry.audioOffset = 0L;
                storyEntry.audioDuration = 0L;
                storyEntry.audioLeft = BitmapDescriptorFactory.HUE_RED;
                storyEntry.audioRight = 1.0f;
            } else {
                storyEntry.audioPath = tLRPC$Message.attachPath;
                storyEntry.audioAuthor = null;
                storyEntry.audioTitle = null;
                TLRPC$Document document = messageObject.getDocument();
                if (document != null) {
                    Iterator<TLRPC$DocumentAttribute> it = document.attributes.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        TLRPC$DocumentAttribute next = it.next();
                        if (next instanceof TLRPC$TL_documentAttributeAudio) {
                            this.entry.audioAuthor = next.performer;
                            if (!TextUtils.isEmpty(next.title)) {
                                this.entry.audioTitle = next.title;
                            }
                            this.entry.audioDuration = (long) (next.duration * 1000.0d);
                        } else if (next instanceof TLRPC$TL_documentAttributeFilename) {
                            this.entry.audioTitle = next.file_name;
                        }
                    }
                }
                StoryEntry storyEntry2 = this.entry;
                storyEntry2.audioOffset = 0L;
                if (storyEntry2.isVideo) {
                    storyEntry2.audioOffset = storyEntry2.left * ((float) getDuration());
                }
                StoryEntry storyEntry3 = this.entry;
                storyEntry3.audioLeft = BitmapDescriptorFactory.HUE_RED;
                long min = Math.min((storyEntry3 == null || !storyEntry3.isVideo) ? storyEntry3.audioDuration : getDuration(), 120000L);
                StoryEntry storyEntry4 = this.entry;
                storyEntry4.audioRight = storyEntry4.audioDuration != 0 ? Math.min(1.0f, ((float) Math.min(min, 59000L)) / ((float) this.entry.audioDuration)) : 1.0f;
            }
        }
        setupAudio(this.entry, z);
    }

    public void seekTo(long j) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.seekTo(j, false);
        } else {
            VideoPlayer videoPlayer2 = this.roundPlayer;
            if (videoPlayer2 != null) {
                videoPlayer2.seekTo(j, false);
            } else {
                VideoPlayer videoPlayer3 = this.audioPlayer;
                if (videoPlayer3 != null) {
                    videoPlayer3.seekTo(j, false);
                }
            }
        }
        updateAudioPlayer(true);
        updateRoundPlayer(true);
    }

    public void seek(long j) {
        seekTo(j);
        TimelineView timelineView = this.timelineView;
        if (timelineView != null) {
            timelineView.setProgress(0L);
        }
    }

    public void setVideoTimelineView(TimelineView timelineView) {
        this.timelineView = timelineView;
        if (timelineView != null) {
            timelineView.setDelegate(new TimelineView.TimelineDelegate() { // from class: org.telegram.ui.Stories.recorder.PreviewView.2
                {
                    PreviewView.this = this;
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onProgressDragChange(boolean z) {
                    PreviewView.this.updatePauseReason(-4, z);
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onProgressChange(long j, boolean z) {
                    if (!z) {
                        PreviewView.this.seekTo(j);
                    } else if (PreviewView.this.videoPlayer != null) {
                        PreviewView.this.videoPlayer.seekTo(j, true);
                    } else if (PreviewView.this.audioPlayer != null) {
                        PreviewView.this.audioPlayer.seekTo(j, false);
                    }
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoVolumeChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.videoVolume = f;
                    PreviewView.this.checkVolumes();
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoLeftChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.left = f;
                    PreviewView.this.entry.editedMedia = true;
                    if (PreviewView.this.videoPlayer == null || PreviewView.this.videoPlayer.getDuration() == C0483C.TIME_UNSET) {
                        return;
                    }
                    PreviewView previewView = PreviewView.this;
                    previewView.seekTo(f * ((float) previewView.videoPlayer.getDuration()));
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoRightChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.right = f;
                    PreviewView.this.entry.editedMedia = true;
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onAudioLeftChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.audioLeft = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateAudioPlayer(true);
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onAudioRightChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.audioRight = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateAudioPlayer(true);
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onAudioOffsetChange(long j) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.audioOffset = j;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateAudioPlayer(true);
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onAudioRemove() {
                    PreviewView.this.setupAudio((MessageObject) null, true);
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onAudioVolumeChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.audioVolume = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.checkVolumes();
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundLeftChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.roundLeft = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateRoundPlayer(true);
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundRightChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.roundRight = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateRoundPlayer(true);
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundOffsetChange(long j) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.roundOffset = j;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.updateRoundPlayer(true);
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundRemove() {
                    PreviewView.this.setupRound(null, null, true);
                    PreviewView.this.onRoundRemove();
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundVolumeChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.roundVolume = f;
                    PreviewView.this.entry.editedMedia = true;
                    PreviewView.this.checkVolumes();
                }

                @Override // org.telegram.p043ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onRoundSelectChange(boolean z) {
                    PreviewView.this.onRoundSelectChange(z);
                }
            });
        }
    }

    private void setupImage(final StoryEntry storyEntry) {
        BlurringShader.BlurManager blurManager;
        String str;
        Uri withAppendedId;
        Bitmap bitmap = this.bitmap;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.bitmap.recycle();
        }
        this.bitmap = null;
        Bitmap bitmap2 = this.thumbBitmap;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            this.thumbBitmap.recycle();
        }
        this.thumbBitmap = null;
        if (storyEntry != null) {
            int measuredWidth = getMeasuredWidth() <= 0 ? AndroidUtilities.displaySize.x : getMeasuredWidth();
            int i = (int) ((measuredWidth * 16) / 9.0f);
            long j = -1;
            if (storyEntry.isVideo) {
                Bitmap bitmap3 = storyEntry.blurredVideoThumb;
                if (bitmap3 != null) {
                    this.bitmap = bitmap3;
                }
                if (this.bitmap == null && (str = storyEntry.thumbPath) != null && str.startsWith("vthumb://")) {
                    j = Long.parseLong(storyEntry.thumbPath.substring(9));
                    if (this.bitmap == null && Build.VERSION.SDK_INT >= 29) {
                        try {
                            if (storyEntry.isVideo) {
                                withAppendedId = ContentUris.withAppendedId(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, j);
                            } else {
                                withAppendedId = ContentUris.withAppendedId(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, j);
                            }
                            this.bitmap = getContext().getContentResolver().loadThumbnail(withAppendedId, new Size(measuredWidth, i), null);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            final long j2 = j;
            if (j2 < 0 && storyEntry.isVideo && storyEntry.thumbPath == null) {
                invalidate();
                return;
            }
            Bitmap bitmap4 = this.bitmap;
            if (bitmap4 == null) {
                File originalFile = storyEntry.getOriginalFile();
                if (originalFile == null) {
                    return;
                }
                final String path = originalFile.getPath();
                Bitmap scaledBitmap = StoryEntry.getScaledBitmap(new StoryEntry.DecodeBitmap() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda9
                    @Override // org.telegram.p043ui.Stories.recorder.StoryEntry.DecodeBitmap
                    public final Bitmap decode(BitmapFactory.Options options) {
                        Bitmap lambda$setupImage$0;
                        lambda$setupImage$0 = PreviewView.this.lambda$setupImage$0(storyEntry, j2, path, options);
                        return lambda$setupImage$0;
                    }
                }, measuredWidth, i, false);
                this.bitmap = scaledBitmap;
                BlurringShader.BlurManager blurManager2 = this.blurManager;
                if (blurManager2 == null || scaledBitmap == null) {
                    return;
                }
                blurManager2.resetBitmap();
                this.blurManager.setFallbackBlur(storyEntry.buildBitmap(0.2f, this.bitmap), 0);
                Runnable runnable = this.invalidateBlur;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            } else if (!storyEntry.isDraft && storyEntry.isVideo && bitmap4 != null) {
                storyEntry.width = bitmap4.getWidth();
                storyEntry.height = this.bitmap.getHeight();
                storyEntry.setupMatrix();
            }
        }
        if (storyEntry != null && (blurManager = this.blurManager) != null && this.bitmap != null) {
            blurManager.resetBitmap();
            this.blurManager.setFallbackBlur(storyEntry.buildBitmap(0.2f, this.bitmap), 0);
            Runnable runnable2 = this.invalidateBlur;
            if (runnable2 != null) {
                runnable2.run();
            }
        }
        invalidate();
    }

    public /* synthetic */ Bitmap lambda$setupImage$0(StoryEntry storyEntry, long j, String str, BitmapFactory.Options options) {
        if (storyEntry.isVideo) {
            String str2 = storyEntry.thumbPath;
            if (str2 != null) {
                return BitmapFactory.decodeFile(str2, options);
            }
            try {
                return MediaStore.Video.Thumbnails.getThumbnail(getContext().getContentResolver(), j, 1, options);
            } catch (Throwable unused) {
                invalidate();
                return null;
            }
        }
        return BitmapFactory.decodeFile(str, options);
    }

    public void setupGradient() {
        final int measuredHeight = getMeasuredHeight() > 0 ? getMeasuredHeight() : AndroidUtilities.displaySize.y;
        StoryEntry storyEntry = this.entry;
        if (storyEntry.gradientTopColor == 0 || storyEntry.gradientBottomColor == 0) {
            Bitmap bitmap = this.bitmap;
            if (bitmap != null) {
                DominantColors.getColors(true, bitmap, true, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda6
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        PreviewView.this.lambda$setupGradient$1(measuredHeight, (int[]) obj);
                    }
                });
            } else {
                Bitmap bitmap2 = this.thumbBitmap;
                if (bitmap2 != null) {
                    DominantColors.getColors(true, bitmap2, true, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda7
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            PreviewView.this.lambda$setupGradient$2(measuredHeight, (int[]) obj);
                        }
                    });
                } else {
                    this.gradientPaint.setShader(null);
                }
            }
        } else {
            Paint paint = this.gradientPaint;
            StoryEntry storyEntry2 = this.entry;
            int i = storyEntry2.gradientTopColor;
            this.gradientTop = i;
            int i2 = storyEntry2.gradientBottomColor;
            this.gradientBottom = i2;
            paint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, measuredHeight, new int[]{i, i2}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
            VideoEditTextureView videoEditTextureView = this.textureView;
            if (videoEditTextureView != null) {
                videoEditTextureView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
            }
            PhotoFilterView photoFilterView = this.photoFilterView;
            if (photoFilterView != null) {
                photoFilterView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
            }
        }
        invalidate();
    }

    public /* synthetic */ void lambda$setupGradient$1(int i, int[] iArr) {
        StoryEntry storyEntry = this.entry;
        int i2 = iArr[0];
        this.gradientTop = i2;
        storyEntry.gradientTopColor = i2;
        int i3 = iArr[1];
        this.gradientBottom = i3;
        storyEntry.gradientBottomColor = i3;
        this.gradientPaint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, i, iArr, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
        invalidate();
        VideoEditTextureView videoEditTextureView = this.textureView;
        if (videoEditTextureView != null) {
            videoEditTextureView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
        }
        PhotoFilterView photoFilterView = this.photoFilterView;
        if (photoFilterView != null) {
            photoFilterView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
        }
    }

    public /* synthetic */ void lambda$setupGradient$2(int i, int[] iArr) {
        StoryEntry storyEntry = this.entry;
        int i2 = iArr[0];
        this.gradientTop = i2;
        storyEntry.gradientTopColor = i2;
        int i3 = iArr[1];
        this.gradientBottom = i3;
        storyEntry.gradientBottomColor = i3;
        this.gradientPaint.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, i, iArr, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP));
        invalidate();
        VideoEditTextureView videoEditTextureView = this.textureView;
        if (videoEditTextureView != null) {
            videoEditTextureView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
        }
        PhotoFilterView photoFilterView = this.photoFilterView;
        if (photoFilterView != null) {
            photoFilterView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
        }
    }

    public void setupVideoPlayer(StoryEntry storyEntry, Runnable runnable, long j) {
        ArrayList<MessageObject> arrayList;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (storyEntry == null) {
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer != null) {
                videoPlayer.pause();
                this.videoPlayer.releasePlayer(true);
                this.videoPlayer = null;
            }
            TextureViewHolder textureViewHolder = this.textureViewHolder;
            if (textureViewHolder != null && textureViewHolder.active) {
                textureViewHolder.setTextureView(null);
            } else {
                VideoEditTextureView videoEditTextureView = this.textureView;
                if (videoEditTextureView != null) {
                    videoEditTextureView.clearAnimation();
                    this.textureView.animate().alpha(BitmapDescriptorFactory.HUE_RED).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            PreviewView.this.lambda$setupVideoPlayer$3();
                        }
                    }).start();
                }
            }
            TimelineView timelineView = this.timelineView;
            if (timelineView != null) {
                timelineView.setVideo(false, null, 1L, BitmapDescriptorFactory.HUE_RED);
            }
            AndroidUtilities.cancelRunOnUIThread(this.updateProgressRunnable);
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
                return;
            }
            return;
        }
        VideoPlayer videoPlayer2 = this.videoPlayer;
        if (videoPlayer2 != null) {
            videoPlayer2.releasePlayer(true);
            this.videoPlayer = null;
        }
        VideoPlayer videoPlayer3 = new VideoPlayer();
        this.videoPlayer = videoPlayer3;
        videoPlayer3.allowMultipleInstances = true;
        videoPlayer3.setDelegate(new C74223(storyEntry, new Runnable[]{runnable}));
        VideoEditTextureView videoEditTextureView2 = this.textureView;
        if (videoEditTextureView2 != null) {
            videoEditTextureView2.clearAnimation();
            this.textureView.release();
            removeView(this.textureView);
            this.textureView = null;
        }
        this.textureView = new VideoEditTextureView(getContext(), this.videoPlayer);
        this.blurManager.resetBitmap();
        this.textureView.updateUiBlurManager(storyEntry.isRepostMessage ? null : this.blurManager);
        this.textureView.setOpaque(false);
        applyMatrix();
        TextureViewHolder textureViewHolder2 = this.textureViewHolder;
        if (textureViewHolder2 != null && textureViewHolder2.active) {
            textureViewHolder2.setTextureView(this.textureView);
        } else {
            VideoEditTextureView videoEditTextureView3 = this.textureView;
            if (runnable != null) {
                f = 1.0f;
            }
            videoEditTextureView3.setAlpha(f);
            addView(this.textureView, LayoutHelper.createFrame(-2, -2, 51));
        }
        storyEntry.detectHDR(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                PreviewView.this.lambda$setupVideoPlayer$4((StoryEntry.HDRInfo) obj);
            }
        });
        this.videoPlayer.preparePlayer(Uri.fromFile(storyEntry.getOriginalFile()), "other");
        this.videoPlayer.setPlayWhenReady(this.pauseLinks.isEmpty());
        this.videoPlayer.setLooping(true);
        if (storyEntry.isEditSaved) {
            j = (storyEntry.left * ((float) storyEntry.duration)) + ((float) j);
        }
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i > 0) {
            this.videoPlayer.seekTo(j);
        }
        checkVolumes();
        updateAudioPlayer(true);
        this.timelineView.setVideo(storyEntry.isRepostMessage && (arrayList = storyEntry.messageObjects) != null && arrayList.size() == 1 && storyEntry.messageObjects.get(0).type == 5, storyEntry.getOriginalFile().getAbsolutePath(), getDuration(), storyEntry.videoVolume);
        this.timelineView.setVideoLeft(storyEntry.left);
        this.timelineView.setVideoRight(storyEntry.right);
        TimelineView timelineView2 = this.timelineView;
        if (timelineView2 == null || i <= 0) {
            return;
        }
        timelineView2.setProgress(j);
    }

    public /* synthetic */ void lambda$setupVideoPlayer$3() {
        VideoEditTextureView videoEditTextureView = this.textureView;
        if (videoEditTextureView != null) {
            videoEditTextureView.release();
            removeView(this.textureView);
            this.textureView = null;
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.PreviewView$3 */
    /* loaded from: classes6.dex */
    public class C74223 implements VideoPlayer.VideoPlayerDelegate {
        final /* synthetic */ StoryEntry val$entry;
        final /* synthetic */ Runnable[] val$whenReadyFinal;

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        C74223(StoryEntry storyEntry, Runnable[] runnableArr) {
            PreviewView.this = r1;
            this.val$entry = storyEntry;
            this.val$whenReadyFinal = runnableArr;
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, int i) {
            if (PreviewView.this.videoPlayer == null) {
                return;
            }
            if (PreviewView.this.videoPlayer == null || !PreviewView.this.videoPlayer.isPlaying()) {
                AndroidUtilities.cancelRunOnUIThread(PreviewView.this.updateProgressRunnable);
            } else {
                AndroidUtilities.runOnUIThread(PreviewView.this.updateProgressRunnable);
            }
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
            if (PreviewView.this.onErrorListener != null) {
                PreviewView.this.onErrorListener.run();
            }
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            StoryEntry storyEntry = this.val$entry;
            if (storyEntry != null) {
                storyEntry.hdrInfo = PreviewView.this.videoPlayer.getHDRStaticInfo(this.val$entry.hdrInfo);
                if (PreviewView.this.textureView != null) {
                    PreviewView.this.textureView.setHDRInfo(this.val$entry.hdrInfo);
                }
            }
            PreviewView.this.videoWidth = (int) (i * f);
            PreviewView.this.videoHeight = (int) (i2 * f);
            StoryEntry storyEntry2 = this.val$entry;
            if (storyEntry2 != null && (storyEntry2.width != PreviewView.this.videoWidth || this.val$entry.height != PreviewView.this.videoHeight)) {
                this.val$entry.width = PreviewView.this.videoWidth;
                this.val$entry.height = PreviewView.this.videoHeight;
                this.val$entry.setupMatrix();
            }
            PreviewView.this.applyMatrix();
            if (PreviewView.this.textureView != null) {
                PreviewView.this.textureView.setVideoSize(PreviewView.this.videoWidth, PreviewView.this.videoHeight);
            }
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
            if (PreviewView.this.textureViewHolder != null && PreviewView.this.textureViewHolder.active) {
                PreviewView.this.textureViewHolder.activateTextureView(PreviewView.this.videoWidth, PreviewView.this.videoHeight);
            }
            Runnable[] runnableArr = this.val$whenReadyFinal;
            if (runnableArr[0] == null) {
                if (PreviewView.this.textureView != null) {
                    if (PreviewView.this.textureViewHolder == null || !PreviewView.this.textureViewHolder.active) {
                        ViewPropertyAnimator duration = PreviewView.this.textureView.animate().alpha(1.0f).setDuration(180L);
                        final StoryEntry storyEntry = this.val$entry;
                        duration.withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$3$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                PreviewView.C74223.this.lambda$onRenderedFirstFrame$0(storyEntry);
                            }
                        }).start();
                        return;
                    }
                    return;
                }
                return;
            }
            PreviewView.this.post(runnableArr[0]);
            this.val$whenReadyFinal[0] = null;
            if (PreviewView.this.bitmap != null) {
                PreviewView.this.bitmap.recycle();
                if (this.val$entry.blurredVideoThumb == PreviewView.this.bitmap) {
                    this.val$entry.blurredVideoThumb = null;
                }
                PreviewView.this.bitmap = null;
                PreviewView.this.invalidate();
            }
        }

        public /* synthetic */ void lambda$onRenderedFirstFrame$0(StoryEntry storyEntry) {
            if (PreviewView.this.bitmap != null) {
                PreviewView.this.bitmap.recycle();
                if (storyEntry.blurredVideoThumb == PreviewView.this.bitmap) {
                    storyEntry.blurredVideoThumb = null;
                }
                PreviewView.this.bitmap = null;
                PreviewView.this.invalidate();
            }
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            PreviewView.this.invalidateTextureViewHolder();
        }
    }

    public /* synthetic */ void lambda$setupVideoPlayer$4(StoryEntry.HDRInfo hDRInfo) {
        VideoEditTextureView videoEditTextureView = this.textureView;
        if (videoEditTextureView != null) {
            videoEditTextureView.setHDRInfo(hDRInfo);
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.PreviewView$TextureViewHolder */
    /* loaded from: classes6.dex */
    public static class TextureViewHolder {
        public boolean active;
        private TextureView textureView;
        public boolean textureViewActive;
        public int videoHeight;
        public int videoWidth;
        private Utilities.Callback2<Integer, Integer> whenTextureViewActive;
        private Utilities.Callback<TextureView> whenTextureViewReceived;

        public void setTextureView(TextureView textureView) {
            TextureView textureView2 = this.textureView;
            if (textureView2 == textureView) {
                return;
            }
            if (textureView2 != null) {
                ViewParent parent = textureView2.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.textureView);
                }
                this.textureView = null;
            }
            this.textureViewActive = false;
            this.textureView = textureView;
            Utilities.Callback<TextureView> callback = this.whenTextureViewReceived;
            if (callback != null) {
                callback.run(textureView);
            }
        }

        public void activateTextureView(int i, int i2) {
            this.textureViewActive = true;
            this.videoWidth = i;
            this.videoHeight = i2;
            Utilities.Callback2<Integer, Integer> callback2 = this.whenTextureViewActive;
            if (callback2 != null) {
                callback2.run(Integer.valueOf(i), Integer.valueOf(this.videoHeight));
            }
        }

        public void takeTextureView(Utilities.Callback<TextureView> callback, Utilities.Callback2<Integer, Integer> callback2) {
            Utilities.Callback2<Integer, Integer> callback22;
            this.whenTextureViewReceived = callback;
            this.whenTextureViewActive = callback2;
            TextureView textureView = this.textureView;
            if (textureView != null && callback != null) {
                callback.run(textureView);
            }
            if (!this.textureViewActive || (callback22 = this.whenTextureViewActive) == null) {
                return;
            }
            callback22.run(Integer.valueOf(this.videoWidth), Integer.valueOf(this.videoHeight));
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        StoryEntry storyEntry;
        if (view == this.textureView && (storyEntry = this.entry) != null && storyEntry.isRepostMessage) {
            return false;
        }
        return super.drawChild(canvas, view, j);
    }

    public void setupRound(StoryEntry storyEntry, RoundView roundView, boolean z) {
        if (storyEntry == null || storyEntry.round == null) {
            VideoPlayer videoPlayer = this.roundPlayer;
            if (videoPlayer != null) {
                videoPlayer.pause();
                this.roundPlayer.releasePlayer(true);
                this.roundPlayer = null;
            }
            TimelineView timelineView = this.timelineView;
            if (timelineView != null) {
                timelineView.setRoundNull(z);
            }
            this.roundView = null;
            AndroidUtilities.cancelRunOnUIThread(this.updateProgressRunnable);
            return;
        }
        VideoPlayer videoPlayer2 = this.roundPlayer;
        if (videoPlayer2 != null) {
            videoPlayer2.releasePlayer(true);
            this.roundPlayer = null;
        }
        VideoPlayer videoPlayer3 = new VideoPlayer();
        this.roundPlayer = videoPlayer3;
        videoPlayer3.allowMultipleInstances = true;
        videoPlayer3.setDelegate(new VideoPlayer.VideoPlayerDelegate() { // from class: org.telegram.ui.Stories.recorder.PreviewView.4
            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onError(VideoPlayer videoPlayer4, Exception exc) {
            }

            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onRenderedFirstFrame() {
            }

            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
                VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
            }

            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
                VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
            }

            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
                VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
            }

            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }

            {
                PreviewView.this = this;
            }

            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onStateChanged(boolean z2, int i) {
                if (PreviewView.this.roundPlayer == null) {
                    return;
                }
                if (PreviewView.this.roundPlayer == null || !PreviewView.this.roundPlayer.isPlaying()) {
                    AndroidUtilities.cancelRunOnUIThread(PreviewView.this.updateRoundProgressRunnable);
                } else {
                    AndroidUtilities.runOnUIThread(PreviewView.this.updateRoundProgressRunnable);
                }
            }

            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onVideoSizeChanged(int i, int i2, int i3, float f) {
                PreviewView.this.roundPlayerWidth = i;
                PreviewView.this.roundPlayerHeight = i2;
                if (PreviewView.this.roundView != null) {
                    PreviewView.this.roundView.resizeTextureView(i, i2);
                }
            }
        });
        this.roundPlayer.preparePlayer(Uri.fromFile(storyEntry.round), "other");
        checkVolumes();
        attachRoundView(roundView);
        this.timelineView.setRound(storyEntry.round.getAbsolutePath(), storyEntry.roundDuration, storyEntry.roundOffset, storyEntry.roundLeft, storyEntry.roundRight, storyEntry.roundVolume, z);
        updateRoundPlayer(true);
    }

    public void attachRoundView(RoundView roundView) {
        VideoPlayer videoPlayer;
        this.roundView = roundView;
        if (roundView == null || (videoPlayer = this.roundPlayer) == null) {
            return;
        }
        videoPlayer.setTextureView(roundView.textureView);
    }

    public long release() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer != null) {
            videoPlayer.pause();
            this.audioPlayer.releasePlayer(true);
            this.audioPlayer = null;
        }
        long j = 0;
        VideoPlayer videoPlayer2 = this.roundPlayer;
        if (videoPlayer2 != null) {
            j = videoPlayer2.getCurrentPosition();
            this.roundPlayer.pause();
            this.roundPlayer.releasePlayer(true);
            this.roundPlayer = null;
        }
        VideoPlayer videoPlayer3 = this.videoPlayer;
        if (videoPlayer3 != null) {
            long currentPosition = videoPlayer3.getCurrentPosition();
            this.videoPlayer.pause();
            this.videoPlayer.releasePlayer(true);
            this.videoPlayer = null;
            return currentPosition;
        }
        return j;
    }

    public void setFilterTextureView(TextureView textureView, PhotoFilterView photoFilterView) {
        TextureView textureView2 = this.filterTextureView;
        if (textureView2 != null) {
            removeView(textureView2);
            this.filterTextureView = null;
        }
        this.photoFilterView = photoFilterView;
        this.filterTextureView = textureView;
        if (photoFilterView != null) {
            photoFilterView.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
        }
        TextureView textureView3 = this.filterTextureView;
        if (textureView3 != null) {
            addView(textureView3);
        }
    }

    public /* synthetic */ void lambda$new$5() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null || this.timelineView == null) {
            return;
        }
        long currentPosition = videoPlayer.getCurrentPosition();
        if (getDuration() > 1) {
            float duration = ((float) currentPosition) / ((float) getDuration());
            if (!this.timelineView.isDragging()) {
                StoryEntry storyEntry = this.entry;
                if ((duration < storyEntry.left || duration > storyEntry.right) && System.currentTimeMillis() - this.seekedLastTime > 500) {
                    this.seekedLastTime = System.currentTimeMillis();
                    VideoPlayer videoPlayer2 = this.videoPlayer;
                    long duration2 = this.entry.left * ((float) getDuration());
                    videoPlayer2.seekTo(duration2);
                    updateAudioPlayer(true);
                    updateRoundPlayer(true);
                    currentPosition = duration2;
                    this.timelineView.setProgress(this.videoPlayer.getCurrentPosition());
                }
            }
            updateAudioPlayer(currentPosition < this.lastPos);
            updateRoundPlayer(currentPosition < this.lastPos);
            this.timelineView.setProgress(this.videoPlayer.getCurrentPosition());
        } else {
            this.timelineView.setProgress(this.videoPlayer.getCurrentPosition());
        }
        if (this.videoPlayer.isPlaying()) {
            AndroidUtilities.cancelRunOnUIThread(this.updateProgressRunnable);
            AndroidUtilities.runOnUIThread(this.updateProgressRunnable, 1000.0f / AndroidUtilities.screenRefreshRate);
        }
        this.lastPos = currentPosition;
    }

    public /* synthetic */ void lambda$new$6() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer == null || this.videoPlayer != null || this.roundPlayer != null || this.timelineView == null) {
            return;
        }
        long currentPosition = videoPlayer.getCurrentPosition();
        StoryEntry storyEntry = this.entry;
        if (storyEntry != null) {
            float f = (float) currentPosition;
            float f2 = storyEntry.audioLeft;
            long j = storyEntry.audioDuration;
            if ((f < f2 * ((float) j) || f > storyEntry.audioRight * ((float) j)) && System.currentTimeMillis() - this.seekedLastTime > 500) {
                this.seekedLastTime = System.currentTimeMillis();
                VideoPlayer videoPlayer2 = this.audioPlayer;
                StoryEntry storyEntry2 = this.entry;
                long j2 = storyEntry2.audioLeft * ((float) storyEntry2.audioDuration);
                videoPlayer2.seekTo(j2);
                currentPosition = j2;
            }
        }
        this.timelineView.setProgress(currentPosition);
        if (this.audioPlayer.isPlaying()) {
            AndroidUtilities.cancelRunOnUIThread(this.updateAudioProgressRunnable);
            AndroidUtilities.runOnUIThread(this.updateAudioProgressRunnable, 1000.0f / AndroidUtilities.screenRefreshRate);
        }
    }

    public /* synthetic */ void lambda$new$7() {
        VideoPlayer videoPlayer = this.roundPlayer;
        if (videoPlayer == null || this.videoPlayer != null || this.timelineView == null) {
            return;
        }
        long currentPosition = videoPlayer.getCurrentPosition();
        StoryEntry storyEntry = this.entry;
        if (storyEntry != null) {
            float f = (float) currentPosition;
            float f2 = storyEntry.roundLeft;
            long j = storyEntry.roundDuration;
            if ((f < f2 * ((float) j) || f > storyEntry.roundRight * ((float) j)) && System.currentTimeMillis() - this.seekedLastTime > 500) {
                this.seekedLastTime = System.currentTimeMillis();
                VideoPlayer videoPlayer2 = this.roundPlayer;
                StoryEntry storyEntry2 = this.entry;
                long j2 = storyEntry2.roundLeft * ((float) storyEntry2.roundDuration);
                videoPlayer2.seekTo(j2);
                updateAudioPlayer(true);
                currentPosition = j2;
            }
        }
        this.timelineView.setProgress(currentPosition);
        if (this.roundPlayer.isPlaying()) {
            AndroidUtilities.cancelRunOnUIThread(this.updateRoundProgressRunnable);
            AndroidUtilities.runOnUIThread(this.updateRoundProgressRunnable, 1000.0f / AndroidUtilities.screenRefreshRate);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0093, code lost:
        if (r3 <= (r0 + r5)) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateAudioPlayer(boolean r9) {
        /*
            r8 = this;
            org.telegram.ui.Components.VideoPlayer r0 = r8.audioPlayer
            if (r0 == 0) goto Lcf
            org.telegram.ui.Stories.recorder.StoryEntry r1 = r8.entry
            if (r1 != 0) goto La
            goto Lcf
        La:
            org.telegram.ui.Components.VideoPlayer r1 = r8.videoPlayer
            r2 = 1
            if (r1 != 0) goto L6d
            org.telegram.ui.Components.VideoPlayer r3 = r8.roundPlayer
            if (r3 != 0) goto L6d
            java.util.HashSet<java.lang.Integer> r1 = r8.pauseLinks
            boolean r1 = r1.isEmpty()
            r0.setPlayWhenReady(r1)
            org.telegram.ui.Components.VideoPlayer r0 = r8.audioPlayer
            r0.setLooping(r2)
            org.telegram.ui.Components.VideoPlayer r0 = r8.audioPlayer
            long r0 = r0.getCurrentPosition()
            if (r9 == 0) goto L6c
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            long r2 = r9.getDuration()
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r9 == 0) goto L6c
            float r9 = (float) r0
            org.telegram.ui.Components.VideoPlayer r0 = r8.audioPlayer
            long r0 = r0.getDuration()
            float r0 = (float) r0
            float r9 = r9 / r0
            org.telegram.ui.Stories.recorder.StoryEntry r0 = r8.entry
            float r1 = r0.audioLeft
            int r1 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r1 < 0) goto L4f
            float r0 = r0.audioRight
            int r9 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r9 <= 0) goto L6c
        L4f:
            long r0 = java.lang.System.currentTimeMillis()
            long r2 = r8.seekedLastTime
            long r0 = r0 - r2
            r2 = 500(0x1f4, double:2.47E-321)
            int r9 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r9 <= 0) goto L6c
            long r0 = java.lang.System.currentTimeMillis()
            r8.seekedLastTime = r0
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            org.telegram.ui.Stories.recorder.StoryEntry r0 = r8.entry
            long r0 = r0.audioOffset
            long r0 = -r0
            r9.seekTo(r0)
        L6c:
            return
        L6d:
            if (r1 == 0) goto L70
            goto L72
        L70:
            org.telegram.ui.Components.VideoPlayer r1 = r8.roundPlayer
        L72:
            long r3 = r1.getCurrentPosition()
            org.telegram.ui.Stories.recorder.StoryEntry r0 = r8.entry
            float r5 = r0.audioRight
            float r6 = r0.audioLeft
            float r5 = r5 - r6
            long r6 = r0.audioDuration
            float r0 = (float) r6
            float r5 = r5 * r0
            long r5 = (long) r5
            boolean r0 = r1.isPlaying()
            if (r0 == 0) goto L96
            org.telegram.ui.Stories.recorder.StoryEntry r0 = r8.entry
            long r0 = r0.audioOffset
            int r7 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r7 < 0) goto L96
            long r0 = r0 + r5
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 > 0) goto L96
            goto L97
        L96:
            r2 = 0
        L97:
            org.telegram.ui.Stories.recorder.StoryEntry r0 = r8.entry
            long r5 = r0.audioOffset
            long r3 = r3 - r5
            float r1 = r0.audioLeft
            long r5 = r0.audioDuration
            float r0 = (float) r5
            float r1 = r1 * r0
            long r0 = (long) r1
            long r3 = r3 + r0
            org.telegram.ui.Components.VideoPlayer r0 = r8.audioPlayer
            boolean r0 = r0.isPlaying()
            if (r0 == r2) goto Lb7
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            r9.setPlayWhenReady(r2)
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            r9.seekTo(r3)
            goto Lcf
        Lb7:
            if (r9 == 0) goto Lcf
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            long r0 = r9.getCurrentPosition()
            long r0 = r0 - r3
            long r0 = java.lang.Math.abs(r0)
            r5 = 120(0x78, double:5.93E-322)
            int r9 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r9 <= 0) goto Lcf
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            r9.seekTo(r3)
        Lcf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.PreviewView.updateAudioPlayer(boolean):void");
    }

    public void updateRoundPlayer(boolean z) {
        StoryEntry storyEntry;
        VideoPlayer videoPlayer = this.roundPlayer;
        if (videoPlayer == null || this.entry == null) {
            return;
        }
        VideoPlayer videoPlayer2 = this.videoPlayer;
        boolean z2 = false;
        if (videoPlayer2 == null) {
            videoPlayer.setPlayWhenReady(this.pauseLinks.isEmpty());
            this.roundPlayer.setLooping(true);
            RoundView roundView = this.roundView;
            if (roundView != null) {
                roundView.setShown(true, false);
            }
            long currentPosition = this.roundPlayer.getCurrentPosition();
            if (!z || this.roundPlayer.getDuration() == C0483C.TIME_UNSET) {
                return;
            }
            float duration = ((float) currentPosition) / ((float) this.roundPlayer.getDuration());
            StoryEntry storyEntry2 = this.entry;
            if ((duration < storyEntry2.roundLeft || duration > storyEntry2.roundRight) && System.currentTimeMillis() - this.seekedLastTime > 500) {
                this.seekedLastTime = System.currentTimeMillis();
                this.roundPlayer.seekTo(-this.entry.roundOffset);
                return;
            }
            return;
        }
        long currentPosition2 = videoPlayer2.getCurrentPosition();
        StoryEntry storyEntry3 = this.entry;
        long j = (storyEntry3.roundRight - storyEntry3.roundLeft) * ((float) storyEntry3.roundDuration);
        long j2 = storyEntry3.roundOffset;
        boolean z3 = currentPosition2 >= j2 && currentPosition2 <= j2 + j;
        if (this.videoPlayer.isPlaying() && z3) {
            z2 = true;
        }
        long j3 = (currentPosition2 - this.entry.roundOffset) + (storyEntry.roundLeft * ((float) storyEntry.roundDuration));
        RoundView roundView2 = this.roundView;
        if (roundView2 != null) {
            roundView2.setShown(z3, true);
        }
        if (this.roundPlayer.isPlaying() != z2) {
            this.roundPlayer.setPlayWhenReady(z2);
            this.roundPlayer.seekTo(j3);
        } else if (!z || Math.abs(this.roundPlayer.getCurrentPosition() - j3) <= 120) {
        } else {
            this.roundPlayer.seekTo(j3);
        }
    }

    public void whenError(Runnable runnable) {
        this.onErrorListener = runnable;
    }

    public void mute(boolean z) {
        this.isMuted = z;
        checkVolumes();
    }

    public void checkVolumes() {
        float f;
        StoryEntry storyEntry;
        VideoPlayer videoPlayer = this.videoPlayer;
        float f2 = 1.0f;
        if (videoPlayer != null) {
            videoPlayer.setVolume((this.isMuted || ((storyEntry = this.entry) != null && storyEntry.muted)) ? 0.0f : storyEntry != null ? storyEntry.videoVolume : 1.0f);
        }
        VideoPlayer videoPlayer2 = this.roundPlayer;
        if (videoPlayer2 != null) {
            if (this.isMuted) {
                f = 0.0f;
            } else {
                StoryEntry storyEntry2 = this.entry;
                f = storyEntry2 != null ? storyEntry2.roundVolume : 1.0f;
            }
            videoPlayer2.setVolume(f);
        }
        VideoPlayer videoPlayer3 = this.audioPlayer;
        if (videoPlayer3 != null) {
            if (this.isMuted) {
                f2 = 0.0f;
            } else {
                StoryEntry storyEntry3 = this.entry;
                if (storyEntry3 != null) {
                    f2 = storyEntry3.audioVolume;
                }
            }
            videoPlayer3.setVolume(f2);
        }
    }

    private void extractPointsData(Matrix matrix) {
        StoryEntry storyEntry = this.entry;
        if (storyEntry == null) {
            return;
        }
        float[] fArr = this.vertices;
        fArr[0] = storyEntry.width / 2.0f;
        fArr[1] = storyEntry.height / 2.0f;
        matrix.mapPoints(fArr);
        float[] fArr2 = this.vertices;
        this.f2019cx = fArr2[0];
        this.f2020cy = fArr2[1];
        StoryEntry storyEntry2 = this.entry;
        fArr2[0] = storyEntry2.width;
        fArr2[1] = storyEntry2.height / 2.0f;
        matrix.mapPoints(fArr2);
        float[] fArr3 = this.vertices;
        this.angle = (float) Math.toDegrees(Math.atan2(fArr3[1] - this.f2020cy, fArr3[0] - this.f2019cx));
        float f = this.f2019cx;
        float f2 = this.f2020cy;
        float[] fArr4 = this.vertices;
        MathUtils.distance(f, f2, fArr4[0], fArr4[1]);
        float[] fArr5 = this.vertices;
        StoryEntry storyEntry3 = this.entry;
        fArr5[0] = storyEntry3.width / 2.0f;
        fArr5[1] = storyEntry3.height;
        matrix.mapPoints(fArr5);
        float f3 = this.f2019cx;
        float f4 = this.f2020cy;
        float[] fArr6 = this.vertices;
        MathUtils.distance(f3, f4, fArr6[0], fArr6[1]);
    }

    public void setDraw(boolean z) {
        this.draw = z;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.wallpaperDrawable != null) {
            if (this.drawForThemeToggle) {
                Path path = new Path();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
                path.addRoundRect(rectF, AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), Path.Direction.CW);
                canvas.save();
                canvas.clipPath(path);
            }
            Drawable drawable = this.wallpaperDrawable;
            float f = !(!(drawable instanceof MotionBackgroundDrawable) || ((MotionBackgroundDrawable) drawable).getPatternBitmap() != null) ? 0.0f : this.wallpaperDrawableCrossfade.set(1.0f);
            Drawable drawable2 = this.lastWallpaperDrawable;
            if (drawable2 != null && f < 1.0f) {
                drawable2.setAlpha((int) ((1.0f - f) * 255.0f));
                StoryEntry.drawBackgroundDrawable(canvas, this.lastWallpaperDrawable, getWidth(), getHeight());
            }
            this.wallpaperDrawable.setAlpha((int) (f * 255.0f));
            StoryEntry.drawBackgroundDrawable(canvas, this.wallpaperDrawable, getWidth(), getHeight());
            if (this.drawForThemeToggle) {
                canvas.restore();
            }
        } else {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), this.gradientPaint);
        }
        if (this.draw && this.entry != null) {
            float f2 = this.thumbAlpha.set(this.bitmap != null);
            if (this.thumbBitmap != null && 1.0f - f2 > BitmapDescriptorFactory.HUE_RED) {
                this.matrix.set(this.entry.matrix);
                this.matrix.preScale(this.entry.width / this.thumbBitmap.getWidth(), this.entry.height / this.thumbBitmap.getHeight());
                this.matrix.postScale(getWidth() / this.entry.resultWidth, getHeight() / this.entry.resultHeight);
                this.bitmapPaint.setAlpha(255);
                canvas.drawBitmap(this.thumbBitmap, this.matrix, this.bitmapPaint);
            }
            if (this.bitmap != null) {
                this.matrix.set(this.entry.matrix);
                this.matrix.preScale(this.entry.width / this.bitmap.getWidth(), this.entry.height / this.bitmap.getHeight());
                this.matrix.postScale(getWidth() / this.entry.resultWidth, getHeight() / this.entry.resultHeight);
                this.bitmapPaint.setAlpha((int) (f2 * 255.0f));
                canvas.drawBitmap(this.bitmap, this.matrix, this.bitmapPaint);
            }
        }
        super.dispatchDraw(canvas);
    }

    public VideoEditTextureView getTextureView() {
        return this.textureView;
    }

    public Pair<Integer, Integer> getPaintSize() {
        if (this.entry == null) {
            return new Pair<>(1080, 1920);
        }
        return new Pair<>(Integer.valueOf(this.entry.resultWidth), Integer.valueOf(this.entry.resultHeight));
    }

    public Bitmap getPhotoBitmap() {
        return this.bitmap;
    }

    public int getOrientation() {
        StoryEntry storyEntry = this.entry;
        if (storyEntry == null) {
            return 0;
        }
        return storyEntry.orientation;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 8) {
            set(null);
        }
    }

    public void applyMatrix() {
        StoryEntry storyEntry = this.entry;
        if (storyEntry == null || storyEntry.isRepostMessage) {
            return;
        }
        if (this.textureView != null) {
            this.matrix.set(storyEntry.matrix);
            Matrix matrix = this.matrix;
            float width = 1.0f / getWidth();
            int i = this.entry.width;
            if (i < 0) {
                i = this.videoWidth;
            }
            float f = width * i;
            float height = 1.0f / getHeight();
            int i2 = this.entry.height;
            if (i2 < 0) {
                i2 = this.videoHeight;
            }
            matrix.preScale(f, height * i2);
            this.matrix.postScale(getWidth() / this.entry.resultWidth, getHeight() / this.entry.resultHeight);
            this.textureView.setTransform(this.matrix);
            this.textureView.invalidate();
        }
        invalidate();
    }

    public void setAllowCropping(boolean z) {
        this.allowCropping = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean touchEvent(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.PreviewView.touchEvent(android.view.MotionEvent):boolean");
    }

    private boolean tapTouchEvent(MotionEvent motionEvent) {
        Runnable runnable;
        if (motionEvent.getAction() == 0) {
            this.tapTime = System.currentTimeMillis();
            return true;
        } else if (motionEvent.getAction() == 1) {
            if (System.currentTimeMillis() - this.tapTime <= ViewConfiguration.getTapTimeout() && (runnable = this.onTap) != null) {
                runnable.run();
            }
            this.tapTime = 0L;
            return true;
        } else if (motionEvent.getAction() == 3) {
            this.tapTime = 0L;
            return false;
        } else {
            return false;
        }
    }

    public void setOnTapListener(Runnable runnable) {
        this.onTap = runnable;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.allowCropping) {
            touchEvent(motionEvent);
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z = additionalTouchEvent(motionEvent) || touchEvent(motionEvent);
        tapTouchEvent(motionEvent);
        if (z) {
            if (motionEvent.getPointerCount() <= 1) {
                super.dispatchTouchEvent(motionEvent);
            }
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void updatePauseReason(int i, boolean z) {
        if (z) {
            this.pauseLinks.add(Integer.valueOf(i));
        } else {
            this.pauseLinks.remove(Integer.valueOf(i));
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.setPlayWhenReady(this.pauseLinks.isEmpty());
        }
        updateAudioPlayer(true);
        updateRoundPlayer(true);
    }

    public boolean isPlaying() {
        return !this.pauseLinks.contains(-9982);
    }

    public void play(boolean z) {
        updatePauseReason(-9982, !z);
    }

    public static Drawable getBackgroundDrawable(Drawable drawable, int i, long j, boolean z) {
        TLRPC$WallPaper tLRPC$WallPaper = null;
        if (j == Long.MIN_VALUE) {
            return null;
        }
        if (j >= 0) {
            TLRPC$UserFull userFull = MessagesController.getInstance(i).getUserFull(j);
            if (userFull != null) {
                tLRPC$WallPaper = userFull.wallpaper;
            }
        } else {
            TLRPC$ChatFull chatFull = MessagesController.getInstance(i).getChatFull(-j);
            if (chatFull != null) {
                tLRPC$WallPaper = chatFull.wallpaper;
            }
        }
        return getBackgroundDrawable(drawable, i, tLRPC$WallPaper, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:133:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.drawable.Drawable getBackgroundDrawable(android.graphics.drawable.Drawable r5, int r6, org.telegram.tgnet.TLRPC$WallPaper r7, boolean r8) {
        /*
            if (r7 == 0) goto L11
            java.lang.String r0 = org.telegram.messenger.ChatThemeController.getWallpaperEmoticon(r7)
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L11
            android.graphics.drawable.Drawable r5 = org.telegram.p043ui.ChatBackgroundDrawable.getOrCreate(r5, r7, r8)
            return r5
        L11:
            r5 = 0
            if (r7 == 0) goto L25
            org.telegram.tgnet.TLRPC$WallPaperSettings r0 = r7.settings
            if (r0 == 0) goto L25
            org.telegram.messenger.ChatThemeController r0 = org.telegram.messenger.ChatThemeController.getInstance(r6)
            org.telegram.tgnet.TLRPC$WallPaperSettings r7 = r7.settings
            java.lang.String r7 = r7.emoticon
            org.telegram.ui.ActionBar.EmojiThemes r7 = r0.getTheme(r7)
            goto L26
        L25:
            r7 = r5
        L26:
            r0 = 0
            if (r7 == 0) goto L2e
            android.graphics.drawable.Drawable r5 = getBackgroundDrawableFromTheme(r6, r7, r0, r8)
            return r5
        L2e:
            android.content.Context r6 = org.telegram.messenger.ApplicationLoader.applicationContext
            java.lang.String r7 = "themeconfig"
            android.content.SharedPreferences r6 = r6.getSharedPreferences(r7, r0)
            java.lang.String r7 = "lastDayTheme"
            java.lang.String r1 = "Blue"
            java.lang.String r7 = r6.getString(r7, r1)
            org.telegram.ui.ActionBar.Theme$ThemeInfo r2 = org.telegram.p043ui.ActionBar.Theme.getTheme(r7)
            if (r2 == 0) goto L4e
            org.telegram.ui.ActionBar.Theme$ThemeInfo r2 = org.telegram.p043ui.ActionBar.Theme.getTheme(r7)
            boolean r2 = r2.isDark()
            if (r2 == 0) goto L4f
        L4e:
            r7 = r1
        L4f:
            java.lang.String r2 = "lastDarkTheme"
            java.lang.String r3 = "Dark Blue"
            java.lang.String r6 = r6.getString(r2, r3)
            org.telegram.ui.ActionBar.Theme$ThemeInfo r2 = org.telegram.p043ui.ActionBar.Theme.getTheme(r6)
            if (r2 == 0) goto L67
            org.telegram.ui.ActionBar.Theme$ThemeInfo r2 = org.telegram.p043ui.ActionBar.Theme.getTheme(r6)
            boolean r2 = r2.isDark()
            if (r2 != 0) goto L68
        L67:
            r6 = r3
        L68:
            org.telegram.ui.ActionBar.Theme$ThemeInfo r2 = org.telegram.p043ui.ActionBar.Theme.getActiveTheme()
            boolean r4 = r7.equals(r6)
            if (r4 == 0) goto L88
            boolean r2 = r2.isDark()
            if (r2 != 0) goto L86
            boolean r2 = r7.equals(r3)
            if (r2 != 0) goto L86
            java.lang.String r2 = "Night"
            boolean r2 = r7.equals(r2)
            if (r2 == 0) goto L89
        L86:
            r3 = r6
            goto L8a
        L88:
            r3 = r6
        L89:
            r1 = r7
        L8a:
            if (r8 == 0) goto L91
            org.telegram.ui.ActionBar.Theme$ThemeInfo r6 = org.telegram.p043ui.ActionBar.Theme.getTheme(r3)
            goto L95
        L91:
            org.telegram.ui.ActionBar.Theme$ThemeInfo r6 = org.telegram.p043ui.ActionBar.Theme.getTheme(r1)
        L95:
            android.util.SparseIntArray r7 = new android.util.SparseIntArray
            r7.<init>()
            r8 = 1
            java.lang.String[] r1 = new java.lang.String[r8]
            java.lang.String r2 = r6.assetName
            if (r2 == 0) goto La6
            android.util.SparseIntArray r5 = org.telegram.p043ui.ActionBar.Theme.getThemeFileValues(r5, r2, r1)
            goto Lb1
        La6:
            java.io.File r2 = new java.io.File
            java.lang.String r3 = r6.pathToFile
            r2.<init>(r3)
            android.util.SparseIntArray r5 = org.telegram.p043ui.ActionBar.Theme.getThemeFileValues(r2, r5, r1)
        Lb1:
            int[] r2 = org.telegram.p043ui.ActionBar.Theme.getDefaultColors()
            if (r2 == 0) goto Lc3
            r3 = r0
        Lb8:
            int r4 = r2.length
            if (r3 >= r4) goto Lc3
            r4 = r2[r3]
            r7.put(r3, r4)
            int r3 = r3 + 1
            goto Lb8
        Lc3:
            org.telegram.ui.ActionBar.Theme$ThemeAccent r2 = r6.getAccent(r0)
            if (r2 == 0) goto Lcd
            r2.fillAccentColors(r5, r7)
            goto Le4
        Lcd:
            if (r5 == 0) goto Le4
            r2 = r0
        Ld0:
            int r3 = r5.size()
            if (r2 >= r3) goto Le4
            int r3 = r5.keyAt(r2)
            int r4 = r5.valueAt(r2)
            r7.put(r3, r4)
            int r2 = r2 + 1
            goto Ld0
        Le4:
            r5 = r1[r0]
            org.telegram.ui.ActionBar.Theme$BackgroundDrawableSettings r5 = org.telegram.p043ui.ActionBar.Theme.createBackgroundDrawable(r6, r7, r5, r0, r8)
            android.graphics.drawable.Drawable r6 = r5.themedWallpaper
            if (r6 == 0) goto Lef
            goto Lf1
        Lef:
            android.graphics.drawable.Drawable r6 = r5.wallpaper
        Lf1:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.PreviewView.getBackgroundDrawable(android.graphics.drawable.Drawable, int, org.telegram.tgnet.TLRPC$WallPaper, boolean):android.graphics.drawable.Drawable");
    }

    public void setupWallpaper(StoryEntry storyEntry, boolean z) {
        Drawable drawable = this.wallpaperDrawable;
        this.lastWallpaperDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        if (storyEntry == null) {
            this.wallpaperDrawable = null;
            return;
        }
        long j = storyEntry.backgroundWallpaperPeerId;
        String str = storyEntry.backgroundWallpaperEmoticon;
        if (str != null) {
            Drawable backgroundDrawableFromTheme = getBackgroundDrawableFromTheme(storyEntry.currentAccount, str, storyEntry.isDark);
            storyEntry.backgroundDrawable = backgroundDrawableFromTheme;
            this.wallpaperDrawable = backgroundDrawableFromTheme;
        } else if (j != Long.MIN_VALUE) {
            Drawable backgroundDrawable = getBackgroundDrawable(this.wallpaperDrawable, storyEntry.currentAccount, j, storyEntry.isDark);
            storyEntry.backgroundDrawable = backgroundDrawable;
            this.wallpaperDrawable = backgroundDrawable;
        } else {
            this.wallpaperDrawable = null;
            return;
        }
        if (this.lastWallpaperDrawable != this.wallpaperDrawable) {
            if (z) {
                this.wallpaperDrawableCrossfade.set(BitmapDescriptorFactory.HUE_RED, true);
            } else {
                this.lastWallpaperDrawable = null;
            }
        }
        Drawable drawable2 = this.wallpaperDrawable;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        BlurringShader.BlurManager blurManager = this.blurManager;
        if (blurManager != null) {
            Drawable drawable3 = this.wallpaperDrawable;
            if (drawable3 != null) {
                if (drawable3 instanceof BitmapDrawable) {
                    blurManager.setFallbackBlur(((BitmapDrawable) drawable3).getBitmap(), 0);
                } else {
                    int intrinsicWidth = drawable3.getIntrinsicWidth();
                    int intrinsicHeight = this.wallpaperDrawable.getIntrinsicHeight();
                    if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                        intrinsicWidth = 1080;
                        intrinsicHeight = 1920;
                    }
                    float f = intrinsicWidth;
                    float f2 = intrinsicHeight;
                    float max = Math.max(100.0f / f, 100.0f / f2);
                    if (max > 1.0f) {
                        intrinsicWidth = (int) (f * max);
                        intrinsicHeight = (int) (f2 * max);
                    }
                    Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
                    this.wallpaperDrawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                    this.wallpaperDrawable.draw(new Canvas(createBitmap));
                    this.blurManager.setFallbackBlur(createBitmap, 0, true);
                }
            } else {
                blurManager.setFallbackBlur(null, 0);
            }
        }
        invalidate();
    }

    public static Drawable getBackgroundDrawableFromTheme(int i, String str, boolean z) {
        return getBackgroundDrawableFromTheme(i, str, z, false);
    }

    public static Drawable getBackgroundDrawableFromTheme(int i, String str, boolean z, boolean z2) {
        EmojiThemes theme = ChatThemeController.getInstance(i).getTheme(str);
        if (theme == null) {
            return Theme.getCachedWallpaper();
        }
        return getBackgroundDrawableFromTheme(i, theme, 0, z, z2);
    }

    public static Drawable getBackgroundDrawableFromTheme(int i, EmojiThemes emojiThemes, int i2, boolean z) {
        return getBackgroundDrawableFromTheme(i, emojiThemes, i2, z, false);
    }

    public static Drawable getBackgroundDrawableFromTheme(int i, final EmojiThemes emojiThemes, int i2, final boolean z, boolean z2) {
        if (emojiThemes.showAsDefaultStub) {
            Drawable drawable = Theme.createBackgroundDrawable(EmojiThemes.getDefaultThemeInfo(z), emojiThemes.getPreviewColors(i, z ? 1 : 0), emojiThemes.getWallpaperLink(z ? 1 : 0), i2, false).wallpaper;
            return new ColorDrawable(-16777216);
        }
        SparseIntArray previewColors = emojiThemes.getPreviewColors(i, z ? 1 : 0);
        int i3 = Theme.key_chat_wallpaper;
        int i4 = previewColors.get(i3, Theme.getColor(i3));
        int i5 = Theme.key_chat_wallpaper_gradient_to1;
        int i6 = previewColors.get(i5, Theme.getColor(i5));
        int i7 = Theme.key_chat_wallpaper_gradient_to2;
        int i8 = previewColors.get(i7, Theme.getColor(i7));
        int i9 = Theme.key_chat_wallpaper_gradient_to3;
        int i10 = previewColors.get(i9, Theme.getColor(i9));
        final MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable();
        motionBackgroundDrawable.isPreview = z2;
        motionBackgroundDrawable.setPatternBitmap(emojiThemes.getWallpaper(z ? 1 : 0).settings.intensity);
        motionBackgroundDrawable.setColors(i4, i6, i8, i10, 0, true);
        motionBackgroundDrawable.setPhase(i2);
        final int patternColor = motionBackgroundDrawable.getPatternColor();
        emojiThemes.loadWallpaper(z ? 1 : 0, new ResultCallback() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda8
            @Override // org.telegram.tgnet.ResultCallback
            public final void onComplete(Object obj) {
                PreviewView.lambda$getBackgroundDrawableFromTheme$8(EmojiThemes.this, z, z, motionBackgroundDrawable, patternColor, (Pair) obj);
            }

            @Override // org.telegram.tgnet.ResultCallback
            public /* synthetic */ void onError(TLRPC$TL_error tLRPC$TL_error) {
                ResultCallback.CC.$default$onError(this, tLRPC$TL_error);
            }
        });
        return motionBackgroundDrawable;
    }

    public static /* synthetic */ void lambda$getBackgroundDrawableFromTheme$8(EmojiThemes emojiThemes, boolean z, boolean z2, MotionBackgroundDrawable motionBackgroundDrawable, int i, Pair pair) {
        if (pair == null) {
            return;
        }
        long longValue = ((Long) pair.first).longValue();
        Bitmap bitmap = (Bitmap) pair.second;
        if (longValue != emojiThemes.getTlTheme(z ? 1 : 0).f1739id || bitmap == null) {
            return;
        }
        motionBackgroundDrawable.setPatternBitmap(emojiThemes.getWallpaper(z2 ? 1 : 0).settings.intensity, bitmap);
        motionBackgroundDrawable.setPatternColorFilter(i);
        motionBackgroundDrawable.setPatternAlpha(1.0f);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return this.wallpaperDrawable == drawable || super.verifyDrawable(drawable);
    }
}
