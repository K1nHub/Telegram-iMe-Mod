package net.lingala.zip4j.model;
/* loaded from: classes6.dex */
public class ZipModel implements Cloneable {
    private CentralDirectory centralDirectory;
    private EndCentralDirRecord endCentralDirRecord;
    private String fileNameCharset;
    private boolean isZip64Format;
    private boolean splitArchive;
    private Zip64EndCentralDirLocator zip64EndCentralDirLocator;
    private Zip64EndCentralDirRecord zip64EndCentralDirRecord;
    private String zipFile;

    public CentralDirectory getCentralDirectory() {
        return this.centralDirectory;
    }

    public void setCentralDirectory(CentralDirectory centralDirectory) {
        this.centralDirectory = centralDirectory;
    }

    public EndCentralDirRecord getEndCentralDirRecord() {
        return this.endCentralDirRecord;
    }

    public void setEndCentralDirRecord(EndCentralDirRecord endCentralDirRecord) {
        this.endCentralDirRecord = endCentralDirRecord;
    }

    public boolean isSplitArchive() {
        return this.splitArchive;
    }

    public void setSplitArchive(boolean z) {
        this.splitArchive = z;
    }

    public String getZipFile() {
        return this.zipFile;
    }

    public void setZipFile(String str) {
        this.zipFile = str;
    }

    public Zip64EndCentralDirLocator getZip64EndCentralDirLocator() {
        return this.zip64EndCentralDirLocator;
    }

    public void setZip64EndCentralDirLocator(Zip64EndCentralDirLocator zip64EndCentralDirLocator) {
        this.zip64EndCentralDirLocator = zip64EndCentralDirLocator;
    }

    public Zip64EndCentralDirRecord getZip64EndCentralDirRecord() {
        return this.zip64EndCentralDirRecord;
    }

    public void setZip64EndCentralDirRecord(Zip64EndCentralDirRecord zip64EndCentralDirRecord) {
        this.zip64EndCentralDirRecord = zip64EndCentralDirRecord;
    }

    public boolean isZip64Format() {
        return this.isZip64Format;
    }

    public void setZip64Format(boolean z) {
        this.isZip64Format = z;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public String getFileNameCharset() {
        return this.fileNameCharset;
    }

    public void setFileNameCharset(String str) {
        this.fileNameCharset = str;
    }
}
