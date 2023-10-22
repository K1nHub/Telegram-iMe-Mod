package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes4.dex */
public final class SegwitAddress {
    private long nativeHandle;

    public static native boolean equals(SegwitAddress lhs, SegwitAddress rhs);

    public static native boolean isValidString(String string);

    static native long nativeCreateWithPublicKey(HRP hrp, PublicKey publicKey);

    static native long nativeCreateWithString(String string);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native String description();

    public native HRP hrp();

    public native byte[] witnessProgram();

    public native int witnessVersion();

    private SegwitAddress() {
        this.nativeHandle = 0L;
    }

    static SegwitAddress createFromNative(long nativeHandle) {
        SegwitAddress segwitAddress = new SegwitAddress();
        segwitAddress.nativeHandle = nativeHandle;
        SegwitAddressPhantomReference.register(segwitAddress, nativeHandle);
        return segwitAddress;
    }

    public SegwitAddress(String string) {
        long nativeCreateWithString = nativeCreateWithString(string);
        this.nativeHandle = nativeCreateWithString;
        if (nativeCreateWithString == 0) {
            throw new InvalidParameterException();
        }
        SegwitAddressPhantomReference.register(this, nativeCreateWithString);
    }

    public SegwitAddress(HRP hrp, PublicKey publicKey) {
        long nativeCreateWithPublicKey = nativeCreateWithPublicKey(hrp, publicKey);
        this.nativeHandle = nativeCreateWithPublicKey;
        if (nativeCreateWithPublicKey == 0) {
            throw new InvalidParameterException();
        }
        SegwitAddressPhantomReference.register(this, nativeCreateWithPublicKey);
    }
}
