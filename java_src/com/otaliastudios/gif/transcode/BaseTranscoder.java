package com.otaliastudios.gif.transcode;

import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.otaliastudios.gif.internal.MediaCodecBuffers;
import com.otaliastudios.gif.sink.DataSink;
import com.otaliastudios.gif.source.DataSource;
import java.io.IOException;
/* loaded from: classes3.dex */
public abstract class BaseTranscoder implements Transcoder {
    private MediaFormat mActualOutputFormat;
    private final MediaCodec.BufferInfo mBufferInfo = new MediaCodec.BufferInfo();
    private final DataSource.Chunk mDataChunk = new DataSource.Chunk();
    private final DataSink mDataSink;
    private final DataSource mDataSource;
    private MediaCodec mEncoder;
    private MediaCodecBuffers mEncoderBuffers;
    private boolean mEncoderStarted;
    private boolean mIsDataSourceEOS;
    private boolean mIsEncoderEOS;

    protected abstract void onDrainSource(long j, Bitmap bitmap, long j2, boolean z);

    protected abstract boolean onFeedEncoder(MediaCodec mediaCodec, MediaCodecBuffers mediaCodecBuffers, long j);

    /* JADX INFO: Access modifiers changed from: protected */
    public void onStarted(MediaFormat mediaFormat, MediaFormat mediaFormat2, MediaCodec mediaCodec) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseTranscoder(DataSource dataSource, DataSink dataSink) {
        this.mDataSource = dataSource;
        this.mDataSink = dataSink;
    }

    @Override // com.otaliastudios.gif.transcode.Transcoder
    public final void setUp(MediaFormat mediaFormat) {
        try {
            MediaCodec createEncoderByType = MediaCodec.createEncoderByType(mediaFormat.getString("mime"));
            this.mEncoder = createEncoderByType;
            onConfigureEncoder(mediaFormat, createEncoderByType);
            onStartEncoder(mediaFormat, this.mEncoder);
            onStarted(this.mDataSource.getTrackFormat(), mediaFormat, this.mEncoder);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onConfigureEncoder(MediaFormat mediaFormat, MediaCodec mediaCodec) {
        mediaCodec.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onStartEncoder(MediaFormat mediaFormat, MediaCodec mediaCodec) {
        mediaCodec.start();
        this.mEncoderStarted = true;
        this.mEncoderBuffers = new MediaCodecBuffers(mediaCodec);
    }

    @Override // com.otaliastudios.gif.transcode.Transcoder
    public final boolean isFinished() {
        return this.mIsEncoderEOS;
    }

    @Override // com.otaliastudios.gif.transcode.Transcoder
    public void release() {
        MediaCodec mediaCodec = this.mEncoder;
        if (mediaCodec != null) {
            if (this.mEncoderStarted) {
                mediaCodec.stop();
                this.mEncoderStarted = false;
            }
            this.mEncoder.release();
            this.mEncoder = null;
        }
    }

    @Override // com.otaliastudios.gif.transcode.Transcoder
    public final boolean transcode(boolean z) {
        int drainSource;
        boolean z2 = false;
        while (drainEncoder(0L) != 0) {
            z2 = true;
        }
        do {
            drainSource = drainSource(0L, z);
            if (drainSource != 0) {
                z2 = true;
                continue;
            }
        } while (drainSource == 1);
        while (feedEncoder(0L)) {
            z2 = true;
        }
        return z2;
    }

    private int drainSource(long j, boolean z) {
        if (this.mIsDataSourceEOS) {
            return 0;
        }
        if (this.mDataSource.isDrained() || z) {
            this.mIsDataSourceEOS = true;
            return 0;
        }
        this.mDataSource.read(this.mDataChunk);
        DataSource.Chunk chunk = this.mDataChunk;
        onDrainSource(j, chunk.bitmap, chunk.timestampUs, this.mDataSource.isDrained());
        return 2;
    }

    protected void onEncoderOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        if (this.mActualOutputFormat != null) {
            throw new RuntimeException("Audio output format changed twice.");
        }
        this.mActualOutputFormat = mediaFormat;
        this.mDataSink.setFormat(mediaFormat);
    }

    private boolean feedEncoder(long j) {
        return onFeedEncoder(this.mEncoder, this.mEncoderBuffers, j);
    }

    private int drainEncoder(long j) {
        if (this.mIsEncoderEOS) {
            return 0;
        }
        int dequeueOutputBuffer = this.mEncoder.dequeueOutputBuffer(this.mBufferInfo, j);
        if (dequeueOutputBuffer == -3) {
            this.mEncoderBuffers.onOutputBuffersChanged();
            return 1;
        } else if (dequeueOutputBuffer == -2) {
            MediaCodec mediaCodec = this.mEncoder;
            onEncoderOutputFormatChanged(mediaCodec, mediaCodec.getOutputFormat());
            return 1;
        } else if (dequeueOutputBuffer != -1) {
            if (this.mActualOutputFormat == null) {
                throw new RuntimeException("Could not determine actual output format.");
            }
            MediaCodec.BufferInfo bufferInfo = this.mBufferInfo;
            int i = bufferInfo.flags;
            if ((i & 4) != 0) {
                this.mIsEncoderEOS = true;
                bufferInfo.set(0, 0, 0L, i);
            }
            if ((this.mBufferInfo.flags & 2) != 0) {
                this.mEncoder.releaseOutputBuffer(dequeueOutputBuffer, false);
                return 1;
            }
            this.mDataSink.write(this.mEncoderBuffers.getOutputBuffer(dequeueOutputBuffer), this.mBufferInfo);
            this.mEncoder.releaseOutputBuffer(dequeueOutputBuffer, false);
            return 2;
        } else {
            return 0;
        }
    }
}
