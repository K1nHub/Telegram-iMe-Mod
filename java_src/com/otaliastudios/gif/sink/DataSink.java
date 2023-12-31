package com.otaliastudios.gif.sink;

import android.media.MediaCodec;
import android.media.MediaFormat;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
public interface DataSink {
    void release();

    void setFormat(MediaFormat mediaFormat);

    void setOrientation(int i);

    void stop();

    void write(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo);
}
