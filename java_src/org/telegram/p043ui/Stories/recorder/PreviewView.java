package org.telegram.p043ui.Stories.recorder;

import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Shader;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Size;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.ViewConfiguration;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.C0485C;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.zxing.common.detector.MathUtils;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.BlurringShader;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.PhotoFilterView;
import org.telegram.p043ui.Components.VideoEditTextureView;
import org.telegram.p043ui.Components.VideoPlayer;
import org.telegram.p043ui.Stories.recorder.PreviewView;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.p043ui.Stories.recorder.TimelineView;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_documentAttributeFilename;
/* renamed from: org.telegram.ui.Stories.recorder.PreviewView */
/* loaded from: classes6.dex */
public class PreviewView extends FrameLayout {

    /* renamed from: Tx */
    private float f1999Tx;

    /* renamed from: Ty */
    private float f2000Ty;
    private IStoryPart activePart;
    private boolean activePartPressed;
    private boolean allowCropping;
    private boolean allowRotation;
    private boolean allowWithSingleTouch;
    private float angle;
    private VideoPlayer audioPlayer;
    private Bitmap bitmap;
    private final Paint bitmapPaint;
    private final BlurringShader.BlurManager blurManager;

    /* renamed from: cx */
    private float f2001cx;

    /* renamed from: cy */
    private float f2002cy;
    private boolean doNotSpanRotation;
    private boolean draw;
    private StoryEntry entry;
    public TextureView filterTextureView;
    private Matrix finalMatrix;
    private int gradientBottom;
    private final Paint gradientPaint;
    private int gradientTop;

    /* renamed from: h */
    private float f2003h;
    private boolean inTrash;
    public Runnable invalidateBlur;
    private boolean isPart;
    private long lastPos;
    private final PointF lastTouch;
    private float lastTouchDistance;
    private double lastTouchRotation;
    private final Matrix matrix;
    private boolean multitouch;
    private Runnable onErrorListener;
    private Runnable onTap;
    private final HashMap<Integer, Bitmap> partsBitmap;
    private final HashMap<Integer, ButtonBounce> partsBounce;
    private final HashSet<Integer> pauseLinks;
    private PhotoFilterView photoFilterView;
    private float rotationDiff;
    private long seekedLastTime;
    private final Paint snapPaint;
    private boolean snappedRotation;
    private long tapTime;
    private Matrix tempMatrix;
    private float[] tempVertices;
    private VideoEditTextureView textureView;
    private final AnimatedFloat thumbAlpha;
    private Bitmap thumbBitmap;
    private TimelineView timelineView;
    private final PointF touch;
    private Matrix touchMatrix;
    private float trashCx;
    private float trashCy;
    private int trashPartIndex;
    private AnimatedFloat trashT;
    private final Runnable updateAudioProgressRunnable;
    private final Runnable updateProgressRunnable;
    private final float[] vertices;
    private int videoHeight;
    private VideoPlayer videoPlayer;
    private int videoWidth;

    public boolean additionalTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public void onEntityDragEnd(boolean z) {
    }

    public void onEntityDragStart() {
    }

    public void onEntityDragTrash(boolean z) {
    }

    public void onEntityDraggedBottom(boolean z) {
    }

    public void onEntityDraggedTop(boolean z) {
    }

    public PreviewView(Context context, BlurringShader.BlurManager blurManager) {
        super(context);
        Paint paint = new Paint(1);
        this.snapPaint = paint;
        this.partsBitmap = new HashMap<>();
        this.partsBounce = new HashMap<>();
        this.updateProgressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PreviewView.this.lambda$new$5();
            }
        };
        this.updateAudioProgressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                PreviewView.this.lambda$new$6();
            }
        };
        this.bitmapPaint = new Paint(7);
        this.gradientPaint = new Paint(1);
        this.matrix = new Matrix();
        this.vertices = new float[2];
        this.draw = true;
        this.thumbAlpha = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT);
        this.allowCropping = true;
        this.lastTouch = new PointF();
        this.touch = new PointF();
        this.touchMatrix = new Matrix();
        this.finalMatrix = new Matrix();
        this.trashT = new AnimatedFloat(this, 0L, 280L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.tempVertices = new float[2];
        this.pauseLinks = new HashSet<>();
        this.blurManager = blurManager;
        paint.setStrokeWidth(AndroidUtilities.m104dp(1));
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(-1);
        paint.setShadowLayer(AndroidUtilities.m104dp(3), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(1), 1073741824);
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
        if (videoPlayer == null || videoPlayer.getDuration() == C0485C.TIME_UNSET) {
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
            setupParts(null);
            this.gradientPaint.setShader(null);
            setupAudio((StoryEntry) null, false);
            return;
        }
        if (storyEntry.isVideo) {
            setupImage(storyEntry);
            setupVideoPlayer(storyEntry, runnable, j);
            if (storyEntry.gradientTopColor != 0 || storyEntry.gradientBottomColor != 0) {
                setupGradient();
            } else {
                storyEntry.setupGradient(new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        PreviewView.this.setupGradient();
                    }
                });
            }
        } else {
            setupVideoPlayer(null, runnable, 0L);
            setupImage(storyEntry);
            setupGradient();
        }
        setupParts(storyEntry);
        applyMatrix();
        setupAudio(storyEntry, false);
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
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onVideoSizeChanged(int i, int i2, int i3, float f) {
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onStateChanged(boolean z2, int i) {
                    AndroidUtilities.cancelRunOnUIThread(PreviewView.this.updateAudioProgressRunnable);
                    if (PreviewView.this.audioPlayer == null || !PreviewView.this.audioPlayer.isPlaying()) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(PreviewView.this.updateAudioProgressRunnable);
                }
            });
            this.audioPlayer.preparePlayer(Uri.fromFile(new File(storyEntry.audioPath)), "other");
            this.audioPlayer.setVolume(storyEntry.audioVolume);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void seekTo(long j) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.seekTo(j, false);
        } else {
            VideoPlayer videoPlayer2 = this.audioPlayer;
            if (videoPlayer2 != null) {
                videoPlayer2.seekTo(j, false);
            }
        }
        updateAudioPlayer(true);
    }

    public void setVideoTimelineView(TimelineView timelineView) {
        this.timelineView = timelineView;
        if (timelineView != null) {
            timelineView.setDelegate(new TimelineView.TimelineDelegate() { // from class: org.telegram.ui.Stories.recorder.PreviewView.2
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
                public void onVideoLeftChange(float f) {
                    if (PreviewView.this.entry == null) {
                        return;
                    }
                    PreviewView.this.entry.left = f;
                    PreviewView.this.entry.editedMedia = true;
                    if (PreviewView.this.videoPlayer == null || PreviewView.this.videoPlayer.getDuration() == C0485C.TIME_UNSET) {
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
                    if (PreviewView.this.audioPlayer != null) {
                        PreviewView.this.audioPlayer.setVolume(f);
                    }
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
                Bitmap scaledBitmap = StoryEntry.getScaledBitmap(new StoryEntry.DecodeBitmap() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda7
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

    /* JADX INFO: Access modifiers changed from: private */
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

    /* JADX INFO: Access modifiers changed from: private */
    public void setupGradient() {
        final int measuredHeight = getMeasuredHeight() > 0 ? getMeasuredHeight() : AndroidUtilities.displaySize.y;
        StoryEntry storyEntry = this.entry;
        if (storyEntry.gradientTopColor == 0 || storyEntry.gradientBottomColor == 0) {
            Bitmap bitmap = this.bitmap;
            if (bitmap != null) {
                DominantColors.getColors(true, bitmap, true, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda5
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        PreviewView.this.lambda$setupGradient$1(measuredHeight, (int[]) obj);
                    }
                });
            } else {
                Bitmap bitmap2 = this.thumbBitmap;
                if (bitmap2 != null) {
                    DominantColors.getColors(true, bitmap2, true, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda6
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

    /* JADX INFO: Access modifiers changed from: private */
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

    /* JADX INFO: Access modifiers changed from: private */
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

    private void setupVideoPlayer(StoryEntry storyEntry, Runnable runnable, long j) {
        float f = BitmapDescriptorFactory.HUE_RED;
        if (storyEntry == null) {
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer != null) {
                videoPlayer.pause();
                this.videoPlayer.releasePlayer(true);
                this.videoPlayer = null;
            }
            VideoEditTextureView videoEditTextureView = this.textureView;
            if (videoEditTextureView != null) {
                videoEditTextureView.clearAnimation();
                this.textureView.animate().alpha(BitmapDescriptorFactory.HUE_RED).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        PreviewView.this.lambda$setupVideoPlayer$3();
                    }
                }).start();
            }
            TimelineView timelineView = this.timelineView;
            if (timelineView != null) {
                timelineView.setVideo(null, 1L);
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
        videoPlayer3.setDelegate(new C72553(storyEntry, new Runnable[]{runnable}));
        VideoEditTextureView videoEditTextureView2 = this.textureView;
        if (videoEditTextureView2 != null) {
            videoEditTextureView2.clearAnimation();
            this.textureView.release();
            removeView(this.textureView);
            this.textureView = null;
        }
        this.textureView = new VideoEditTextureView(getContext(), this.videoPlayer);
        this.blurManager.resetBitmap();
        this.textureView.updateUiBlurManager(this.blurManager);
        VideoEditTextureView videoEditTextureView3 = this.textureView;
        if (runnable != null) {
            f = 1.0f;
        }
        videoEditTextureView3.setAlpha(f);
        this.textureView.setOpaque(false);
        applyMatrix();
        addView(this.textureView, LayoutHelper.createFrame(-2, -2, 51));
        storyEntry.detectHDR(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.PreviewView$$ExternalSyntheticLambda4
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
        this.videoPlayer.setMute(storyEntry.muted);
        updateAudioPlayer(true);
        this.timelineView.setVideo(storyEntry.getOriginalFile().getAbsolutePath(), getDuration());
        this.timelineView.setVideoLeft(storyEntry.left);
        this.timelineView.setVideoRight(storyEntry.right);
        TimelineView timelineView2 = this.timelineView;
        if (timelineView2 == null || i <= 0) {
            return;
        }
        timelineView2.setProgress(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupVideoPlayer$3() {
        VideoEditTextureView videoEditTextureView = this.textureView;
        if (videoEditTextureView != null) {
            videoEditTextureView.release();
            removeView(this.textureView);
            this.textureView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.recorder.PreviewView$3 */
    /* loaded from: classes6.dex */
    public class C72553 implements VideoPlayer.VideoPlayerDelegate {
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

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        C72553(StoryEntry storyEntry, Runnable[] runnableArr) {
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
            Runnable[] runnableArr = this.val$whenReadyFinal;
            if (runnableArr[0] == null) {
                if (PreviewView.this.textureView != null) {
                    ViewPropertyAnimator duration = PreviewView.this.textureView.animate().alpha(1.0f).setDuration(180L);
                    final StoryEntry storyEntry = this.val$entry;
                    duration.withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.PreviewView$3$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            PreviewView.C72553.this.lambda$onRenderedFirstFrame$0(storyEntry);
                        }
                    }).start();
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

        /* JADX INFO: Access modifiers changed from: private */
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupVideoPlayer$4(StoryEntry.HDRInfo hDRInfo) {
        VideoEditTextureView videoEditTextureView = this.textureView;
        if (videoEditTextureView != null) {
            videoEditTextureView.setHDRInfo(hDRInfo);
        }
    }

    public long release() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer != null) {
            videoPlayer.pause();
            this.audioPlayer.releasePlayer(true);
            this.audioPlayer = null;
        }
        VideoPlayer videoPlayer2 = this.videoPlayer;
        if (videoPlayer2 != null) {
            long currentPosition = videoPlayer2.getCurrentPosition();
            this.videoPlayer.pause();
            this.videoPlayer.releasePlayer(true);
            this.videoPlayer = null;
            return currentPosition;
        }
        return 0L;
    }

    public void setupParts(StoryEntry storyEntry) {
        boolean z;
        if (storyEntry == null) {
            for (Bitmap bitmap : this.partsBitmap.values()) {
                if (bitmap != null) {
                    bitmap.recycle();
                }
            }
            this.partsBitmap.clear();
            this.partsBounce.clear();
            return;
        }
        int measuredWidth = getMeasuredWidth() <= 0 ? AndroidUtilities.displaySize.x : getMeasuredWidth();
        int i = (int) ((measuredWidth * 16) / 9.0f);
        for (int i2 = 0; i2 < storyEntry.parts.size(); i2++) {
            StoryEntry.Part part = storyEntry.parts.get(i2);
            if (part != null && this.partsBitmap.get(Integer.valueOf(part.f1992id)) == null) {
                String path = part.file.getPath();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(path, options);
                options.inJustDecodeBounds = false;
                options.inSampleSize = StoryEntry.calculateInSampleSize(options, measuredWidth, i);
                this.partsBitmap.put(Integer.valueOf(part.f1992id), BitmapFactory.decodeFile(path, options));
            }
        }
        Iterator<Map.Entry<Integer, Bitmap>> it = this.partsBitmap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, Bitmap> next = it.next();
            int i3 = 0;
            while (true) {
                if (i3 >= storyEntry.parts.size()) {
                    z = false;
                    break;
                } else if (storyEntry.parts.get(i3).f1992id == next.getKey().intValue()) {
                    z = true;
                    break;
                } else {
                    i3++;
                }
            }
            if (!z) {
                it.remove();
                this.partsBounce.remove(next.getKey());
            }
        }
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

    /* JADX INFO: Access modifiers changed from: private */
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
                    currentPosition = duration2;
                    this.timelineView.setProgress(this.videoPlayer.getCurrentPosition());
                }
            }
            updateAudioPlayer(currentPosition < this.lastPos);
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6() {
        VideoPlayer videoPlayer = this.audioPlayer;
        if (videoPlayer == null || this.videoPlayer != null || this.timelineView == null) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008c, code lost:
        if (r0 <= (r5 + r3)) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateAudioPlayer(boolean r9) {
        /*
            r8 = this;
            org.telegram.ui.Components.VideoPlayer r0 = r8.audioPlayer
            if (r0 == 0) goto Lc8
            org.telegram.ui.Stories.recorder.StoryEntry r1 = r8.entry
            if (r1 != 0) goto La
            goto Lc8
        La:
            org.telegram.ui.Components.VideoPlayer r1 = r8.videoPlayer
            r2 = 1
            if (r1 != 0) goto L69
            java.util.HashSet<java.lang.Integer> r1 = r8.pauseLinks
            boolean r1 = r1.isEmpty()
            r0.setPlayWhenReady(r1)
            org.telegram.ui.Components.VideoPlayer r0 = r8.audioPlayer
            r0.setLooping(r2)
            org.telegram.ui.Components.VideoPlayer r0 = r8.audioPlayer
            long r0 = r0.getCurrentPosition()
            if (r9 == 0) goto L68
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            long r2 = r9.getDuration()
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r9 == 0) goto L68
            float r9 = (float) r0
            org.telegram.ui.Components.VideoPlayer r0 = r8.audioPlayer
            long r0 = r0.getDuration()
            float r0 = (float) r0
            float r9 = r9 / r0
            org.telegram.ui.Stories.recorder.StoryEntry r0 = r8.entry
            float r1 = r0.audioLeft
            int r1 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r1 < 0) goto L4b
            float r0 = r0.audioRight
            int r9 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r9 <= 0) goto L68
        L4b:
            long r0 = java.lang.System.currentTimeMillis()
            long r2 = r8.seekedLastTime
            long r0 = r0 - r2
            r2 = 500(0x1f4, double:2.47E-321)
            int r9 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r9 <= 0) goto L68
            long r0 = java.lang.System.currentTimeMillis()
            r8.seekedLastTime = r0
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            org.telegram.ui.Stories.recorder.StoryEntry r0 = r8.entry
            long r0 = r0.audioOffset
            long r0 = -r0
            r9.seekTo(r0)
        L68:
            return
        L69:
            long r0 = r1.getCurrentPosition()
            org.telegram.ui.Stories.recorder.StoryEntry r3 = r8.entry
            float r4 = r3.audioRight
            float r5 = r3.audioLeft
            float r4 = r4 - r5
            long r5 = r3.audioDuration
            float r3 = (float) r5
            float r4 = r4 * r3
            long r3 = (long) r4
            org.telegram.ui.Components.VideoPlayer r5 = r8.videoPlayer
            boolean r5 = r5.isPlaying()
            if (r5 == 0) goto L8f
            org.telegram.ui.Stories.recorder.StoryEntry r5 = r8.entry
            long r5 = r5.audioOffset
            int r7 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r7 < 0) goto L8f
            long r5 = r5 + r3
            int r3 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r3 > 0) goto L8f
            goto L90
        L8f:
            r2 = 0
        L90:
            org.telegram.ui.Stories.recorder.StoryEntry r3 = r8.entry
            long r4 = r3.audioOffset
            long r0 = r0 - r4
            float r4 = r3.audioLeft
            long r5 = r3.audioDuration
            float r3 = (float) r5
            float r4 = r4 * r3
            long r3 = (long) r4
            long r0 = r0 + r3
            org.telegram.ui.Components.VideoPlayer r3 = r8.audioPlayer
            boolean r3 = r3.isPlaying()
            if (r3 == r2) goto Lb0
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            r9.setPlayWhenReady(r2)
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            r9.seekTo(r0)
            goto Lc8
        Lb0:
            if (r9 == 0) goto Lc8
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            long r2 = r9.getCurrentPosition()
            long r2 = r2 - r0
            long r2 = java.lang.Math.abs(r2)
            r4 = 120(0x78, double:5.93E-322)
            int r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r9 <= 0) goto Lc8
            org.telegram.ui.Components.VideoPlayer r9 = r8.audioPlayer
            r9.seekTo(r0)
        Lc8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.PreviewView.updateAudioPlayer(boolean):void");
    }

    public void whenError(Runnable runnable) {
        this.onErrorListener = runnable;
    }

    public void mute(boolean z) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return;
        }
        videoPlayer.setMute(z);
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
        this.f2001cx = fArr2[0];
        this.f2002cy = fArr2[1];
        StoryEntry storyEntry2 = this.entry;
        fArr2[0] = storyEntry2.width;
        fArr2[1] = storyEntry2.height / 2.0f;
        matrix.mapPoints(fArr2);
        float[] fArr3 = this.vertices;
        this.angle = (float) Math.toDegrees(Math.atan2(fArr3[1] - this.f2002cy, fArr3[0] - this.f2001cx));
        float f = this.f2001cx;
        float f2 = this.f2002cy;
        float[] fArr4 = this.vertices;
        MathUtils.distance(f, f2, fArr4[0], fArr4[1]);
        float[] fArr5 = this.vertices;
        StoryEntry storyEntry3 = this.entry;
        fArr5[0] = storyEntry3.width / 2.0f;
        fArr5[1] = storyEntry3.height;
        matrix.mapPoints(fArr5);
        float f3 = this.f2001cx;
        float f4 = this.f2002cy;
        float[] fArr6 = this.vertices;
        this.f2003h = MathUtils.distance(f3, f4, fArr6[0], fArr6[1]) * 2.0f;
    }

    public void setDraw(boolean z) {
        this.draw = z;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Bitmap bitmap;
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), this.gradientPaint);
        if (this.draw && this.entry != null) {
            float f = this.thumbAlpha.set(this.bitmap != null);
            if (this.thumbBitmap != null && 1.0f - f > BitmapDescriptorFactory.HUE_RED) {
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
                this.bitmapPaint.setAlpha((int) (f * 255.0f));
                canvas.drawBitmap(this.bitmap, this.matrix, this.bitmapPaint);
            }
        }
        super.dispatchDraw(canvas);
        if (!this.draw || this.entry == null) {
            return;
        }
        float f2 = this.trashT.set(!this.inTrash);
        for (int i = 0; i < this.entry.parts.size(); i++) {
            StoryEntry.Part part = this.entry.parts.get(i);
            if (part != null && (bitmap = this.partsBitmap.get(Integer.valueOf(part.f1992id))) != null) {
                ButtonBounce buttonBounce = this.partsBounce.get(Integer.valueOf(part.f1992id));
                float scale = buttonBounce != null ? buttonBounce.getScale(0.05f) : 1.0f;
                this.matrix.set(part.matrix);
                canvas.save();
                if (scale != 1.0f) {
                    float[] fArr = this.tempVertices;
                    fArr[0] = part.width / 2.0f;
                    fArr[1] = part.height / 2.0f;
                    this.matrix.mapPoints(fArr);
                    canvas.scale(scale, scale, (this.tempVertices[0] / this.entry.resultWidth) * getWidth(), (this.tempVertices[1] / this.entry.resultHeight) * getHeight());
                }
                if (this.trashPartIndex == part.f1992id) {
                    float lerp = AndroidUtilities.lerp(0.2f, 1.0f, f2);
                    canvas.scale(lerp, lerp, this.trashCx, this.trashCy);
                }
                this.matrix.preScale(part.width / bitmap.getWidth(), part.height / bitmap.getHeight());
                this.matrix.postScale(getWidth() / this.entry.resultWidth, getHeight() / this.entry.resultHeight);
                canvas.drawBitmap(bitmap, this.matrix, this.bitmapPaint);
                canvas.restore();
            }
        }
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
        if (storyEntry == null) {
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
    /* JADX WARN: Removed duplicated region for block: B:100:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0269  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean touchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 848
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.PreviewView.touchEvent(android.view.MotionEvent):boolean");
    }

    public void deleteCurrentPart() {
        IStoryPart iStoryPart = this.activePart;
        if (iStoryPart != null) {
            this.entry.parts.remove(iStoryPart);
            setupParts(this.entry);
        }
    }

    private IStoryPart findPartAt(float f, float f2) {
        for (int size = this.entry.parts.size() - 1; size >= 0; size--) {
            StoryEntry.Part part = this.entry.parts.get(size);
            this.tempVertices[0] = (f / getWidth()) * this.entry.resultWidth;
            this.tempVertices[1] = (f2 / getHeight()) * this.entry.resultHeight;
            if (this.tempMatrix == null) {
                this.tempMatrix = new Matrix();
            }
            part.matrix.invert(this.tempMatrix);
            this.tempMatrix.mapPoints(this.tempVertices);
            float[] fArr = this.tempVertices;
            if (fArr[0] >= BitmapDescriptorFactory.HUE_RED && fArr[0] <= part.width && fArr[1] >= BitmapDescriptorFactory.HUE_RED && fArr[1] <= part.height) {
                return part;
            }
        }
        return this.entry;
    }

    private boolean tapTouchEvent(MotionEvent motionEvent) {
        Runnable runnable;
        if (motionEvent.getAction() == 0) {
            this.tapTime = System.currentTimeMillis();
            motionEvent.getX();
            motionEvent.getY();
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
        boolean z = touchEvent(motionEvent);
        if (!(this.activePart instanceof StoryEntry.Part)) {
            z = additionalTouchEvent(motionEvent) || z;
            tapTouchEvent(motionEvent);
        }
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
    }

    public boolean isPlaying() {
        return !this.pauseLinks.contains(-9982);
    }

    public void play(boolean z) {
        updatePauseReason(-9982, !z);
    }
}
