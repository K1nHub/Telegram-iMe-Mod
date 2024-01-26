package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: SegwitAddress.java */
/* loaded from: classes5.dex */
class SegwitAddressPhantomReference extends PhantomReference<SegwitAddress> {
    private long nativeHandle;
    private static Set<SegwitAddressPhantomReference> references = new HashSet();
    private static ReferenceQueue<SegwitAddress> queue = new ReferenceQueue<>();

    private SegwitAddressPhantomReference(SegwitAddress referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(SegwitAddress referent, long nativeHandle) {
        references.add(new SegwitAddressPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (SegwitAddressPhantomReference segwitAddressPhantomReference = (SegwitAddressPhantomReference) queue.poll(); segwitAddressPhantomReference != null; segwitAddressPhantomReference = (SegwitAddressPhantomReference) queue.poll()) {
            SegwitAddress.nativeDelete(segwitAddressPhantomReference.nativeHandle);
            references.remove(segwitAddressPhantomReference);
        }
    }
}
