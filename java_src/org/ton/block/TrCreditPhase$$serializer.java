package org.ton.block;

import com.stripe.android.model.Card;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
/* compiled from: TrCreditPhase.kt */
/* loaded from: classes6.dex */
public final class TrCreditPhase$$serializer implements GeneratedSerializer<TrCreditPhase> {
    public static final TrCreditPhase$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TrCreditPhase$$serializer trCreditPhase$$serializer = new TrCreditPhase$$serializer();
        INSTANCE = trCreditPhase$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("tr_phase_credit", trCreditPhase$$serializer, 2);
        pluginGeneratedSerialDescriptor.addElement("due_fees_collected", false);
        pluginGeneratedSerialDescriptor.addElement(Card.FUNDING_CREDIT, false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TrCreditPhase$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = TrCreditPhase.$childSerializers;
        return new KSerializer[]{kSerializerArr[0], CurrencyCollection$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TrCreditPhase deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = TrCreditPhase.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 1, CurrencyCollection$$serializer.INSTANCE, null);
            i = 3;
        } else {
            Object obj3 = null;
            Object obj4 = null;
            boolean z = true;
            int i2 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj3 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj3);
                    i2 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj4 = beginStructure.decodeSerializableElement(descriptor2, 1, CurrencyCollection$$serializer.INSTANCE, obj4);
                    i2 |= 2;
                }
            }
            obj = obj3;
            obj2 = obj4;
            i = i2;
        }
        beginStructure.endStructure(descriptor2);
        return new TrCreditPhase(i, (Maybe) obj, (CurrencyCollection) obj2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TrCreditPhase value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TrCreditPhase.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
