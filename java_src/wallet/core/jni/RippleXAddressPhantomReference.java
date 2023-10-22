package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: RippleXAddress.java */
/* loaded from: classes4.dex */
class RippleXAddressPhantomReference extends PhantomReference<RippleXAddress> {
    private long nativeHandle;
    private static Set<RippleXAddressPhantomReference> references = new HashSet();
    private static ReferenceQueue<RippleXAddress> queue = new ReferenceQueue<>();

    private RippleXAddressPhantomReference(RippleXAddress referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(RippleXAddress referent, long nativeHandle) {
        references.add(new RippleXAddressPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (RippleXAddressPhantomReference rippleXAddressPhantomReference = (RippleXAddressPhantomReference) queue.poll(); rippleXAddressPhantomReference != null; rippleXAddressPhantomReference = (RippleXAddressPhantomReference) queue.poll()) {
            RippleXAddress.nativeDelete(rippleXAddressPhantomReference.nativeHandle);
            references.remove(rippleXAddressPhantomReference);
        }
    }
}
