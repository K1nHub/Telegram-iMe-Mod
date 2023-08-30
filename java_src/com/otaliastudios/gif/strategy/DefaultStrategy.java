package com.otaliastudios.gif.strategy;

import android.media.MediaFormat;
import android.os.Build;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.otaliastudios.gif.internal.Logger;
import com.otaliastudios.gif.strategy.size.ExactResizer;
import com.otaliastudios.gif.strategy.size.ExactSize;
import com.otaliastudios.gif.strategy.size.FractionResizer;
import com.otaliastudios.gif.strategy.size.MultiResizer;
import com.otaliastudios.gif.strategy.size.Resizer;
import com.otaliastudios.gif.strategy.size.Size;
import java.util.List;
/* loaded from: classes4.dex */
public class DefaultStrategy implements Strategy {
    private static final Logger LOG = new Logger(DefaultStrategy.class.getSimpleName());
    private final Options options;

    /* loaded from: classes4.dex */
    public static class Options {
        private Resizer resizer;
        private long targetBitRate;
        private int targetFrameRate;
        private float targetKeyFrameInterval;
        private String targetMimeType;

        private Options() {
        }
    }

    public static Builder exact(int i, int i2) {
        return new Builder(new ExactResizer(i, i2));
    }

    public static Builder fraction(float f) {
        return new Builder(new FractionResizer(f));
    }

    /* loaded from: classes4.dex */
    public static class Builder {
        private MultiResizer resizer;
        private long targetBitRate;
        private int targetFrameRate;
        private float targetKeyFrameInterval;
        private String targetMimeType;

        public Builder(Resizer resizer) {
            MultiResizer multiResizer = new MultiResizer();
            this.resizer = multiResizer;
            this.targetFrameRate = 30;
            this.targetBitRate = Long.MIN_VALUE;
            this.targetKeyFrameInterval = 3.0f;
            this.targetMimeType = "video/avc";
            multiResizer.addResizer(resizer);
        }

        public Builder bitRate(long j) {
            this.targetBitRate = j;
            return this;
        }

        public Builder frameRate(int i) {
            this.targetFrameRate = i;
            return this;
        }

        public Builder keyFrameInterval(float f) {
            this.targetKeyFrameInterval = f;
            return this;
        }

        public Options options() {
            Options options = new Options();
            options.resizer = this.resizer;
            options.targetFrameRate = this.targetFrameRate;
            options.targetBitRate = this.targetBitRate;
            options.targetKeyFrameInterval = this.targetKeyFrameInterval;
            options.targetMimeType = this.targetMimeType;
            return options;
        }

        public DefaultStrategy build() {
            return new DefaultStrategy(options());
        }
    }

    public DefaultStrategy(Options options) {
        this.options = options;
    }

    @Override // com.otaliastudios.gif.strategy.Strategy
    public void createOutputFormat(List<MediaFormat> list, MediaFormat mediaFormat) {
        int minor;
        int major;
        long j;
        ExactSize bestInputSize = getBestInputSize(list);
        int width = bestInputSize.getWidth();
        int height = bestInputSize.getHeight();
        Logger logger = LOG;
        logger.m709i("Input width&height: " + width + "x" + height);
        try {
            Size outputSize = this.options.resizer.getOutputSize(bestInputSize);
            if (outputSize instanceof ExactSize) {
                ExactSize exactSize = (ExactSize) outputSize;
                minor = exactSize.getWidth();
                major = exactSize.getHeight();
            } else if (width >= height) {
                minor = outputSize.getMajor();
                major = outputSize.getMinor();
            } else {
                minor = outputSize.getMinor();
                major = outputSize.getMajor();
            }
            logger.m709i("Output width&height: " + minor + "x" + major);
            int minFrameRate = getMinFrameRate(list);
            int min = minFrameRate > 0 ? Math.min(minFrameRate, this.options.targetFrameRate) : this.options.targetFrameRate;
            mediaFormat.setString("mime", this.options.targetMimeType);
            mediaFormat.setInteger("width", minor);
            mediaFormat.setInteger("height", major);
            mediaFormat.setInteger("rotation-degrees", 0);
            mediaFormat.setInteger("frame-rate", min);
            if (Build.VERSION.SDK_INT >= 25) {
                mediaFormat.setFloat("i-frame-interval", this.options.targetKeyFrameInterval);
            } else {
                mediaFormat.setInteger("i-frame-interval", (int) Math.ceil(this.options.targetKeyFrameInterval));
            }
            mediaFormat.setInteger("color-format", 2130708361);
            if (this.options.targetBitRate != Long.MIN_VALUE) {
                j = this.options.targetBitRate;
            } else {
                j = estimateBitRate(minor, major, min);
            }
            mediaFormat.setInteger("bitrate", (int) j);
        } catch (Exception e) {
            throw new RuntimeException("Resizer error:", e);
        }
    }

    private ExactSize getBestInputSize(List<MediaFormat> list) {
        int size = list.size();
        float[] fArr = new float[size];
        boolean[] zArr = new boolean[size];
        float f = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < size; i++) {
            MediaFormat mediaFormat = list.get(i);
            float integer = mediaFormat.getInteger("width");
            float integer2 = mediaFormat.getInteger("height");
            boolean z = (mediaFormat.containsKey("rotation-degrees") ? mediaFormat.getInteger("rotation-degrees") : 0) % 180 != 0;
            zArr[i] = z;
            fArr[i] = z ? integer2 / integer : integer / integer2;
            f += fArr[i];
        }
        float f2 = f / size;
        float f3 = Float.MAX_VALUE;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            float abs = Math.abs(fArr[i3] - f2);
            if (abs < f3) {
                i2 = i3;
                f3 = abs;
            }
        }
        MediaFormat mediaFormat2 = list.get(i2);
        int integer3 = mediaFormat2.getInteger("width");
        int integer4 = mediaFormat2.getInteger("height");
        int i4 = zArr[i2] ? integer4 : integer3;
        if (!zArr[i2]) {
            integer3 = integer4;
        }
        return new ExactSize(i4, integer3);
    }

    private int getMinFrameRate(List<MediaFormat> list) {
        int i = Integer.MAX_VALUE;
        for (MediaFormat mediaFormat : list) {
            if (mediaFormat.containsKey("frame-rate")) {
                i = Math.min(i, mediaFormat.getInteger("frame-rate"));
            }
        }
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i;
    }

    private static long estimateBitRate(int i, int i2, int i3) {
        return i * 0.14f * i2 * Math.max(i3, 24);
    }
}
