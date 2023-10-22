package kotlinx.serialization.internal;

import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
/* compiled from: Tuples.kt */
/* loaded from: classes4.dex */
public final class PairSerializer<K, V> extends KeyValueSerializer<K, V, Pair<? extends K, ? extends V>> {
    private final SerialDescriptor descriptor;

    @Override // kotlinx.serialization.internal.KeyValueSerializer
    public /* bridge */ /* synthetic */ Object getKey(Object obj) {
        return getKey((Pair) ((Pair) obj));
    }

    @Override // kotlinx.serialization.internal.KeyValueSerializer
    public /* bridge */ /* synthetic */ Object getValue(Object obj) {
        return getValue((Pair) ((Pair) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.KeyValueSerializer
    public /* bridge */ /* synthetic */ Object toResult(Object obj, Object obj2) {
        return toResult((PairSerializer<K, V>) obj, obj2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PairSerializer(final KSerializer<K> keySerializer, final KSerializer<V> valueSerializer) {
        super(keySerializer, valueSerializer, null);
        Intrinsics.checkNotNullParameter(keySerializer, "keySerializer");
        Intrinsics.checkNotNullParameter(valueSerializer, "valueSerializer");
        this.descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("kotlin.Pair", new SerialDescriptor[0], new Function1<ClassSerialDescriptorBuilder, Unit>() { // from class: kotlinx.serialization.internal.PairSerializer$descriptor$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
                invoke2(classSerialDescriptorBuilder);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ClassSerialDescriptorBuilder buildClassSerialDescriptor) {
                Intrinsics.checkNotNullParameter(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
                ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "first", keySerializer.getDescriptor(), null, false, 12, null);
                ClassSerialDescriptorBuilder.element$default(buildClassSerialDescriptor, "second", valueSerializer.getDescriptor(), null, false, 12, null);
            }
        });
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    protected K getKey(Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkNotNullParameter(pair, "<this>");
        return pair.getFirst();
    }

    protected V getValue(Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkNotNullParameter(pair, "<this>");
        return pair.getSecond();
    }

    @Override // kotlinx.serialization.internal.KeyValueSerializer
    protected Pair<K, V> toResult(K k, V v) {
        return kotlin.TuplesKt.m144to(k, v);
    }
}
