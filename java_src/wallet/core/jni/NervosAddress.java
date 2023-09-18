package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes6.dex */
public final class NervosAddress {
    private long nativeHandle;

    public static native boolean equals(NervosAddress lhs, NervosAddress rhs);

    public static native boolean isValidString(String string);

    static native long nativeCreateWithString(String string);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native byte[] args();

    public native byte[] codeHash();

    public native String description();

    public native String hashType();

    private NervosAddress() {
        this.nativeHandle = 0L;
    }

    static NervosAddress createFromNative(long nativeHandle) {
        NervosAddress nervosAddress = new NervosAddress();
        nervosAddress.nativeHandle = nativeHandle;
        NervosAddressPhantomReference.register(nervosAddress, nativeHandle);
        return nervosAddress;
    }

    public NervosAddress(String string) {
        long nativeCreateWithString = nativeCreateWithString(string);
        this.nativeHandle = nativeCreateWithString;
        if (nativeCreateWithString == 0) {
            throw new InvalidParameterException();
        }
        NervosAddressPhantomReference.register(this, nativeCreateWithString);
    }
}
