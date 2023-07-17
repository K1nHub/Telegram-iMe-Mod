package wallet.core.jni;
/* loaded from: classes6.dex */
public enum Curve {
    SECP256K1(0),
    ED25519(1),
    ED25519BLAKE2BNANO(2),
    CURVE25519(3),
    NIST256P1(4),
    ED25519EXTENDEDCARDANO(5),
    STARKEX(6);
    
    private final int value;

    Curve(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static Curve createFromValue(int value) {
        switch (value) {
            case 0:
                return SECP256K1;
            case 1:
                return ED25519;
            case 2:
                return ED25519BLAKE2BNANO;
            case 3:
                return CURVE25519;
            case 4:
                return NIST256P1;
            case 5:
                return ED25519EXTENDEDCARDANO;
            case 6:
                return STARKEX;
            default:
                return null;
        }
    }

    /* renamed from: wallet.core.jni.Curve$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C69291 {
        static final /* synthetic */ int[] $SwitchMap$wallet$core$jni$Curve;

        static {
            int[] iArr = new int[Curve.values().length];
            $SwitchMap$wallet$core$jni$Curve = iArr;
            try {
                iArr[Curve.SECP256K1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$wallet$core$jni$Curve[Curve.ED25519.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$wallet$core$jni$Curve[Curve.ED25519BLAKE2BNANO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$wallet$core$jni$Curve[Curve.CURVE25519.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$wallet$core$jni$Curve[Curve.NIST256P1.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$wallet$core$jni$Curve[Curve.ED25519EXTENDEDCARDANO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$wallet$core$jni$Curve[Curve.STARKEX.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        switch (C69291.$SwitchMap$wallet$core$jni$Curve[ordinal()]) {
            case 1:
                return "secp256k1";
            case 2:
                return "ed25519";
            case 3:
                return "ed25519-blake2b-nano";
            case 4:
                return "curve25519";
            case 5:
                return "nist256p1";
            case 6:
                return "ed25519-cardano-seed";
            case 7:
                return "starkex";
            default:
                return "";
        }
    }
}
