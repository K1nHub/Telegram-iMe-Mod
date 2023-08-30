package wallet.core.jni;
/* loaded from: classes4.dex */
public final class EthereumAbiValue {
    private byte[] bytes;

    public static native String decodeArray(byte[] input, String type);

    public static native String decodeUInt256(byte[] input);

    public static native String decodeValue(byte[] input, String type);

    public static native byte[] encodeAddress(byte[] value);

    public static native byte[] encodeBool(boolean value);

    public static native byte[] encodeBytes(byte[] value);

    public static native byte[] encodeBytesDyn(byte[] value);

    public static native byte[] encodeInt256(byte[] value);

    public static native byte[] encodeInt32(int value);

    public static native byte[] encodeString(String value);

    public static native byte[] encodeUInt256(byte[] value);

    public static native byte[] encodeUInt32(int value);

    private EthereumAbiValue() {
    }

    static EthereumAbiValue createFromNative(byte[] bytes) {
        EthereumAbiValue ethereumAbiValue = new EthereumAbiValue();
        ethereumAbiValue.bytes = bytes;
        return ethereumAbiValue;
    }
}
