package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: DerivationPath.java */
/* loaded from: classes4.dex */
class DerivationPathPhantomReference extends PhantomReference<DerivationPath> {
    private long nativeHandle;
    private static Set<DerivationPathPhantomReference> references = new HashSet();
    private static ReferenceQueue<DerivationPath> queue = new ReferenceQueue<>();

    private DerivationPathPhantomReference(DerivationPath referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(DerivationPath referent, long nativeHandle) {
        references.add(new DerivationPathPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (DerivationPathPhantomReference derivationPathPhantomReference = (DerivationPathPhantomReference) queue.poll(); derivationPathPhantomReference != null; derivationPathPhantomReference = (DerivationPathPhantomReference) queue.poll()) {
            DerivationPath.nativeDelete(derivationPathPhantomReference.nativeHandle);
            references.remove(derivationPathPhantomReference);
        }
    }
}
