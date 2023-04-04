package com.otaliastudios.gif.transcode.internal;

import com.otaliastudios.gif.internal.Logger;
/* loaded from: classes4.dex */
public abstract class VideoFrameDropper {
    private static final Logger LOG = new Logger(VideoFrameDropper.class.getSimpleName());

    public abstract boolean shouldRenderFrame(long j);

    private VideoFrameDropper() {
    }

    public static VideoFrameDropper newDropper(int i, int i2) {
        return new Dropper1(i, i2);
    }

    /* loaded from: classes4.dex */
    private static class Dropper1 extends VideoFrameDropper {
        private int mFrameCount;
        private double mFrameRateReciprocalSum;
        private double mInFrameRateReciprocal;
        private double mOutFrameRateReciprocal;

        private Dropper1(int i, int i2) {
            super();
            this.mInFrameRateReciprocal = 1.0d / i;
            this.mOutFrameRateReciprocal = 1.0d / i2;
            Logger logger = VideoFrameDropper.LOG;
            logger.m700i("inFrameRateReciprocal:" + this.mInFrameRateReciprocal + " outFrameRateReciprocal:" + this.mOutFrameRateReciprocal);
        }

        @Override // com.otaliastudios.gif.transcode.internal.VideoFrameDropper
        public boolean shouldRenderFrame(long j) {
            double d = this.mFrameRateReciprocalSum + this.mInFrameRateReciprocal;
            this.mFrameRateReciprocalSum = d;
            int i = this.mFrameCount;
            this.mFrameCount = i + 1;
            if (i == 0) {
                Logger logger = VideoFrameDropper.LOG;
                logger.m698v("RENDERING (first frame) - frameRateReciprocalSum:" + this.mFrameRateReciprocalSum);
                return true;
            }
            double d2 = this.mOutFrameRateReciprocal;
            if (d <= d2) {
                Logger logger2 = VideoFrameDropper.LOG;
                logger2.m698v("DROPPING - frameRateReciprocalSum:" + this.mFrameRateReciprocalSum);
                return false;
            }
            this.mFrameRateReciprocalSum = d - d2;
            Logger logger3 = VideoFrameDropper.LOG;
            logger3.m698v("RENDERING - frameRateReciprocalSum:" + this.mFrameRateReciprocalSum);
            return true;
        }
    }
}
