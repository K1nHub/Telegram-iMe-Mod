package wallet.core.jni;
/* renamed from: wallet.core.jni.PBKDF2 */
/* loaded from: classes6.dex */
public final class C6699PBKDF2 {
    private byte[] bytes;

    public static native byte[] hmacSha256(byte[] password, byte[] salt, int iterations, int dkLen);

    public static native byte[] hmacSha512(byte[] password, byte[] salt, int iterations, int dkLen);

    private C6699PBKDF2() {
    }

    static C6699PBKDF2 createFromNative(byte[] bytes) {
        C6699PBKDF2 c6699pbkdf2 = new C6699PBKDF2();
        c6699pbkdf2.bytes = bytes;
        return c6699pbkdf2;
    }
}
