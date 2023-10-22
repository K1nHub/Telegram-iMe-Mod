package com.otaliastudios.gif.transcode;

import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.media.MediaFormat;
import com.otaliastudios.gif.internal.Logger;
import com.otaliastudios.gif.internal.MediaCodecBuffers;
import com.otaliastudios.gif.sink.DataSink;
import com.otaliastudios.gif.source.DataSource;
import com.otaliastudios.gif.time.TimeInterpolator;
import com.otaliastudios.gif.transcode.internal.VideoDecoderOutput;
import com.otaliastudios.gif.transcode.internal.VideoEncoderInput;
import com.otaliastudios.gif.transcode.internal.VideoFrameDropper;
/* loaded from: classes4.dex */
public class VideoTranscoder extends BaseTranscoder {
    private VideoDecoderOutput mDecoderOutputSurface;
    private MediaCodec mEncoder;
    private VideoEncoderInput mEncoderInputSurface;
    private final int mExtraRotation;
    private VideoFrameDropper mFrameDropper;
    private final TimeInterpolator mTimeInterpolator;

    @Override // com.otaliastudios.gif.transcode.BaseTranscoder
    protected boolean onFeedEncoder(MediaCodec mediaCodec, MediaCodecBuffers mediaCodecBuffers, long j) {
        return false;
    }

    static {
        new Logger(VideoTranscoder.class.getSimpleName());
    }

    public VideoTranscoder(DataSource dataSource, DataSink dataSink, TimeInterpolator timeInterpolator, int i) {
        super(dataSource, dataSink);
        this.mTimeInterpolator = timeInterpolator;
        this.mExtraRotation = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.otaliastudios.gif.transcode.BaseTranscoder
    public void onConfigureEncoder(MediaFormat mediaFormat, MediaCodec mediaCodec) {
        int integer = mediaFormat.getInteger("width");
        int integer2 = mediaFormat.getInteger("height");
        boolean z = this.mExtraRotation % 180 != 0;
        mediaFormat.setInteger("width", z ? integer2 : integer);
        if (!z) {
            integer = integer2;
        }
        mediaFormat.setInteger("height", integer);
        super.onConfigureEncoder(mediaFormat, mediaCodec);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.otaliastudios.gif.transcode.BaseTranscoder
    public void onStartEncoder(MediaFormat mediaFormat, MediaCodec mediaCodec) {
        this.mEncoderInputSurface = new VideoEncoderInput(mediaCodec.createInputSurface());
        super.onStartEncoder(mediaFormat, mediaCodec);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.otaliastudios.gif.transcode.BaseTranscoder
    public void onStarted(MediaFormat mediaFormat, MediaFormat mediaFormat2, MediaCodec mediaCodec) {
        float f;
        super.onStarted(mediaFormat, mediaFormat2, mediaCodec);
        this.mEncoder = mediaCodec;
        VideoDecoderOutput videoDecoderOutput = new VideoDecoderOutput();
        this.mDecoderOutputSurface = videoDecoderOutput;
        videoDecoderOutput.setRotation(this.mExtraRotation % 360);
        this.mFrameDropper = VideoFrameDropper.newDropper(mediaFormat.getInteger("frame-rate"), mediaFormat2.getInteger("frame-rate"));
        boolean z = (this.mExtraRotation % 360) % 180 != 0;
        float integer = mediaFormat.getInteger("width");
        float integer2 = mediaFormat.getInteger("height");
        float f2 = integer / integer2;
        float integer3 = (z ? mediaFormat2.getInteger("height") : mediaFormat2.getInteger("width")) / (z ? mediaFormat2.getInteger("width") : mediaFormat2.getInteger("height"));
        float f3 = 1.0f;
        if (f2 > integer3) {
            float f4 = f2 / integer3;
            f = 1.0f;
            f3 = f4;
        } else {
            f = f2 < integer3 ? integer3 / f2 : 1.0f;
        }
        this.mDecoderOutputSurface.setSize((int) integer, (int) integer2);
        this.mDecoderOutputSurface.setScale(f3, f);
    }

    @Override // com.otaliastudios.gif.transcode.BaseTranscoder, com.otaliastudios.gif.transcode.Transcoder
    public void release() {
        VideoDecoderOutput videoDecoderOutput = this.mDecoderOutputSurface;
        if (videoDecoderOutput != null) {
            videoDecoderOutput.release();
            this.mDecoderOutputSurface = null;
        }
        VideoEncoderInput videoEncoderInput = this.mEncoderInputSurface;
        if (videoEncoderInput != null) {
            videoEncoderInput.release();
            this.mEncoderInputSurface = null;
        }
        super.release();
        this.mEncoder = null;
    }

    @Override // com.otaliastudios.gif.transcode.BaseTranscoder
    protected void onDrainSource(long j, Bitmap bitmap, long j2, boolean z) {
        long interpolate = this.mTimeInterpolator.interpolate(j2);
        if (this.mFrameDropper.shouldRenderFrame(interpolate)) {
            this.mDecoderOutputSurface.drawFrame(bitmap);
            this.mEncoderInputSurface.onFrame(interpolate);
        }
        if (z) {
            this.mEncoder.signalEndOfInputStream();
        }
    }
}
