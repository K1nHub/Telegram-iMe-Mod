package org.telegram.messenger.video.audio_input;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4.dex */
public abstract class AudioInput {
    private boolean loopingEnabled;
    private float volume = 1.0f;

    public abstract short getNext();

    public abstract int getSampleRate();

    public abstract boolean hasRemaining();

    public abstract void release();

    public abstract void start(int i, int i2);

    public boolean isLoopingEnabled() {
        return this.loopingEnabled;
    }

    public float getVolume() {
        return this.volume;
    }

    public void setVolume(float f) {
        this.volume = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(f, 1.0f));
    }
}
