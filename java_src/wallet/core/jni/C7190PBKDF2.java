package wallet.core.jni;
/* renamed from: wallet.core.jni.PBKDF2 */
/* loaded from: classes4.dex */
public final class C7190PBKDF2 {
    private byte[] bytes;

    public static native byte[] hmacSha256(byte[] password, byte[] salt, int iterations, int dkLen);

    public static native byte[] hmacSha512(byte[] password, byte[] salt, int iterations, int dkLen);

    private C7190PBKDF2() {
    }

    static C7190PBKDF2 createFromNative(byte[] bytes) {
        C7190PBKDF2 c7190pbkdf2 = new C7190PBKDF2();
        c7190pbkdf2.bytes = bytes;
        return c7190pbkdf2;
    }
}
