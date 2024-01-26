package wallet.core.jni;
/* loaded from: classes5.dex */
public final class Base64 {
    private byte[] bytes;

    public static native byte[] decode(String string);

    public static native byte[] decodeUrl(String string);

    public static native String encode(byte[] data);

    public static native String encodeUrl(byte[] data);

    private Base64() {
    }

    static Base64 createFromNative(byte[] bytes) {
        Base64 base64 = new Base64();
        base64.bytes = bytes;
        return base64;
    }
}
