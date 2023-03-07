package org.bouncycastle.crypto;
/* loaded from: classes4.dex */
public interface Mac {
    int doFinal(byte[] bArr, int i) throws DataLengthException, IllegalStateException;

    int getMacSize();

    void init(CipherParameters cipherParameters) throws IllegalArgumentException;

    void update(byte[] bArr, int i, int i2) throws DataLengthException, IllegalStateException;
}
