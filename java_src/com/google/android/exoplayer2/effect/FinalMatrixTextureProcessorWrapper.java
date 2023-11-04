package com.google.android.exoplayer2.effect;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.google.android.exoplayer2.effect.GlTextureProcessor;
import com.google.android.exoplayer2.effect.ScaleToFitTransformation;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.DebugViewProvider;
import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.exoplayer2.util.FrameProcessor;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.SurfaceInfo;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.common.collect.ImmutableList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes.dex */
final class FinalMatrixTextureProcessorWrapper implements ExternalTextureProcessor {
    private static final String TAG = "FinalProcessorWrapper";
    private final ColorInfo colorInfo;
    private final Context context;
    private SurfaceView debugSurfaceView;
    private SurfaceViewWrapper debugSurfaceViewWrapper;
    private final DebugViewProvider debugViewProvider;
    private final EGLContext eglContext;
    private final EGLDisplay eglDisplay;
    private final FrameProcessor.Listener frameProcessorListener;
    private int inputHeight;
    private int inputWidth;
    private MatrixTextureProcessor matrixTextureProcessor;
    private final ImmutableList<GlMatrixTransformation> matrixTransformations;
    private EGLSurface outputEglSurface;
    private Pair<Integer, Integer> outputSizeBeforeSurfaceTransformation;
    private volatile boolean outputSizeOrRotationChanged;
    private SurfaceInfo outputSurfaceInfo;
    private final boolean releaseFramesAutomatically;
    private final ImmutableList<RgbMatrix> rgbMatrices;
    private final boolean sampleFromExternalTexture;
    private final float[] textureTransformMatrix = GlUtil.create4x4IdentityMatrix();
    private final Queue<Long> streamOffsetUsQueue = new ConcurrentLinkedQueue();
    private GlTextureProcessor.InputListener inputListener = new GlTextureProcessor.InputListener() { // from class: com.google.android.exoplayer2.effect.FinalMatrixTextureProcessorWrapper.1
        @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.InputListener
        public /* synthetic */ void onInputFrameProcessed(TextureInfo textureInfo) {
            GlTextureProcessor.InputListener.CC.$default$onInputFrameProcessed(this, textureInfo);
        }

        @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.InputListener
        public /* synthetic */ void onReadyToAcceptInputFrame() {
            GlTextureProcessor.InputListener.CC.$default$onReadyToAcceptInputFrame(this);
        }
    };
    private final Queue<Pair<TextureInfo, Long>> availableFrames = new ConcurrentLinkedQueue();

    public FinalMatrixTextureProcessorWrapper(Context context, EGLDisplay eGLDisplay, EGLContext eGLContext, ImmutableList<GlMatrixTransformation> immutableList, ImmutableList<RgbMatrix> immutableList2, FrameProcessor.Listener listener, DebugViewProvider debugViewProvider, boolean z, ColorInfo colorInfo, boolean z2) {
        this.context = context;
        this.matrixTransformations = immutableList;
        this.rgbMatrices = immutableList2;
        this.eglDisplay = eGLDisplay;
        this.eglContext = eGLContext;
        this.debugViewProvider = debugViewProvider;
        this.frameProcessorListener = listener;
        this.sampleFromExternalTexture = z;
        this.colorInfo = colorInfo;
        this.releaseFramesAutomatically = z2;
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public void setInputListener(GlTextureProcessor.InputListener inputListener) {
        this.inputListener = inputListener;
        inputListener.onReadyToAcceptInputFrame();
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public void setOutputListener(GlTextureProcessor.OutputListener outputListener) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public void setErrorListener(GlTextureProcessor.ErrorListener errorListener) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public void queueInputFrame(TextureInfo textureInfo, long j) {
        long longValue = ((Long) Assertions.checkStateNotNull(this.streamOffsetUsQueue.peek(), "No input stream specified.")).longValue() + j;
        this.frameProcessorListener.onOutputFrameAvailable(longValue);
        if (this.releaseFramesAutomatically) {
            renderFrameToSurfaces(textureInfo, j, longValue * 1000);
        } else {
            this.availableFrames.add(Pair.create(textureInfo, Long.valueOf(j)));
        }
        this.inputListener.onReadyToAcceptInputFrame();
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public void releaseOutputFrame(TextureInfo textureInfo) {
        throw new UnsupportedOperationException();
    }

    public void releaseOutputFrame(long j) {
        Assertions.checkState(!this.releaseFramesAutomatically);
        Pair<TextureInfo, Long> remove = this.availableFrames.remove();
        renderFrameToSurfaces((TextureInfo) remove.first, ((Long) remove.second).longValue(), j);
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public void signalEndOfCurrentInputStream() {
        Assertions.checkState(!this.streamOffsetUsQueue.isEmpty(), "No input stream to end.");
        this.streamOffsetUsQueue.remove();
        if (this.streamOffsetUsQueue.isEmpty()) {
            this.frameProcessorListener.onFrameProcessingEnded();
        }
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public void release() throws FrameProcessingException {
        MatrixTextureProcessor matrixTextureProcessor = this.matrixTextureProcessor;
        if (matrixTextureProcessor != null) {
            matrixTextureProcessor.release();
        }
    }

    @Override // com.google.android.exoplayer2.effect.ExternalTextureProcessor
    public void setTextureTransformMatrix(float[] fArr) {
        System.arraycopy(fArr, 0, this.textureTransformMatrix, 0, fArr.length);
        MatrixTextureProcessor matrixTextureProcessor = this.matrixTextureProcessor;
        if (matrixTextureProcessor != null) {
            matrixTextureProcessor.setTextureTransformMatrix(fArr);
        }
    }

    public void appendStream(long j) {
        this.streamOffsetUsQueue.add(Long.valueOf(j));
    }

    public synchronized void setOutputSurfaceInfo(SurfaceInfo surfaceInfo) {
        boolean z;
        SurfaceInfo surfaceInfo2;
        if (!Util.areEqual(this.outputSurfaceInfo, surfaceInfo)) {
            if (surfaceInfo != null && (surfaceInfo2 = this.outputSurfaceInfo) != null && !surfaceInfo2.surface.equals(surfaceInfo.surface)) {
                this.outputEglSurface = null;
            }
            SurfaceInfo surfaceInfo3 = this.outputSurfaceInfo;
            if (surfaceInfo3 != null && surfaceInfo != null && surfaceInfo3.width == surfaceInfo.width && surfaceInfo3.height == surfaceInfo.height && surfaceInfo3.orientationDegrees == surfaceInfo.orientationDegrees) {
                z = false;
                this.outputSizeOrRotationChanged = z;
                this.outputSurfaceInfo = surfaceInfo;
            }
            z = true;
            this.outputSizeOrRotationChanged = z;
            this.outputSurfaceInfo = surfaceInfo;
        }
    }

    private void renderFrameToSurfaces(TextureInfo textureInfo, long j, long j2) {
        try {
            maybeRenderFrameToOutputSurface(textureInfo, j, j2);
        } catch (FrameProcessingException | GlUtil.GlException e) {
            this.frameProcessorListener.onFrameProcessingError(FrameProcessingException.from(e, j));
        }
        maybeRenderFrameToDebugSurface(textureInfo, j);
        this.inputListener.onInputFrameProcessed(textureInfo);
    }

    private synchronized void maybeRenderFrameToOutputSurface(TextureInfo textureInfo, long j, long j2) throws FrameProcessingException, GlUtil.GlException {
        if (j2 != -2) {
            if (ensureConfigured(textureInfo.width, textureInfo.height)) {
                EGLSurface eGLSurface = this.outputEglSurface;
                SurfaceInfo surfaceInfo = this.outputSurfaceInfo;
                MatrixTextureProcessor matrixTextureProcessor = this.matrixTextureProcessor;
                GlUtil.focusEglSurface(this.eglDisplay, this.eglContext, eGLSurface, surfaceInfo.width, surfaceInfo.height);
                GlUtil.clearOutputFrame();
                matrixTextureProcessor.drawFrame(textureInfo.texId, j);
                EGLDisplay eGLDisplay = this.eglDisplay;
                if (j2 == -1) {
                    j2 = System.nanoTime();
                }
                EGLExt.eglPresentationTimeANDROID(eGLDisplay, eGLSurface, j2);
                EGL14.eglSwapBuffers(this.eglDisplay, eGLSurface);
            }
        }
    }

    private synchronized boolean ensureConfigured(int i, int i2) throws FrameProcessingException, GlUtil.GlException {
        int[] iArr;
        if (this.inputWidth != i || this.inputHeight != i2 || this.outputSizeBeforeSurfaceTransformation == null) {
            this.inputWidth = i;
            this.inputHeight = i2;
            Pair<Integer, Integer> configureAndGetOutputSize = MatrixUtils.configureAndGetOutputSize(i, i2, this.matrixTransformations);
            if (!Util.areEqual(this.outputSizeBeforeSurfaceTransformation, configureAndGetOutputSize)) {
                this.outputSizeBeforeSurfaceTransformation = configureAndGetOutputSize;
                this.frameProcessorListener.onOutputSizeChanged(((Integer) configureAndGetOutputSize.first).intValue(), ((Integer) configureAndGetOutputSize.second).intValue());
            }
        }
        SurfaceInfo surfaceInfo = this.outputSurfaceInfo;
        if (surfaceInfo == null) {
            MatrixTextureProcessor matrixTextureProcessor = this.matrixTextureProcessor;
            if (matrixTextureProcessor != null) {
                matrixTextureProcessor.release();
                this.matrixTextureProcessor = null;
            }
            this.outputEglSurface = null;
            return false;
        }
        EGLSurface eGLSurface = this.outputEglSurface;
        if (eGLSurface == null) {
            boolean isTransferHdr = ColorInfo.isTransferHdr(this.colorInfo);
            EGLDisplay eGLDisplay = this.eglDisplay;
            Surface surface = surfaceInfo.surface;
            if (isTransferHdr) {
                iArr = GlUtil.EGL_CONFIG_ATTRIBUTES_RGBA_1010102;
            } else {
                iArr = GlUtil.EGL_CONFIG_ATTRIBUTES_RGBA_8888;
            }
            EGLSurface eglSurface = GlUtil.getEglSurface(eGLDisplay, surface, iArr);
            SurfaceView debugPreviewSurfaceView = this.debugViewProvider.getDebugPreviewSurfaceView(surfaceInfo.width, surfaceInfo.height);
            if (debugPreviewSurfaceView != null && !Util.areEqual(this.debugSurfaceView, debugPreviewSurfaceView)) {
                this.debugSurfaceViewWrapper = new SurfaceViewWrapper(this.eglDisplay, this.eglContext, isTransferHdr, debugPreviewSurfaceView);
            }
            this.debugSurfaceView = debugPreviewSurfaceView;
            eGLSurface = eglSurface;
        }
        if (this.matrixTextureProcessor != null && this.outputSizeOrRotationChanged) {
            this.matrixTextureProcessor.release();
            this.matrixTextureProcessor = null;
            this.outputSizeOrRotationChanged = false;
        }
        if (this.matrixTextureProcessor == null) {
            this.matrixTextureProcessor = createMatrixTextureProcessorForOutputSurface(surfaceInfo);
        }
        this.outputSurfaceInfo = surfaceInfo;
        this.outputEglSurface = eGLSurface;
        return true;
    }

    private MatrixTextureProcessor createMatrixTextureProcessorForOutputSurface(SurfaceInfo surfaceInfo) throws FrameProcessingException {
        MatrixTextureProcessor createApplyingOetf;
        ImmutableList.Builder addAll = new ImmutableList.Builder().addAll((Iterable) this.matrixTransformations);
        if (surfaceInfo.orientationDegrees != 0) {
            addAll.add((ImmutableList.Builder) new ScaleToFitTransformation.Builder().setRotationDegrees(surfaceInfo.orientationDegrees).build());
        }
        addAll.add((ImmutableList.Builder) Presentation.createForWidthAndHeight(surfaceInfo.width, surfaceInfo.height, 0));
        ImmutableList build = addAll.build();
        if (this.sampleFromExternalTexture) {
            createApplyingOetf = MatrixTextureProcessor.createWithExternalSamplerApplyingEotfThenOetf(this.context, build, this.rgbMatrices, this.colorInfo);
        } else {
            createApplyingOetf = MatrixTextureProcessor.createApplyingOetf(this.context, build, this.rgbMatrices, this.colorInfo);
        }
        createApplyingOetf.setTextureTransformMatrix(this.textureTransformMatrix);
        Pair<Integer, Integer> configure = createApplyingOetf.configure(this.inputWidth, this.inputHeight);
        Assertions.checkState(((Integer) configure.first).intValue() == surfaceInfo.width);
        Assertions.checkState(((Integer) configure.second).intValue() == surfaceInfo.height);
        return createApplyingOetf;
    }

    private void maybeRenderFrameToDebugSurface(final TextureInfo textureInfo, final long j) {
        final MatrixTextureProcessor matrixTextureProcessor;
        SurfaceViewWrapper surfaceViewWrapper = this.debugSurfaceViewWrapper;
        if (surfaceViewWrapper == null || (matrixTextureProcessor = this.matrixTextureProcessor) == null) {
            return;
        }
        try {
            surfaceViewWrapper.maybeRenderToSurfaceView(new FrameProcessingTask() { // from class: com.google.android.exoplayer2.effect.FinalMatrixTextureProcessorWrapper$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.effect.FrameProcessingTask
                public final void run() {
                    FinalMatrixTextureProcessorWrapper.lambda$maybeRenderFrameToDebugSurface$0(MatrixTextureProcessor.this, textureInfo, j);
                }
            });
        } catch (FrameProcessingException | GlUtil.GlException e) {
            Log.m1112d(TAG, "Error rendering to debug preview", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$maybeRenderFrameToDebugSurface$0(MatrixTextureProcessor matrixTextureProcessor, TextureInfo textureInfo, long j) throws FrameProcessingException, GlUtil.GlException {
        GlUtil.clearOutputFrame();
        matrixTextureProcessor.drawFrame(textureInfo.texId, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class SurfaceViewWrapper implements SurfaceHolder.Callback {
        private final EGLContext eglContext;
        private final EGLDisplay eglDisplay;
        private EGLSurface eglSurface;
        private int height;
        private Surface surface;
        private final boolean useHdr;
        private int width;

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
        }

        public SurfaceViewWrapper(EGLDisplay eGLDisplay, EGLContext eGLContext, boolean z, SurfaceView surfaceView) {
            this.eglDisplay = eGLDisplay;
            this.eglContext = eGLContext;
            this.useHdr = z;
            surfaceView.getHolder().addCallback(this);
            this.surface = surfaceView.getHolder().getSurface();
            this.width = surfaceView.getWidth();
            this.height = surfaceView.getHeight();
        }

        public synchronized void maybeRenderToSurfaceView(FrameProcessingTask frameProcessingTask) throws GlUtil.GlException, FrameProcessingException {
            int[] iArr;
            Surface surface = this.surface;
            if (surface == null) {
                return;
            }
            if (this.eglSurface == null) {
                EGLDisplay eGLDisplay = this.eglDisplay;
                if (this.useHdr) {
                    iArr = GlUtil.EGL_CONFIG_ATTRIBUTES_RGBA_1010102;
                } else {
                    iArr = GlUtil.EGL_CONFIG_ATTRIBUTES_RGBA_8888;
                }
                this.eglSurface = GlUtil.getEglSurface(eGLDisplay, surface, iArr);
            }
            EGLSurface eGLSurface = this.eglSurface;
            GlUtil.focusEglSurface(this.eglDisplay, this.eglContext, eGLSurface, this.width, this.height);
            frameProcessingTask.run();
            EGL14.eglSwapBuffers(this.eglDisplay, eGLSurface);
            GLES20.glFinish();
        }

        @Override // android.view.SurfaceHolder.Callback
        public synchronized void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            this.width = i2;
            this.height = i3;
            Surface surface = surfaceHolder.getSurface();
            Surface surface2 = this.surface;
            if (surface2 == null || !surface2.equals(surface)) {
                this.surface = surface;
                this.eglSurface = null;
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public synchronized void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            this.surface = null;
            this.eglSurface = null;
            this.width = -1;
            this.height = -1;
        }
    }
}
