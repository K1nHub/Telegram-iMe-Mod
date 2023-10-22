package com.otaliastudios.gif.sink;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import com.otaliastudios.gif.internal.Logger;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class DefaultDataSink implements DataSink {
    private static final Logger LOG = new Logger(DefaultDataSink.class.getSimpleName());
    private final MediaMuxer mMuxer;
    private final DefaultDataSinkChecks mMuxerChecks;
    private int mMuxerIndex;
    private boolean mMuxerStarted;
    private final List<QueuedSample> mQueue;
    private ByteBuffer mQueueBuffer;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class QueuedSample {
        private final int mFlags;
        private final int mSize;
        private final long mTimeUs;

        private QueuedSample(MediaCodec.BufferInfo bufferInfo) {
            this.mSize = bufferInfo.size;
            this.mTimeUs = bufferInfo.presentationTimeUs;
            this.mFlags = bufferInfo.flags;
        }
    }

    public DefaultDataSink(String str) {
        this(str, 0);
    }

    public DefaultDataSink(String str, int i) {
        this.mMuxerStarted = false;
        this.mQueue = new ArrayList();
        this.mMuxerChecks = new DefaultDataSinkChecks();
        try {
            this.mMuxer = new MediaMuxer(str, i);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.otaliastudios.gif.sink.DataSink
    public void setOrientation(int i) {
        this.mMuxer.setOrientationHint(i);
    }

    @Override // com.otaliastudios.gif.sink.DataSink
    public void setFormat(MediaFormat mediaFormat) {
        this.mMuxerChecks.checkOutputFormat(mediaFormat);
        if (this.mMuxerStarted) {
            return;
        }
        this.mMuxerIndex = this.mMuxer.addTrack(mediaFormat);
        Logger logger = LOG;
        logger.m1000v("Added track #" + this.mMuxerIndex + " with " + mediaFormat.getString("mime") + " to muxer");
        this.mMuxer.start();
        this.mMuxerStarted = true;
        drainQueue();
    }

    @Override // com.otaliastudios.gif.sink.DataSink
    public void write(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        if (this.mMuxerStarted) {
            this.mMuxer.writeSampleData(this.mMuxerIndex, byteBuffer, bufferInfo);
        } else {
            enqueue(byteBuffer, bufferInfo);
        }
    }

    private void enqueue(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        if (this.mQueueBuffer == null) {
            this.mQueueBuffer = ByteBuffer.allocateDirect(65536).order(ByteOrder.nativeOrder());
        }
        byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
        byteBuffer.position(bufferInfo.offset);
        this.mQueueBuffer.put(byteBuffer);
        this.mQueue.add(new QueuedSample(bufferInfo));
    }

    private void drainQueue() {
        if (this.mQueue.isEmpty()) {
            return;
        }
        this.mQueueBuffer.flip();
        Logger logger = LOG;
        logger.m1002i("Output format determined, writing pending data into the muxer. samples:" + this.mQueue.size() + " bytes:" + this.mQueueBuffer.limit());
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        int i = 0;
        for (QueuedSample queuedSample : this.mQueue) {
            bufferInfo.set(i, queuedSample.mSize, queuedSample.mTimeUs, queuedSample.mFlags);
            write(this.mQueueBuffer, bufferInfo);
            i += queuedSample.mSize;
        }
        this.mQueue.clear();
        this.mQueueBuffer = null;
    }

    @Override // com.otaliastudios.gif.sink.DataSink
    public void stop() {
        this.mMuxer.stop();
    }

    @Override // com.otaliastudios.gif.sink.DataSink
    public void release() {
        try {
            this.mMuxer.release();
        } catch (Exception e) {
            LOG.m998w("Failed to release the muxer.", e);
        }
    }
}
