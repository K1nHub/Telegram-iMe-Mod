package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
/* compiled from: CollectionSerializers.kt */
/* loaded from: classes4.dex */
public final class LinkedHashMapSerializer<K, V> extends MapLikeSerializer<K, V, Map<K, ? extends V>, LinkedHashMap<K, V>> {
    private final SerialDescriptor descriptor;

    protected void checkCapacity(LinkedHashMap<K, V> linkedHashMap, int i) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<this>");
    }

    protected Map<K, V> toResult(LinkedHashMap<K, V> linkedHashMap) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<this>");
        return linkedHashMap;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int builderSize(Object obj) {
        return builderSize((LinkedHashMap) ((LinkedHashMap) obj));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ void checkCapacity(Object obj, int i) {
        checkCapacity((LinkedHashMap) ((LinkedHashMap) obj), i);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Iterator collectionIterator(Object obj) {
        return collectionIterator((Map) ((Map) obj));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return collectionSize((Map) ((Map) obj));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return toBuilder((Map) ((Map) obj));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toResult(Object obj) {
        return toResult((LinkedHashMap) ((LinkedHashMap) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkedHashMapSerializer(KSerializer<K> kSerializer, KSerializer<V> vSerializer) {
        super(kSerializer, vSerializer, null);
        Intrinsics.checkNotNullParameter(kSerializer, "kSerializer");
        Intrinsics.checkNotNullParameter(vSerializer, "vSerializer");
        this.descriptor = new LinkedHashMapClassDesc(kSerializer.getDescriptor(), vSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.MapLikeSerializer, kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    protected int collectionSize(Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return map.size();
    }

    protected Iterator<Map.Entry<K, V>> collectionIterator(Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return (Iterator<Map.Entry<K, ? extends V>>) map.entrySet().iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public LinkedHashMap<K, V> builder() {
        return new LinkedHashMap<>();
    }

    protected int builderSize(LinkedHashMap<K, V> linkedHashMap) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<this>");
        return linkedHashMap.size() * 2;
    }

    protected LinkedHashMap<K, V> toBuilder(Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        LinkedHashMap<K, V> linkedHashMap = map instanceof LinkedHashMap ? (LinkedHashMap) map : null;
        return linkedHashMap == null ? new LinkedHashMap<>(map) : linkedHashMap;
    }
}
