package wallet.core.jni;
/* loaded from: classes5.dex */
public final class Hash {
    private byte[] bytes;

    public static native byte[] blake256(byte[] data);

    public static native byte[] blake256Blake256(byte[] data);

    public static native byte[] blake256RIPEMD(byte[] data);

    public static native byte[] blake2b(byte[] data, int size);

    public static native byte[] groestl512(byte[] data);

    public static native byte[] groestl512Groestl512(byte[] data);

    public static native byte[] keccak256(byte[] data);

    public static native byte[] keccak512(byte[] data);

    public static native byte[] ripemd(byte[] data);

    public static native byte[] sha1(byte[] data);

    public static native byte[] sha256(byte[] data);

    public static native byte[] sha256RIPEMD(byte[] data);

    public static native byte[] sha256SHA256(byte[] data);

    public static native byte[] sha3256(byte[] data);

    public static native byte[] sha3256RIPEMD(byte[] data);

    public static native byte[] sha3512(byte[] data);

    public static native byte[] sha512(byte[] data);

    public static native byte[] sha512256(byte[] data);

    private Hash() {
    }

    static Hash createFromNative(byte[] bytes) {
        Hash hash = new Hash();
        hash.bytes = bytes;
        return hash;
    }
}
