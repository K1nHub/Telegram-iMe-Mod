package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* compiled from: EthereumAbiFunction.java */
/* loaded from: classes4.dex */
class EthereumAbiFunctionPhantomReference extends PhantomReference<EthereumAbiFunction> {
    private long nativeHandle;
    private static Set<EthereumAbiFunctionPhantomReference> references = new HashSet();
    private static ReferenceQueue<EthereumAbiFunction> queue = new ReferenceQueue<>();

    private EthereumAbiFunctionPhantomReference(EthereumAbiFunction referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(EthereumAbiFunction referent, long nativeHandle) {
        references.add(new EthereumAbiFunctionPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (EthereumAbiFunctionPhantomReference ethereumAbiFunctionPhantomReference = (EthereumAbiFunctionPhantomReference) queue.poll(); ethereumAbiFunctionPhantomReference != null; ethereumAbiFunctionPhantomReference = (EthereumAbiFunctionPhantomReference) queue.poll()) {
            EthereumAbiFunction.nativeDelete(ethereumAbiFunctionPhantomReference.nativeHandle);
            references.remove(ethereumAbiFunctionPhantomReference);
        }
    }
}
