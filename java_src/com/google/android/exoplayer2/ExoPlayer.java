package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.PlayerMessage;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.audio.AuxEffectInfo;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoFrameMetadataListener;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.android.exoplayer2.video.spherical.CameraMotionListener;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import java.util.List;
/* loaded from: classes.dex */
public interface ExoPlayer extends Player {
    public static final long DEFAULT_DETACH_SURFACE_TIMEOUT_MS = 2000;
    public static final long DEFAULT_RELEASE_TIMEOUT_MS = 500;

    @Deprecated
    /* loaded from: classes.dex */
    public interface AudioComponent {
        @Deprecated
        void clearAuxEffectInfo();

        @Deprecated
        AudioAttributes getAudioAttributes();

        @Deprecated
        int getAudioSessionId();

        @Deprecated
        boolean getSkipSilenceEnabled();

        @Deprecated
        float getVolume();

        @Deprecated
        void setAudioAttributes(AudioAttributes audioAttributes, boolean z);

        @Deprecated
        void setAudioSessionId(int i);

        @Deprecated
        void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

        @Deprecated
        void setSkipSilenceEnabled(boolean z);

        @Deprecated
        void setVolume(float f);
    }

    /* loaded from: classes.dex */
    public interface AudioOffloadListener {

        /* renamed from: com.google.android.exoplayer2.ExoPlayer$AudioOffloadListener$-CC  reason: invalid class name */
        /* loaded from: classes.dex */
        public final /* synthetic */ class CC {
            public static void $default$onExperimentalOffloadSchedulingEnabledChanged(AudioOffloadListener audioOffloadListener, boolean z) {
            }

            public static void $default$onExperimentalOffloadedPlayback(AudioOffloadListener audioOffloadListener, boolean z) {
            }

            public static void $default$onExperimentalSleepingForOffloadChanged(AudioOffloadListener audioOffloadListener, boolean z) {
            }
        }

        void onExperimentalOffloadSchedulingEnabledChanged(boolean z);

        void onExperimentalOffloadedPlayback(boolean z);

        void onExperimentalSleepingForOffloadChanged(boolean z);
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface DeviceComponent {
        @Deprecated
        void decreaseDeviceVolume();

        @Deprecated
        DeviceInfo getDeviceInfo();

        @Deprecated
        int getDeviceVolume();

        @Deprecated
        void increaseDeviceVolume();

        @Deprecated
        boolean isDeviceMuted();

        @Deprecated
        void setDeviceMuted(boolean z);

        @Deprecated
        void setDeviceVolume(int i);
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface TextComponent {
        @Deprecated
        CueGroup getCurrentCues();
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface VideoComponent {
        @Deprecated
        void clearCameraMotionListener(CameraMotionListener cameraMotionListener);

        @Deprecated
        void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

        @Deprecated
        void clearVideoSurface();

        @Deprecated
        void clearVideoSurface(Surface surface);

        @Deprecated
        void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder);

        @Deprecated
        void clearVideoSurfaceView(SurfaceView surfaceView);

        @Deprecated
        void clearVideoTextureView(TextureView textureView);

        @Deprecated
        int getVideoChangeFrameRateStrategy();

        @Deprecated
        int getVideoScalingMode();

        @Deprecated
        VideoSize getVideoSize();

        @Deprecated
        void setCameraMotionListener(CameraMotionListener cameraMotionListener);

        @Deprecated
        void setVideoChangeFrameRateStrategy(int i);

        @Deprecated
        void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

        @Deprecated
        void setVideoScalingMode(int i);

        @Deprecated
        void setVideoSurface(Surface surface);

        @Deprecated
        void setVideoSurfaceHolder(SurfaceHolder surfaceHolder);

        @Deprecated
        void setVideoSurfaceView(SurfaceView surfaceView);

        @Deprecated
        void setVideoTextureView(TextureView textureView);
    }

    void addAnalyticsListener(AnalyticsListener analyticsListener);

    void addAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    void addMediaSource(int i, MediaSource mediaSource);

    void addMediaSource(MediaSource mediaSource);

    void addMediaSources(int i, List<MediaSource> list);

    void addMediaSources(List<MediaSource> list);

    void clearAuxEffectInfo();

    void clearCameraMotionListener(CameraMotionListener cameraMotionListener);

    void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    PlayerMessage createMessage(PlayerMessage.Target target);

    boolean experimentalIsSleepingForOffload();

    void experimentalSetOffloadSchedulingEnabled(boolean z);

    AnalyticsCollector getAnalyticsCollector();

    @Deprecated
    AudioComponent getAudioComponent();

    DecoderCounters getAudioDecoderCounters();

    Format getAudioFormat();

    int getAudioSessionId();

    Clock getClock();

    @Deprecated
    TrackGroupArray getCurrentTrackGroups();

    @Deprecated
    TrackSelectionArray getCurrentTrackSelections();

    @Deprecated
    DeviceComponent getDeviceComponent();

    boolean getPauseAtEndOfMediaItems();

    Looper getPlaybackLooper();

    @Override // com.google.android.exoplayer2.Player
    ExoPlaybackException getPlayerError();

    @Override // com.google.android.exoplayer2.Player
    /* bridge */ /* synthetic */ PlaybackException getPlayerError();

    Renderer getRenderer(int i);

    int getRendererCount();

    int getRendererType(int i);

    SeekParameters getSeekParameters();

    boolean getSkipSilenceEnabled();

    @Deprecated
    TextComponent getTextComponent();

    TrackSelector getTrackSelector();

    int getVideoChangeFrameRateStrategy();

    @Deprecated
    VideoComponent getVideoComponent();

    DecoderCounters getVideoDecoderCounters();

    Format getVideoFormat();

    int getVideoScalingMode();

    boolean isTunnelingEnabled();

    @Deprecated
    void prepare(MediaSource mediaSource);

    @Deprecated
    void prepare(MediaSource mediaSource, boolean z, boolean z2);

    void removeAnalyticsListener(AnalyticsListener analyticsListener);

    void removeAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    @Deprecated
    void retry();

    void setAudioAttributes(AudioAttributes audioAttributes, boolean z);

    void setAudioSessionId(int i);

    void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

    void setCameraMotionListener(CameraMotionListener cameraMotionListener);

    void setForegroundMode(boolean z);

    void setHandleAudioBecomingNoisy(boolean z);

    @Deprecated
    void setHandleWakeLock(boolean z);

    void setMediaSource(MediaSource mediaSource);

    void setMediaSource(MediaSource mediaSource, long j);

    void setMediaSource(MediaSource mediaSource, boolean z);

    void setMediaSources(List<MediaSource> list);

    void setMediaSources(List<MediaSource> list, int i, long j);

    void setMediaSources(List<MediaSource> list, boolean z);

    void setPauseAtEndOfMediaItems(boolean z);

    void setPreferredAudioDevice(AudioDeviceInfo audioDeviceInfo);

    void setPriorityTaskManager(PriorityTaskManager priorityTaskManager);

    void setSeekParameters(SeekParameters seekParameters);

    void setShuffleOrder(ShuffleOrder shuffleOrder);

    void setSkipSilenceEnabled(boolean z);

    void setVideoChangeFrameRateStrategy(int i);

    void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    void setVideoScalingMode(int i);

    void setWakeMode(int i);

    /* renamed from: com.google.android.exoplayer2.ExoPlayer$-CC  reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class CC {
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        Function<Clock, AnalyticsCollector> analyticsCollectorFunction;
        AudioAttributes audioAttributes;
        Supplier<BandwidthMeter> bandwidthMeterSupplier;
        boolean buildCalled;
        Clock clock;
        final Context context;
        long detachSurfaceTimeoutMs;
        long foregroundModeTimeoutMs;
        boolean handleAudioBecomingNoisy;
        boolean handleAudioFocus;
        LivePlaybackSpeedControl livePlaybackSpeedControl;
        Supplier<LoadControl> loadControlSupplier;
        Looper looper;
        Supplier<MediaSource.Factory> mediaSourceFactorySupplier;
        boolean pauseAtEndOfMediaItems;
        Looper playbackLooper;
        PriorityTaskManager priorityTaskManager;
        long releaseTimeoutMs;
        Supplier<RenderersFactory> renderersFactorySupplier;
        long seekBackIncrementMs;
        long seekForwardIncrementMs;
        SeekParameters seekParameters;
        boolean skipSilenceEnabled;
        Supplier<TrackSelector> trackSelectorSupplier;
        boolean useLazyPreparation;
        boolean usePlatformDiagnostics;
        int videoChangeFrameRateStrategy;
        int videoScalingMode;
        int wakeMode;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector lambda$new$10(TrackSelector trackSelector) {
            return trackSelector;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ LoadControl lambda$new$11(LoadControl loadControl) {
            return loadControl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ BandwidthMeter lambda$new$12(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ AnalyticsCollector lambda$new$13(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$2(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$5(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$6(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$7(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$8(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$9(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ AnalyticsCollector lambda$setAnalyticsCollector$21(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ BandwidthMeter lambda$setBandwidthMeter$20(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ LoadControl lambda$setLoadControl$19(LoadControl loadControl) {
            return loadControl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$setMediaSourceFactory$17(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$setRenderersFactory$16(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector lambda$setTrackSelector$18(TrackSelector trackSelector) {
            return trackSelector;
        }

        public Builder(final Context context) {
            this(context, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda5
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    RenderersFactory lambda$new$0;
                    lambda$new$0 = ExoPlayer.Builder.lambda$new$0(context);
                    return lambda$new$0;
                }
            }, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda8
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    MediaSource.Factory lambda$new$1;
                    lambda$new$1 = ExoPlayer.Builder.lambda$new$1(context);
                    return lambda$new$1;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$0(Context context) {
            return new DefaultRenderersFactory(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$1(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        public Builder(final Context context, final RenderersFactory renderersFactory) {
            this(context, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda14
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    RenderersFactory lambda$new$2;
                    lambda$new$2 = ExoPlayer.Builder.lambda$new$2(RenderersFactory.this);
                    return lambda$new$2;
                }
            }, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda3
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    MediaSource.Factory lambda$new$3;
                    lambda$new$3 = ExoPlayer.Builder.lambda$new$3(context);
                    return lambda$new$3;
                }
            });
            Assertions.checkNotNull(renderersFactory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory lambda$new$3(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        public Builder(final Context context, final MediaSource.Factory factory) {
            this(context, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda7
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    RenderersFactory lambda$new$4;
                    lambda$new$4 = ExoPlayer.Builder.lambda$new$4(context);
                    return lambda$new$4;
                }
            }, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda18
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    MediaSource.Factory lambda$new$5;
                    lambda$new$5 = ExoPlayer.Builder.lambda$new$5(MediaSource.Factory.this);
                    return lambda$new$5;
                }
            });
            Assertions.checkNotNull(factory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$4(Context context) {
            return new DefaultRenderersFactory(context);
        }

        public Builder(Context context, final RenderersFactory renderersFactory, final MediaSource.Factory factory) {
            this(context, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda11
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    RenderersFactory lambda$new$6;
                    lambda$new$6 = ExoPlayer.Builder.lambda$new$6(RenderersFactory.this);
                    return lambda$new$6;
                }
            }, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda16
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    MediaSource.Factory lambda$new$7;
                    lambda$new$7 = ExoPlayer.Builder.lambda$new$7(MediaSource.Factory.this);
                    return lambda$new$7;
                }
            });
            Assertions.checkNotNull(renderersFactory);
            Assertions.checkNotNull(factory);
        }

        public Builder(Context context, final RenderersFactory renderersFactory, final MediaSource.Factory factory, final TrackSelector trackSelector, final LoadControl loadControl, final BandwidthMeter bandwidthMeter, final AnalyticsCollector analyticsCollector) {
            this(context, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda13
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    RenderersFactory lambda$new$8;
                    lambda$new$8 = ExoPlayer.Builder.lambda$new$8(RenderersFactory.this);
                    return lambda$new$8;
                }
            }, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda17
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    MediaSource.Factory lambda$new$9;
                    lambda$new$9 = ExoPlayer.Builder.lambda$new$9(MediaSource.Factory.this);
                    return lambda$new$9;
                }
            }, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda20
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    TrackSelector lambda$new$10;
                    lambda$new$10 = ExoPlayer.Builder.lambda$new$10(TrackSelector.this);
                    return lambda$new$10;
                }
            }, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda9
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    LoadControl lambda$new$11;
                    lambda$new$11 = ExoPlayer.Builder.lambda$new$11(LoadControl.this);
                    return lambda$new$11;
                }
            }, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda22
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    BandwidthMeter lambda$new$12;
                    lambda$new$12 = ExoPlayer.Builder.lambda$new$12(BandwidthMeter.this);
                    return lambda$new$12;
                }
            }, new Function() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    AnalyticsCollector lambda$new$13;
                    lambda$new$13 = ExoPlayer.Builder.lambda$new$13(AnalyticsCollector.this, (Clock) obj);
                    return lambda$new$13;
                }
            });
            Assertions.checkNotNull(renderersFactory);
            Assertions.checkNotNull(factory);
            Assertions.checkNotNull(trackSelector);
            Assertions.checkNotNull(bandwidthMeter);
            Assertions.checkNotNull(analyticsCollector);
        }

        private Builder(final Context context, Supplier<RenderersFactory> supplier, Supplier<MediaSource.Factory> supplier2) {
            this(context, supplier, supplier2, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda6
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    TrackSelector lambda$new$14;
                    lambda$new$14 = ExoPlayer.Builder.lambda$new$14(context);
                    return lambda$new$14;
                }
            }, ExoPlayer$Builder$$ExternalSyntheticLambda23.INSTANCE, new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda4
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    BandwidthMeter singletonInstance;
                    singletonInstance = DefaultBandwidthMeter.getSingletonInstance(context);
                    return singletonInstance;
                }
            }, ExoPlayer$Builder$$ExternalSyntheticLambda2.INSTANCE);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector lambda$new$14(Context context) {
            return new DefaultTrackSelector(context);
        }

        private Builder(Context context, Supplier<RenderersFactory> supplier, Supplier<MediaSource.Factory> supplier2, Supplier<TrackSelector> supplier3, Supplier<LoadControl> supplier4, Supplier<BandwidthMeter> supplier5, Function<Clock, AnalyticsCollector> function) {
            this.context = (Context) Assertions.checkNotNull(context);
            this.renderersFactorySupplier = supplier;
            this.mediaSourceFactorySupplier = supplier2;
            this.trackSelectorSupplier = supplier3;
            this.loadControlSupplier = supplier4;
            this.bandwidthMeterSupplier = supplier5;
            this.analyticsCollectorFunction = function;
            this.looper = Util.getCurrentOrMainLooper();
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.wakeMode = 0;
            this.videoScalingMode = 1;
            this.videoChangeFrameRateStrategy = 0;
            this.useLazyPreparation = true;
            this.seekParameters = SeekParameters.DEFAULT;
            this.seekBackIncrementMs = 5000L;
            this.seekForwardIncrementMs = C0468C.DEFAULT_SEEK_FORWARD_INCREMENT_MS;
            this.livePlaybackSpeedControl = new DefaultLivePlaybackSpeedControl.Builder().build();
            this.clock = Clock.DEFAULT;
            this.releaseTimeoutMs = 500L;
            this.detachSurfaceTimeoutMs = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
            this.usePlatformDiagnostics = true;
        }

        public Builder experimentalSetForegroundModeTimeoutMs(long j) {
            Assertions.checkState(!this.buildCalled);
            this.foregroundModeTimeoutMs = j;
            return this;
        }

        public Builder setRenderersFactory(final RenderersFactory renderersFactory) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(renderersFactory);
            this.renderersFactorySupplier = new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda12
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    RenderersFactory lambda$setRenderersFactory$16;
                    lambda$setRenderersFactory$16 = ExoPlayer.Builder.lambda$setRenderersFactory$16(RenderersFactory.this);
                    return lambda$setRenderersFactory$16;
                }
            };
            return this;
        }

        public Builder setMediaSourceFactory(final MediaSource.Factory factory) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(factory);
            this.mediaSourceFactorySupplier = new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda15
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    MediaSource.Factory lambda$setMediaSourceFactory$17;
                    lambda$setMediaSourceFactory$17 = ExoPlayer.Builder.lambda$setMediaSourceFactory$17(MediaSource.Factory.this);
                    return lambda$setMediaSourceFactory$17;
                }
            };
            return this;
        }

        public Builder setTrackSelector(final TrackSelector trackSelector) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(trackSelector);
            this.trackSelectorSupplier = new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda19
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    TrackSelector lambda$setTrackSelector$18;
                    lambda$setTrackSelector$18 = ExoPlayer.Builder.lambda$setTrackSelector$18(TrackSelector.this);
                    return lambda$setTrackSelector$18;
                }
            };
            return this;
        }

        public Builder setLoadControl(final LoadControl loadControl) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(loadControl);
            this.loadControlSupplier = new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda10
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    LoadControl lambda$setLoadControl$19;
                    lambda$setLoadControl$19 = ExoPlayer.Builder.lambda$setLoadControl$19(LoadControl.this);
                    return lambda$setLoadControl$19;
                }
            };
            return this;
        }

        public Builder setBandwidthMeter(final BandwidthMeter bandwidthMeter) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(bandwidthMeter);
            this.bandwidthMeterSupplier = new Supplier() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda21
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    BandwidthMeter lambda$setBandwidthMeter$20;
                    lambda$setBandwidthMeter$20 = ExoPlayer.Builder.lambda$setBandwidthMeter$20(BandwidthMeter.this);
                    return lambda$setBandwidthMeter$20;
                }
            };
            return this;
        }

        public Builder setLooper(Looper looper) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(looper);
            this.looper = looper;
            return this;
        }

        public Builder setAnalyticsCollector(final AnalyticsCollector analyticsCollector) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(analyticsCollector);
            this.analyticsCollectorFunction = new Function() { // from class: com.google.android.exoplayer2.ExoPlayer$Builder$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    AnalyticsCollector lambda$setAnalyticsCollector$21;
                    lambda$setAnalyticsCollector$21 = ExoPlayer.Builder.lambda$setAnalyticsCollector$21(AnalyticsCollector.this, (Clock) obj);
                    return lambda$setAnalyticsCollector$21;
                }
            };
            return this;
        }

        public Builder setPriorityTaskManager(PriorityTaskManager priorityTaskManager) {
            Assertions.checkState(!this.buildCalled);
            this.priorityTaskManager = priorityTaskManager;
            return this;
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.audioAttributes = (AudioAttributes) Assertions.checkNotNull(audioAttributes);
            this.handleAudioFocus = z;
            return this;
        }

        public Builder setWakeMode(int i) {
            Assertions.checkState(!this.buildCalled);
            this.wakeMode = i;
            return this;
        }

        public Builder setHandleAudioBecomingNoisy(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.handleAudioBecomingNoisy = z;
            return this;
        }

        public Builder setSkipSilenceEnabled(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.skipSilenceEnabled = z;
            return this;
        }

        public Builder setVideoScalingMode(int i) {
            Assertions.checkState(!this.buildCalled);
            this.videoScalingMode = i;
            return this;
        }

        public Builder setVideoChangeFrameRateStrategy(int i) {
            Assertions.checkState(!this.buildCalled);
            this.videoChangeFrameRateStrategy = i;
            return this;
        }

        public Builder setUseLazyPreparation(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.useLazyPreparation = z;
            return this;
        }

        public Builder setSeekParameters(SeekParameters seekParameters) {
            Assertions.checkState(!this.buildCalled);
            this.seekParameters = (SeekParameters) Assertions.checkNotNull(seekParameters);
            return this;
        }

        public Builder setSeekBackIncrementMs(long j) {
            Assertions.checkArgument(j > 0);
            Assertions.checkState(!this.buildCalled);
            this.seekBackIncrementMs = j;
            return this;
        }

        public Builder setSeekForwardIncrementMs(long j) {
            Assertions.checkArgument(j > 0);
            Assertions.checkState(!this.buildCalled);
            this.seekForwardIncrementMs = j;
            return this;
        }

        public Builder setReleaseTimeoutMs(long j) {
            Assertions.checkState(!this.buildCalled);
            this.releaseTimeoutMs = j;
            return this;
        }

        public Builder setDetachSurfaceTimeoutMs(long j) {
            Assertions.checkState(!this.buildCalled);
            this.detachSurfaceTimeoutMs = j;
            return this;
        }

        public Builder setPauseAtEndOfMediaItems(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.pauseAtEndOfMediaItems = z;
            return this;
        }

        public Builder setLivePlaybackSpeedControl(LivePlaybackSpeedControl livePlaybackSpeedControl) {
            Assertions.checkState(!this.buildCalled);
            this.livePlaybackSpeedControl = (LivePlaybackSpeedControl) Assertions.checkNotNull(livePlaybackSpeedControl);
            return this;
        }

        public Builder setUsePlatformDiagnostics(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.usePlatformDiagnostics = z;
            return this;
        }

        public Builder setClock(Clock clock) {
            Assertions.checkState(!this.buildCalled);
            this.clock = clock;
            return this;
        }

        public Builder setPlaybackLooper(Looper looper) {
            Assertions.checkState(!this.buildCalled);
            this.playbackLooper = looper;
            return this;
        }

        public ExoPlayer build() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new ExoPlayerImpl(this, null);
        }

        public SimpleExoPlayer buildSimpleExoPlayer() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new SimpleExoPlayer(this);
        }
    }
}
