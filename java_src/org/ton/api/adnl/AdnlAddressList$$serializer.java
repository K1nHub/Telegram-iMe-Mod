package org.ton.api.adnl;

import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
/* compiled from: AdnlAddressList.kt */
/* loaded from: classes6.dex */
public final class AdnlAddressList$$serializer implements GeneratedSerializer<AdnlAddressList> {
    public static final AdnlAddressList$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        AdnlAddressList$$serializer adnlAddressList$$serializer = new AdnlAddressList$$serializer();
        INSTANCE = adnlAddressList$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("adnl.addressList", adnlAddressList$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("addrs", true);
        pluginGeneratedSerialDescriptor.addElement("version", true);
        pluginGeneratedSerialDescriptor.addElement("reinit_date", true);
        pluginGeneratedSerialDescriptor.addElement("priority", true);
        pluginGeneratedSerialDescriptor.addElement("expire_at", true);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7690x7048dd0e("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private AdnlAddressList$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = AdnlAddressList.$childSerializers;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{kSerializerArr[0], intSerializer, intSerializer, intSerializer, intSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public AdnlAddressList deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Object obj;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = AdnlAddressList.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            obj = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 1);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 2);
            i2 = beginStructure.decodeIntElement(descriptor2, 3);
            i3 = beginStructure.decodeIntElement(descriptor2, 4);
            i5 = 31;
            i4 = decodeIntElement2;
            i = decodeIntElement;
        } else {
            boolean z = true;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            Object obj2 = null;
            int i10 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj2 = beginStructure.decodeSerializableElement(descriptor2, 0, kSerializerArr[0], obj2);
                    i9 |= 1;
                } else if (decodeElementIndex == 1) {
                    i6 = beginStructure.decodeIntElement(descriptor2, 1);
                    i9 |= 2;
                } else if (decodeElementIndex == 2) {
                    i8 = beginStructure.decodeIntElement(descriptor2, 2);
                    i9 |= 4;
                } else if (decodeElementIndex == 3) {
                    i10 = beginStructure.decodeIntElement(descriptor2, 3);
                    i9 |= 8;
                } else if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    i7 = beginStructure.decodeIntElement(descriptor2, 4);
                    i9 |= 16;
                }
            }
            i = i6;
            i2 = i10;
            i3 = i7;
            i4 = i8;
            i5 = i9;
            obj = obj2;
        }
        beginStructure.endStructure(descriptor2);
        return new AdnlAddressList(i5, (Collection) obj, i, i4, i2, i3, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, AdnlAddressList value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        AdnlAddressList.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
