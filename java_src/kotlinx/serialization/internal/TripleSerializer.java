package kotlinx.serialization.internal;

import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
/* compiled from: Tuples.kt */
/* loaded from: classes4.dex */
public final class TripleSerializer<A, B, C> implements KSerializer<Triple<? extends A, ? extends B, ? extends C>> {
    private final KSerializer<A> aSerializer;
    private final KSerializer<B> bSerializer;
    private final KSerializer<C> cSerializer;
    private final SerialDescriptor descriptor;

    public TripleSerializer(KSerializer<A> aSerializer, KSerializer<B> bSerializer, KSerializer<C> cSerializer) {
        Intrinsics.checkNotNullParameter(aSerializer, "aSerializer");
        Intrinsics.checkNotNullParameter(bSerializer, "bSerializer");
        Intrinsics.checkNotNullParameter(cSerializer, "cSerializer");
        this.aSerializer = aSerializer;
        this.bSerializer = bSerializer;
        this.cSerializer = cSerializer;
        this.descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("kotlin.Triple", new SerialDescriptor[0], new Function1<ClassSerialDescriptorBuilder, Unit>(this) { // from class: kotlinx.serialization.internal.TripleSerializer$descriptor$1
            final /* synthetic */ TripleSerializer<A, B, C> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
                invoke2(classSerialDescriptorBuilder);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ClassSerialDescriptorBuilder buildClassSerialDescriptor) {
                KSerializer kSerializer;
                KSerializer kSerializer2;
                KSerializer kSerializer3;
                Intrinsics.checkNotNullParameter(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
                kSerializer = ((TripleSerializer) this.this$0).aSerializer;
                ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "first", kSerializer.getDescriptor(), null, false, 12, null);
                kSerializer2 = ((TripleSerializer) this.this$0).bSerializer;
                ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "second", kSerializer2.getDescriptor(), null, false, 12, null);
                kSerializer3 = ((TripleSerializer) this.this$0).cSerializer;
                ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "third", kSerializer3.getDescriptor(), null, false, 12, null);
            }
        });
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (Triple) ((Triple) obj));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    public void serialize(Encoder encoder, Triple<? extends A, ? extends B, ? extends C> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        CompositeEncoder beginStructure = encoder.beginStructure(getDescriptor());
        beginStructure.encodeSerializableElement(getDescriptor(), 0, this.aSerializer, value.getFirst());
        beginStructure.encodeSerializableElement(getDescriptor(), 1, this.bSerializer, value.getSecond());
        beginStructure.encodeSerializableElement(getDescriptor(), 2, this.cSerializer, value.getThird());
        beginStructure.endStructure(getDescriptor());
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Triple<A, B, C> deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        CompositeDecoder beginStructure = decoder.beginStructure(getDescriptor());
        if (beginStructure.decodeSequentially()) {
            return decodeSequentially(beginStructure);
        }
        return decodeStructure(beginStructure);
    }

    private final Triple<A, B, C> decodeSequentially(CompositeDecoder compositeDecoder) {
        Object decodeSerializableElement$default = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 0, this.aSerializer, null, 8, null);
        Object decodeSerializableElement$default2 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 1, this.bSerializer, null, 8, null);
        Object decodeSerializableElement$default3 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 2, this.cSerializer, null, 8, null);
        compositeDecoder.endStructure(getDescriptor());
        return new Triple<>(decodeSerializableElement$default, decodeSerializableElement$default2, decodeSerializableElement$default3);
    }

    private final Triple<A, B, C> decodeStructure(CompositeDecoder compositeDecoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        obj = TuplesKt.NULL;
        obj2 = TuplesKt.NULL;
        obj3 = TuplesKt.NULL;
        while (true) {
            int decodeElementIndex = compositeDecoder.decodeElementIndex(getDescriptor());
            if (decodeElementIndex == -1) {
                compositeDecoder.endStructure(getDescriptor());
                obj4 = TuplesKt.NULL;
                if (obj != obj4) {
                    obj5 = TuplesKt.NULL;
                    if (obj2 != obj5) {
                        obj6 = TuplesKt.NULL;
                        if (obj3 == obj6) {
                            throw new SerializationException("Element 'third' is missing");
                        }
                        return new Triple<>(obj, obj2, obj3);
                    }
                    throw new SerializationException("Element 'second' is missing");
                }
                throw new SerializationException("Element 'first' is missing");
            } else if (decodeElementIndex == 0) {
                obj = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 0, this.aSerializer, null, 8, null);
            } else if (decodeElementIndex == 1) {
                obj2 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 1, this.bSerializer, null, 8, null);
            } else if (decodeElementIndex == 2) {
                obj3 = CompositeDecoder.DefaultImpls.decodeSerializableElement$default(compositeDecoder, getDescriptor(), 2, this.cSerializer, null, 8, null);
            } else {
                throw new SerializationException("Unexpected index " + decodeElementIndex);
            }
        }
    }
}
