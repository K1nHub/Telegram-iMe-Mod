package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes4.dex */
public final class DerivationPathIndex {
    private long nativeHandle;

    static native long nativeCreate(int value, boolean hardened);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native String description();

    public native boolean hardened();

    public native int value();

    private DerivationPathIndex() {
        this.nativeHandle = 0L;
    }

    static DerivationPathIndex createFromNative(long nativeHandle) {
        DerivationPathIndex derivationPathIndex = new DerivationPathIndex();
        derivationPathIndex.nativeHandle = nativeHandle;
        DerivationPathIndexPhantomReference.register(derivationPathIndex, nativeHandle);
        return derivationPathIndex;
    }

    public DerivationPathIndex(int value, boolean hardened) {
        long nativeCreate = nativeCreate(value, hardened);
        this.nativeHandle = nativeCreate;
        if (nativeCreate == 0) {
            throw new InvalidParameterException();
        }
        DerivationPathIndexPhantomReference.register(this, nativeCreate);
    }
}
