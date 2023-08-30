package com.google.android.exoplayer2.effect;

import android.util.Pair;
import com.google.android.exoplayer2.effect.GlTextureProcessor;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.exoplayer2.util.GlUtil;
/* loaded from: classes.dex */
public abstract class SingleFrameGlTextureProcessor implements GlTextureProcessor {
    private int inputHeight;
    private int inputWidth;
    private TextureInfo outputTexture;
    private boolean outputTextureInUse;
    private final boolean useHdr;
    private GlTextureProcessor.InputListener inputListener = new GlTextureProcessor.InputListener() { // from class: com.google.android.exoplayer2.effect.SingleFrameGlTextureProcessor.1
        @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.InputListener
        public /* synthetic */ void onInputFrameProcessed(TextureInfo textureInfo) {
            GlTextureProcessor.InputListener.CC.$default$onInputFrameProcessed(this, textureInfo);
        }

        @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.InputListener
        public /* synthetic */ void onReadyToAcceptInputFrame() {
            GlTextureProcessor.InputListener.CC.$default$onReadyToAcceptInputFrame(this);
        }
    };
    private GlTextureProcessor.OutputListener outputListener = new GlTextureProcessor.OutputListener() { // from class: com.google.android.exoplayer2.effect.SingleFrameGlTextureProcessor.2
        @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.OutputListener
        public /* synthetic */ void onCurrentOutputStreamEnded() {
            GlTextureProcessor.OutputListener.CC.$default$onCurrentOutputStreamEnded(this);
        }

        @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.OutputListener
        public /* synthetic */ void onOutputFrameAvailable(TextureInfo textureInfo, long j) {
            GlTextureProcessor.OutputListener.CC.$default$onOutputFrameAvailable(this, textureInfo, j);
        }
    };
    private GlTextureProcessor.ErrorListener errorListener = new GlTextureProcessor.ErrorListener() { // from class: com.google.android.exoplayer2.effect.SingleFrameGlTextureProcessor$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.ErrorListener
        public final void onFrameProcessingError(FrameProcessingException frameProcessingException) {
            SingleFrameGlTextureProcessor.lambda$new$0(frameProcessingException);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(FrameProcessingException frameProcessingException) {
    }

    public abstract Pair<Integer, Integer> configure(int i, int i2);

    public abstract void drawFrame(int i, long j) throws FrameProcessingException;

    public SingleFrameGlTextureProcessor(boolean z) {
        this.useHdr = z;
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public final void setInputListener(GlTextureProcessor.InputListener inputListener) {
        this.inputListener = inputListener;
        if (this.outputTextureInUse) {
            return;
        }
        inputListener.onReadyToAcceptInputFrame();
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public final void setOutputListener(GlTextureProcessor.OutputListener outputListener) {
        this.outputListener = outputListener;
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public final void setErrorListener(GlTextureProcessor.ErrorListener errorListener) {
        this.errorListener = errorListener;
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public final void queueInputFrame(TextureInfo textureInfo, long j) {
        FrameProcessingException frameProcessingException;
        Assertions.checkState(!this.outputTextureInUse, "The texture processor does not currently accept input frames. Release prior output frames first.");
        try {
            if (this.outputTexture == null || textureInfo.width != this.inputWidth || textureInfo.height != this.inputHeight) {
                configureOutputTexture(textureInfo.width, textureInfo.height);
            }
            this.outputTextureInUse = true;
            TextureInfo textureInfo2 = this.outputTexture;
            GlUtil.focusFramebufferUsingCurrentContext(textureInfo2.fboId, textureInfo2.width, textureInfo2.height);
            GlUtil.clearOutputFrame();
            drawFrame(textureInfo.texId, j);
            this.inputListener.onInputFrameProcessed(textureInfo);
            this.outputListener.onOutputFrameAvailable(this.outputTexture, j);
        } catch (FrameProcessingException | GlUtil.GlException | RuntimeException e) {
            GlTextureProcessor.ErrorListener errorListener = this.errorListener;
            if (e instanceof FrameProcessingException) {
                frameProcessingException = (FrameProcessingException) e;
            } else {
                frameProcessingException = new FrameProcessingException(e);
            }
            errorListener.onFrameProcessingError(frameProcessingException);
        }
    }

    private void configureOutputTexture(int i, int i2) throws GlUtil.GlException {
        this.inputWidth = i;
        this.inputHeight = i2;
        Pair<Integer, Integer> configure = configure(i, i2);
        if (this.outputTexture != null && ((Integer) configure.first).intValue() == this.outputTexture.width && ((Integer) configure.second).intValue() == this.outputTexture.height) {
            return;
        }
        TextureInfo textureInfo = this.outputTexture;
        if (textureInfo != null) {
            GlUtil.deleteTexture(textureInfo.texId);
        }
        int createTexture = GlUtil.createTexture(((Integer) configure.first).intValue(), ((Integer) configure.second).intValue(), this.useHdr);
        this.outputTexture = new TextureInfo(createTexture, GlUtil.createFboForTexture(createTexture), ((Integer) configure.first).intValue(), ((Integer) configure.second).intValue());
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public final void releaseOutputFrame(TextureInfo textureInfo) {
        this.outputTextureInUse = false;
        this.inputListener.onReadyToAcceptInputFrame();
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public final void signalEndOfCurrentInputStream() {
        this.outputListener.onCurrentOutputStreamEnded();
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor
    public void release() throws FrameProcessingException {
        TextureInfo textureInfo = this.outputTexture;
        if (textureInfo != null) {
            try {
                GlUtil.deleteTexture(textureInfo.texId);
            } catch (GlUtil.GlException e) {
                throw new FrameProcessingException(e);
            }
        }
    }
}
