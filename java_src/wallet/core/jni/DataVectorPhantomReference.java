package wallet.core.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataVector.java */
/* loaded from: classes4.dex */
public class DataVectorPhantomReference extends PhantomReference<DataVector> {
    private long nativeHandle;
    private static Set<DataVectorPhantomReference> references = new HashSet();
    private static ReferenceQueue<DataVector> queue = new ReferenceQueue<>();

    private DataVectorPhantomReference(DataVector referent, long nativeHandle) {
        super(referent, queue);
        this.nativeHandle = nativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void register(DataVector referent, long nativeHandle) {
        references.add(new DataVectorPhantomReference(referent, nativeHandle));
    }

    public static void doDeletes() {
        for (DataVectorPhantomReference dataVectorPhantomReference = (DataVectorPhantomReference) queue.poll(); dataVectorPhantomReference != null; dataVectorPhantomReference = (DataVectorPhantomReference) queue.poll()) {
            DataVector.nativeDelete(dataVectorPhantomReference.nativeHandle);
            references.remove(dataVectorPhantomReference);
        }
    }
}
