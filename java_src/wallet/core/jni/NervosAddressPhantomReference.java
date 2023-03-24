package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: NervosAddress.java */
/* loaded from: classes6.dex */
class NervosAddressPhantomReference extends PhantomReference<NervosAddress> {
    private long nativeHandle;
    private static Set<NervosAddressPhantomReference> references = new HashSet();
    private static ReferenceQueue<NervosAddress> queue = new ReferenceQueue<>();

    private NervosAddressPhantomReference(NervosAddress referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(NervosAddress referent, long nativeHandle) {
        references.add(new NervosAddressPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (NervosAddressPhantomReference nervosAddressPhantomReference = (NervosAddressPhantomReference) queue.poll(); nervosAddressPhantomReference != null; nervosAddressPhantomReference = (NervosAddressPhantomReference) queue.poll()) {
            NervosAddress.nativeDelete(nervosAddressPhantomReference.nativeHandle);
            references.remove(nervosAddressPhantomReference);
        }
    }
}
