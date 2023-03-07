package net.lingala.zip4j.model;
/* loaded from: classes4.dex */
public class Zip64ExtendedInfo {
    private long compressedSize = -1;
    private long unCompressedSize = -1;
    private long offsetLocalHeader = -1;
    private int diskNumberStart = -1;

    public long getCompressedSize() {
        return this.compressedSize;
    }

    public void setCompressedSize(long j) {
        this.compressedSize = j;
    }

    public long getUnCompressedSize() {
        return this.unCompressedSize;
    }

    public void setUnCompressedSize(long j) {
        this.unCompressedSize = j;
    }

    public long getOffsetLocalHeader() {
        return this.offsetLocalHeader;
    }

    public void setOffsetLocalHeader(long j) {
        this.offsetLocalHeader = j;
    }

    public int getDiskNumberStart() {
        return this.diskNumberStart;
    }

    public void setDiskNumberStart(int i) {
        this.diskNumberStart = i;
    }
}
