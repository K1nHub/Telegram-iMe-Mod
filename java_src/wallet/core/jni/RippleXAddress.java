package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes6.dex */
public final class RippleXAddress {
    private long nativeHandle;

    public static native boolean equals(RippleXAddress lhs, RippleXAddress rhs);

    public static native boolean isValidString(String string);

    static native long nativeCreateWithPublicKey(PublicKey publicKey, int tag);

    static native long nativeCreateWithString(String string);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native String description();

    public native int tag();

    private RippleXAddress() {
        this.nativeHandle = 0L;
    }

    static RippleXAddress createFromNative(long nativeHandle) {
        RippleXAddress rippleXAddress = new RippleXAddress();
        rippleXAddress.nativeHandle = nativeHandle;
        RippleXAddressPhantomReference.register(rippleXAddress, nativeHandle);
        return rippleXAddress;
    }

    public RippleXAddress(String string) {
        long nativeCreateWithString = nativeCreateWithString(string);
        this.nativeHandle = nativeCreateWithString;
        if (nativeCreateWithString == 0) {
            throw new InvalidParameterException();
        }
        RippleXAddressPhantomReference.register(this, nativeCreateWithString);
    }

    public RippleXAddress(PublicKey publicKey, int tag) {
        long nativeCreateWithPublicKey = nativeCreateWithPublicKey(publicKey, tag);
        this.nativeHandle = nativeCreateWithPublicKey;
        if (nativeCreateWithPublicKey == 0) {
            throw new InvalidParameterException();
        }
        RippleXAddressPhantomReference.register(this, nativeCreateWithPublicKey);
    }
}
