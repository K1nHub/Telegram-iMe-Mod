package kotlinx.serialization.internal;

import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
/* compiled from: PrimitiveArraysSerializers.kt */
/* loaded from: classes4.dex */
public final class UByteArraySerializer extends PrimitiveArraySerializer<UByte, UByteArray, UByteArrayBuilder> {
    public static final UByteArraySerializer INSTANCE = new UByteArraySerializer();

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return m2134collectionSizeGBYM_sE(((UByteArray) obj).m1971unboximpl());
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ UByteArray empty() {
        return UByteArray.m1957boximpl(m2135emptyTcUX1vc());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return m2136toBuilderGBYM_sE(((UByteArray) obj).m1971unboximpl());
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ void writeContent(CompositeEncoder compositeEncoder, UByteArray uByteArray, int i) {
        m2137writeContentCoi6ktg(compositeEncoder, uByteArray.m1971unboximpl(), i);
    }

    private UByteArraySerializer() {
        super(BuiltinSerializersKt.serializer(UByte.Companion));
    }

    /* renamed from: collectionSize-GBYM_sE  reason: not valid java name */
    protected int m2134collectionSizeGBYM_sE(byte[] collectionSize) {
        Intrinsics.checkNotNullParameter(collectionSize, "$this$collectionSize");
        return UByteArray.m1964getSizeimpl(collectionSize);
    }

    /* renamed from: toBuilder-GBYM_sE  reason: not valid java name */
    protected UByteArrayBuilder m2136toBuilderGBYM_sE(byte[] toBuilder) {
        Intrinsics.checkNotNullParameter(toBuilder, "$this$toBuilder");
        return new UByteArrayBuilder(toBuilder, null);
    }

    /* renamed from: empty-TcUX1vc  reason: not valid java name */
    protected byte[] m2135emptyTcUX1vc() {
        return UByteArray.m1958constructorimpl(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder decoder, int i, UByteArrayBuilder builder, boolean z) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.m2132append7apg3OU$kotlinx_serialization_core(UByte.m1952constructorimpl(decoder.decodeInlineElement(getDescriptor(), i).decodeByte()));
    }

    /* renamed from: writeContent-Coi6ktg  reason: not valid java name */
    protected void m2137writeContentCoi6ktg(CompositeEncoder encoder, byte[] content, int i) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i2 = 0; i2 < i; i2++) {
            encoder.encodeInlineElement(getDescriptor(), i2).encodeByte(UByteArray.m1963getw2LRezQ(content, i2));
        }
    }
}
