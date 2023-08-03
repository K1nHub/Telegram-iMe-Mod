package wallet.core.jni;
/* loaded from: classes4.dex */
public final class EthereumMessageSigner {
    private byte[] bytes;

    public static native String signMessage(PrivateKey privateKey, String message);

    public static native String signMessageEip155(PrivateKey privateKey, String message, int chainId);

    public static native String signMessageImmutableX(PrivateKey privateKey, String message);

    public static native String signTypedMessage(PrivateKey privateKey, String messageJson);

    public static native String signTypedMessageEip155(PrivateKey privateKey, String messageJson, int chainId);

    public static native boolean verifyMessage(PublicKey pubKey, String message, String signature);

    private EthereumMessageSigner() {
    }

    static EthereumMessageSigner createFromNative(byte[] bytes) {
        EthereumMessageSigner ethereumMessageSigner = new EthereumMessageSigner();
        ethereumMessageSigner.bytes = bytes;
        return ethereumMessageSigner;
    }
}
