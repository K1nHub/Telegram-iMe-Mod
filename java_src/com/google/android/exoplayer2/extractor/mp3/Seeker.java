package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.C0479C;
import com.google.android.exoplayer2.extractor.SeekMap;
/* loaded from: classes.dex */
interface Seeker extends SeekMap {
    long getDataEndPosition();

    long getTimeUs(long j);

    /* loaded from: classes.dex */
    public static class UnseekableSeeker extends SeekMap.Unseekable implements Seeker {
        @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
        public long getDataEndPosition() {
            return -1L;
        }

        @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
        public long getTimeUs(long j) {
            return 0L;
        }

        public UnseekableSeeker() {
            super(C0479C.TIME_UNSET);
        }
    }
}
