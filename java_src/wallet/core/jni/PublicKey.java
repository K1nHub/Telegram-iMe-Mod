package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes5.dex */
public final class PublicKey {
    private long nativeHandle;

    public static native boolean isValid(byte[] data, PublicKeyType type);

    static native long nativeCreateWithData(byte[] data, PublicKeyType type);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public static native PublicKey recover(byte[] signature, byte[] message);

    public native PublicKey compressed();

    public native byte[] data();

    public native String description();

    public native boolean isCompressed();

    public native PublicKeyType keyType();

    public native PublicKey uncompressed();

    public native boolean verify(byte[] signature, byte[] message);

    public native boolean verifyAsDER(byte[] signature, byte[] message);

    public native boolean verifyZilliqaSchnorr(byte[] signature, byte[] message);

    private PublicKey() {
        this.nativeHandle = 0L;
    }

    static PublicKey createFromNative(long nativeHandle) {
        PublicKey publicKey = new PublicKey();
        publicKey.nativeHandle = nativeHandle;
        PublicKeyPhantomReference.register(publicKey, nativeHandle);
        return publicKey;
    }

    public PublicKey(byte[] data, PublicKeyType type) {
        long nativeCreateWithData = nativeCreateWithData(data, type);
        this.nativeHandle = nativeCreateWithData;
        if (nativeCreateWithData == 0) {
            throw new InvalidParameterException();
        }
        PublicKeyPhantomReference.register(this, nativeCreateWithData);
    }
}
