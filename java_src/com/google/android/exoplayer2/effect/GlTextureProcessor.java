package com.google.android.exoplayer2.effect;

import com.google.android.exoplayer2.util.FrameProcessingException;
/* loaded from: classes.dex */
public interface GlTextureProcessor {

    /* loaded from: classes.dex */
    public interface ErrorListener {
        void onFrameProcessingError(FrameProcessingException frameProcessingException);
    }

    /* loaded from: classes.dex */
    public interface InputListener {

        /* renamed from: com.google.android.exoplayer2.effect.GlTextureProcessor$InputListener$-CC  reason: invalid class name */
        /* loaded from: classes.dex */
        public final /* synthetic */ class CC {
            public static void $default$onInputFrameProcessed(InputListener inputListener, TextureInfo textureInfo) {
            }

            public static void $default$onReadyToAcceptInputFrame(InputListener inputListener) {
            }
        }

        void onInputFrameProcessed(TextureInfo textureInfo);

        void onReadyToAcceptInputFrame();
    }

    /* loaded from: classes.dex */
    public interface OutputListener {

        /* renamed from: com.google.android.exoplayer2.effect.GlTextureProcessor$OutputListener$-CC  reason: invalid class name */
        /* loaded from: classes.dex */
        public final /* synthetic */ class CC {
            public static void $default$onCurrentOutputStreamEnded(OutputListener outputListener) {
            }

            public static void $default$onOutputFrameAvailable(OutputListener outputListener, TextureInfo textureInfo, long j) {
            }
        }

        void onCurrentOutputStreamEnded();

        void onOutputFrameAvailable(TextureInfo textureInfo, long j);
    }

    void queueInputFrame(TextureInfo textureInfo, long j);

    void release() throws FrameProcessingException;

    void releaseOutputFrame(TextureInfo textureInfo);

    void setErrorListener(ErrorListener errorListener);

    void setInputListener(InputListener inputListener);

    void setOutputListener(OutputListener outputListener);

    void signalEndOfCurrentInputStream();
}
