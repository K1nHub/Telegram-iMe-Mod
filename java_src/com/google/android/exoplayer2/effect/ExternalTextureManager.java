package com.google.android.exoplayer2.effect;

import android.graphics.SurfaceTexture;
import com.google.android.exoplayer2.C0468C;
import com.google.android.exoplayer2.effect.GlTextureProcessor;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.FrameInfo;
import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.exoplayer2.util.GlUtil;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class ExternalTextureManager implements GlTextureProcessor.InputListener {
    private final AtomicInteger availableFrameCount;
    private volatile FrameInfo currentFrame;
    private final int externalTexId;
    private final ExternalTextureProcessor externalTextureProcessor;
    private final AtomicInteger externalTextureProcessorInputCapacity;
    private final FrameProcessingTaskExecutor frameProcessingTaskExecutor;
    private volatile boolean inputStreamEnded;
    private final Queue<FrameInfo> pendingFrames;
    private long previousStreamOffsetUs;
    private final SurfaceTexture surfaceTexture;
    private final float[] textureTransformMatrix;

    public ExternalTextureManager(ExternalTextureProcessor externalTextureProcessor, FrameProcessingTaskExecutor frameProcessingTaskExecutor) throws FrameProcessingException {
        this.externalTextureProcessor = externalTextureProcessor;
        this.frameProcessingTaskExecutor = frameProcessingTaskExecutor;
        try {
            int createExternalTexture = GlUtil.createExternalTexture();
            this.externalTexId = createExternalTexture;
            this.surfaceTexture = new SurfaceTexture(createExternalTexture);
            this.textureTransformMatrix = new float[16];
            this.pendingFrames = new ConcurrentLinkedQueue();
            this.availableFrameCount = new AtomicInteger();
            this.externalTextureProcessorInputCapacity = new AtomicInteger();
            this.previousStreamOffsetUs = C0468C.TIME_UNSET;
        } catch (GlUtil.GlException e) {
            throw new FrameProcessingException(e);
        }
    }

    public SurfaceTexture getSurfaceTexture() {
        this.surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.google.android.exoplayer2.effect.ExternalTextureManager$$ExternalSyntheticLambda0
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
                ExternalTextureManager.this.lambda$getSurfaceTexture$0(surfaceTexture);
            }
        });
        return this.surfaceTexture;
    }

    public /* synthetic */ void lambda$getSurfaceTexture$0(SurfaceTexture surfaceTexture) {
        this.availableFrameCount.getAndIncrement();
        this.frameProcessingTaskExecutor.submit(new ExternalTextureManager$$ExternalSyntheticLambda1(this));
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.InputListener
    public void onReadyToAcceptInputFrame() {
        this.externalTextureProcessorInputCapacity.getAndIncrement();
        this.frameProcessingTaskExecutor.submit(new ExternalTextureManager$$ExternalSyntheticLambda1(this));
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.InputListener
    public void onInputFrameProcessed(TextureInfo textureInfo) {
        this.currentFrame = null;
        this.frameProcessingTaskExecutor.submit(new ExternalTextureManager$$ExternalSyntheticLambda1(this));
    }

    public void registerInputFrame(FrameInfo frameInfo) {
        this.pendingFrames.add(frameInfo);
    }

    public int getPendingFrameCount() {
        return this.pendingFrames.size();
    }

    public void signalEndOfInput() {
        this.inputStreamEnded = true;
        if (this.pendingFrames.isEmpty() && this.currentFrame == null) {
            this.externalTextureProcessor.signalEndOfCurrentInputStream();
        }
    }

    public void release() {
        this.surfaceTexture.release();
    }

    public void maybeQueueFrameToExternalTextureProcessor() {
        if (this.externalTextureProcessorInputCapacity.get() == 0 || this.availableFrameCount.get() == 0 || this.currentFrame != null) {
            return;
        }
        this.availableFrameCount.getAndDecrement();
        this.surfaceTexture.updateTexImage();
        this.currentFrame = this.pendingFrames.remove();
        FrameInfo frameInfo = (FrameInfo) Assertions.checkNotNull(this.currentFrame);
        this.externalTextureProcessorInputCapacity.getAndDecrement();
        this.surfaceTexture.getTransformMatrix(this.textureTransformMatrix);
        this.externalTextureProcessor.setTextureTransformMatrix(this.textureTransformMatrix);
        long timestamp = this.surfaceTexture.getTimestamp();
        long j = frameInfo.streamOffsetUs;
        long j2 = this.previousStreamOffsetUs;
        if (j != j2) {
            if (j2 != C0468C.TIME_UNSET) {
                this.externalTextureProcessor.signalEndOfCurrentInputStream();
            }
            this.previousStreamOffsetUs = j;
        }
        this.externalTextureProcessor.queueInputFrame(new TextureInfo(this.externalTexId, -1, frameInfo.width, frameInfo.height), (timestamp / 1000) - j);
        if (this.inputStreamEnded && this.pendingFrames.isEmpty()) {
            this.externalTextureProcessor.signalEndOfCurrentInputStream();
        }
    }
}
