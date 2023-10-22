package kotlinx.serialization.internal;

import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
/* compiled from: PrimitiveArraysSerializers.kt */
/* loaded from: classes4.dex */
public final class ULongArraySerializer extends PrimitiveArraySerializer<ULong, ULongArray, ULongArrayBuilder> {
    public static final ULongArraySerializer INSTANCE = new ULongArraySerializer();

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return m2143collectionSizeQwZRm1k(((ULongArray) obj).m2008unboximpl());
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ ULongArray empty() {
        return ULongArray.m1994boximpl(m2144emptyY2RjT0g());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return m2145toBuilderQwZRm1k(((ULongArray) obj).m2008unboximpl());
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ void writeContent(CompositeEncoder compositeEncoder, ULongArray uLongArray, int i) {
        m2146writeContent0q3Fkuo(compositeEncoder, uLongArray.m2008unboximpl(), i);
    }

    private ULongArraySerializer() {
        super(BuiltinSerializersKt.serializer(ULong.Companion));
    }

    /* renamed from: collectionSize-QwZRm1k  reason: not valid java name */
    protected int m2143collectionSizeQwZRm1k(long[] collectionSize) {
        Intrinsics.checkNotNullParameter(collectionSize, "$this$collectionSize");
        return ULongArray.m2001getSizeimpl(collectionSize);
    }

    /* renamed from: toBuilder-QwZRm1k  reason: not valid java name */
    protected ULongArrayBuilder m2145toBuilderQwZRm1k(long[] toBuilder) {
        Intrinsics.checkNotNullParameter(toBuilder, "$this$toBuilder");
        return new ULongArrayBuilder(toBuilder, null);
    }

    /* renamed from: empty-Y2RjT0g  reason: not valid java name */
    protected long[] m2144emptyY2RjT0g() {
        return ULongArray.m1995constructorimpl(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder decoder, int i, ULongArrayBuilder builder, boolean z) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.m2141appendVKZWuLQ$kotlinx_serialization_core(ULong.m1989constructorimpl(decoder.decodeInlineElement(getDescriptor(), i).decodeLong()));
    }

    /* renamed from: writeContent-0q3Fkuo  reason: not valid java name */
    protected void m2146writeContent0q3Fkuo(CompositeEncoder encoder, long[] content, int i) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i2 = 0; i2 < i; i2++) {
            encoder.encodeInlineElement(getDescriptor(), i2).encodeLong(ULongArray.m2000getsVKNKU(content, i2));
        }
    }
}
