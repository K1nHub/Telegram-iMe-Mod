package org.telegram.messenger.video;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileStreamLoadOperation;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.video.VideoPlayerHolderBase;
import org.telegram.p043ui.Components.VideoPlayer;
import org.telegram.tgnet.TLRPC$Document;
/* loaded from: classes4.dex */
public class VideoPlayerHolderBase {
    boolean audioDisabled;
    Uri contentUri;
    private int currentAccount;
    public long currentPosition;
    public TLRPC$Document document;
    private volatile long duration;
    public boolean firstFrameRendered;
    Runnable initRunnable;
    int lastState;
    private Runnable onReadyListener;
    private Runnable onSeekUpdate;
    public boolean paused;
    public long pendingSeekTo;
    long playerDuration;
    public Bitmap playerStubBitmap;
    public Paint playerStubPaint;
    public float progress;
    volatile boolean released;
    private volatile boolean seeking;
    long startTime;
    public boolean stubAvailable;
    private SurfaceView surfaceView;
    private TextureView textureView;
    public Uri uri;
    VideoPlayer videoPlayer;
    final DispatchQueue dispatchQueue = Utilities.getOrCreatePlayerQueue();
    Runnable progressRunnable = new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase.1
        @Override // java.lang.Runnable
        public void run() {
            VideoPlayerHolderBase videoPlayerHolderBase = VideoPlayerHolderBase.this;
            VideoPlayer videoPlayer = videoPlayerHolderBase.videoPlayer;
            if (videoPlayer != null) {
                if (videoPlayerHolderBase.lastState == 4) {
                    videoPlayerHolderBase.progress = 1.0f;
                } else {
                    videoPlayerHolderBase.currentPosition = videoPlayer.getCurrentPosition();
                    VideoPlayerHolderBase videoPlayerHolderBase2 = VideoPlayerHolderBase.this;
                    videoPlayerHolderBase2.playerDuration = videoPlayerHolderBase2.videoPlayer.getDuration();
                }
                VideoPlayerHolderBase videoPlayerHolderBase3 = VideoPlayerHolderBase.this;
                if (videoPlayerHolderBase3.lastState == 3) {
                    videoPlayerHolderBase3.dispatchQueue.cancelRunnable(videoPlayerHolderBase3.progressRunnable);
                    VideoPlayerHolderBase videoPlayerHolderBase4 = VideoPlayerHolderBase.this;
                    videoPlayerHolderBase4.dispatchQueue.postRunnable(videoPlayerHolderBase4.progressRunnable, 16L);
                }
            }
        }
    };
    private volatile boolean firstSeek = true;
    private volatile long lastSeek = -1;
    private long lastBetterSeek = -1;
    public float currentSeek = BitmapDescriptorFactory.HUE_RED;
    public volatile float currentSeekThread = BitmapDescriptorFactory.HUE_RED;
    private final Runnable betterSeek = new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            VideoPlayerHolderBase.this.lambda$new$11();
        }
    };
    private final Runnable updateSeek = new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda4
        @Override // java.lang.Runnable
        public final void run() {
            VideoPlayerHolderBase.this.lambda$new$12();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11() {
    }

    public boolean needRepeat() {
        return false;
    }

    public void onRenderedFirstFrame() {
    }

    public void onStateChanged(boolean z, int i) {
    }

    public VideoPlayerHolderBase with(SurfaceView surfaceView) {
        this.surfaceView = surfaceView;
        this.textureView = null;
        return this;
    }

    public VideoPlayerHolderBase with(TextureView textureView) {
        this.surfaceView = null;
        this.textureView = textureView;
        return this;
    }

    public void preparePlayer(final Uri uri, final boolean z) {
        this.audioDisabled = z;
        this.currentAccount = this.currentAccount;
        this.contentUri = uri;
        this.paused = true;
        Runnable runnable = this.initRunnable;
        if (runnable != null) {
            this.dispatchQueue.cancelRunnable(runnable);
        }
        DispatchQueue dispatchQueue = this.dispatchQueue;
        Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerHolderBase.this.lambda$preparePlayer$0(z, uri);
            }
        };
        this.initRunnable = runnable2;
        dispatchQueue.postRunnable(runnable2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preparePlayer$0(boolean z, Uri uri) {
        if (this.released) {
            return;
        }
        ensurePlayerCreated(z);
        this.videoPlayer.preparePlayer(uri, "other", 0);
        this.videoPlayer.setPlayWhenReady(false);
        this.videoPlayer.setWorkerQueue(this.dispatchQueue);
    }

    public void start(final boolean z, final Uri uri, final long j, final boolean z2) {
        this.startTime = System.currentTimeMillis();
        this.audioDisabled = z2;
        this.paused = z;
        if (j > 0) {
            this.currentPosition = j;
        }
        DispatchQueue dispatchQueue = this.dispatchQueue;
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerHolderBase.this.lambda$start$2(z2, uri, z, j);
            }
        };
        this.initRunnable = runnable;
        dispatchQueue.postRunnable(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$2(boolean z, Uri uri, boolean z2, long j) {
        if (this.released) {
            return;
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            ensurePlayerCreated(z);
            this.videoPlayer.preparePlayer(uri, "other");
            this.videoPlayer.setWorkerQueue(this.dispatchQueue);
            if (!z2) {
                SurfaceView surfaceView = this.surfaceView;
                if (surfaceView != null) {
                    this.videoPlayer.setSurfaceView(surfaceView);
                } else {
                    this.videoPlayer.setTextureView(this.textureView);
                }
                this.videoPlayer.setPlayWhenReady(true);
            }
        } else if (!z2) {
            SurfaceView surfaceView2 = this.surfaceView;
            if (surfaceView2 != null) {
                videoPlayer.setSurfaceView(surfaceView2);
            } else {
                videoPlayer.setTextureView(this.textureView);
            }
            this.videoPlayer.play();
        }
        if (j > 0) {
            this.videoPlayer.seekTo(j);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerHolderBase.this.lambda$start$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$1() {
        this.initRunnable = null;
    }

    private void ensurePlayerCreated(boolean z) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.releasePlayer(true);
        }
        VideoPlayer videoPlayer2 = new VideoPlayer(false, z);
        this.videoPlayer = videoPlayer2;
        videoPlayer2.setDelegate(new C36832());
        this.videoPlayer.setIsStory();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.video.VideoPlayerHolderBase$2 */
    /* loaded from: classes4.dex */
    public class C36832 implements VideoPlayer.VideoPlayerDelegate {
        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
            VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public /* bridge */ /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
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

        C36832() {
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onStateChanged(boolean z, int i) {
            VideoPlayerHolderBase videoPlayerHolderBase = VideoPlayerHolderBase.this;
            videoPlayerHolderBase.lastState = i;
            if (i == 3 || i == 2) {
                videoPlayerHolderBase.dispatchQueue.cancelRunnable(videoPlayerHolderBase.progressRunnable);
                VideoPlayerHolderBase videoPlayerHolderBase2 = VideoPlayerHolderBase.this;
                videoPlayerHolderBase2.dispatchQueue.postRunnable(videoPlayerHolderBase2.progressRunnable);
            } else if (i == 4) {
                if (videoPlayerHolderBase.needRepeat()) {
                    VideoPlayerHolderBase videoPlayerHolderBase3 = VideoPlayerHolderBase.this;
                    videoPlayerHolderBase3.progress = BitmapDescriptorFactory.HUE_RED;
                    videoPlayerHolderBase3.videoPlayer.seekTo(0L);
                    VideoPlayerHolderBase.this.videoPlayer.play();
                } else {
                    VideoPlayerHolderBase.this.progress = 1.0f;
                }
            }
            VideoPlayerHolderBase.this.onStateChanged(z, i);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onError(VideoPlayer videoPlayer, Exception exc) {
            FileLog.m102e(exc);
        }

        @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
        public void onRenderedFirstFrame() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayerHolderBase.C36832.this.lambda$onRenderedFirstFrame$0();
                }
            }, VideoPlayerHolderBase.this.surfaceView == null ? 16L : 32L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRenderedFirstFrame$0() {
            if (VideoPlayerHolderBase.this.released) {
                return;
            }
            VideoPlayerHolderBase.this.onRenderedFirstFrame();
            if (VideoPlayerHolderBase.this.onReadyListener != null) {
                VideoPlayerHolderBase.this.onReadyListener.run();
                VideoPlayerHolderBase.this.onReadyListener = null;
            }
        }
    }

    public void setOnReadyListener(Runnable runnable) {
        this.onReadyListener = runnable;
    }

    public boolean release(final Runnable runnable) {
        final TLRPC$Document tLRPC$Document = this.document;
        if (tLRPC$Document != null && FileStreamLoadOperation.getStreamPrioriy(tLRPC$Document) != 0) {
            FileStreamLoadOperation.setPriorityForDocument(tLRPC$Document, 0);
            FileLoader.getInstance(this.currentAccount).changePriority(0, tLRPC$Document, null, null, null, null, null);
        }
        this.released = true;
        this.dispatchQueue.cancelRunnable(this.initRunnable);
        this.initRunnable = null;
        this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerHolderBase.this.lambda$release$3(tLRPC$Document, runnable);
            }
        });
        Bitmap bitmap = this.playerStubBitmap;
        if (bitmap != null) {
            AndroidUtilities.recycleBitmap(bitmap);
            this.playerStubBitmap = null;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$release$3(TLRPC$Document tLRPC$Document, Runnable runnable) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.setTextureView(null);
            this.videoPlayer.setSurfaceView(null);
            this.videoPlayer.releasePlayer(false);
        }
        if (tLRPC$Document != null) {
            FileLoader.getInstance(this.currentAccount).cancelLoadFile(tLRPC$Document);
        }
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
        this.videoPlayer = null;
    }

    public void pause() {
        if (this.released || this.paused) {
            return;
        }
        this.paused = true;
        prepareStub();
        this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerHolderBase.this.lambda$pause$4();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pause$4() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.pause();
        }
    }

    public void prepareStub() {
        SurfaceView surfaceView = this.surfaceView;
        if (surfaceView != null && this.firstFrameRendered && surfaceView.getHolder().getSurface().isValid()) {
            this.stubAvailable = true;
            if (this.playerStubBitmap == null) {
                this.playerStubBitmap = Bitmap.createBitmap(720, 1280, Bitmap.Config.ARGB_8888);
                this.playerStubPaint = new Paint(1);
            }
            if (Build.VERSION.SDK_INT >= 24) {
                AndroidUtilities.getBitmapFromSurface(this.surfaceView, this.playerStubBitmap);
                if (this.playerStubBitmap.getPixel(0, 0) == 0) {
                    this.stubAvailable = false;
                }
            }
        }
    }

    public void play() {
        if (!this.released && this.paused) {
            this.paused = false;
            this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayerHolderBase.this.lambda$play$5();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$play$5() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            SurfaceView surfaceView = this.surfaceView;
            if (surfaceView != null) {
                videoPlayer.setSurfaceView(surfaceView);
            } else {
                videoPlayer.setTextureView(this.textureView);
            }
            long j = this.pendingSeekTo;
            if (j > 0) {
                this.videoPlayer.seekTo(j);
                this.pendingSeekTo = 0L;
            }
            this.videoPlayer.setPlayWhenReady(true);
        }
    }

    public void setAudioEnabled(final boolean z, final boolean z2) {
        boolean z3 = !z;
        if (this.audioDisabled == z3) {
            return;
        }
        this.audioDisabled = z3;
        this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerHolderBase.this.lambda$setAudioEnabled$6(z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setAudioEnabled$6(boolean z, boolean z2) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return;
        }
        boolean isPlaying = videoPlayer.isPlaying();
        if (z && !this.videoPlayer.createdWithAudioTrack()) {
            this.videoPlayer.pause();
            long currentPosition = this.videoPlayer.getCurrentPosition();
            this.videoPlayer.releasePlayer(false);
            this.videoPlayer = null;
            ensurePlayerCreated(this.audioDisabled);
            this.videoPlayer.preparePlayer(this.uri, "other");
            this.videoPlayer.setWorkerQueue(this.dispatchQueue);
            if (!z2) {
                SurfaceView surfaceView = this.surfaceView;
                if (surfaceView != null) {
                    this.videoPlayer.setSurfaceView(surfaceView);
                } else {
                    this.videoPlayer.setTextureView(this.textureView);
                }
            }
            this.videoPlayer.seekTo(currentPosition + 50);
            if (isPlaying && !z2) {
                this.videoPlayer.setPlayWhenReady(true);
                this.videoPlayer.play();
                return;
            }
            this.videoPlayer.setPlayWhenReady(false);
            this.videoPlayer.pause();
            return;
        }
        this.videoPlayer.setVolume(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
    }

    public float getPlaybackProgress(long j) {
        float f;
        if (this.lastState == 4) {
            this.progress = 1.0f;
        } else {
            if (j != 0) {
                f = ((float) this.currentPosition) / ((float) j);
            } else {
                f = ((float) this.currentPosition) / ((float) this.playerDuration);
            }
            this.progress = f;
            if (!this.seeking) {
                this.currentSeek = this.progress;
                this.lastSeek = this.currentPosition;
            }
        }
        return this.progress;
    }

    public void loopBack() {
        this.progress = BitmapDescriptorFactory.HUE_RED;
        this.lastState = 1;
        this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerHolderBase.this.lambda$loopBack$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loopBack$7() {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.seekTo(0L);
        }
        this.progress = BitmapDescriptorFactory.HUE_RED;
        this.currentPosition = 0L;
    }

    public void setVolume(final float f) {
        this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerHolderBase.this.lambda$setVolume$8(f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setVolume$8(float f) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.setVolume(f);
        }
    }

    public boolean isBuffering() {
        return !this.released && this.lastState == 2;
    }

    public long getCurrentPosition() {
        return this.currentPosition;
    }

    public long getDuration() {
        return this.playerDuration;
    }

    public boolean isPlaying() {
        return !this.paused;
    }

    public void seekTo(final long j) {
        this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerHolderBase.this.lambda$seekTo$9(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$seekTo$9(long j) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            this.pendingSeekTo = j;
        } else {
            videoPlayer.seekTo(j);
        }
    }

    public Uri getCurrentUri() {
        return this.contentUri;
    }

    public void setPlaybackSpeed(final float f) {
        this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.video.VideoPlayerHolderBase$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerHolderBase.this.lambda$setPlaybackSpeed$10(f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPlaybackSpeed$10(float f) {
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return;
        }
        videoPlayer.setPlaybackSpeed(f);
    }

    public void setOnSeekUpdate(Runnable runnable) {
        this.onSeekUpdate = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12() {
        if (this.videoPlayer == null) {
            return;
        }
        long j = this.currentSeekThread * ((float) this.duration);
        if (this.lastSeek <= -1) {
            this.lastSeek = j;
        }
        if (Math.abs(j - this.lastSeek) >= (this.firstSeek ? 350 : 40)) {
            this.firstSeek = false;
            this.lastBetterSeek = j;
            this.dispatchQueue.cancelRunnable(this.betterSeek);
            this.dispatchQueue.postRunnable(this.betterSeek, 300L);
            VideoPlayer videoPlayer = this.videoPlayer;
            this.lastSeek = j;
            videoPlayer.seekTo(j, true);
        }
    }

    public void setSeeking(boolean z) {
        if (z && !this.seeking) {
            this.firstSeek = true;
        }
        this.seeking = z;
        if (z) {
            return;
        }
        this.dispatchQueue.cancelRunnable(this.betterSeek);
    }

    public float seek(float f, long j) {
        if (this.videoPlayer == null) {
            return this.currentSeek;
        }
        this.duration = j;
        float clamp = Utilities.clamp(this.currentSeek + f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        this.currentSeek = clamp;
        this.currentSeekThread = clamp;
        this.dispatchQueue.cancelRunnable(this.updateSeek);
        this.dispatchQueue.postRunnable(this.updateSeek);
        return this.currentSeek;
    }
}
