package wallet.core.jni;

import java.security.InvalidParameterException;
/* loaded from: classes6.dex */
public final class AnyAddress {
    private long nativeHandle;

    public static native boolean equals(AnyAddress lhs, AnyAddress rhs);

    public static native boolean isValid(String string, CoinType coin);

    public static native boolean isValidBech32(String string, CoinType coin, String hrp);

    public static native boolean isValidSS58(String string, CoinType coin, int ss58Prefix);

    static native long nativeCreateBech32(String string, CoinType coin, String hrp);

    static native long nativeCreateBech32WithPublicKey(PublicKey publicKey, CoinType coin, String hrp);

    static native long nativeCreateSS58(String string, CoinType coin, int ss58Prefix);

    static native long nativeCreateSS58WithPublicKey(PublicKey publicKey, CoinType coin, int ss58Prefix);

    static native long nativeCreateWithPublicKey(PublicKey publicKey, CoinType coin);

    static native long nativeCreateWithPublicKeyDerivation(PublicKey publicKey, CoinType coin, Derivation derivation);

    static native long nativeCreateWithString(String string, CoinType coin);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeDelete(long handle);

    public native CoinType coin();

    public native byte[] data();

    public native String description();

    private AnyAddress() {
        this.nativeHandle = 0L;
    }

    static AnyAddress createFromNative(long nativeHandle) {
        AnyAddress anyAddress = new AnyAddress();
        anyAddress.nativeHandle = nativeHandle;
        AnyAddressPhantomReference.register(anyAddress, nativeHandle);
        return anyAddress;
    }

    public AnyAddress(String string, CoinType coin) {
        long nativeCreateWithString = nativeCreateWithString(string, coin);
        this.nativeHandle = nativeCreateWithString;
        if (nativeCreateWithString == 0) {
            throw new InvalidParameterException();
        }
        AnyAddressPhantomReference.register(this, nativeCreateWithString);
    }

    public AnyAddress(String string, CoinType coin, String hrp) {
        long nativeCreateBech32 = nativeCreateBech32(string, coin, hrp);
        this.nativeHandle = nativeCreateBech32;
        if (nativeCreateBech32 == 0) {
            throw new InvalidParameterException();
        }
        AnyAddressPhantomReference.register(this, nativeCreateBech32);
    }

    public AnyAddress(String string, CoinType coin, int ss58Prefix) {
        long nativeCreateSS58 = nativeCreateSS58(string, coin, ss58Prefix);
        this.nativeHandle = nativeCreateSS58;
        if (nativeCreateSS58 == 0) {
            throw new InvalidParameterException();
        }
        AnyAddressPhantomReference.register(this, nativeCreateSS58);
    }

    public AnyAddress(PublicKey publicKey, CoinType coin) {
        long nativeCreateWithPublicKey = nativeCreateWithPublicKey(publicKey, coin);
        this.nativeHandle = nativeCreateWithPublicKey;
        if (nativeCreateWithPublicKey == 0) {
            throw new InvalidParameterException();
        }
        AnyAddressPhantomReference.register(this, nativeCreateWithPublicKey);
    }

    public AnyAddress(PublicKey publicKey, CoinType coin, Derivation derivation) {
        long nativeCreateWithPublicKeyDerivation = nativeCreateWithPublicKeyDerivation(publicKey, coin, derivation);
        this.nativeHandle = nativeCreateWithPublicKeyDerivation;
        if (nativeCreateWithPublicKeyDerivation == 0) {
            throw new InvalidParameterException();
        }
        AnyAddressPhantomReference.register(this, nativeCreateWithPublicKeyDerivation);
    }

    public AnyAddress(PublicKey publicKey, CoinType coin, String hrp) {
        long nativeCreateBech32WithPublicKey = nativeCreateBech32WithPublicKey(publicKey, coin, hrp);
        this.nativeHandle = nativeCreateBech32WithPublicKey;
        if (nativeCreateBech32WithPublicKey == 0) {
            throw new InvalidParameterException();
        }
        AnyAddressPhantomReference.register(this, nativeCreateBech32WithPublicKey);
    }

    public AnyAddress(PublicKey publicKey, CoinType coin, int ss58Prefix) {
        long nativeCreateSS58WithPublicKey = nativeCreateSS58WithPublicKey(publicKey, coin, ss58Prefix);
        this.nativeHandle = nativeCreateSS58WithPublicKey;
        if (nativeCreateSS58WithPublicKey == 0) {
            throw new InvalidParameterException();
        }
        AnyAddressPhantomReference.register(this, nativeCreateSS58WithPublicKey);
    }
}
