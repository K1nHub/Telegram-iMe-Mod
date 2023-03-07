package org.telegram.messenger.voip;

import android.media.AudioTrack;
import com.google.android.exoplayer2.audio.OpusUtil;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
public class AudioTrackJNI {
    private AudioTrack audioTrack;
    private byte[] buffer = new byte[1920];
    private long nativeInst;
    private boolean needResampling;
    private boolean running;
    private Thread thread;

    private native void nativeCallback(byte[] bArr);

    public AudioTrackJNI(long j) {
        this.nativeInst = j;
    }

    private int getBufferSize(int i, int i2) {
        return Math.max(AudioTrack.getMinBufferSize(i2, 4, 2), i);
    }

    public void init(int i, int i2, int i3, int i4) {
        if (this.audioTrack != null) {
            throw new IllegalStateException("already inited");
        }
        AudioTrack audioTrack = new AudioTrack(0, OpusUtil.SAMPLE_RATE, i3 == 1 ? 4 : 12, 2, getBufferSize(i4, OpusUtil.SAMPLE_RATE), 1);
        this.audioTrack = audioTrack;
        if (audioTrack.getState() != 1) {
            VLog.m35w("Error initializing AudioTrack with 48k, trying 44.1k with resampling");
            try {
                this.audioTrack.release();
            } catch (Throwable unused) {
            }
            int bufferSize = getBufferSize(i4 * 6, 44100);
            VLog.m41d("buffer size: " + bufferSize);
            this.audioTrack = new AudioTrack(0, 44100, i3 == 1 ? 4 : 12, 2, bufferSize, 1);
            this.needResampling = true;
        }
    }

    public void stop() {
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            try {
                audioTrack.stop();
            } catch (Exception unused) {
            }
        }
    }

    public void release() {
        this.running = false;
        Thread thread = this.thread;
        if (thread != null) {
            try {
                thread.join();
            } catch (InterruptedException e) {
                VLog.m38e(e);
            }
            this.thread = null;
        }
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            audioTrack.release();
            this.audioTrack = null;
        }
    }

    public void start() {
        if (this.thread == null) {
            startThread();
        } else {
            this.audioTrack.play();
        }
    }

    private void startThread() {
        if (this.thread != null) {
            throw new IllegalStateException("thread already started");
        }
        this.running = true;
        Thread thread = new Thread(new Runnable() { // from class: org.telegram.messenger.voip.AudioTrackJNI$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AudioTrackJNI.this.lambda$startThread$0();
            }
        });
        this.thread = thread;
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startThread$0() {
        try {
            this.audioTrack.play();
            ByteBuffer allocateDirect = this.needResampling ? ByteBuffer.allocateDirect(1920) : null;
            ByteBuffer allocateDirect2 = this.needResampling ? ByteBuffer.allocateDirect(1764) : null;
            while (this.running) {
                try {
                    if (this.needResampling) {
                        nativeCallback(this.buffer);
                        allocateDirect.rewind();
                        allocateDirect.put(this.buffer);
                        Resampler.convert48to44(allocateDirect, allocateDirect2);
                        allocateDirect2.rewind();
                        allocateDirect2.get(this.buffer, 0, 1764);
                        this.audioTrack.write(this.buffer, 0, 1764);
                    } else {
                        nativeCallback(this.buffer);
                        this.audioTrack.write(this.buffer, 0, 1920);
                    }
                } catch (Exception e) {
                    VLog.m38e(e);
                }
                if (!this.running) {
                    this.audioTrack.stop();
                    break;
                }
                continue;
            }
            VLog.m37i("audiotrack thread exits");
        } catch (Exception e2) {
            VLog.m39e("error starting AudioTrack", e2);
        }
    }
}
