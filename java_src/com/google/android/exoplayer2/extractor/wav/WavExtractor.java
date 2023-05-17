package com.google.android.exoplayer2.extractor.wav;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.WavUtil;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* loaded from: classes.dex */
public final class WavExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = WavExtractor$$ExternalSyntheticLambda0.INSTANCE;
    private static final int STATE_READING_FILE_TYPE = 0;
    private static final int STATE_READING_FORMAT = 2;
    private static final int STATE_READING_RF64_SAMPLE_DATA_SIZE = 1;
    private static final int STATE_READING_SAMPLE_DATA = 4;
    private static final int STATE_SKIPPING_TO_SAMPLE_DATA = 3;
    private static final String TAG = "WavExtractor";
    private static final int TARGET_SAMPLES_PER_SECOND = 10;
    private ExtractorOutput extractorOutput;
    private OutputWriter outputWriter;
    private TrackOutput trackOutput;
    private int state = 0;
    private long rf64SampleDataSize = -1;
    private int dataStartPosition = -1;
    private long dataEndPosition = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface OutputWriter {
        void init(int i, long j) throws ParserException;

        void reset(long j);

        boolean sampleData(ExtractorInput extractorInput, long j) throws IOException;
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    private @interface State {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] lambda$static$0() {
        return new Extractor[]{new WavExtractor()};
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return WavHeaderReader.checkFileType(extractorInput);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 1);
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.state = j == 0 ? 0 : 4;
        OutputWriter outputWriter = this.outputWriter;
        if (outputWriter != null) {
            outputWriter.reset(j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        assertInitialized();
        int i = this.state;
        if (i == 0) {
            readFileType(extractorInput);
            return 0;
        } else if (i == 1) {
            readRf64SampleDataSize(extractorInput);
            return 0;
        } else if (i == 2) {
            readFormat(extractorInput);
            return 0;
        } else if (i == 3) {
            skipToSampleData(extractorInput);
            return 0;
        } else if (i == 4) {
            return readSampleData(extractorInput);
        } else {
            throw new IllegalStateException();
        }
    }

    private void assertInitialized() {
        Assertions.checkStateNotNull(this.trackOutput);
        Util.castNonNull(this.extractorOutput);
    }

    private void readFileType(ExtractorInput extractorInput) throws IOException {
        Assertions.checkState(extractorInput.getPosition() == 0);
        int i = this.dataStartPosition;
        if (i != -1) {
            extractorInput.skipFully(i);
            this.state = 4;
        } else if (!WavHeaderReader.checkFileType(extractorInput)) {
            throw ParserException.createForMalformedContainer("Unsupported or unrecognized wav file type.", null);
        } else {
            extractorInput.skipFully((int) (extractorInput.getPeekPosition() - extractorInput.getPosition()));
            this.state = 1;
        }
    }

    private void readRf64SampleDataSize(ExtractorInput extractorInput) throws IOException {
        this.rf64SampleDataSize = WavHeaderReader.readRf64SampleDataSize(extractorInput);
        this.state = 2;
    }

    private void readFormat(ExtractorInput extractorInput) throws IOException {
        WavFormat readFormat = WavHeaderReader.readFormat(extractorInput);
        int i = readFormat.formatType;
        if (i == 17) {
            this.outputWriter = new ImaAdPcmOutputWriter(this.extractorOutput, this.trackOutput, readFormat);
        } else if (i == 6) {
            this.outputWriter = new PassthroughOutputWriter(this.extractorOutput, this.trackOutput, readFormat, MimeTypes.AUDIO_ALAW, -1);
        } else if (i == 7) {
            this.outputWriter = new PassthroughOutputWriter(this.extractorOutput, this.trackOutput, readFormat, MimeTypes.AUDIO_MLAW, -1);
        } else {
            int pcmEncodingForType = WavUtil.getPcmEncodingForType(i, readFormat.bitsPerSample);
            if (pcmEncodingForType == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Unsupported WAV format type: " + readFormat.formatType);
            }
            this.outputWriter = new PassthroughOutputWriter(this.extractorOutput, this.trackOutput, readFormat, MimeTypes.AUDIO_RAW, pcmEncodingForType);
        }
        this.state = 3;
    }

    private void skipToSampleData(ExtractorInput extractorInput) throws IOException {
        Pair<Long, Long> skipToSampleData = WavHeaderReader.skipToSampleData(extractorInput);
        this.dataStartPosition = ((Long) skipToSampleData.first).intValue();
        long longValue = ((Long) skipToSampleData.second).longValue();
        long j = this.rf64SampleDataSize;
        if (j != -1 && longValue == 4294967295L) {
            longValue = j;
        }
        this.dataEndPosition = this.dataStartPosition + longValue;
        long length = extractorInput.getLength();
        if (length != -1 && this.dataEndPosition > length) {
            Log.m796w(TAG, "Data exceeds input length: " + this.dataEndPosition + ", " + length);
            this.dataEndPosition = length;
        }
        ((OutputWriter) Assertions.checkNotNull(this.outputWriter)).init(this.dataStartPosition, this.dataEndPosition);
        this.state = 4;
    }

    private int readSampleData(ExtractorInput extractorInput) throws IOException {
        Assertions.checkState(this.dataEndPosition != -1);
        return ((OutputWriter) Assertions.checkNotNull(this.outputWriter)).sampleData(extractorInput, this.dataEndPosition - extractorInput.getPosition()) ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class PassthroughOutputWriter implements OutputWriter {
        private final ExtractorOutput extractorOutput;
        private final Format format;
        private long outputFrameCount;
        private int pendingOutputBytes;
        private long startTimeUs;
        private final int targetSampleSizeBytes;
        private final TrackOutput trackOutput;
        private final WavFormat wavFormat;

        public PassthroughOutputWriter(ExtractorOutput extractorOutput, TrackOutput trackOutput, WavFormat wavFormat, String str, int i) throws ParserException {
            this.extractorOutput = extractorOutput;
            this.trackOutput = trackOutput;
            this.wavFormat = wavFormat;
            int i2 = (wavFormat.numChannels * wavFormat.bitsPerSample) / 8;
            if (wavFormat.blockSize != i2) {
                throw ParserException.createForMalformedContainer("Expected block size: " + i2 + "; got: " + wavFormat.blockSize, null);
            }
            int i3 = wavFormat.frameRateHz;
            int i4 = i3 * i2 * 8;
            int max = Math.max(i2, (i3 * i2) / 10);
            this.targetSampleSizeBytes = max;
            this.format = new Format.Builder().setSampleMimeType(str).setAverageBitrate(i4).setPeakBitrate(i4).setMaxInputSize(max).setChannelCount(wavFormat.numChannels).setSampleRate(wavFormat.frameRateHz).setPcmEncoding(i).build();
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void reset(long j) {
            this.startTimeUs = j;
            this.pendingOutputBytes = 0;
            this.outputFrameCount = 0L;
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void init(int i, long j) {
            this.extractorOutput.seekMap(new WavSeekMap(this.wavFormat, 1, i, j));
            this.trackOutput.format(this.format);
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public boolean sampleData(ExtractorInput extractorInput, long j) throws IOException {
            int i;
            WavFormat wavFormat;
            int i2;
            int i3;
            long j2 = j;
            while (true) {
                i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
                if (i <= 0 || (i2 = this.pendingOutputBytes) >= (i3 = this.targetSampleSizeBytes)) {
                    break;
                }
                int sampleData = this.trackOutput.sampleData((DataReader) extractorInput, (int) Math.min(i3 - i2, j2), true);
                if (sampleData == -1) {
                    j2 = 0;
                } else {
                    this.pendingOutputBytes += sampleData;
                    j2 -= sampleData;
                }
            }
            int i4 = this.wavFormat.blockSize;
            int i5 = this.pendingOutputBytes / i4;
            if (i5 > 0) {
                int i6 = i5 * i4;
                int i7 = this.pendingOutputBytes - i6;
                this.trackOutput.sampleMetadata(this.startTimeUs + Util.scaleLargeTimestamp(this.outputFrameCount, 1000000L, wavFormat.frameRateHz), 1, i6, i7, null);
                this.outputFrameCount += i5;
                this.pendingOutputBytes = i7;
            }
            return i <= 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class ImaAdPcmOutputWriter implements OutputWriter {
        private static final int[] INDEX_TABLE = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        private static final int[] STEP_TABLE = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
        private final ParsableByteArray decodedData;
        private final ExtractorOutput extractorOutput;
        private final Format format;
        private final int framesPerBlock;
        private final byte[] inputData;
        private long outputFrameCount;
        private int pendingInputBytes;
        private int pendingOutputBytes;
        private long startTimeUs;
        private final int targetSampleSizeFrames;
        private final TrackOutput trackOutput;
        private final WavFormat wavFormat;

        private static int numOutputFramesToBytes(int i, int i2) {
            return i * 2 * i2;
        }

        public ImaAdPcmOutputWriter(ExtractorOutput extractorOutput, TrackOutput trackOutput, WavFormat wavFormat) throws ParserException {
            this.extractorOutput = extractorOutput;
            this.trackOutput = trackOutput;
            this.wavFormat = wavFormat;
            int max = Math.max(1, wavFormat.frameRateHz / 10);
            this.targetSampleSizeFrames = max;
            ParsableByteArray parsableByteArray = new ParsableByteArray(wavFormat.extraData);
            parsableByteArray.readLittleEndianUnsignedShort();
            int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
            this.framesPerBlock = readLittleEndianUnsignedShort;
            int i = wavFormat.numChannels;
            int i2 = (((wavFormat.blockSize - (i * 4)) * 8) / (wavFormat.bitsPerSample * i)) + 1;
            if (readLittleEndianUnsignedShort != i2) {
                throw ParserException.createForMalformedContainer("Expected frames per block: " + i2 + "; got: " + readLittleEndianUnsignedShort, null);
            }
            int ceilDivide = Util.ceilDivide(max, readLittleEndianUnsignedShort);
            this.inputData = new byte[wavFormat.blockSize * ceilDivide];
            this.decodedData = new ParsableByteArray(ceilDivide * numOutputFramesToBytes(readLittleEndianUnsignedShort, i));
            int i3 = ((wavFormat.frameRateHz * wavFormat.blockSize) * 8) / readLittleEndianUnsignedShort;
            this.format = new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_RAW).setAverageBitrate(i3).setPeakBitrate(i3).setMaxInputSize(numOutputFramesToBytes(max, i)).setChannelCount(wavFormat.numChannels).setSampleRate(wavFormat.frameRateHz).setPcmEncoding(2).build();
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void reset(long j) {
            this.pendingInputBytes = 0;
            this.startTimeUs = j;
            this.pendingOutputBytes = 0;
            this.outputFrameCount = 0L;
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void init(int i, long j) {
            this.extractorOutput.seekMap(new WavSeekMap(this.wavFormat, this.framesPerBlock, i, j));
            this.trackOutput.format(this.format);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0035 -> B:4:0x001b). Please submit an issue!!! */
        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean sampleData(com.google.android.exoplayer2.extractor.ExtractorInput r7, long r8) throws java.io.IOException {
            /*
                r6 = this;
                int r0 = r6.targetSampleSizeFrames
                int r1 = r6.pendingOutputBytes
                int r1 = r6.numOutputBytesToFrames(r1)
                int r0 = r0 - r1
                int r1 = r6.framesPerBlock
                int r0 = com.google.android.exoplayer2.util.Util.ceilDivide(r0, r1)
                com.google.android.exoplayer2.extractor.wav.WavFormat r1 = r6.wavFormat
                int r1 = r1.blockSize
                int r0 = r0 * r1
                r1 = 0
                int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                r2 = 1
                if (r1 != 0) goto L1d
            L1b:
                r1 = r2
                goto L1e
            L1d:
                r1 = 0
            L1e:
                if (r1 != 0) goto L3e
                int r3 = r6.pendingInputBytes
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.inputData
                int r5 = r6.pendingInputBytes
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.pendingInputBytes
                int r4 = r4 + r3
                r6.pendingInputBytes = r4
                goto L1e
            L3e:
                int r7 = r6.pendingInputBytes
                com.google.android.exoplayer2.extractor.wav.WavFormat r8 = r6.wavFormat
                int r8 = r8.blockSize
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.inputData
                com.google.android.exoplayer2.util.ParsableByteArray r9 = r6.decodedData
                r6.decode(r8, r7, r9)
                int r8 = r6.pendingInputBytes
                com.google.android.exoplayer2.extractor.wav.WavFormat r9 = r6.wavFormat
                int r9 = r9.blockSize
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.pendingInputBytes = r8
                com.google.android.exoplayer2.util.ParsableByteArray r7 = r6.decodedData
                int r7 = r7.limit()
                com.google.android.exoplayer2.extractor.TrackOutput r8 = r6.trackOutput
                com.google.android.exoplayer2.util.ParsableByteArray r9 = r6.decodedData
                r8.sampleData(r9, r7)
                int r8 = r6.pendingOutputBytes
                int r8 = r8 + r7
                r6.pendingOutputBytes = r8
                int r7 = r6.numOutputBytesToFrames(r8)
                int r8 = r6.targetSampleSizeFrames
                if (r7 < r8) goto L75
                r6.writeSampleMetadata(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.pendingOutputBytes
                int r7 = r6.numOutputBytesToFrames(r7)
                if (r7 <= 0) goto L82
                r6.writeSampleMetadata(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.wav.WavExtractor.ImaAdPcmOutputWriter.sampleData(com.google.android.exoplayer2.extractor.ExtractorInput, long):boolean");
        }

        private void writeSampleMetadata(int i) {
            long scaleLargeTimestamp = this.startTimeUs + Util.scaleLargeTimestamp(this.outputFrameCount, 1000000L, this.wavFormat.frameRateHz);
            int numOutputFramesToBytes = numOutputFramesToBytes(i);
            this.trackOutput.sampleMetadata(scaleLargeTimestamp, 1, numOutputFramesToBytes, this.pendingOutputBytes - numOutputFramesToBytes, null);
            this.outputFrameCount += i;
            this.pendingOutputBytes -= numOutputFramesToBytes;
        }

        private void decode(byte[] bArr, int i, ParsableByteArray parsableByteArray) {
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < this.wavFormat.numChannels; i3++) {
                    decodeBlockForChannel(bArr, i2, i3, parsableByteArray.getData());
                }
            }
            int numOutputFramesToBytes = numOutputFramesToBytes(this.framesPerBlock * i);
            parsableByteArray.setPosition(0);
            parsableByteArray.setLimit(numOutputFramesToBytes);
        }

        private void decodeBlockForChannel(byte[] bArr, int i, int i2, byte[] bArr2) {
            WavFormat wavFormat = this.wavFormat;
            int i3 = wavFormat.blockSize;
            int i4 = wavFormat.numChannels;
            int i5 = (i * i3) + (i2 * 4);
            int i6 = (i4 * 4) + i5;
            int i7 = (i3 / i4) - 4;
            int i8 = (short) (((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255));
            int min = Math.min(bArr[i5 + 2] & 255, 88);
            int i9 = STEP_TABLE[min];
            int i10 = ((i * this.framesPerBlock * i4) + i2) * 2;
            bArr2[i10] = (byte) (i8 & 255);
            bArr2[i10 + 1] = (byte) (i8 >> 8);
            for (int i11 = 0; i11 < i7 * 2; i11++) {
                int i12 = bArr[((i11 / 8) * i4 * 4) + i6 + ((i11 / 2) % 4)] & 255;
                int i13 = i11 % 2 == 0 ? i12 & 15 : i12 >> 4;
                int i14 = ((((i13 & 7) * 2) + 1) * i9) >> 3;
                if ((i13 & 8) != 0) {
                    i14 = -i14;
                }
                i8 = Util.constrainValue(i8 + i14, -32768, 32767);
                i10 += i4 * 2;
                bArr2[i10] = (byte) (i8 & 255);
                bArr2[i10 + 1] = (byte) (i8 >> 8);
                int i15 = min + INDEX_TABLE[i13];
                int[] iArr = STEP_TABLE;
                min = Util.constrainValue(i15, 0, iArr.length - 1);
                i9 = iArr[min];
            }
        }

        private int numOutputBytesToFrames(int i) {
            return i / (this.wavFormat.numChannels * 2);
        }

        private int numOutputFramesToBytes(int i) {
            return numOutputFramesToBytes(i, this.wavFormat.numChannels);
        }
    }
}
