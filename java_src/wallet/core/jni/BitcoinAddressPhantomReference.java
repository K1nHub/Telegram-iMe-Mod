package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: BitcoinAddress.java */
/* loaded from: classes4.dex */
class BitcoinAddressPhantomReference extends PhantomReference<BitcoinAddress> {
    private long nativeHandle;
    private static Set<BitcoinAddressPhantomReference> references = new HashSet();
    private static ReferenceQueue<BitcoinAddress> queue = new ReferenceQueue<>();

    private BitcoinAddressPhantomReference(BitcoinAddress referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(BitcoinAddress referent, long nativeHandle) {
        references.add(new BitcoinAddressPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (BitcoinAddressPhantomReference bitcoinAddressPhantomReference = (BitcoinAddressPhantomReference) queue.poll(); bitcoinAddressPhantomReference != null; bitcoinAddressPhantomReference = (BitcoinAddressPhantomReference) queue.poll()) {
            BitcoinAddress.nativeDelete(bitcoinAddressPhantomReference.nativeHandle);
            references.remove(bitcoinAddressPhantomReference);
        }
    }
}
