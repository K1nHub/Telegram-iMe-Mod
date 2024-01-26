package wallet.core.jni;
/* loaded from: classes5.dex */
public final class StarkWare {
    private byte[] bytes;

    public static native PrivateKey getStarkKeyFromSignature(DerivationPath derivationPath, String signature);

    private StarkWare() {
    }

    static StarkWare createFromNative(byte[] bytes) {
        StarkWare starkWare = new StarkWare();
        starkWare.bytes = bytes;
        return starkWare;
    }
}
