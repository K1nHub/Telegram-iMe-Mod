package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Account.java */
/* loaded from: classes6.dex */
class AccountPhantomReference extends PhantomReference<Account> {
    private long nativeHandle;
    private static Set<AccountPhantomReference> references = new HashSet();
    private static ReferenceQueue<Account> queue = new ReferenceQueue<>();

    private AccountPhantomReference(Account referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(Account referent, long nativeHandle) {
        references.add(new AccountPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (AccountPhantomReference accountPhantomReference = (AccountPhantomReference) queue.poll(); accountPhantomReference != null; accountPhantomReference = (AccountPhantomReference) queue.poll()) {
            Account.nativeDelete(accountPhantomReference.nativeHandle);
            references.remove(accountPhantomReference);
        }
    }
}
