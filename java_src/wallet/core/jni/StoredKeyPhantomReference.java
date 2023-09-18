package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: StoredKey.java */
/* loaded from: classes6.dex */
class StoredKeyPhantomReference extends PhantomReference<StoredKey> {
    private long nativeHandle;
    private static Set<StoredKeyPhantomReference> references = new HashSet();
    private static ReferenceQueue<StoredKey> queue = new ReferenceQueue<>();

    private StoredKeyPhantomReference(StoredKey referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(StoredKey referent, long nativeHandle) {
        references.add(new StoredKeyPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (StoredKeyPhantomReference storedKeyPhantomReference = (StoredKeyPhantomReference) queue.poll(); storedKeyPhantomReference != null; storedKeyPhantomReference = (StoredKeyPhantomReference) queue.poll()) {
            StoredKey.nativeDelete(storedKeyPhantomReference.nativeHandle);
            references.remove(storedKeyPhantomReference);
        }
    }
}
