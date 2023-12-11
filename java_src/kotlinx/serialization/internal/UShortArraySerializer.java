package kotlinx.serialization.internal;

import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
/* compiled from: PrimitiveArraysSerializers.kt */
/* loaded from: classes4.dex */
public final class UShortArraySerializer extends PrimitiveArraySerializer<UShort, UShortArray, UShortArrayBuilder> {
    public static final UShortArraySerializer INSTANCE = new UShortArraySerializer();

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return m2158collectionSizerL5Bavg(((UShortArray) obj).m2037unboximpl());
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ UShortArray empty() {
        return UShortArray.m2023boximpl(m2159emptyamswpOA());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return m2160toBuilderrL5Bavg(((UShortArray) obj).m2037unboximpl());
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ void writeContent(CompositeEncoder compositeEncoder, UShortArray uShortArray, int i) {
        m2161writeContenteny0XGE(compositeEncoder, uShortArray.m2037unboximpl(), i);
    }

    private UShortArraySerializer() {
        super(BuiltinSerializersKt.serializer(UShort.Companion));
    }

    /* renamed from: collectionSize-rL5Bavg  reason: not valid java name */
    protected int m2158collectionSizerL5Bavg(short[] collectionSize) {
        Intrinsics.checkNotNullParameter(collectionSize, "$this$collectionSize");
        return UShortArray.m2030getSizeimpl(collectionSize);
    }

    /* renamed from: toBuilder-rL5Bavg  reason: not valid java name */
    protected UShortArrayBuilder m2160toBuilderrL5Bavg(short[] toBuilder) {
        Intrinsics.checkNotNullParameter(toBuilder, "$this$toBuilder");
        return new UShortArrayBuilder(toBuilder, null);
    }

    /* renamed from: empty-amswpOA  reason: not valid java name */
    protected short[] m2159emptyamswpOA() {
        return UShortArray.m2024constructorimpl(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder decoder, int i, UShortArrayBuilder builder, boolean z) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.m2156appendxj2QHRw$kotlinx_serialization_core(UShort.m2018constructorimpl(decoder.decodeInlineElement(getDescriptor(), i).decodeShort()));
    }

    /* renamed from: writeContent-eny0XGE  reason: not valid java name */
    protected void m2161writeContenteny0XGE(CompositeEncoder encoder, short[] content, int i) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i2 = 0; i2 < i; i2++) {
            encoder.encodeInlineElement(getDescriptor(), i2).encodeShort(UShortArray.m2029getMh2AYeg(content, i2));
        }
    }
}
