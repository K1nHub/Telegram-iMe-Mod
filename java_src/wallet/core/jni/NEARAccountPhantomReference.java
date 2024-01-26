package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: NEARAccount.java */
/* loaded from: classes5.dex */
class NEARAccountPhantomReference extends PhantomReference<NEARAccount> {
    private long nativeHandle;
    private static Set<NEARAccountPhantomReference> references = new HashSet();
    private static ReferenceQueue<NEARAccount> queue = new ReferenceQueue<>();

    private NEARAccountPhantomReference(NEARAccount referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(NEARAccount referent, long nativeHandle) {
        references.add(new NEARAccountPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (NEARAccountPhantomReference nEARAccountPhantomReference = (NEARAccountPhantomReference) queue.poll(); nEARAccountPhantomReference != null; nEARAccountPhantomReference = (NEARAccountPhantomReference) queue.poll()) {
            NEARAccount.nativeDelete(nEARAccountPhantomReference.nativeHandle);
            references.remove(nEARAccountPhantomReference);
        }
    }
}
