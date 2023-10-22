package kotlin.reflect.jvm.internal.impl.util;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.reflect.KClass;
/* compiled from: ArrayMapOwner.kt */
/* loaded from: classes4.dex */
public abstract class AbstractArrayMapOwner<K, V> implements Iterable<V>, KMappedMarker {
    protected abstract ArrayMap<V> getArrayMap();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract TypeRegistry<K, V> getTypeRegistry();

    /* compiled from: ArrayMapOwner.kt */
    /* loaded from: classes4.dex */
    public static abstract class AbstractArrayMapAccessor<K, V, T extends V> {

        /* renamed from: id */
        private final int f1391id;
        private final KClass<? extends K> key;

        public AbstractArrayMapAccessor(KClass<? extends K> key, int i) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.f1391id = i;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r2v2, types: [T extends V, java.lang.Object] */
        public final T extractValue(AbstractArrayMapOwner<K, V> thisRef) {
            Intrinsics.checkNotNullParameter(thisRef, "thisRef");
            return thisRef.getArrayMap().get(this.f1391id);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator<V> iterator() {
        return getArrayMap().iterator();
    }

    public final boolean isEmpty() {
        return getArrayMap().getSize() == 0;
    }
}
