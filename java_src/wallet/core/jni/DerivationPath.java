package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes5.dex */
public final class DerivationPath {
    private long nativeHandle;

    static native long nativeCreate(Purpose purpose, int coin, int account, int change, int address);

    static native long nativeCreateWithString(String string);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native int account();

    public native int address();

    public native int change();

    public native int coin();

    public native String description();

    public native DerivationPathIndex indexAt(int index);

    public native int indicesCount();

    public native Purpose purpose();

    private DerivationPath() {
        this.nativeHandle = 0L;
    }

    static DerivationPath createFromNative(long nativeHandle) {
        DerivationPath derivationPath = new DerivationPath();
        derivationPath.nativeHandle = nativeHandle;
        DerivationPathPhantomReference.register(derivationPath, nativeHandle);
        return derivationPath;
    }

    public DerivationPath(Purpose purpose, int coin, int account, int change, int address) {
        long nativeCreate = nativeCreate(purpose, coin, account, change, address);
        this.nativeHandle = nativeCreate;
        if (nativeCreate == 0) {
            throw new InvalidParameterException();
        }
        DerivationPathPhantomReference.register(this, nativeCreate);
    }

    public DerivationPath(String string) {
        long nativeCreateWithString = nativeCreateWithString(string);
        this.nativeHandle = nativeCreateWithString;
        if (nativeCreateWithString == 0) {
            throw new InvalidParameterException();
        }
        DerivationPathPhantomReference.register(this, nativeCreateWithString);
    }
}
