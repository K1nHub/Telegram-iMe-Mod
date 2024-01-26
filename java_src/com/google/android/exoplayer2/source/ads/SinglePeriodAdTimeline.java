package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.C0483C;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.ForwardingTimeline;
import com.google.android.exoplayer2.util.Assertions;
/* loaded from: classes.dex */
public final class SinglePeriodAdTimeline extends ForwardingTimeline {
    private final AdPlaybackState adPlaybackState;

    public SinglePeriodAdTimeline(Timeline timeline, AdPlaybackState adPlaybackState) {
        super(timeline);
        Assertions.checkState(timeline.getPeriodCount() == 1);
        Assertions.checkState(timeline.getWindowCount() == 1);
        this.adPlaybackState = adPlaybackState;
    }

    @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
    public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
        this.timeline.getPeriod(i, period, z);
        long j = period.durationUs;
        if (j == C0483C.TIME_UNSET) {
            j = this.adPlaybackState.contentDurationUs;
        }
        period.set(period.f190id, period.uid, period.windowIndex, j, period.getPositionInWindowUs(), this.adPlaybackState, period.isPlaceholder);
        return period;
    }
}
