package net.lingala.zip4j.model;
/* loaded from: classes6.dex */
public class Zip64EndCentralDirRecord {
    private int noOfThisDisk;
    private long offsetStartCenDirWRTStartDiskNo;
    private long sizeOfZip64EndCentralDirRec;
    private long totNoOfEntriesInCentralDir;

    public void setExtensibleDataSector(byte[] bArr) {
    }

    public void setNoOfThisDiskStartOfCentralDir(int i) {
    }

    public void setSignature(long j) {
    }

    public void setSizeOfCentralDir(long j) {
    }

    public void setTotNoOfEntriesInCentralDirOnThisDisk(long j) {
    }

    public void setVersionMadeBy(int i) {
    }

    public void setVersionNeededToExtract(int i) {
    }

    public long getSizeOfZip64EndCentralDirRec() {
        return this.sizeOfZip64EndCentralDirRec;
    }

    public void setSizeOfZip64EndCentralDirRec(long j) {
        this.sizeOfZip64EndCentralDirRec = j;
    }

    public int getNoOfThisDisk() {
        return this.noOfThisDisk;
    }

    public void setNoOfThisDisk(int i) {
        this.noOfThisDisk = i;
    }

    public long getTotNoOfEntriesInCentralDir() {
        return this.totNoOfEntriesInCentralDir;
    }

    public void setTotNoOfEntriesInCentralDir(long j) {
        this.totNoOfEntriesInCentralDir = j;
    }

    public long getOffsetStartCenDirWRTStartDiskNo() {
        return this.offsetStartCenDirWRTStartDiskNo;
    }

    public void setOffsetStartCenDirWRTStartDiskNo(long j) {
        this.offsetStartCenDirWRTStartDiskNo = j;
    }
}
