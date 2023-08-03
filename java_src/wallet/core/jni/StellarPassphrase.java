package wallet.core.jni;
/* loaded from: classes4.dex */
public enum StellarPassphrase {
    STELLAR(0),
    KIN(1);
    
    private final int value;

    StellarPassphrase(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static StellarPassphrase createFromValue(int value) {
        if (value != 0) {
            if (value != 1) {
                return null;
            }
            return KIN;
        }
        return STELLAR;
    }

    /* renamed from: wallet.core.jni.StellarPassphrase$1 */
    /* loaded from: classes4.dex */
    static /* synthetic */ class C71911 {
        static final /* synthetic */ int[] $SwitchMap$wallet$core$jni$StellarPassphrase;

        static {
            int[] iArr = new int[StellarPassphrase.values().length];
            $SwitchMap$wallet$core$jni$StellarPassphrase = iArr;
            try {
                iArr[StellarPassphrase.STELLAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$wallet$core$jni$StellarPassphrase[StellarPassphrase.KIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        int i = C71911.$SwitchMap$wallet$core$jni$StellarPassphrase[ordinal()];
        return i != 1 ? i != 2 ? "" : "Kin Mainnet ; December 2018" : "Public Global Stellar Network ; September 2015";
    }
}
