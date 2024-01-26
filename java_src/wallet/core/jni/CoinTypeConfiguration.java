package wallet.core.jni;
/* loaded from: classes5.dex */
public final class CoinTypeConfiguration {
    private byte[] bytes;

    public static native String getAccountURL(CoinType type, String accountID);

    public static native int getDecimals(CoinType type);

    public static native String getID(CoinType type);

    public static native String getName(CoinType type);

    public static native String getSymbol(CoinType type);

    public static native String getTransactionURL(CoinType type, String transactionID);

    private CoinTypeConfiguration() {
    }

    static CoinTypeConfiguration createFromNative(byte[] bytes) {
        CoinTypeConfiguration coinTypeConfiguration = new CoinTypeConfiguration();
        coinTypeConfiguration.bytes = bytes;
        return coinTypeConfiguration;
    }
}
