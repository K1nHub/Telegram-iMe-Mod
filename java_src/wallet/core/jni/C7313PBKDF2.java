package wallet.core.jni;
/* renamed from: wallet.core.jni.PBKDF2 */
/* loaded from: classes6.dex */
public final class C7313PBKDF2 {
    private byte[] bytes;

    public static native byte[] hmacSha256(byte[] password, byte[] salt, int iterations, int dkLen);

    public static native byte[] hmacSha512(byte[] password, byte[] salt, int iterations, int dkLen);

    private C7313PBKDF2() {
    }

    static C7313PBKDF2 createFromNative(byte[] bytes) {
        C7313PBKDF2 c7313pbkdf2 = new C7313PBKDF2();
        c7313pbkdf2.bytes = bytes;
        return c7313pbkdf2;
    }
}
