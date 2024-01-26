package kotlinx.serialization.internal;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
/* compiled from: CollectionSerializers.kt */
/* loaded from: classes4.dex */
public abstract class CollectionSerializer<E, C extends Collection<? extends E>, B> extends CollectionLikeSerializer<E, C, B> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Iterator collectionIterator(Object obj) {
        return collectionIterator((CollectionSerializer<E, C, B>) ((Collection) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return collectionSize((CollectionSerializer<E, C, B>) ((Collection) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionSerializer(KSerializer<E> element) {
        super(element, null);
        Intrinsics.checkNotNullParameter(element, "element");
    }

    protected int collectionSize(C c) {
        Intrinsics.checkNotNullParameter(c, "<this>");
        return c.size();
    }

    protected Iterator<E> collectionIterator(C c) {
        Intrinsics.checkNotNullParameter(c, "<this>");
        return c.iterator();
    }
}
