package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes6.dex */
public final class PrivateKey {
    private long nativeHandle;

    public static native boolean isValid(byte[] data, Curve curve);

    static native long nativeCreate();

    static native long nativeCreateCopy(PrivateKey key);

    static native long nativeCreateWithData(byte[] data);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native byte[] data();

    public native PublicKey getPublicKey(CoinType coinType);

    public native PublicKey getPublicKeyByType(PublicKeyType pubkeyType);

    public native PublicKey getPublicKeyCurve25519();

    public native PublicKey getPublicKeyEd25519();

    public native PublicKey getPublicKeyEd25519Blake2b();

    public native PublicKey getPublicKeyEd25519Cardano();

    public native PublicKey getPublicKeyNist256p1();

    public native PublicKey getPublicKeySecp256k1(boolean compressed);

    public native byte[] getSharedKey(PublicKey publicKey, Curve curve);

    public native byte[] sign(byte[] digest, Curve curve);

    public native byte[] signAsDER(byte[] digest);

    public native byte[] signZilliqaSchnorr(byte[] message);

    static PrivateKey createFromNative(long nativeHandle) {
        PrivateKey privateKey = new PrivateKey();
        privateKey.nativeHandle = nativeHandle;
        PrivateKeyPhantomReference.register(privateKey, nativeHandle);
        return privateKey;
    }

    public PrivateKey() {
        long nativeCreate = nativeCreate();
        this.nativeHandle = nativeCreate;
        if (nativeCreate == 0) {
            throw new InvalidParameterException();
        }
        PrivateKeyPhantomReference.register(this, nativeCreate);
    }

    public PrivateKey(byte[] data) {
        long nativeCreateWithData = nativeCreateWithData(data);
        this.nativeHandle = nativeCreateWithData;
        if (nativeCreateWithData == 0) {
            throw new InvalidParameterException();
        }
        PrivateKeyPhantomReference.register(this, nativeCreateWithData);
    }

    public PrivateKey(PrivateKey key) {
        long nativeCreateCopy = nativeCreateCopy(key);
        this.nativeHandle = nativeCreateCopy;
        if (nativeCreateCopy == 0) {
            throw new InvalidParameterException();
        }
        PrivateKeyPhantomReference.register(this, nativeCreateCopy);
    }
}
