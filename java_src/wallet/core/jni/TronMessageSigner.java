package wallet.core.jni;
/* loaded from: classes6.dex */
public final class TronMessageSigner {
    private byte[] bytes;

    public static native String signMessage(PrivateKey privateKey, String message);

    public static native boolean verifyMessage(PublicKey pubKey, String message, String signature);

    private TronMessageSigner() {
    }

    static TronMessageSigner createFromNative(byte[] bytes) {
        TronMessageSigner tronMessageSigner = new TronMessageSigner();
        tronMessageSigner.bytes = bytes;
        return tronMessageSigner;
    }
}
