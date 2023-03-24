package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes6.dex */
public final class BitcoinScript {
    private long nativeHandle;

    public static native BitcoinScript buildPayToPublicKey(byte[] pubkey);

    public static native BitcoinScript buildPayToPublicKeyHash(byte[] hash);

    public static native BitcoinScript buildPayToScriptHash(byte[] scriptHash);

    public static native BitcoinScript buildPayToWitnessPubkeyHash(byte[] hash);

    public static native BitcoinScript buildPayToWitnessScriptHash(byte[] scriptHash);

    public static native boolean equals(BitcoinScript lhs, BitcoinScript rhs);

    public static native int hashTypeForCoin(CoinType coinType);

    public static native BitcoinScript lockScriptForAddress(String address, CoinType coin);

    static native long nativeCreate();

    static native long nativeCreateCopy(BitcoinScript script);

    static native long nativeCreateWithData(byte[] data);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native byte[] data();

    public native byte[] encode();

    public native boolean isPayToScriptHash();

    public native boolean isPayToWitnessPublicKeyHash();

    public native boolean isPayToWitnessScriptHash();

    public native boolean isWitnessProgram();

    public native byte[] matchPayToPubkey();

    public native byte[] matchPayToPubkeyHash();

    public native byte[] matchPayToScriptHash();

    public native byte[] matchPayToWitnessPublicKeyHash();

    public native byte[] matchPayToWitnessScriptHash();

    public native byte[] scriptHash();

    public native int size();

    static BitcoinScript createFromNative(long nativeHandle) {
        BitcoinScript bitcoinScript = new BitcoinScript();
        bitcoinScript.nativeHandle = nativeHandle;
        BitcoinScriptPhantomReference.register(bitcoinScript, nativeHandle);
        return bitcoinScript;
    }

    public BitcoinScript() {
        long nativeCreate = nativeCreate();
        this.nativeHandle = nativeCreate;
        if (nativeCreate == 0) {
            throw new InvalidParameterException();
        }
        BitcoinScriptPhantomReference.register(this, nativeCreate);
    }

    public BitcoinScript(byte[] data) {
        long nativeCreateWithData = nativeCreateWithData(data);
        this.nativeHandle = nativeCreateWithData;
        if (nativeCreateWithData == 0) {
            throw new InvalidParameterException();
        }
        BitcoinScriptPhantomReference.register(this, nativeCreateWithData);
    }

    public BitcoinScript(BitcoinScript script) {
        long nativeCreateCopy = nativeCreateCopy(script);
        this.nativeHandle = nativeCreateCopy;
        if (nativeCreateCopy == 0) {
            throw new InvalidParameterException();
        }
        BitcoinScriptPhantomReference.register(this, nativeCreateCopy);
    }
}
