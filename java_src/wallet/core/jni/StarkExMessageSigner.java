package wallet.core.jni;
/* loaded from: classes5.dex */
public final class StarkExMessageSigner {
    private byte[] bytes;

    public static native String signMessage(PrivateKey privateKey, String message);

    public static native boolean verifyMessage(PublicKey pubKey, String message, String signature);

    private StarkExMessageSigner() {
    }

    static StarkExMessageSigner createFromNative(byte[] bytes) {
        StarkExMessageSigner starkExMessageSigner = new StarkExMessageSigner();
        starkExMessageSigner.bytes = bytes;
        return starkExMessageSigner;
    }
}
