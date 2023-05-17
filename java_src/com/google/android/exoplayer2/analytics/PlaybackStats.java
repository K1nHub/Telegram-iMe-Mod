package com.google.android.exoplayer2.analytics;

import com.google.android.exoplayer2.C0475C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class PlaybackStats {
    public static final PlaybackStats EMPTY = merge(new PlaybackStats[0]);
    public static final int PLAYBACK_STATE_ABANDONED = 15;
    public static final int PLAYBACK_STATE_BUFFERING = 6;
    static final int PLAYBACK_STATE_COUNT = 16;
    public static final int PLAYBACK_STATE_ENDED = 11;
    public static final int PLAYBACK_STATE_FAILED = 13;
    public static final int PLAYBACK_STATE_INTERRUPTED_BY_AD = 14;
    public static final int PLAYBACK_STATE_JOINING_BACKGROUND = 1;
    public static final int PLAYBACK_STATE_JOINING_FOREGROUND = 2;
    public static final int PLAYBACK_STATE_NOT_STARTED = 0;
    public static final int PLAYBACK_STATE_PAUSED = 4;
    public static final int PLAYBACK_STATE_PAUSED_BUFFERING = 7;
    public static final int PLAYBACK_STATE_PLAYING = 3;
    public static final int PLAYBACK_STATE_SEEKING = 5;
    public static final int PLAYBACK_STATE_STOPPED = 12;
    public static final int PLAYBACK_STATE_SUPPRESSED = 9;
    public static final int PLAYBACK_STATE_SUPPRESSED_BUFFERING = 10;
    public final int abandonedBeforeReadyCount;
    public final int adPlaybackCount;
    public final List<EventTimeAndFormat> audioFormatHistory;
    public final int backgroundJoiningCount;
    public final int endedCount;
    public final int fatalErrorCount;
    public final List<EventTimeAndException> fatalErrorHistory;
    public final int fatalErrorPlaybackCount;
    public final long firstReportedTimeMs;
    public final int foregroundPlaybackCount;
    public final int initialAudioFormatBitrateCount;
    public final int initialVideoFormatBitrateCount;
    public final int initialVideoFormatHeightCount;
    public final long maxRebufferTimeMs;
    public final List<long[]> mediaTimeHistory;
    public final int nonFatalErrorCount;
    public final List<EventTimeAndException> nonFatalErrorHistory;
    public final int playbackCount;
    private final long[] playbackStateDurationsMs;
    public final List<EventTimeAndPlaybackState> playbackStateHistory;
    public final long totalAudioFormatBitrateTimeProduct;
    public final long totalAudioFormatTimeMs;
    public final long totalAudioUnderruns;
    public final long totalBandwidthBytes;
    public final long totalBandwidthTimeMs;
    public final long totalDroppedFrames;
    public final long totalInitialAudioFormatBitrate;
    public final long totalInitialVideoFormatBitrate;
    public final int totalInitialVideoFormatHeight;
    public final int totalPauseBufferCount;
    public final int totalPauseCount;
    public final int totalRebufferCount;
    public final int totalSeekCount;
    public final long totalValidJoinTimeMs;
    public final long totalVideoFormatBitrateTimeMs;
    public final long totalVideoFormatBitrateTimeProduct;
    public final long totalVideoFormatHeightTimeMs;
    public final long totalVideoFormatHeightTimeProduct;
    public final int validJoinTimeCount;
    public final List<EventTimeAndFormat> videoFormatHistory;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    @interface PlaybackState {
    }

    /* loaded from: classes.dex */
    public static final class EventTimeAndPlaybackState {
        public final AnalyticsListener.EventTime eventTime;
        public final int playbackState;

        public EventTimeAndPlaybackState(AnalyticsListener.EventTime eventTime, int i) {
            this.eventTime = eventTime;
            this.playbackState = i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTimeAndPlaybackState.class != obj.getClass()) {
                return false;
            }
            EventTimeAndPlaybackState eventTimeAndPlaybackState = (EventTimeAndPlaybackState) obj;
            if (this.playbackState != eventTimeAndPlaybackState.playbackState) {
                return false;
            }
            return this.eventTime.equals(eventTimeAndPlaybackState.eventTime);
        }

        public int hashCode() {
            return (this.eventTime.hashCode() * 31) + this.playbackState;
        }
    }

    /* loaded from: classes.dex */
    public static final class EventTimeAndFormat {
        public final AnalyticsListener.EventTime eventTime;
        public final Format format;

        public EventTimeAndFormat(AnalyticsListener.EventTime eventTime, Format format) {
            this.eventTime = eventTime;
            this.format = format;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTimeAndFormat.class != obj.getClass()) {
                return false;
            }
            EventTimeAndFormat eventTimeAndFormat = (EventTimeAndFormat) obj;
            if (this.eventTime.equals(eventTimeAndFormat.eventTime)) {
                Format format = this.format;
                Format format2 = eventTimeAndFormat.format;
                return format != null ? format.equals(format2) : format2 == null;
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.eventTime.hashCode() * 31;
            Format format = this.format;
            return hashCode + (format != null ? format.hashCode() : 0);
        }
    }

    /* loaded from: classes.dex */
    public static final class EventTimeAndException {
        public final AnalyticsListener.EventTime eventTime;
        public final Exception exception;

        public EventTimeAndException(AnalyticsListener.EventTime eventTime, Exception exc) {
            this.eventTime = eventTime;
            this.exception = exc;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTimeAndException.class != obj.getClass()) {
                return false;
            }
            EventTimeAndException eventTimeAndException = (EventTimeAndException) obj;
            if (this.eventTime.equals(eventTimeAndException.eventTime)) {
                return this.exception.equals(eventTimeAndException.exception);
            }
            return false;
        }

        public int hashCode() {
            return (this.eventTime.hashCode() * 31) + this.exception.hashCode();
        }
    }

    public static PlaybackStats merge(PlaybackStats... playbackStatsArr) {
        int i;
        PlaybackStats[] playbackStatsArr2 = playbackStatsArr;
        int i2 = 16;
        long[] jArr = new long[16];
        int length = playbackStatsArr2.length;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        long j10 = 0;
        int i3 = -1;
        long j11 = C0475C.TIME_UNSET;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        long j12 = C0475C.TIME_UNSET;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        long j13 = C0475C.TIME_UNSET;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        long j14 = -1;
        int i18 = 0;
        long j15 = -1;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        while (i6 < length) {
            PlaybackStats playbackStats = playbackStatsArr2[i6];
            int i22 = i4 + playbackStats.playbackCount;
            int i23 = 0;
            while (i23 < i2) {
                jArr[i23] = jArr[i23] + playbackStats.playbackStateDurationsMs[i23];
                i23++;
                i2 = 16;
            }
            if (j12 == C0475C.TIME_UNSET) {
                j12 = playbackStats.firstReportedTimeMs;
            } else {
                long j16 = playbackStats.firstReportedTimeMs;
                if (j16 != C0475C.TIME_UNSET) {
                    j12 = Math.min(j12, j16);
                }
            }
            i5 += playbackStats.foregroundPlaybackCount;
            i7 += playbackStats.abandonedBeforeReadyCount;
            i8 += playbackStats.endedCount;
            i9 += playbackStats.backgroundJoiningCount;
            if (j13 == C0475C.TIME_UNSET) {
                j13 = playbackStats.totalValidJoinTimeMs;
            } else {
                long j17 = playbackStats.totalValidJoinTimeMs;
                if (j17 != C0475C.TIME_UNSET) {
                    j13 += j17;
                }
            }
            i10 += playbackStats.validJoinTimeCount;
            i11 += playbackStats.totalPauseCount;
            i12 += playbackStats.totalPauseBufferCount;
            i13 += playbackStats.totalSeekCount;
            i14 += playbackStats.totalRebufferCount;
            if (j11 == C0475C.TIME_UNSET) {
                j11 = playbackStats.maxRebufferTimeMs;
                i = i22;
            } else {
                i = i22;
                long j18 = playbackStats.maxRebufferTimeMs;
                if (j18 != C0475C.TIME_UNSET) {
                    j11 = Math.max(j11, j18);
                }
            }
            i15 += playbackStats.adPlaybackCount;
            j += playbackStats.totalVideoFormatHeightTimeMs;
            j2 += playbackStats.totalVideoFormatHeightTimeProduct;
            j3 += playbackStats.totalVideoFormatBitrateTimeMs;
            j4 += playbackStats.totalVideoFormatBitrateTimeProduct;
            j5 += playbackStats.totalAudioFormatTimeMs;
            j6 += playbackStats.totalAudioFormatBitrateTimeProduct;
            i16 += playbackStats.initialVideoFormatHeightCount;
            i17 += playbackStats.initialVideoFormatBitrateCount;
            if (i3 == -1) {
                i3 = playbackStats.totalInitialVideoFormatHeight;
            } else {
                int i24 = playbackStats.totalInitialVideoFormatHeight;
                if (i24 != -1) {
                    i3 += i24;
                }
            }
            if (j14 == -1) {
                j14 = playbackStats.totalInitialVideoFormatBitrate;
            } else {
                long j19 = playbackStats.totalInitialVideoFormatBitrate;
                if (j19 != -1) {
                    j14 += j19;
                }
            }
            i18 += playbackStats.initialAudioFormatBitrateCount;
            if (j15 == -1) {
                j15 = playbackStats.totalInitialAudioFormatBitrate;
            } else {
                long j20 = playbackStats.totalInitialAudioFormatBitrate;
                if (j20 != -1) {
                    j15 += j20;
                }
            }
            j7 += playbackStats.totalBandwidthTimeMs;
            j8 += playbackStats.totalBandwidthBytes;
            j9 += playbackStats.totalDroppedFrames;
            j10 += playbackStats.totalAudioUnderruns;
            i19 += playbackStats.fatalErrorPlaybackCount;
            i20 += playbackStats.fatalErrorCount;
            i21 += playbackStats.nonFatalErrorCount;
            i6++;
            playbackStatsArr2 = playbackStatsArr;
            i4 = i;
            i2 = 16;
        }
        return new PlaybackStats(i4, jArr, Collections.emptyList(), Collections.emptyList(), j12, i5, i7, i8, i9, j13, i10, i11, i12, i13, i14, j11, i15, Collections.emptyList(), Collections.emptyList(), j, j2, j3, j4, j5, j6, i16, i17, i3, j14, i18, j15, j7, j8, j9, j10, i19, i20, i21, Collections.emptyList(), Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlaybackStats(int i, long[] jArr, List<EventTimeAndPlaybackState> list, List<long[]> list2, long j, int i2, int i3, int i4, int i5, long j2, int i6, int i7, int i8, int i9, int i10, long j3, int i11, List<EventTimeAndFormat> list3, List<EventTimeAndFormat> list4, long j4, long j5, long j6, long j7, long j8, long j9, int i12, int i13, int i14, long j10, int i15, long j11, long j12, long j13, long j14, long j15, int i16, int i17, int i18, List<EventTimeAndException> list5, List<EventTimeAndException> list6) {
        this.playbackCount = i;
        this.playbackStateDurationsMs = jArr;
        this.playbackStateHistory = Collections.unmodifiableList(list);
        this.mediaTimeHistory = Collections.unmodifiableList(list2);
        this.firstReportedTimeMs = j;
        this.foregroundPlaybackCount = i2;
        this.abandonedBeforeReadyCount = i3;
        this.endedCount = i4;
        this.backgroundJoiningCount = i5;
        this.totalValidJoinTimeMs = j2;
        this.validJoinTimeCount = i6;
        this.totalPauseCount = i7;
        this.totalPauseBufferCount = i8;
        this.totalSeekCount = i9;
        this.totalRebufferCount = i10;
        this.maxRebufferTimeMs = j3;
        this.adPlaybackCount = i11;
        this.videoFormatHistory = Collections.unmodifiableList(list3);
        this.audioFormatHistory = Collections.unmodifiableList(list4);
        this.totalVideoFormatHeightTimeMs = j4;
        this.totalVideoFormatHeightTimeProduct = j5;
        this.totalVideoFormatBitrateTimeMs = j6;
        this.totalVideoFormatBitrateTimeProduct = j7;
        this.totalAudioFormatTimeMs = j8;
        this.totalAudioFormatBitrateTimeProduct = j9;
        this.initialVideoFormatHeightCount = i12;
        this.initialVideoFormatBitrateCount = i13;
        this.totalInitialVideoFormatHeight = i14;
        this.totalInitialVideoFormatBitrate = j10;
        this.initialAudioFormatBitrateCount = i15;
        this.totalInitialAudioFormatBitrate = j11;
        this.totalBandwidthTimeMs = j12;
        this.totalBandwidthBytes = j13;
        this.totalDroppedFrames = j14;
        this.totalAudioUnderruns = j15;
        this.fatalErrorPlaybackCount = i16;
        this.fatalErrorCount = i17;
        this.nonFatalErrorCount = i18;
        this.fatalErrorHistory = Collections.unmodifiableList(list5);
        this.nonFatalErrorHistory = Collections.unmodifiableList(list6);
    }

    public long getPlaybackStateDurationMs(int i) {
        return this.playbackStateDurationsMs[i];
    }

    public int getPlaybackStateAtTime(long j) {
        int i = 0;
        for (EventTimeAndPlaybackState eventTimeAndPlaybackState : this.playbackStateHistory) {
            if (eventTimeAndPlaybackState.eventTime.realtimeMs > j) {
                break;
            }
            i = eventTimeAndPlaybackState.playbackState;
        }
        return i;
    }

    public long getMediaTimeMsAtRealtimeMs(long j) {
        long j2;
        if (this.mediaTimeHistory.isEmpty()) {
            return C0475C.TIME_UNSET;
        }
        int i = 0;
        while (i < this.mediaTimeHistory.size() && this.mediaTimeHistory.get(i)[0] <= j) {
            i++;
        }
        if (i == 0) {
            return this.mediaTimeHistory.get(0)[1];
        }
        if (i == this.mediaTimeHistory.size()) {
            List<long[]> list = this.mediaTimeHistory;
            return list.get(list.size() - 1)[1];
        }
        int i2 = i - 1;
        long j3 = this.mediaTimeHistory.get(i2)[0];
        long j4 = this.mediaTimeHistory.get(i2)[1];
        long j5 = this.mediaTimeHistory.get(i)[0];
        long j6 = this.mediaTimeHistory.get(i)[1];
        if (j5 - j3 == 0) {
            return j4;
        }
        return j4 + (((float) (j6 - j4)) * (((float) (j - j3)) / ((float) j2)));
    }

    public long getMeanJoinTimeMs() {
        int i = this.validJoinTimeCount;
        return i == 0 ? C0475C.TIME_UNSET : this.totalValidJoinTimeMs / i;
    }

    public long getTotalJoinTimeMs() {
        return getPlaybackStateDurationMs(2);
    }

    public long getTotalPlayTimeMs() {
        return getPlaybackStateDurationMs(3);
    }

    public long getMeanPlayTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C0475C.TIME_UNSET : getTotalPlayTimeMs() / this.foregroundPlaybackCount;
    }

    public long getTotalPausedTimeMs() {
        return getPlaybackStateDurationMs(4) + getPlaybackStateDurationMs(7);
    }

    public long getMeanPausedTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C0475C.TIME_UNSET : getTotalPausedTimeMs() / this.foregroundPlaybackCount;
    }

    public long getTotalRebufferTimeMs() {
        return getPlaybackStateDurationMs(6);
    }

    public long getMeanRebufferTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C0475C.TIME_UNSET : getTotalRebufferTimeMs() / this.foregroundPlaybackCount;
    }

    public long getMeanSingleRebufferTimeMs() {
        return this.totalRebufferCount == 0 ? C0475C.TIME_UNSET : (getPlaybackStateDurationMs(6) + getPlaybackStateDurationMs(7)) / this.totalRebufferCount;
    }

    public long getTotalSeekTimeMs() {
        return getPlaybackStateDurationMs(5);
    }

    public long getMeanSeekTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C0475C.TIME_UNSET : getTotalSeekTimeMs() / this.foregroundPlaybackCount;
    }

    public long getMeanSingleSeekTimeMs() {
        return this.totalSeekCount == 0 ? C0475C.TIME_UNSET : getTotalSeekTimeMs() / this.totalSeekCount;
    }

    public long getTotalWaitTimeMs() {
        return getPlaybackStateDurationMs(2) + getPlaybackStateDurationMs(6) + getPlaybackStateDurationMs(5);
    }

    public long getMeanWaitTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C0475C.TIME_UNSET : getTotalWaitTimeMs() / this.foregroundPlaybackCount;
    }

    public long getTotalPlayAndWaitTimeMs() {
        return getTotalPlayTimeMs() + getTotalWaitTimeMs();
    }

    public long getMeanPlayAndWaitTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C0475C.TIME_UNSET : getTotalPlayAndWaitTimeMs() / this.foregroundPlaybackCount;
    }

    public long getTotalElapsedTimeMs() {
        long j = 0;
        for (int i = 0; i < 16; i++) {
            j += this.playbackStateDurationsMs[i];
        }
        return j;
    }

    public long getMeanElapsedTimeMs() {
        return this.playbackCount == 0 ? C0475C.TIME_UNSET : getTotalElapsedTimeMs() / this.playbackCount;
    }

    public float getAbandonedBeforeReadyRatio() {
        int i = this.abandonedBeforeReadyCount;
        int i2 = this.playbackCount;
        int i3 = this.foregroundPlaybackCount;
        return i3 == 0 ? BitmapDescriptorFactory.HUE_RED : (i - (i2 - i3)) / i3;
    }

    public float getEndedRatio() {
        int i = this.foregroundPlaybackCount;
        return i == 0 ? BitmapDescriptorFactory.HUE_RED : this.endedCount / i;
    }

    public float getMeanPauseCount() {
        int i = this.foregroundPlaybackCount;
        return i == 0 ? BitmapDescriptorFactory.HUE_RED : this.totalPauseCount / i;
    }

    public float getMeanPauseBufferCount() {
        int i = this.foregroundPlaybackCount;
        return i == 0 ? BitmapDescriptorFactory.HUE_RED : this.totalPauseBufferCount / i;
    }

    public float getMeanSeekCount() {
        int i = this.foregroundPlaybackCount;
        return i == 0 ? BitmapDescriptorFactory.HUE_RED : this.totalSeekCount / i;
    }

    public float getMeanRebufferCount() {
        int i = this.foregroundPlaybackCount;
        return i == 0 ? BitmapDescriptorFactory.HUE_RED : this.totalRebufferCount / i;
    }

    public float getWaitTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        return totalPlayAndWaitTimeMs == 0 ? BitmapDescriptorFactory.HUE_RED : ((float) getTotalWaitTimeMs()) / ((float) totalPlayAndWaitTimeMs);
    }

    public float getJoinTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        return totalPlayAndWaitTimeMs == 0 ? BitmapDescriptorFactory.HUE_RED : ((float) getTotalJoinTimeMs()) / ((float) totalPlayAndWaitTimeMs);
    }

    public float getRebufferTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        return totalPlayAndWaitTimeMs == 0 ? BitmapDescriptorFactory.HUE_RED : ((float) getTotalRebufferTimeMs()) / ((float) totalPlayAndWaitTimeMs);
    }

    public float getSeekTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        return totalPlayAndWaitTimeMs == 0 ? BitmapDescriptorFactory.HUE_RED : ((float) getTotalSeekTimeMs()) / ((float) totalPlayAndWaitTimeMs);
    }

    public float getRebufferRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        return totalPlayTimeMs == 0 ? BitmapDescriptorFactory.HUE_RED : (this.totalRebufferCount * 1000.0f) / ((float) totalPlayTimeMs);
    }

    public float getMeanTimeBetweenRebuffers() {
        return 1.0f / getRebufferRate();
    }

    public int getMeanInitialVideoFormatHeight() {
        int i = this.initialVideoFormatHeightCount;
        if (i == 0) {
            return -1;
        }
        return this.totalInitialVideoFormatHeight / i;
    }

    public int getMeanInitialVideoFormatBitrate() {
        int i = this.initialVideoFormatBitrateCount;
        if (i == 0) {
            return -1;
        }
        return (int) (this.totalInitialVideoFormatBitrate / i);
    }

    public int getMeanInitialAudioFormatBitrate() {
        int i = this.initialAudioFormatBitrateCount;
        if (i == 0) {
            return -1;
        }
        return (int) (this.totalInitialAudioFormatBitrate / i);
    }

    public int getMeanVideoFormatHeight() {
        long j = this.totalVideoFormatHeightTimeMs;
        if (j == 0) {
            return -1;
        }
        return (int) (this.totalVideoFormatHeightTimeProduct / j);
    }

    public int getMeanVideoFormatBitrate() {
        long j = this.totalVideoFormatBitrateTimeMs;
        if (j == 0) {
            return -1;
        }
        return (int) (this.totalVideoFormatBitrateTimeProduct / j);
    }

    public int getMeanAudioFormatBitrate() {
        long j = this.totalAudioFormatTimeMs;
        if (j == 0) {
            return -1;
        }
        return (int) (this.totalAudioFormatBitrateTimeProduct / j);
    }

    public int getMeanBandwidth() {
        long j = this.totalBandwidthTimeMs;
        if (j == 0) {
            return -1;
        }
        return (int) ((this.totalBandwidthBytes * RtspMediaSource.DEFAULT_TIMEOUT_MS) / j);
    }

    public float getDroppedFramesRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        return totalPlayTimeMs == 0 ? BitmapDescriptorFactory.HUE_RED : (((float) this.totalDroppedFrames) * 1000.0f) / ((float) totalPlayTimeMs);
    }

    public float getAudioUnderrunRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        return totalPlayTimeMs == 0 ? BitmapDescriptorFactory.HUE_RED : (((float) this.totalAudioUnderruns) * 1000.0f) / ((float) totalPlayTimeMs);
    }

    public float getFatalErrorRatio() {
        int i = this.foregroundPlaybackCount;
        return i == 0 ? BitmapDescriptorFactory.HUE_RED : this.fatalErrorPlaybackCount / i;
    }

    public float getFatalErrorRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        return totalPlayTimeMs == 0 ? BitmapDescriptorFactory.HUE_RED : (this.fatalErrorCount * 1000.0f) / ((float) totalPlayTimeMs);
    }

    public float getMeanTimeBetweenFatalErrors() {
        return 1.0f / getFatalErrorRate();
    }

    public float getMeanNonFatalErrorCount() {
        int i = this.foregroundPlaybackCount;
        return i == 0 ? BitmapDescriptorFactory.HUE_RED : this.nonFatalErrorCount / i;
    }

    public float getNonFatalErrorRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        return totalPlayTimeMs == 0 ? BitmapDescriptorFactory.HUE_RED : (this.nonFatalErrorCount * 1000.0f) / ((float) totalPlayTimeMs);
    }

    public float getMeanTimeBetweenNonFatalErrors() {
        return 1.0f / getNonFatalErrorRate();
    }
}
