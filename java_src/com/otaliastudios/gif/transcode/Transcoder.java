package com.otaliastudios.gif.transcode;

import android.media.MediaFormat;
/* loaded from: classes4.dex */
public interface Transcoder {
    boolean isFinished();

    void release();

    void setUp(MediaFormat mediaFormat);

    boolean transcode(boolean z);
}
