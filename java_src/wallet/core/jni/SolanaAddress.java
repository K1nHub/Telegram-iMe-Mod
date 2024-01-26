package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes5.dex */
public final class SolanaAddress {
    private long nativeHandle;

    static native long nativeCreateWithString(String string);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native String defaultTokenAddress(String tokenMintAddress);

    public native String description();

    private SolanaAddress() {
        this.nativeHandle = 0L;
    }

    static SolanaAddress createFromNative(long nativeHandle) {
        SolanaAddress solanaAddress = new SolanaAddress();
        solanaAddress.nativeHandle = nativeHandle;
        SolanaAddressPhantomReference.register(solanaAddress, nativeHandle);
        return solanaAddress;
    }

    public SolanaAddress(String string) {
        long nativeCreateWithString = nativeCreateWithString(string);
        this.nativeHandle = nativeCreateWithString;
        if (nativeCreateWithString == 0) {
            throw new InvalidParameterException();
        }
        SolanaAddressPhantomReference.register(this, nativeCreateWithString);
    }
}
