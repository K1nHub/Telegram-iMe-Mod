package com.google.android.exoplayer2.extractor.p015ts;

import com.google.android.exoplayer2.C0475C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.Ac4Util;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p015ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* renamed from: com.google.android.exoplayer2.extractor.ts.Ac4Reader */
/* loaded from: classes.dex */
public final class Ac4Reader implements ElementaryStreamReader {
    private static final int STATE_FINDING_SYNC = 0;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private int bytesRead;
    private Format format;
    private String formatId;
    private boolean hasCRC;
    private final ParsableBitArray headerScratchBits;
    private final ParsableByteArray headerScratchBytes;
    private final String language;
    private boolean lastByteWasAC;
    private TrackOutput output;
    private long sampleDurationUs;
    private int sampleSize;
    private int state;
    private long timeUs;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.exoplayer2.extractor.ts.Ac4Reader$State */
    /* loaded from: classes.dex */
    private @interface State {
    }

    @Override // com.google.android.exoplayer2.extractor.p015ts.ElementaryStreamReader
    public void packetFinished() {
    }

    public Ac4Reader() {
        this(null);
    }

    public Ac4Reader(String str) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[16]);
        this.headerScratchBits = parsableBitArray;
        this.headerScratchBytes = new ParsableByteArray(parsableBitArray.data);
        this.state = 0;
        this.bytesRead = 0;
        this.lastByteWasAC = false;
        this.hasCRC = false;
        this.timeUs = C0475C.TIME_UNSET;
        this.language = str;
    }

    @Override // com.google.android.exoplayer2.extractor.p015ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.bytesRead = 0;
        this.lastByteWasAC = false;
        this.hasCRC = false;
        this.timeUs = C0475C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.extractor.p015ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.p015ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != C0475C.TIME_UNSET) {
            this.timeUs = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p015ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        Assertions.checkStateNotNull(this.output);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.state;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(parsableByteArray.bytesLeft(), this.sampleSize - this.bytesRead);
                        this.output.sampleData(parsableByteArray, min);
                        int i2 = this.bytesRead + min;
                        this.bytesRead = i2;
                        int i3 = this.sampleSize;
                        if (i2 == i3) {
                            long j = this.timeUs;
                            if (j != C0475C.TIME_UNSET) {
                                this.output.sampleMetadata(j, 1, i3, 0, null);
                                this.timeUs += this.sampleDurationUs;
                            }
                            this.state = 0;
                        }
                    }
                } else if (continueRead(parsableByteArray, this.headerScratchBytes.getData(), 16)) {
                    parseHeader();
                    this.headerScratchBytes.setPosition(0);
                    this.output.sampleData(this.headerScratchBytes, 16);
                    this.state = 2;
                }
            } else if (skipToNextSync(parsableByteArray)) {
                this.state = 1;
                this.headerScratchBytes.getData()[0] = -84;
                this.headerScratchBytes.getData()[1] = (byte) (this.hasCRC ? 65 : 64);
                this.bytesRead = 2;
            }
        }
    }

    private boolean continueRead(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int min = Math.min(parsableByteArray.bytesLeft(), i - this.bytesRead);
        parsableByteArray.readBytes(bArr, this.bytesRead, min);
        int i2 = this.bytesRead + min;
        this.bytesRead = i2;
        return i2 == i;
    }

    private boolean skipToNextSync(ParsableByteArray parsableByteArray) {
        int readUnsignedByte;
        while (true) {
            if (parsableByteArray.bytesLeft() <= 0) {
                return false;
            }
            if (!this.lastByteWasAC) {
                this.lastByteWasAC = parsableByteArray.readUnsignedByte() == 172;
            } else {
                readUnsignedByte = parsableByteArray.readUnsignedByte();
                this.lastByteWasAC = readUnsignedByte == 172;
                if (readUnsignedByte == 64 || readUnsignedByte == 65) {
                    break;
                }
            }
        }
        this.hasCRC = readUnsignedByte == 65;
        return true;
    }

    private void parseHeader() {
        this.headerScratchBits.setPosition(0);
        Ac4Util.SyncFrameInfo parseAc4SyncframeInfo = Ac4Util.parseAc4SyncframeInfo(this.headerScratchBits);
        Format format = this.format;
        if (format == null || parseAc4SyncframeInfo.channelCount != format.channelCount || parseAc4SyncframeInfo.sampleRate != format.sampleRate || !MimeTypes.AUDIO_AC4.equals(format.sampleMimeType)) {
            Format build = new Format.Builder().setId(this.formatId).setSampleMimeType(MimeTypes.AUDIO_AC4).setChannelCount(parseAc4SyncframeInfo.channelCount).setSampleRate(parseAc4SyncframeInfo.sampleRate).setLanguage(this.language).build();
            this.format = build;
            this.output.format(build);
        }
        this.sampleSize = parseAc4SyncframeInfo.frameSize;
        this.sampleDurationUs = (parseAc4SyncframeInfo.sampleCount * 1000000) / this.format.sampleRate;
    }
}
