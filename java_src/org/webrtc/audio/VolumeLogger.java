package org.webrtc.audio;

import android.media.AudioManager;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Timer;
import java.util.TimerTask;
import org.webrtc.Logging;
/* loaded from: classes6.dex */
class VolumeLogger {
    private static final String TAG = "VolumeLogger";
    private static final String THREAD_NAME = "WebRtcVolumeLevelLoggerThread";
    private static final int TIMER_PERIOD_IN_SECONDS = 30;
    private final AudioManager audioManager;
    private Timer timer;

    public VolumeLogger(AudioManager audioManager) {
        this.audioManager = audioManager;
    }

    public void start() {
        Logging.m20d(TAG, TtmlNode.START + WebRtcAudioUtils.getThreadInfo());
        if (this.timer != null) {
            return;
        }
        Logging.m20d(TAG, "audio mode is: " + WebRtcAudioUtils.modeToString(this.audioManager.getMode()));
        Timer timer = new Timer(THREAD_NAME);
        this.timer = timer;
        timer.schedule(new LogVolumeTask(this.audioManager.getStreamMaxVolume(2), this.audioManager.getStreamMaxVolume(0)), 0L, 30000L);
    }

    /* loaded from: classes6.dex */
    private class LogVolumeTask extends TimerTask {
        private final int maxRingVolume;
        private final int maxVoiceCallVolume;

        LogVolumeTask(int i, int i2) {
            this.maxRingVolume = i;
            this.maxVoiceCallVolume = i2;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            int mode = VolumeLogger.this.audioManager.getMode();
            if (mode == 1) {
                Logging.m20d(VolumeLogger.TAG, "STREAM_RING stream volume: " + VolumeLogger.this.audioManager.getStreamVolume(2) + " (max=" + this.maxRingVolume + ")");
            } else if (mode == 3) {
                Logging.m20d(VolumeLogger.TAG, "VOICE_CALL stream volume: " + VolumeLogger.this.audioManager.getStreamVolume(0) + " (max=" + this.maxVoiceCallVolume + ")");
            }
        }
    }

    public void stop() {
        Logging.m20d(TAG, "stop" + WebRtcAudioUtils.getThreadInfo());
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
            this.timer = null;
        }
    }
}
