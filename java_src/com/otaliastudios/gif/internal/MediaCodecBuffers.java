package com.otaliastudios.gif.internal;

import android.media.MediaCodec;
import android.os.Build;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
public class MediaCodecBuffers {
    private final MediaCodec mMediaCodec;
    private ByteBuffer[] mOutputBuffers;

    public MediaCodecBuffers(MediaCodec mediaCodec) {
        this.mMediaCodec = mediaCodec;
        if (Build.VERSION.SDK_INT < 21) {
            mediaCodec.getInputBuffers();
            this.mOutputBuffers = mediaCodec.getOutputBuffers();
            return;
        }
        this.mOutputBuffers = null;
    }

    public ByteBuffer getOutputBuffer(int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.mMediaCodec.getOutputBuffer(i);
        }
        return this.mOutputBuffers[i];
    }

    public void onOutputBuffersChanged() {
        if (Build.VERSION.SDK_INT < 21) {
            this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
        }
    }
}
