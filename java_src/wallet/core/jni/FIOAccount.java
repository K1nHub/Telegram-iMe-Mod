package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes4.dex */
public final class FIOAccount {
    private long nativeHandle;

    static native long nativeCreateWithString(String string);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native String description();

    private FIOAccount() {
        this.nativeHandle = 0L;
    }

    static FIOAccount createFromNative(long nativeHandle) {
        FIOAccount fIOAccount = new FIOAccount();
        fIOAccount.nativeHandle = nativeHandle;
        FIOAccountPhantomReference.register(fIOAccount, nativeHandle);
        return fIOAccount;
    }

    public FIOAccount(String string) {
        long nativeCreateWithString = nativeCreateWithString(string);
        this.nativeHandle = nativeCreateWithString;
        if (nativeCreateWithString == 0) {
            throw new InvalidParameterException();
        }
        FIOAccountPhantomReference.register(this, nativeCreateWithString);
    }
}
