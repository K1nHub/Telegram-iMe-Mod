package org.ton.block;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.annotation.Annotation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.InlineClassDescriptor;
import org.ton.hashmap.HashMapE;
import org.ton.hashmap.HmeEmpty;
import org.ton.hashmap.HmeRoot;
import org.ton.tlb.CellRef;
/* compiled from: ShardHashes.kt */
/* loaded from: classes6.dex */
public final class ShardHashes$$serializer implements GeneratedSerializer<ShardHashes> {
    public static final ShardHashes$$serializer INSTANCE;
    private static final /* synthetic */ InlineClassDescriptor descriptor;

    static {
        ShardHashes$$serializer shardHashes$$serializer = new ShardHashes$$serializer();
        INSTANCE = shardHashes$$serializer;
        InlineClassDescriptor inlineClassDescriptor = new InlineClassDescriptor("org.ton.block.ShardHashes", shardHashes$$serializer);
        inlineClassDescriptor.addElement(AppMeasurementSdk.ConditionalUserProperty.VALUE, false);
        descriptor = inlineClassDescriptor;
    }

    private ShardHashes$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = ShardHashes.$childSerializers;
        return new KSerializer[]{kSerializerArr[0]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return ShardHashes.m5347boximpl(m5355deserializenCYawEE(decoder));
    }

    /* renamed from: deserialize-nCYawEE  reason: not valid java name */
    public HashMapE<CellRef<? extends BinTree<ShardDescr>>> m5355deserializenCYawEE(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return ShardHashes.m5348constructorimpl((HashMapE) decoder.decodeInline(getDescriptor()).decodeSerializableValue(new SealedClassSerializer("org.ton.hashmap.HashMapE", Reflection.getOrCreateKotlinClass(HashMapE.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmeEmpty.class), Reflection.getOrCreateKotlinClass(HmeRoot.class)}, new KSerializer[]{HmeEmpty.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), HmeRoot.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7786xdec07ac5("@type")})));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m5356serializeZFAh1YI(encoder, ((ShardHashes) obj).m5354unboximpl());
    }

    /* renamed from: serialize-ZFAh1YI  reason: not valid java name */
    public void m5356serializeZFAh1YI(Encoder encoder, HashMapE<CellRef<? extends BinTree<ShardDescr>>> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        Encoder encodeInline = encoder.encodeInline(getDescriptor());
        if (encodeInline == null) {
            return;
        }
        encodeInline.encodeSerializableValue(new SealedClassSerializer("org.ton.hashmap.HashMapE", Reflection.getOrCreateKotlinClass(HashMapE.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmeEmpty.class), Reflection.getOrCreateKotlinClass(HmeRoot.class)}, new KSerializer[]{HmeEmpty.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), HmeRoot.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7786xdec07ac5("@type")}), value);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
