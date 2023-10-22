package wallet.core.jni;
/* loaded from: classes4.dex */
public final class PBKDF2 {
    private byte[] bytes;

    public static native byte[] hmacSha256(byte[] password, byte[] salt, int iterations, int dkLen);

    public static native byte[] hmacSha512(byte[] password, byte[] salt, int iterations, int dkLen);

    private PBKDF2() {
    }

    static PBKDF2 createFromNative(byte[] bytes) {
        PBKDF2 pbkdf2 = new PBKDF2();
        pbkdf2.bytes = bytes;
        return pbkdf2;
    }
}
