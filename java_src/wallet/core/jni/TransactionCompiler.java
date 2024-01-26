package wallet.core.jni;
/* loaded from: classes5.dex */
public final class TransactionCompiler {
    private byte[] bytes;

    public static native byte[] buildInput(CoinType coinType, String from, String to, String amount, String asset, String memo, String chainId);

    public static native byte[] compileWithSignatures(CoinType coinType, byte[] txInputData, DataVector signatures, DataVector publicKeys);

    public static native byte[] preImageHashes(CoinType coinType, byte[] txInputData);

    private TransactionCompiler() {
    }

    static TransactionCompiler createFromNative(byte[] bytes) {
        TransactionCompiler transactionCompiler = new TransactionCompiler();
        transactionCompiler.bytes = bytes;
        return transactionCompiler;
    }
}
