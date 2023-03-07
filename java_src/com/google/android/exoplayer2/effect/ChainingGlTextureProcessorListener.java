package com.google.android.exoplayer2.effect;

import android.util.Pair;
import com.google.android.exoplayer2.effect.GlTextureProcessor;
import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.exoplayer2.util.GlUtil;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ChainingGlTextureProcessorListener implements GlTextureProcessor.InputListener, GlTextureProcessor.OutputListener {
    private final Queue<Pair<TextureInfo, Long>> availableFrames = new ArrayDeque();
    private final GlTextureProcessor consumingGlTextureProcessor;
    private int consumingGlTextureProcessorInputCapacity;
    private final FrameProcessingTaskExecutor frameProcessingTaskExecutor;
    private final GlTextureProcessor producingGlTextureProcessor;

    public ChainingGlTextureProcessorListener(GlTextureProcessor glTextureProcessor, GlTextureProcessor glTextureProcessor2, FrameProcessingTaskExecutor frameProcessingTaskExecutor) {
        this.producingGlTextureProcessor = glTextureProcessor;
        this.consumingGlTextureProcessor = glTextureProcessor2;
        this.frameProcessingTaskExecutor = frameProcessingTaskExecutor;
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.InputListener
    public synchronized void onReadyToAcceptInputFrame() {
        final Pair<TextureInfo, Long> poll = this.availableFrames.poll();
        if (poll == null) {
            this.consumingGlTextureProcessorInputCapacity++;
            return;
        }
        final long longValue = ((Long) poll.second).longValue();
        if (longValue == Long.MIN_VALUE) {
            FrameProcessingTaskExecutor frameProcessingTaskExecutor = this.frameProcessingTaskExecutor;
            GlTextureProcessor glTextureProcessor = this.consumingGlTextureProcessor;
            Objects.requireNonNull(glTextureProcessor);
            frameProcessingTaskExecutor.submit(new ChainingGlTextureProcessorListener$$ExternalSyntheticLambda3(glTextureProcessor));
        } else {
            this.frameProcessingTaskExecutor.submit(new FrameProcessingTask() { // from class: com.google.android.exoplayer2.effect.ChainingGlTextureProcessorListener$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.effect.FrameProcessingTask
                public final void run() {
                    ChainingGlTextureProcessorListener.this.lambda$onReadyToAcceptInputFrame$0(poll, longValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onReadyToAcceptInputFrame$0(Pair pair, long j) throws FrameProcessingException, GlUtil.GlException {
        this.consumingGlTextureProcessor.queueInputFrame((TextureInfo) pair.first, j);
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.InputListener
    public void onInputFrameProcessed(final TextureInfo textureInfo) {
        this.frameProcessingTaskExecutor.submit(new FrameProcessingTask() { // from class: com.google.android.exoplayer2.effect.ChainingGlTextureProcessorListener$$ExternalSyntheticLambda1
            @Override // com.google.android.exoplayer2.effect.FrameProcessingTask
            public final void run() {
                ChainingGlTextureProcessorListener.this.lambda$onInputFrameProcessed$1(textureInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onInputFrameProcessed$1(TextureInfo textureInfo) throws FrameProcessingException, GlUtil.GlException {
        this.producingGlTextureProcessor.releaseOutputFrame(textureInfo);
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.OutputListener
    public synchronized void onOutputFrameAvailable(final TextureInfo textureInfo, final long j) {
        if (this.consumingGlTextureProcessorInputCapacity > 0) {
            this.frameProcessingTaskExecutor.submit(new FrameProcessingTask() { // from class: com.google.android.exoplayer2.effect.ChainingGlTextureProcessorListener$$ExternalSyntheticLambda2
                @Override // com.google.android.exoplayer2.effect.FrameProcessingTask
                public final void run() {
                    ChainingGlTextureProcessorListener.this.lambda$onOutputFrameAvailable$2(textureInfo, j);
                }
            });
            this.consumingGlTextureProcessorInputCapacity--;
        } else {
            this.availableFrames.add(new Pair<>(textureInfo, Long.valueOf(j)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onOutputFrameAvailable$2(TextureInfo textureInfo, long j) throws FrameProcessingException, GlUtil.GlException {
        this.consumingGlTextureProcessor.queueInputFrame(textureInfo, j);
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.OutputListener
    public synchronized void onCurrentOutputStreamEnded() {
        if (!this.availableFrames.isEmpty()) {
            this.availableFrames.add(new Pair<>(TextureInfo.UNSET, Long.MIN_VALUE));
        } else {
            FrameProcessingTaskExecutor frameProcessingTaskExecutor = this.frameProcessingTaskExecutor;
            GlTextureProcessor glTextureProcessor = this.consumingGlTextureProcessor;
            Objects.requireNonNull(glTextureProcessor);
            frameProcessingTaskExecutor.submit(new ChainingGlTextureProcessorListener$$ExternalSyntheticLambda3(glTextureProcessor));
        }
    }
}
