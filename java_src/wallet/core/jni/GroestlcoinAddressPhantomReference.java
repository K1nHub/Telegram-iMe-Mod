package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: GroestlcoinAddress.java */
/* loaded from: classes6.dex */
class GroestlcoinAddressPhantomReference extends PhantomReference<GroestlcoinAddress> {
    private long nativeHandle;
    private static Set<GroestlcoinAddressPhantomReference> references = new HashSet();
    private static ReferenceQueue<GroestlcoinAddress> queue = new ReferenceQueue<>();

    private GroestlcoinAddressPhantomReference(GroestlcoinAddress referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(GroestlcoinAddress referent, long nativeHandle) {
        references.add(new GroestlcoinAddressPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (GroestlcoinAddressPhantomReference groestlcoinAddressPhantomReference = (GroestlcoinAddressPhantomReference) queue.poll(); groestlcoinAddressPhantomReference != null; groestlcoinAddressPhantomReference = (GroestlcoinAddressPhantomReference) queue.poll()) {
            GroestlcoinAddress.nativeDelete(groestlcoinAddressPhantomReference.nativeHandle);
            references.remove(groestlcoinAddressPhantomReference);
        }
    }
}
