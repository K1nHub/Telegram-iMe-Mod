package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PrivateKey.java */
/* loaded from: classes6.dex */
public class PrivateKeyPhantomReference extends PhantomReference<PrivateKey> {
    private long nativeHandle;
    private static Set<PrivateKeyPhantomReference> references = new HashSet();
    private static ReferenceQueue<PrivateKey> queue = new ReferenceQueue<>();

    private PrivateKeyPhantomReference(PrivateKey referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(PrivateKey referent, long nativeHandle) {
        references.add(new PrivateKeyPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (PrivateKeyPhantomReference privateKeyPhantomReference = (PrivateKeyPhantomReference) queue.poll(); privateKeyPhantomReference != null; privateKeyPhantomReference = (PrivateKeyPhantomReference) queue.poll()) {
            PrivateKey.nativeDelete(privateKeyPhantomReference.nativeHandle);
            references.remove(privateKeyPhantomReference);
        }
    }
}
