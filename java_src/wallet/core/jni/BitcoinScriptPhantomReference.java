package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: BitcoinScript.java */
/* loaded from: classes4.dex */
class BitcoinScriptPhantomReference extends PhantomReference<BitcoinScript> {
    private long nativeHandle;
    private static Set<BitcoinScriptPhantomReference> references = new HashSet();
    private static ReferenceQueue<BitcoinScript> queue = new ReferenceQueue<>();

    private BitcoinScriptPhantomReference(BitcoinScript referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(BitcoinScript referent, long nativeHandle) {
        references.add(new BitcoinScriptPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (BitcoinScriptPhantomReference bitcoinScriptPhantomReference = (BitcoinScriptPhantomReference) queue.poll(); bitcoinScriptPhantomReference != null; bitcoinScriptPhantomReference = (BitcoinScriptPhantomReference) queue.poll()) {
            BitcoinScript.nativeDelete(bitcoinScriptPhantomReference.nativeHandle);
            references.remove(bitcoinScriptPhantomReference);
        }
    }
}
