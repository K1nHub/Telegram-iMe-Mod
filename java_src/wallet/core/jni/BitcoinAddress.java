package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes4.dex */
public final class BitcoinAddress {
    private long nativeHandle;

    public static native boolean equals(BitcoinAddress lhs, BitcoinAddress rhs);

    public static native boolean isValid(byte[] data);

    public static native boolean isValidString(String string);

    static native long nativeCreateWithData(byte[] data);

    static native long nativeCreateWithPublicKey(PublicKey publicKey, byte prefix);

    static native long nativeCreateWithString(String string);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native String description();

    public native byte[] keyhash();

    public native byte prefix();

    private BitcoinAddress() {
        this.nativeHandle = 0L;
    }

    static BitcoinAddress createFromNative(long nativeHandle) {
        BitcoinAddress bitcoinAddress = new BitcoinAddress();
        bitcoinAddress.nativeHandle = nativeHandle;
        BitcoinAddressPhantomReference.register(bitcoinAddress, nativeHandle);
        return bitcoinAddress;
    }

    public BitcoinAddress(String string) {
        long nativeCreateWithString = nativeCreateWithString(string);
        this.nativeHandle = nativeCreateWithString;
        if (nativeCreateWithString == 0) {
            throw new InvalidParameterException();
        }
        BitcoinAddressPhantomReference.register(this, nativeCreateWithString);
    }

    public BitcoinAddress(byte[] data) {
        long nativeCreateWithData = nativeCreateWithData(data);
        this.nativeHandle = nativeCreateWithData;
        if (nativeCreateWithData == 0) {
            throw new InvalidParameterException();
        }
        BitcoinAddressPhantomReference.register(this, nativeCreateWithData);
    }

    public BitcoinAddress(PublicKey publicKey, byte prefix) {
        long nativeCreateWithPublicKey = nativeCreateWithPublicKey(publicKey, prefix);
        this.nativeHandle = nativeCreateWithPublicKey;
        if (nativeCreateWithPublicKey == 0) {
            throw new InvalidParameterException();
        }
        BitcoinAddressPhantomReference.register(this, nativeCreateWithPublicKey);
    }
}
