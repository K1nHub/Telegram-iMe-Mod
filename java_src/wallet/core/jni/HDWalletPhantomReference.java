package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: HDWallet.java */
/* loaded from: classes6.dex */
class HDWalletPhantomReference extends PhantomReference<HDWallet> {
    private long nativeHandle;
    private static Set<HDWalletPhantomReference> references = new HashSet();
    private static ReferenceQueue<HDWallet> queue = new ReferenceQueue<>();

    private HDWalletPhantomReference(HDWallet referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(HDWallet referent, long nativeHandle) {
        references.add(new HDWalletPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (HDWalletPhantomReference hDWalletPhantomReference = (HDWalletPhantomReference) queue.poll(); hDWalletPhantomReference != null; hDWalletPhantomReference = (HDWalletPhantomReference) queue.poll()) {
            HDWallet.nativeDelete(hDWalletPhantomReference.nativeHandle);
            references.remove(hDWalletPhantomReference);
        }
    }
}
