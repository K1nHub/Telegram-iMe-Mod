package org.ton.block;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.annotation.Annotation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.InlineClassDescriptor;
import org.ton.hashmap.HashmapAugE;
/* compiled from: OldMcBlocksInfo.kt */
/* loaded from: classes6.dex */
public final class OldMcBlocksInfo$$serializer implements GeneratedSerializer<OldMcBlocksInfo> {
    public static final OldMcBlocksInfo$$serializer INSTANCE;
    private static final /* synthetic */ InlineClassDescriptor descriptor;

    static {
        OldMcBlocksInfo$$serializer oldMcBlocksInfo$$serializer = new OldMcBlocksInfo$$serializer();
        INSTANCE = oldMcBlocksInfo$$serializer;
        InlineClassDescriptor inlineClassDescriptor = new InlineClassDescriptor("org.ton.block.OldMcBlocksInfo", oldMcBlocksInfo$$serializer);
        inlineClassDescriptor.addElement(AppMeasurementSdk.ConditionalUserProperty.VALUE, false);
        descriptor = inlineClassDescriptor;
    }

    private OldMcBlocksInfo$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = OldMcBlocksInfo.$childSerializers;
        return new KSerializer[]{kSerializerArr[0]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return OldMcBlocksInfo.m5113boximpl(m5121deserializea38pvyo(decoder));
    }

    /* renamed from: deserialize-a38pvyo  reason: not valid java name */
    public HashmapAugE<KeyExtBlkRef, KeyMaxLt> m5121deserializea38pvyo(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return OldMcBlocksInfo.m5114constructorimpl((HashmapAugE) decoder.decodeInline(getDescriptor()).decodeSerializableValue(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(HashmapAugE.class), new Annotation[]{new C7587xa42a768e("@type")})));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m5122serializet0Hynxs(encoder, ((OldMcBlocksInfo) obj).m5120unboximpl());
    }

    /* renamed from: serialize-t0Hynxs  reason: not valid java name */
    public void m5122serializet0Hynxs(Encoder encoder, HashmapAugE<KeyExtBlkRef, KeyMaxLt> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        Encoder encodeInline = encoder.encodeInline(getDescriptor());
        if (encodeInline == null) {
            return;
        }
        encodeInline.encodeSerializableValue(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(HashmapAugE.class), new Annotation[]{new C7587xa42a768e("@type")}), value);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
