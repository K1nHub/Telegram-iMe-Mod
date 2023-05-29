package wallet.core.jni;
/* renamed from: wallet.core.jni.PBKDF2 */
/* loaded from: classes6.dex */
public final class C6806PBKDF2 {
    private byte[] bytes;

    public static native byte[] hmacSha256(byte[] password, byte[] salt, int iterations, int dkLen);

    public static native byte[] hmacSha512(byte[] password, byte[] salt, int iterations, int dkLen);

    private C6806PBKDF2() {
    }

    static C6806PBKDF2 createFromNative(byte[] bytes) {
        C6806PBKDF2 c6806pbkdf2 = new C6806PBKDF2();
        c6806pbkdf2.bytes = bytes;
        return c6806pbkdf2;
    }
}
