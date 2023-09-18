package net.lingala.zip4j.model;

import java.util.ArrayList;
/* loaded from: classes6.dex */
public class LocalFileHeader {
    private AESExtraDataRecord aesExtraDataRecord;
    private long compressedSize;
    private int compressionMethod;
    private ArrayList extraDataRecords;
    private int extraFieldLength;
    private String fileName;
    private boolean fileNameUTF8Encoded;
    private boolean isEncrypted;
    private long offsetStartOfData;
    private char[] password;
    private int encryptionMethod = -1;
    private long crc32 = 0;
    private long uncompressedSize = 0;

    public void setCrcBuff(byte[] bArr) {
    }

    public void setDataDescriptorExists(boolean z) {
    }

    public void setFileNameLength(int i) {
    }

    public void setGeneralPurposeFlag(byte[] bArr) {
    }

    public void setLastModFileTime(int i) {
    }

    public void setSignature(int i) {
    }

    public void setVersionNeededToExtract(int i) {
    }

    public void setZip64ExtendedInfo(Zip64ExtendedInfo zip64ExtendedInfo) {
    }

    public int getCompressionMethod() {
        return this.compressionMethod;
    }

    public void setCompressionMethod(int i) {
        this.compressionMethod = i;
    }

    public long getCrc32() {
        return this.crc32;
    }

    public void setCrc32(long j) {
        this.crc32 = j;
    }

    public long getCompressedSize() {
        return this.compressedSize;
    }

    public void setCompressedSize(long j) {
        this.compressedSize = j;
    }

    public long getUncompressedSize() {
        return this.uncompressedSize;
    }

    public void setUncompressedSize(long j) {
        this.uncompressedSize = j;
    }

    public int getExtraFieldLength() {
        return this.extraFieldLength;
    }

    public void setExtraFieldLength(int i) {
        this.extraFieldLength = i;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public long getOffsetStartOfData() {
        return this.offsetStartOfData;
    }

    public void setOffsetStartOfData(long j) {
        this.offsetStartOfData = j;
    }

    public boolean isEncrypted() {
        return this.isEncrypted;
    }

    public void setEncrypted(boolean z) {
        this.isEncrypted = z;
    }

    public int getEncryptionMethod() {
        return this.encryptionMethod;
    }

    public void setEncryptionMethod(int i) {
        this.encryptionMethod = i;
    }

    public char[] getPassword() {
        return this.password;
    }

    public void setPassword(char[] cArr) {
        this.password = cArr;
    }

    public ArrayList getExtraDataRecords() {
        return this.extraDataRecords;
    }

    public void setExtraDataRecords(ArrayList arrayList) {
        this.extraDataRecords = arrayList;
    }

    public AESExtraDataRecord getAesExtraDataRecord() {
        return this.aesExtraDataRecord;
    }

    public void setAesExtraDataRecord(AESExtraDataRecord aESExtraDataRecord) {
        this.aesExtraDataRecord = aESExtraDataRecord;
    }

    public boolean isFileNameUTF8Encoded() {
        return this.fileNameUTF8Encoded;
    }

    public void setFileNameUTF8Encoded(boolean z) {
        this.fileNameUTF8Encoded = z;
    }
}
