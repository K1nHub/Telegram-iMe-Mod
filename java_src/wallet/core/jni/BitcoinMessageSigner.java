package wallet.core.jni;
/* loaded from: classes4.dex */
public final class BitcoinMessageSigner {
    private byte[] bytes;

    public static native String signMessage(PrivateKey privateKey, String address, String message);

    public static native boolean verifyMessage(String address, String message, String signature);

    private BitcoinMessageSigner() {
    }

    static BitcoinMessageSigner createFromNative(byte[] bytes) {
        BitcoinMessageSigner bitcoinMessageSigner = new BitcoinMessageSigner();
        bitcoinMessageSigner.bytes = bytes;
        return bitcoinMessageSigner;
    }
}
