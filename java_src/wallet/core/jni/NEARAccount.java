package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes4.dex */
public final class NEARAccount {
    private long nativeHandle;

    static native long nativeCreateWithString(String string);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native String description();

    private NEARAccount() {
        this.nativeHandle = 0L;
    }

    static NEARAccount createFromNative(long nativeHandle) {
        NEARAccount nEARAccount = new NEARAccount();
        nEARAccount.nativeHandle = nativeHandle;
        NEARAccountPhantomReference.register(nEARAccount, nativeHandle);
        return nEARAccount;
    }

    public NEARAccount(String string) {
        long nativeCreateWithString = nativeCreateWithString(string);
        this.nativeHandle = nativeCreateWithString;
        if (nativeCreateWithString == 0) {
            throw new InvalidParameterException();
        }
        NEARAccountPhantomReference.register(this, nativeCreateWithString);
    }
}
