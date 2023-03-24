package wallet.core.jni;
/* loaded from: classes6.dex */
public final class AES {
    private byte[] bytes;

    public static native byte[] decryptCBC(byte[] key, byte[] data, byte[] iv, AESPaddingMode mode);

    public static native byte[] decryptCTR(byte[] key, byte[] data, byte[] iv);

    public static native byte[] encryptCBC(byte[] key, byte[] data, byte[] iv, AESPaddingMode mode);

    public static native byte[] encryptCTR(byte[] key, byte[] data, byte[] iv);

    private AES() {
    }

    static AES createFromNative(byte[] bytes) {
        AES aes = new AES();
        aes.bytes = bytes;
        return aes;
    }
}
