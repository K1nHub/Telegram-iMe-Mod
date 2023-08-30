package wallet.core.jni;
/* loaded from: classes4.dex */
public final class Base32 {
    private byte[] bytes;

    public static native byte[] decode(String string);

    public static native byte[] decodeWithAlphabet(String string, String alphabet);

    public static native String encode(byte[] data);

    public static native String encodeWithAlphabet(byte[] data, String alphabet);

    private Base32() {
    }

    static Base32 createFromNative(byte[] bytes) {
        Base32 base32 = new Base32();
        base32.bytes = bytes;
        return base32;
    }
}
