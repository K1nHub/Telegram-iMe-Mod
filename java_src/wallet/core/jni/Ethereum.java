package wallet.core.jni;
/* loaded from: classes4.dex */
public final class Ethereum {
    private byte[] bytes;

    public static native String eip2645GetPath(String ethAddress, String layer, String application, String index);

    public static native String eip4337GetDeploymentAddress(String factoryAddress, String logicAddress, String ownerAddress);

    private Ethereum() {
    }

    static Ethereum createFromNative(byte[] bytes) {
        Ethereum ethereum = new Ethereum();
        ethereum.bytes = bytes;
        return ethereum;
    }
}
