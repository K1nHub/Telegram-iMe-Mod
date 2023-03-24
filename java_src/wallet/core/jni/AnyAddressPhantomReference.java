package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: AnyAddress.java */
/* loaded from: classes6.dex */
class AnyAddressPhantomReference extends PhantomReference<AnyAddress> {
    private long nativeHandle;
    private static Set<AnyAddressPhantomReference> references = new HashSet();
    private static ReferenceQueue<AnyAddress> queue = new ReferenceQueue<>();

    private AnyAddressPhantomReference(AnyAddress referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(AnyAddress referent, long nativeHandle) {
        references.add(new AnyAddressPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (AnyAddressPhantomReference anyAddressPhantomReference = (AnyAddressPhantomReference) queue.poll(); anyAddressPhantomReference != null; anyAddressPhantomReference = (AnyAddressPhantomReference) queue.poll()) {
            AnyAddress.nativeDelete(anyAddressPhantomReference.nativeHandle);
            references.remove(anyAddressPhantomReference);
        }
    }
}
