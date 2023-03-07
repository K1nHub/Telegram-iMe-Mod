package com.otaliastudios.gif.source;

import android.graphics.Bitmap;
import android.media.MediaFormat;
/* loaded from: classes3.dex */
public interface DataSource {

    /* loaded from: classes3.dex */
    public static class Chunk {
        public Bitmap bitmap;
        public long timestampUs;
    }

    long getDurationUs();

    long getReadUs();

    MediaFormat getTrackFormat();

    boolean isDrained();

    void read(Chunk chunk);

    void release();

    void start();
}
