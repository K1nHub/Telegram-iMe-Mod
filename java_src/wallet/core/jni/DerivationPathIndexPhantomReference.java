package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: DerivationPathIndex.java */
/* loaded from: classes5.dex */
class DerivationPathIndexPhantomReference extends PhantomReference<DerivationPathIndex> {
    private long nativeHandle;
    private static Set<DerivationPathIndexPhantomReference> references = new HashSet();
    private static ReferenceQueue<DerivationPathIndex> queue = new ReferenceQueue<>();

    private DerivationPathIndexPhantomReference(DerivationPathIndex referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(DerivationPathIndex referent, long nativeHandle) {
        references.add(new DerivationPathIndexPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (DerivationPathIndexPhantomReference derivationPathIndexPhantomReference = (DerivationPathIndexPhantomReference) queue.poll(); derivationPathIndexPhantomReference != null; derivationPathIndexPhantomReference = (DerivationPathIndexPhantomReference) queue.poll()) {
            DerivationPathIndex.nativeDelete(derivationPathIndexPhantomReference.nativeHandle);
            references.remove(derivationPathIndexPhantomReference);
        }
    }
}
