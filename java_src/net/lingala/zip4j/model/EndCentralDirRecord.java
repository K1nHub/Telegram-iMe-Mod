package net.lingala.zip4j.model;
/* loaded from: classes6.dex */
public class EndCentralDirRecord {
    private int noOfThisDisk;
    private long offsetOfStartOfCentralDir;
    private int totNoOfEntriesInCentralDir;

    public void setComment(String str) {
    }

    public void setCommentBytes(byte[] bArr) {
    }

    public void setCommentLength(int i) {
    }

    public void setNoOfThisDiskStartOfCentralDir(int i) {
    }

    public void setSignature(long j) {
    }

    public void setSizeOfCentralDir(int i) {
    }

    public void setTotNoOfEntriesInCentralDirOnThisDisk(int i) {
    }

    public int getNoOfThisDisk() {
        return this.noOfThisDisk;
    }

    public void setNoOfThisDisk(int i) {
        this.noOfThisDisk = i;
    }

    public int getTotNoOfEntriesInCentralDir() {
        return this.totNoOfEntriesInCentralDir;
    }

    public void setTotNoOfEntriesInCentralDir(int i) {
        this.totNoOfEntriesInCentralDir = i;
    }

    public long getOffsetOfStartOfCentralDir() {
        return this.offsetOfStartOfCentralDir;
    }

    public void setOffsetOfStartOfCentralDir(long j) {
        this.offsetOfStartOfCentralDir = j;
    }
}
