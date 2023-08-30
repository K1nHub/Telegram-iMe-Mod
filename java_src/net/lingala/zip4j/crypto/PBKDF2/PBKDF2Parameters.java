package net.lingala.zip4j.crypto.PBKDF2;
/* loaded from: classes4.dex */
public class PBKDF2Parameters {
    protected String hashAlgorithm;
    protected int iterationCount;
    protected byte[] salt;

    public PBKDF2Parameters(String str, String str2, byte[] bArr, int i) {
        this.hashAlgorithm = str;
        this.salt = bArr;
        this.iterationCount = i;
    }

    public int getIterationCount() {
        return this.iterationCount;
    }

    public byte[] getSalt() {
        return this.salt;
    }

    public String getHashAlgorithm() {
        return this.hashAlgorithm;
    }
}
