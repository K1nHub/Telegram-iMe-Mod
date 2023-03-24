package wallet.core.jni;
/* loaded from: classes6.dex */
public final class Base58 {
    private byte[] bytes;

    public static native byte[] decode(String string);

    public static native byte[] decodeNoCheck(String string);

    public static native String encode(byte[] data);

    public static native String encodeNoCheck(byte[] data);

    private Base58() {
    }

    static Base58 createFromNative(byte[] bytes) {
        Base58 base58 = new Base58();
        base58.bytes = bytes;
        return base58;
    }
}
