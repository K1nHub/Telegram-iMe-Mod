package wallet.core.jni;
/* loaded from: classes4.dex */
public final class THORChainSwap {
    private byte[] bytes;

    public static native byte[] buildSwap(byte[] input);

    private THORChainSwap() {
    }

    static THORChainSwap createFromNative(byte[] bytes) {
        THORChainSwap tHORChainSwap = new THORChainSwap();
        tHORChainSwap.bytes = bytes;
        return tHORChainSwap;
    }
}
