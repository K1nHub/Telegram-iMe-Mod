package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes5.dex */
public final class GroestlcoinAddress {
    private long nativeHandle;

    public static native boolean equals(GroestlcoinAddress lhs, GroestlcoinAddress rhs);

    public static native boolean isValidString(String string);

    static native long nativeCreateWithPublicKey(PublicKey publicKey, byte prefix);

    static native long nativeCreateWithString(String string);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native String description();

    private GroestlcoinAddress() {
        this.nativeHandle = 0L;
    }

    static GroestlcoinAddress createFromNative(long nativeHandle) {
        GroestlcoinAddress groestlcoinAddress = new GroestlcoinAddress();
        groestlcoinAddress.nativeHandle = nativeHandle;
        GroestlcoinAddressPhantomReference.register(groestlcoinAddress, nativeHandle);
        return groestlcoinAddress;
    }

    public GroestlcoinAddress(String string) {
        long nativeCreateWithString = nativeCreateWithString(string);
        this.nativeHandle = nativeCreateWithString;
        if (nativeCreateWithString == 0) {
            throw new InvalidParameterException();
        }
        GroestlcoinAddressPhantomReference.register(this, nativeCreateWithString);
    }

    public GroestlcoinAddress(PublicKey publicKey, byte prefix) {
        long nativeCreateWithPublicKey = nativeCreateWithPublicKey(publicKey, prefix);
        this.nativeHandle = nativeCreateWithPublicKey;
        if (nativeCreateWithPublicKey == 0) {
            throw new InvalidParameterException();
        }
        GroestlcoinAddressPhantomReference.register(this, nativeCreateWithPublicKey);
    }
}
