package wallet.core.jni;
/* loaded from: classes4.dex */
public enum PublicKeyType {
    SECP256K1(0),
    SECP256K1EXTENDED(1),
    NIST256P1(2),
    NIST256P1EXTENDED(3),
    ED25519(4),
    ED25519BLAKE2B(5),
    CURVE25519(6),
    ED25519CARDANO(7),
    STARKEX(8);
    
    private final int value;

    PublicKeyType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static PublicKeyType createFromValue(int value) {
        switch (value) {
            case 0:
                return SECP256K1;
            case 1:
                return SECP256K1EXTENDED;
            case 2:
                return NIST256P1;
            case 3:
                return NIST256P1EXTENDED;
            case 4:
                return ED25519;
            case 5:
                return ED25519BLAKE2B;
            case 6:
                return CURVE25519;
            case 7:
                return ED25519CARDANO;
            case 8:
                return STARKEX;
            default:
                return null;
        }
    }
}
