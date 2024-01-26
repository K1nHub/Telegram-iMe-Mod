package wallet.core.jni;
/* loaded from: classes5.dex */
public enum Derivation {
    DEFAULT(0),
    CUSTOM(1),
    BITCOINSEGWIT(2),
    BITCOINLEGACY(3),
    BITCOINTESTNET(4),
    LITECOINLEGACY(5),
    SOLANASOLANA(6);
    
    private final int value;

    Derivation(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static Derivation createFromValue(int value) {
        switch (value) {
            case 0:
                return DEFAULT;
            case 1:
                return CUSTOM;
            case 2:
                return BITCOINSEGWIT;
            case 3:
                return BITCOINLEGACY;
            case 4:
                return BITCOINTESTNET;
            case 5:
                return LITECOINLEGACY;
            case 6:
                return SOLANASOLANA;
            default:
                return null;
        }
    }
}
