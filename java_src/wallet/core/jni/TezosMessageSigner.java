package wallet.core.jni;
/* loaded from: classes4.dex */
public final class TezosMessageSigner {
    private byte[] bytes;

    public static native String formatMessage(String message, String url);

    public static native String inputToPayload(String message);

    public static native String signMessage(PrivateKey privateKey, String message);

    public static native boolean verifyMessage(PublicKey pubKey, String message, String signature);

    private TezosMessageSigner() {
    }

    static TezosMessageSigner createFromNative(byte[] bytes) {
        TezosMessageSigner tezosMessageSigner = new TezosMessageSigner();
        tezosMessageSigner.bytes = bytes;
        return tezosMessageSigner;
    }
}
