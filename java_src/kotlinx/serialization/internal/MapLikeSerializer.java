package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
/* compiled from: CollectionSerializers.kt */
/* loaded from: classes4.dex */
public abstract class MapLikeSerializer<Key, Value, Collection, Builder extends Map<Key, Value>> extends AbstractCollectionSerializer<Map.Entry<? extends Key, ? extends Value>, Collection, Builder> {
    private final KSerializer<Key> keySerializer;
    private final KSerializer<Value> valueSerializer;

    public /* synthetic */ MapLikeSerializer(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer, kSerializer2);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public abstract SerialDescriptor getDescriptor();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ void readAll(CompositeDecoder compositeDecoder, Object obj, int i, int i2) {
        readAll(compositeDecoder, (CompositeDecoder) ((Map) obj), i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ void readElement(CompositeDecoder compositeDecoder, int i, Object obj, boolean z) {
        readElement(compositeDecoder, i, (int) ((Map) obj), z);
    }

    public final KSerializer<Key> getKeySerializer() {
        return this.keySerializer;
    }

    public final KSerializer<Value> getValueSerializer() {
        return this.valueSerializer;
    }

    private MapLikeSerializer(KSerializer<Key> kSerializer, KSerializer<Value> kSerializer2) {
        super(null);
        this.keySerializer = kSerializer;
        this.valueSerializer = kSerializer2;
    }

    protected final void readAll(CompositeDecoder decoder, Builder builder, int i, int i2) {
        IntRange until;
        IntProgression step;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (!(i2 >= 0)) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL".toString());
        }
        until = RangesKt___RangesKt.until(0, i2 * 2);
        step = RangesKt___RangesKt.step(until, 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 <= 0 || first > last) && (step2 >= 0 || last > first)) {
            return;
        }
        while (true) {
            readElement(decoder, i + first, (int) builder, false);
            if (first == last) {
                return;
            }
            first += step2;
        }
    }

    protected final void readElement(CompositeDecoder decoder, int i, Builder builder, boolean z) {
        int i2;
        Object decodeSerializableElement$default;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        Object decodeSerializableElement$default2 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(decoder, getDescriptor(), i, this.keySerializer, null, 8, null);
        if (z) {
            i2 = decoder.decodeElementIndex(getDescriptor());
            if (!(i2 == i + 1)) {
                throw new IllegalArgumentException(("Value must follow key in a map, index for key: " + i + ", returned index for value: " + i2).toString());
            }
        } else {
            i2 = i + 1;
        }
        int i3 = i2;
        if (builder.containsKey(decodeSerializableElement$default2) && !(this.valueSerializer.getDescriptor().getKind() instanceof PrimitiveKind)) {
            decodeSerializableElement$default = decoder.decodeSerializableElement(getDescriptor(), i3, this.valueSerializer, MapsKt.getValue(builder, decodeSerializableElement$default2));
        } else {
            decodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(decoder, getDescriptor(), i3, this.valueSerializer, null, 8, null);
        }
        builder.put(decodeSerializableElement$default2, decodeSerializableElement$default);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Collection collection) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        int collectionSize = collectionSize(collection);
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder beginCollection = encoder.beginCollection(descriptor, collectionSize);
        Iterator<Map.Entry<? extends Key, ? extends Value>> collectionIterator = collectionIterator(collection);
        int i = 0;
        while (collectionIterator.hasNext()) {
            Map.Entry<? extends Key, ? extends Value> next = collectionIterator.next();
            Key key = next.getKey();
            Value value = next.getValue();
            int i2 = i + 1;
            beginCollection.encodeSerializableElement(getDescriptor(), i, getKeySerializer(), key);
            beginCollection.encodeSerializableElement(getDescriptor(), i2, getValueSerializer(), value);
            i = i2 + 1;
        }
        beginCollection.endStructure(descriptor);
    }
}
