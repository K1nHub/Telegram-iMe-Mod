package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: FIOAccount.java */
/* loaded from: classes4.dex */
class FIOAccountPhantomReference extends PhantomReference<FIOAccount> {
    private long nativeHandle;
    private static Set<FIOAccountPhantomReference> references = new HashSet();
    private static ReferenceQueue<FIOAccount> queue = new ReferenceQueue<>();

    private FIOAccountPhantomReference(FIOAccount referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(FIOAccount referent, long nativeHandle) {
        references.add(new FIOAccountPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (FIOAccountPhantomReference fIOAccountPhantomReference = (FIOAccountPhantomReference) queue.poll(); fIOAccountPhantomReference != null; fIOAccountPhantomReference = (FIOAccountPhantomReference) queue.poll()) {
            FIOAccount.nativeDelete(fIOAccountPhantomReference.nativeHandle);
            references.remove(fIOAccountPhantomReference);
        }
    }
}
