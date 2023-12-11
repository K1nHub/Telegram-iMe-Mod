package org.ton.block;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.json.JsonClassDiscriminator;
/* compiled from: AccountActive.kt */
/* loaded from: classes6.dex */
public final class AccountActive$$serializer implements GeneratedSerializer<AccountActive> {
    public static final AccountActive$$serializer INSTANCE;
    private static final /* synthetic */ InlineClassDescriptor descriptor;

    static {
        AccountActive$$serializer accountActive$$serializer = new AccountActive$$serializer();
        INSTANCE = accountActive$$serializer;
        InlineClassDescriptor inlineClassDescriptor = new InlineClassDescriptor("account_active", accountActive$$serializer);
        inlineClassDescriptor.addElement(AppMeasurementSdk.ConditionalUserProperty.VALUE, false);
        inlineClassDescriptor.pushClassAnnotation(new JsonClassDiscriminator("@type") { // from class: org.ton.block.AccountActive$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
            private final /* synthetic */ String discriminator;

            {
                Intrinsics.checkNotNullParameter(discriminator, "discriminator");
                this.discriminator = discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final /* synthetic */ Class annotationType() {
                return JsonClassDiscriminator.class;
            }

            @Override // kotlinx.serialization.json.JsonClassDiscriminator
            public final /* synthetic */ String discriminator() {
                return this.discriminator;
            }

            @Override // java.lang.annotation.Annotation
            public final boolean equals(Object obj) {
                return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
            }

            @Override // java.lang.annotation.Annotation
            public final int hashCode() {
                return this.discriminator.hashCode() ^ 707790692;
            }

            @Override // java.lang.annotation.Annotation
            public final String toString() {
                return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
            }
        });
        descriptor = inlineClassDescriptor;
    }

    private AccountActive$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{StateInit$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return AccountActive.m5055boximpl(m5062deserializeP1cIiig(decoder));
    }

    /* renamed from: deserialize-P1cIiig  reason: not valid java name */
    public StateInit m5062deserializeP1cIiig(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return AccountActive.m5056constructorimpl((StateInit) decoder.decodeInline(getDescriptor()).decodeSerializableValue(StateInit$$serializer.INSTANCE));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m5063serializewKbCAR4(encoder, ((AccountActive) obj).m5061unboximpl());
    }

    /* renamed from: serialize-wKbCAR4  reason: not valid java name */
    public void m5063serializewKbCAR4(Encoder encoder, StateInit value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        Encoder encodeInline = encoder.encodeInline(getDescriptor());
        if (encodeInline == null) {
            return;
        }
        encodeInline.encodeSerializableValue(StateInit$$serializer.INSTANCE, value);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
