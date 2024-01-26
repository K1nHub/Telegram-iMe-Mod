package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: SolanaAddress.java */
/* loaded from: classes5.dex */
class SolanaAddressPhantomReference extends PhantomReference<SolanaAddress> {
    private long nativeHandle;
    private static Set<SolanaAddressPhantomReference> references = new HashSet();
    private static ReferenceQueue<SolanaAddress> queue = new ReferenceQueue<>();

    private SolanaAddressPhantomReference(SolanaAddress referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(SolanaAddress referent, long nativeHandle) {
        references.add(new SolanaAddressPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (SolanaAddressPhantomReference solanaAddressPhantomReference = (SolanaAddressPhantomReference) queue.poll(); solanaAddressPhantomReference != null; solanaAddressPhantomReference = (SolanaAddressPhantomReference) queue.poll()) {
            SolanaAddress.nativeDelete(solanaAddressPhantomReference.nativeHandle);
            references.remove(solanaAddressPhantomReference);
        }
    }
}
