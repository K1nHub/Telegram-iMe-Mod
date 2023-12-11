package org.ton.api.dht;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
import p033j$.lang.Iterable$CC;
import p033j$.util.Collection;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.Predicate;
import p033j$.util.stream.AbstractC3083o1;
import p033j$.util.stream.Stream;
import p033j$.wrappers.C$r8$wrapper$java$util$function$Predicate$VWRP;
/* compiled from: DhtNodes.kt */
@Serializable
@JsonClassDiscriminator(discriminator = "@type")
/* loaded from: classes6.dex */
public final class DhtNodes implements Collection<DhtNode>, KMappedMarker, p033j$.util.Collection {
    private final Collection<DhtNode> nodes;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new ArrayListSerializer(DhtNode$$serializer.INSTANCE)};

    public DhtNodes() {
        this((Collection) null, 1, (DefaultConstructorMarker) null);
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean addAll(Collection<? extends DhtNode> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean contains(DhtNode element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.nodes.contains(element);
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.nodes.containsAll(elements);
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DhtNodes) && Intrinsics.areEqual(this.nodes, ((DhtNodes) obj).nodes);
    }

    @Override // p033j$.util.Collection, p033j$.lang.InterfaceC2671e
    public /* synthetic */ void forEach(Consumer consumer) {
        Iterable$CC.$default$forEach(this, consumer);
    }

    public int getSize() {
        return this.nodes.size();
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public int hashCode() {
        return this.nodes.hashCode();
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean isEmpty() {
        return this.nodes.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable, p033j$.util.Collection
    public Iterator<DhtNode> iterator() {
        return this.nodes.iterator();
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public /* synthetic */ Stream parallelStream() {
        Stream m399y;
        m399y = AbstractC3083o1.m399y(Collection.EL.m695b(this), true);
        return m399y;
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean removeAll(java.util.Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // p033j$.util.Collection
    public boolean removeIf(Predicate<? super DhtNode> predicate) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean removeIf(java.util.function.Predicate<? super DhtNode> predicate) {
        return removeIf(C$r8$wrapper$java$util$function$Predicate$VWRP.convert(predicate));
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean retainAll(java.util.Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.lang.Iterable, p033j$.util.Collection, p033j$.lang.InterfaceC2671e
    public /* synthetic */ Spliterator spliterator() {
        return Collection.CC.$default$spliterator(this);
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public /* synthetic */ Stream stream() {
        Stream m399y;
        m399y = AbstractC3083o1.m399y(Collection.EL.m695b(this), false);
        return m399y;
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // p033j$.util.Collection
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        Object[] array;
        array = toArray((Object[]) intFunction.apply(0));
        return array;
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    public String toString() {
        return "DhtNodes(nodes=" + this.nodes + ')';
    }

    public /* synthetic */ DhtNodes(int i, java.util.Collection collection, SerializationConstructorMarker serializationConstructorMarker) {
        List emptyList;
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, DhtNodes$$serializer.INSTANCE.getDescriptor());
        }
        if ((i & 1) != 0) {
            this.nodes = collection;
            return;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.nodes = emptyList;
    }

    public DhtNodes(java.util.Collection<DhtNode> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        this.nodes = nodes;
    }

    public static final /* synthetic */ void write$Self(DhtNodes dhtNodes, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        List emptyList;
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        boolean z = true;
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0)) {
            java.util.Collection<DhtNode> collection = dhtNodes.nodes;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            if (Intrinsics.areEqual(collection, emptyList)) {
                z = false;
            }
        }
        if (z) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], dhtNodes.nodes);
        }
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof DhtNode) {
            return contains((DhtNode) obj);
        }
        return false;
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    public /* synthetic */ DhtNodes(java.util.Collection collection, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : collection);
    }

    public final java.util.Collection<DhtNode> getNodes() {
        return this.nodes;
    }

    /* compiled from: DhtNodes.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<DhtNodes> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("dht.nodes nodes:(vector dht.node) = dht.Nodes", null, 2, null);
        }

        public final KSerializer<DhtNodes> serializer() {
            return DhtNodes$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, DhtNodes value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            java.util.Collection<DhtNode> nodes = value.getNodes();
            writer.writeInt(nodes.size());
            for (DhtNode dhtNode : nodes) {
                DhtNode.Companion.encode(writer, (TlWriter) dhtNode);
            }
        }

        @Override // org.ton.p045tl.TlDecoder
        public DhtNodes decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new DhtNodes(reader.readVector(new Function1<TlReader, DhtNode>() { // from class: org.ton.api.dht.DhtNodes$Companion$decode$nodes$1
                @Override // kotlin.jvm.functions.Function1
                public final DhtNode invoke(TlReader readVector) {
                    Intrinsics.checkNotNullParameter(readVector, "$this$readVector");
                    return DhtNode.Companion.decode(readVector);
                }
            }));
        }
    }
}
