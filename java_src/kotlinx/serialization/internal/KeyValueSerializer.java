package kotlinx.serialization.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
/* compiled from: Tuples.kt */
/* loaded from: classes4.dex */
public abstract class KeyValueSerializer<K, V, R> implements KSerializer<R> {
    private final KSerializer<K> keySerializer;
    private final KSerializer<V> valueSerializer;

    public /* synthetic */ KeyValueSerializer(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer, kSerializer2);
    }

    protected abstract K getKey(R r);

    protected abstract V getValue(R r);

    protected abstract R toResult(K k, V v);

    private KeyValueSerializer(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        this.keySerializer = kSerializer;
        this.valueSerializer = kSerializer2;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, R r) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        CompositeEncoder beginStructure = encoder.beginStructure(getDescriptor());
        beginStructure.encodeSerializableElement(getDescriptor(), 0, this.keySerializer, getKey(r));
        beginStructure.encodeSerializableElement(getDescriptor(), 1, this.valueSerializer, getValue(r));
        beginStructure.endStructure(getDescriptor());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.DeserializationStrategy
    public R deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        CompositeDecoder beginStructure = decoder.beginStructure(getDescriptor());
        if (!beginStructure.decodeSequentially()) {
            obj = TuplesKt.NULL;
            obj2 = TuplesKt.NULL;
            Object obj5 = obj2;
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex == -1) {
                    beginStructure.endStructure(getDescriptor());
                    obj3 = TuplesKt.NULL;
                    if (obj != obj3) {
                        obj4 = TuplesKt.NULL;
                        if (obj5 == obj4) {
                            throw new SerializationException("Element 'value' is missing");
                        }
                        return (R) toResult(obj, obj5);
                    }
                    throw new SerializationException("Element 'key' is missing");
                } else if (decodeElementIndex == 0) {
                    obj = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(beginStructure, getDescriptor(), 0, this.keySerializer, null, 8, null);
                } else if (decodeElementIndex == 1) {
                    obj5 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(beginStructure, getDescriptor(), 1, this.valueSerializer, null, 8, null);
                } else {
                    throw new SerializationException("Invalid index: " + decodeElementIndex);
                }
            }
        } else {
            return (R) toResult(CompositeDecoder.DefaultImpls.decodeSerializableElement$default(beginStructure, getDescriptor(), 0, this.keySerializer, null, 8, null), CompositeDecoder.DefaultImpls.decodeSerializableElement$default(beginStructure, getDescriptor(), 1, this.valueSerializer, null, 8, null));
        }
    }
}
