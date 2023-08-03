package wallet.core.jni;
/* loaded from: classes4.dex */
public final class EthereumAbi {
    private byte[] bytes;

    public static native String decodeCall(byte[] data, String abi);

    public static native boolean decodeOutput(EthereumAbiFunction fn, byte[] encoded);

    public static native byte[] encode(EthereumAbiFunction fn);

    public static native byte[] encodeTyped(String messageJson);

    private EthereumAbi() {
    }

    static EthereumAbi createFromNative(byte[] bytes) {
        EthereumAbi ethereumAbi = new EthereumAbi();
        ethereumAbi.bytes = bytes;
        return ethereumAbi;
    }
}
