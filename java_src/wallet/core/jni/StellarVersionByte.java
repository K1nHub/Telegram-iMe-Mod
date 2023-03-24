package wallet.core.jni;
/* loaded from: classes6.dex */
public enum StellarVersionByte {
    ACCOUNTID(48),
    SEED(192),
    PREAUTHTX(200),
    SHA256HASH(280);
    
    private final short value;

    StellarVersionByte(short value) {
        this.value = value;
    }

    public short value() {
        return this.value;
    }

    public static StellarVersionByte createFromValue(short value) {
        if (value != 48) {
            if (value != 192) {
                if (value != 200) {
                    if (value != 280) {
                        return null;
                    }
                    return SHA256HASH;
                }
                return PREAUTHTX;
            }
            return SEED;
        }
        return ACCOUNTID;
    }
}
