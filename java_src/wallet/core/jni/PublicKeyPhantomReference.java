package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: PublicKey.java */
/* loaded from: classes4.dex */
class PublicKeyPhantomReference extends PhantomReference<PublicKey> {
    private long nativeHandle;
    private static Set<PublicKeyPhantomReference> references = new HashSet();
    private static ReferenceQueue<PublicKey> queue = new ReferenceQueue<>();

    private PublicKeyPhantomReference(PublicKey referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(PublicKey referent, long nativeHandle) {
        references.add(new PublicKeyPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (PublicKeyPhantomReference publicKeyPhantomReference = (PublicKeyPhantomReference) queue.poll(); publicKeyPhantomReference != null; publicKeyPhantomReference = (PublicKeyPhantomReference) queue.poll()) {
            PublicKey.nativeDelete(publicKeyPhantomReference.nativeHandle);
            references.remove(publicKeyPhantomReference);
        }
    }
}
