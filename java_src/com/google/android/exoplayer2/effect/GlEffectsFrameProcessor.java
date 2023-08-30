package com.google.android.exoplayer2.effect;

import android.content.Context;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.view.Surface;
import com.google.android.exoplayer2.C0479C;
import com.google.android.exoplayer2.effect.GlTextureProcessor;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.DebugViewProvider;
import com.google.android.exoplayer2.util.Effect;
import com.google.android.exoplayer2.util.FrameInfo;
import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.exoplayer2.util.FrameProcessor;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.SurfaceInfo;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public final class GlEffectsFrameProcessor implements FrameProcessor {
    private static final long RELEASE_WAIT_TIME_MS = 100;
    private static final String THREAD_NAME = "Effect:GlThread";
    private final ImmutableList<GlTextureProcessor> allTextureProcessors;
    private final EGLContext eglContext;
    private final EGLDisplay eglDisplay;
    private final FinalMatrixTextureProcessorWrapper finalTextureProcessorWrapper;
    private final FrameProcessingTaskExecutor frameProcessingTaskExecutor;
    private final ExternalTextureManager inputExternalTextureManager;
    private boolean inputStreamEnded;
    private final Surface inputSurface;
    private FrameInfo nextInputFrameInfo;
    private long previousStreamOffsetUs;
    private final boolean releaseFramesAutomatically;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ GlEffectsFrameProcessor access$000(Context context, FrameProcessor.Listener listener, List list, DebugViewProvider debugViewProvider, ColorInfo colorInfo, boolean z, ExecutorService executorService) throws GlUtil.GlException, FrameProcessingException {
        return createOpenGlObjectsAndFrameProcessor(context, listener, list, debugViewProvider, colorInfo, z, executorService);
    }

    /* loaded from: classes.dex */
    public static class Factory implements FrameProcessor.Factory {
        @Override // com.google.android.exoplayer2.util.FrameProcessor.Factory
        public /* bridge */ /* synthetic */ FrameProcessor create(Context context, FrameProcessor.Listener listener, List list, DebugViewProvider debugViewProvider, ColorInfo colorInfo, boolean z) throws FrameProcessingException {
            return create(context, listener, (List<Effect>) list, debugViewProvider, colorInfo, z);
        }

        @Override // com.google.android.exoplayer2.util.FrameProcessor.Factory
        public GlEffectsFrameProcessor create(final Context context, final FrameProcessor.Listener listener, final List<Effect> list, final DebugViewProvider debugViewProvider, final ColorInfo colorInfo, final boolean z) throws FrameProcessingException {
            final ExecutorService newSingleThreadExecutor = Util.newSingleThreadExecutor(GlEffectsFrameProcessor.THREAD_NAME);
            try {
                return (GlEffectsFrameProcessor) newSingleThreadExecutor.submit(new Callable() { // from class: com.google.android.exoplayer2.effect.GlEffectsFrameProcessor$Factory$$ExternalSyntheticLambda0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        GlEffectsFrameProcessor access$000;
                        access$000 = GlEffectsFrameProcessor.access$000(context, listener, list, debugViewProvider, colorInfo, z, newSingleThreadExecutor);
                        return access$000;
                    }
                }).get();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new FrameProcessingException(e);
            } catch (ExecutionException e2) {
                throw new FrameProcessingException(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static GlEffectsFrameProcessor createOpenGlObjectsAndFrameProcessor(Context context, FrameProcessor.Listener listener, List<Effect> list, DebugViewProvider debugViewProvider, ColorInfo colorInfo, boolean z, ExecutorService executorService) throws GlUtil.GlException, FrameProcessingException {
        Assertions.checkState(Thread.currentThread().getName().equals(THREAD_NAME));
        boolean isTransferHdr = ColorInfo.isTransferHdr(colorInfo);
        EGLDisplay createEglDisplay = GlUtil.createEglDisplay();
        int[] iArr = isTransferHdr ? GlUtil.EGL_CONFIG_ATTRIBUTES_RGBA_1010102 : GlUtil.EGL_CONFIG_ATTRIBUTES_RGBA_8888;
        EGLContext createEglContext = GlUtil.createEglContext(createEglDisplay, iArr);
        GlUtil.createFocusedPlaceholderEglSurface(createEglContext, createEglDisplay, iArr);
        ImmutableList<GlTextureProcessor> glTextureProcessorsForGlEffects = getGlTextureProcessorsForGlEffects(context, list, createEglDisplay, createEglContext, listener, debugViewProvider, colorInfo, z);
        FrameProcessingTaskExecutor frameProcessingTaskExecutor = new FrameProcessingTaskExecutor(executorService, listener);
        chainTextureProcessorsWithListeners(glTextureProcessorsForGlEffects, frameProcessingTaskExecutor, listener);
        return new GlEffectsFrameProcessor(createEglDisplay, createEglContext, frameProcessingTaskExecutor, glTextureProcessorsForGlEffects, z);
    }

    private static ImmutableList<GlTextureProcessor> getGlTextureProcessorsForGlEffects(Context context, List<Effect> list, EGLDisplay eGLDisplay, EGLContext eGLContext, FrameProcessor.Listener listener, DebugViewProvider debugViewProvider, ColorInfo colorInfo, boolean z) throws FrameProcessingException {
        MatrixTextureProcessor create;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        ImmutableList.Builder builder2 = new ImmutableList.Builder();
        ImmutableList.Builder builder3 = new ImmutableList.Builder();
        boolean z2 = true;
        for (int i = 0; i < list.size(); i++) {
            Effect effect = list.get(i);
            Assertions.checkArgument(effect instanceof GlEffect, "GlEffectsFrameProcessor only supports GlEffects");
            GlEffect glEffect = (GlEffect) effect;
            if (glEffect instanceof GlMatrixTransformation) {
                builder2.add((ImmutableList.Builder) ((GlMatrixTransformation) glEffect));
            } else if (glEffect instanceof RgbMatrix) {
                builder3.add((ImmutableList.Builder) ((RgbMatrix) glEffect));
            } else {
                ImmutableList build = builder2.build();
                ImmutableList build2 = builder3.build();
                if (!build.isEmpty() || !build2.isEmpty() || z2) {
                    if (z2) {
                        create = MatrixTextureProcessor.createWithExternalSamplerApplyingEotf(context, build, build2, colorInfo);
                    } else {
                        create = MatrixTextureProcessor.create(context, build, build2, ColorInfo.isTransferHdr(colorInfo));
                    }
                    builder.add((ImmutableList.Builder) create);
                    builder2 = new ImmutableList.Builder();
                    builder3 = new ImmutableList.Builder();
                    z2 = false;
                }
                builder.add((ImmutableList.Builder) glEffect.toGlTextureProcessor(context, ColorInfo.isTransferHdr(colorInfo)));
            }
        }
        builder.add((ImmutableList.Builder) new FinalMatrixTextureProcessorWrapper(context, eGLDisplay, eGLContext, builder2.build(), builder3.build(), listener, debugViewProvider, z2, colorInfo, z));
        return builder.build();
    }

    private static void chainTextureProcessorsWithListeners(ImmutableList<GlTextureProcessor> immutableList, FrameProcessingTaskExecutor frameProcessingTaskExecutor, final FrameProcessor.Listener listener) {
        int i = 0;
        while (i < immutableList.size() - 1) {
            GlTextureProcessor glTextureProcessor = immutableList.get(i);
            i++;
            GlTextureProcessor glTextureProcessor2 = immutableList.get(i);
            ChainingGlTextureProcessorListener chainingGlTextureProcessorListener = new ChainingGlTextureProcessorListener(glTextureProcessor, glTextureProcessor2, frameProcessingTaskExecutor);
            glTextureProcessor.setOutputListener(chainingGlTextureProcessorListener);
            Objects.requireNonNull(listener);
            glTextureProcessor.setErrorListener(new GlTextureProcessor.ErrorListener() { // from class: com.google.android.exoplayer2.effect.GlEffectsFrameProcessor$$ExternalSyntheticLambda3
                @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.ErrorListener
                public final void onFrameProcessingError(FrameProcessingException frameProcessingException) {
                    FrameProcessor.Listener.this.onFrameProcessingError(frameProcessingException);
                }
            });
            glTextureProcessor2.setInputListener(chainingGlTextureProcessorListener);
        }
    }

    private GlEffectsFrameProcessor(EGLDisplay eGLDisplay, EGLContext eGLContext, FrameProcessingTaskExecutor frameProcessingTaskExecutor, ImmutableList<GlTextureProcessor> immutableList, boolean z) throws FrameProcessingException {
        this.eglDisplay = eGLDisplay;
        this.eglContext = eGLContext;
        this.frameProcessingTaskExecutor = frameProcessingTaskExecutor;
        this.releaseFramesAutomatically = z;
        Assertions.checkState(!immutableList.isEmpty());
        Assertions.checkState(immutableList.get(0) instanceof ExternalTextureProcessor);
        Assertions.checkState(Iterables.getLast(immutableList) instanceof FinalMatrixTextureProcessorWrapper);
        ExternalTextureProcessor externalTextureProcessor = (ExternalTextureProcessor) immutableList.get(0);
        ExternalTextureManager externalTextureManager = new ExternalTextureManager(externalTextureProcessor, frameProcessingTaskExecutor);
        this.inputExternalTextureManager = externalTextureManager;
        externalTextureProcessor.setInputListener(externalTextureManager);
        this.inputSurface = new Surface(externalTextureManager.getSurfaceTexture());
        this.finalTextureProcessorWrapper = (FinalMatrixTextureProcessorWrapper) Iterables.getLast(immutableList);
        this.allTextureProcessors = immutableList;
        this.previousStreamOffsetUs = C0479C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.util.FrameProcessor
    public Surface getInputSurface() {
        return this.inputSurface;
    }

    @Override // com.google.android.exoplayer2.util.FrameProcessor
    public void setInputFrameInfo(FrameInfo frameInfo) {
        FrameInfo adjustForPixelWidthHeightRatio = adjustForPixelWidthHeightRatio(frameInfo);
        this.nextInputFrameInfo = adjustForPixelWidthHeightRatio;
        long j = adjustForPixelWidthHeightRatio.streamOffsetUs;
        if (j != this.previousStreamOffsetUs) {
            this.finalTextureProcessorWrapper.appendStream(j);
            this.previousStreamOffsetUs = this.nextInputFrameInfo.streamOffsetUs;
        }
    }

    @Override // com.google.android.exoplayer2.util.FrameProcessor
    public void registerInputFrame() {
        Assertions.checkState(!this.inputStreamEnded);
        Assertions.checkStateNotNull(this.nextInputFrameInfo, "setInputFrameInfo must be called before registering input frames");
        this.inputExternalTextureManager.registerInputFrame(this.nextInputFrameInfo);
    }

    @Override // com.google.android.exoplayer2.util.FrameProcessor
    public int getPendingInputFrameCount() {
        return this.inputExternalTextureManager.getPendingFrameCount();
    }

    @Override // com.google.android.exoplayer2.util.FrameProcessor
    public void setOutputSurfaceInfo(SurfaceInfo surfaceInfo) {
        this.finalTextureProcessorWrapper.setOutputSurfaceInfo(surfaceInfo);
    }

    @Override // com.google.android.exoplayer2.util.FrameProcessor
    public void releaseOutputFrame(final long j) {
        Assertions.checkState(!this.releaseFramesAutomatically, "Calling this method is not allowed when releaseFramesAutomatically is enabled");
        this.frameProcessingTaskExecutor.submitWithHighPriority(new FrameProcessingTask() { // from class: com.google.android.exoplayer2.effect.GlEffectsFrameProcessor$$ExternalSyntheticLambda2
            @Override // com.google.android.exoplayer2.effect.FrameProcessingTask
            public final void run() {
                GlEffectsFrameProcessor.this.lambda$releaseOutputFrame$0(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releaseOutputFrame$0(long j) throws FrameProcessingException, GlUtil.GlException {
        this.finalTextureProcessorWrapper.releaseOutputFrame(j);
    }

    @Override // com.google.android.exoplayer2.util.FrameProcessor
    public void signalEndOfInput() {
        Assertions.checkState(!this.inputStreamEnded);
        this.inputStreamEnded = true;
        FrameProcessingTaskExecutor frameProcessingTaskExecutor = this.frameProcessingTaskExecutor;
        final ExternalTextureManager externalTextureManager = this.inputExternalTextureManager;
        Objects.requireNonNull(externalTextureManager);
        frameProcessingTaskExecutor.submit(new FrameProcessingTask() { // from class: com.google.android.exoplayer2.effect.GlEffectsFrameProcessor$$ExternalSyntheticLambda0
            @Override // com.google.android.exoplayer2.effect.FrameProcessingTask
            public final void run() {
                ExternalTextureManager.this.signalEndOfInput();
            }
        });
    }

    @Override // com.google.android.exoplayer2.util.FrameProcessor
    public void release() {
        try {
            this.frameProcessingTaskExecutor.release(new FrameProcessingTask() { // from class: com.google.android.exoplayer2.effect.GlEffectsFrameProcessor$$ExternalSyntheticLambda1
                @Override // com.google.android.exoplayer2.effect.FrameProcessingTask
                public final void run() {
                    GlEffectsFrameProcessor.this.releaseTextureProcessorsAndDestroyGlContext();
                }
            }, RELEASE_WAIT_TIME_MS);
            this.inputExternalTextureManager.release();
            this.inputSurface.release();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException(e);
        }
    }

    private FrameInfo adjustForPixelWidthHeightRatio(FrameInfo frameInfo) {
        float f = frameInfo.pixelWidthHeightRatio;
        if (f > 1.0f) {
            return new FrameInfo((int) (frameInfo.width * f), frameInfo.height, 1.0f, frameInfo.streamOffsetUs);
        }
        return f < 1.0f ? new FrameInfo(frameInfo.width, (int) (frameInfo.height / f), 1.0f, frameInfo.streamOffsetUs) : frameInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseTextureProcessorsAndDestroyGlContext() throws GlUtil.GlException, FrameProcessingException {
        for (int i = 0; i < this.allTextureProcessors.size(); i++) {
            this.allTextureProcessors.get(i).release();
        }
        GlUtil.destroyEglContext(this.eglDisplay, this.eglContext);
    }
}
