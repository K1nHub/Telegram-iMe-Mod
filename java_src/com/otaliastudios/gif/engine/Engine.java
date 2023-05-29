package com.otaliastudios.gif.engine;

import android.media.MediaFormat;
import com.otaliastudios.gif.GIFOptions;
import com.otaliastudios.gif.internal.Logger;
import com.otaliastudios.gif.sink.DataSink;
import com.otaliastudios.gif.source.DataSource;
import com.otaliastudios.gif.time.TimeInterpolator;
import com.otaliastudios.gif.transcode.Transcoder;
import com.otaliastudios.gif.transcode.VideoTranscoder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class Engine {
    private static final Logger LOG = new Logger(Engine.class.getSimpleName());
    private DataSink mDataSink;
    private final ProgressCallback mProgressCallback;
    private List<DataSource> mDataSources = null;
    private final List<Transcoder> mTranscoders = new ArrayList();
    private final List<TimeInterpolator> mInterpolators = new ArrayList();
    private int mCurrentStep = 0;
    private MediaFormat mOutputFormat = null;

    /* loaded from: classes4.dex */
    public interface ProgressCallback {
        void onProgress(double d);
    }

    public Engine(ProgressCallback progressCallback) {
        this.mProgressCallback = progressCallback;
    }

    private void setProgress(double d) {
        ProgressCallback progressCallback = this.mProgressCallback;
        if (progressCallback != null) {
            progressCallback.onProgress(d);
        }
    }

    private boolean isCompleted() {
        return this.mCurrentStep == this.mDataSources.size() - 1 && this.mCurrentStep == this.mTranscoders.size() - 1 && this.mTranscoders.get(this.mCurrentStep).isFinished();
    }

    private void openCurrentStep(GIFOptions gIFOptions) {
        DataSource dataSource = this.mDataSources.get(this.mCurrentStep);
        dataSource.start();
        TimeInterpolator createStepTimeInterpolator = createStepTimeInterpolator(this.mCurrentStep, gIFOptions.getTimeInterpolator());
        this.mInterpolators.add(createStepTimeInterpolator);
        VideoTranscoder videoTranscoder = new VideoTranscoder(dataSource, this.mDataSink, createStepTimeInterpolator, gIFOptions.getRotation());
        videoTranscoder.setUp(this.mOutputFormat);
        this.mTranscoders.add(videoTranscoder);
    }

    private void closeCurrentStep() {
        this.mTranscoders.get(this.mCurrentStep).release();
        this.mDataSources.get(this.mCurrentStep).release();
        this.mCurrentStep++;
    }

    private Transcoder getCurrentStepTranscoder(GIFOptions gIFOptions) {
        int i = this.mCurrentStep;
        int size = this.mTranscoders.size() - 1;
        if (size == i) {
            if (this.mTranscoders.get(size).isFinished()) {
                closeCurrentStep();
                return getCurrentStepTranscoder(gIFOptions);
            }
            return this.mTranscoders.get(i);
        } else if (size < i) {
            openCurrentStep(gIFOptions);
            return this.mTranscoders.get(i);
        } else {
            throw new IllegalStateException("This should never happen. last:" + size + ", current:" + i);
        }
    }

    private TimeInterpolator createStepTimeInterpolator(int i, TimeInterpolator timeInterpolator) {
        return new TimeInterpolator(this, i > 0 ? this.mInterpolators.get(i - 1).interpolate(Long.MAX_VALUE) : 0L, timeInterpolator) { // from class: com.otaliastudios.gif.engine.Engine.1
            private long mFirstInputTime = Long.MAX_VALUE;
            private long mLastInterpolatedTime;
            private long mTimeBase;
            final /* synthetic */ long val$timebase;
            final /* synthetic */ TimeInterpolator val$wrap;

            {
                this.val$timebase = r4;
                this.val$wrap = timeInterpolator;
                this.mTimeBase = r4 + 10;
            }

            @Override // com.otaliastudios.gif.time.TimeInterpolator
            public long interpolate(long j) {
                if (j == Long.MAX_VALUE) {
                    return this.mLastInterpolatedTime;
                }
                if (this.mFirstInputTime == Long.MAX_VALUE) {
                    this.mFirstInputTime = j;
                }
                long j2 = this.mTimeBase + (j - this.mFirstInputTime);
                this.mLastInterpolatedTime = j2;
                return this.val$wrap.interpolate(j2);
            }
        };
    }

    private long getTotalDurationUs() {
        long durationUs;
        long j = 0;
        for (int i = 0; i < this.mDataSources.size(); i++) {
            DataSource dataSource = this.mDataSources.get(i);
            if (i < this.mCurrentStep) {
                durationUs = dataSource.getReadUs();
            } else {
                durationUs = dataSource.getDurationUs();
            }
            j += durationUs;
        }
        return j;
    }

    private long getTotalReadUs() {
        long j = 0;
        for (int i = 0; i < this.mDataSources.size(); i++) {
            DataSource dataSource = this.mDataSources.get(i);
            if (i <= this.mCurrentStep) {
                j += dataSource.getReadUs();
            }
        }
        return j;
    }

    private double computeProgress() {
        long totalReadUs = getTotalReadUs();
        long totalDurationUs = getTotalDurationUs();
        Logger logger = LOG;
        logger.m689v("computeProgress - readUs:" + totalReadUs + ", totalUs:" + totalDurationUs);
        if (totalDurationUs == 0) {
            totalDurationUs = 1;
        }
        return totalReadUs / totalDurationUs;
    }

    public void compress(GIFOptions gIFOptions) throws InterruptedException {
        this.mDataSink = gIFOptions.getDataSink();
        this.mDataSources = gIFOptions.getDataSources();
        this.mDataSink.setOrientation(0);
        MediaFormat mediaFormat = new MediaFormat();
        ArrayList arrayList = new ArrayList();
        for (DataSource dataSource : gIFOptions.getDataSources()) {
            arrayList.add(dataSource.getTrackFormat());
        }
        gIFOptions.getStrategy().createOutputFormat(arrayList, mediaFormat);
        this.mOutputFormat = mediaFormat;
        Logger logger = LOG;
        logger.m689v("Duration (us): " + getTotalDurationUs());
        boolean z = false;
        long j = 0L;
        while (!z) {
            try {
                Logger logger2 = LOG;
                logger2.m689v("new loop: " + j);
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                }
                boolean isCompleted = isCompleted();
                boolean transcode = !isCompleted ? getCurrentStepTranscoder(gIFOptions).transcode(false) : false;
                j++;
                if (j % 10 == 0) {
                    double computeProgress = computeProgress();
                    logger2.m689v("progress:" + computeProgress);
                    setProgress(computeProgress);
                }
                if (!transcode) {
                    Thread.sleep(10L);
                }
                z = isCompleted;
            } finally {
                try {
                    closeCurrentStep();
                } catch (Exception unused) {
                }
                this.mDataSink.release();
            }
        }
        this.mDataSink.stop();
    }
}
