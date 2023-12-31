package org.bouncycastle.crypto;
/* loaded from: classes4.dex */
public class CryptoException extends Exception {
    private Throwable cause;

    public CryptoException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
