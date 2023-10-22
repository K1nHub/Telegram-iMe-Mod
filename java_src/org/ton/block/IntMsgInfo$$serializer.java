package org.ton.block;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
/* compiled from: IntMsgInfo.kt */
/* loaded from: classes6.dex */
public final class IntMsgInfo$$serializer implements GeneratedSerializer<IntMsgInfo> {
    public static final IntMsgInfo$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        IntMsgInfo$$serializer intMsgInfo$$serializer = new IntMsgInfo$$serializer();
        INSTANCE = intMsgInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("int_msg_info", intMsgInfo$$serializer, 10);
        pluginGeneratedSerialDescriptor.addElement("ihr_disabled", false);
        pluginGeneratedSerialDescriptor.addElement("bounce", false);
        pluginGeneratedSerialDescriptor.addElement("bounced", false);
        pluginGeneratedSerialDescriptor.addElement("src", false);
        pluginGeneratedSerialDescriptor.addElement("dest", false);
        pluginGeneratedSerialDescriptor.addElement(AppMeasurementSdk.ConditionalUserProperty.VALUE, false);
        pluginGeneratedSerialDescriptor.addElement("ihr_fee", false);
        pluginGeneratedSerialDescriptor.addElement("fwd_fee", false);
        pluginGeneratedSerialDescriptor.addElement("created_lt", false);
        pluginGeneratedSerialDescriptor.addElement("created_at", false);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7483x56daaf1f("@type"));
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private IntMsgInfo$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = IntMsgInfo.$childSerializers;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        Coins$$serializer coins$$serializer = Coins$$serializer.INSTANCE;
        return new KSerializer[]{booleanSerializer, booleanSerializer, booleanSerializer, kSerializerArr[3], kSerializerArr[4], CurrencyCollection$$serializer.INSTANCE, coins$$serializer, coins$$serializer, LongSerializer.INSTANCE, IntSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public IntMsgInfo deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        Object obj;
        Object obj2;
        Object obj3;
        long j;
        Object obj4;
        boolean z;
        Object obj5;
        int i;
        boolean z2;
        boolean z3;
        int i2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = IntMsgInfo.$childSerializers;
        int i3 = 9;
        int i4 = 7;
        if (beginStructure.decodeSequentially()) {
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 0);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 1);
            boolean decodeBooleanElement3 = beginStructure.decodeBooleanElement(descriptor2, 2);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], null);
            Object decodeSerializableElement2 = beginStructure.decodeSerializableElement(descriptor2, 5, CurrencyCollection$$serializer.INSTANCE, null);
            Coins$$serializer coins$$serializer = Coins$$serializer.INSTANCE;
            Object decodeSerializableElement3 = beginStructure.decodeSerializableElement(descriptor2, 6, coins$$serializer, null);
            Object decodeSerializableElement4 = beginStructure.decodeSerializableElement(descriptor2, 7, coins$$serializer, null);
            long decodeLongElement = beginStructure.decodeLongElement(descriptor2, 8);
            i2 = beginStructure.decodeIntElement(descriptor2, 9);
            i = 1023;
            obj4 = decodeSerializableElement;
            j = decodeLongElement;
            obj3 = decodeSerializableElement4;
            obj2 = decodeSerializableElement3;
            z3 = decodeBooleanElement2;
            z = decodeBooleanElement;
            obj = decodeSerializableElement2;
            z2 = decodeBooleanElement3;
        } else {
            boolean z4 = true;
            obj = null;
            obj2 = null;
            Object obj6 = null;
            obj3 = null;
            boolean z5 = false;
            boolean z6 = false;
            j = 0;
            int i5 = 0;
            boolean z7 = false;
            int i6 = 0;
            obj4 = null;
            while (z4) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z4 = false;
                        i3 = 9;
                        i4 = 7;
                        break;
                    case 0:
                        i5 |= 1;
                        z5 = beginStructure.decodeBooleanElement(descriptor2, 0);
                        i3 = 9;
                        i4 = 7;
                        break;
                    case 1:
                        z6 = beginStructure.decodeBooleanElement(descriptor2, 1);
                        i5 |= 2;
                        i3 = 9;
                        i4 = 7;
                        break;
                    case 2:
                        z7 = beginStructure.decodeBooleanElement(descriptor2, 2);
                        i5 |= 4;
                        i3 = 9;
                        i4 = 7;
                        break;
                    case 3:
                        obj4 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], obj4);
                        i5 |= 8;
                        i3 = 9;
                        i4 = 7;
                        break;
                    case 4:
                        obj6 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], obj6);
                        i5 |= 16;
                        i3 = 9;
                        break;
                    case 5:
                        obj = beginStructure.decodeSerializableElement(descriptor2, 5, CurrencyCollection$$serializer.INSTANCE, obj);
                        i5 |= 32;
                        i3 = 9;
                        continue;
                    case 6:
                        obj2 = beginStructure.decodeSerializableElement(descriptor2, 6, Coins$$serializer.INSTANCE, obj2);
                        i5 |= 64;
                        break;
                    case 7:
                        obj3 = beginStructure.decodeSerializableElement(descriptor2, i4, Coins$$serializer.INSTANCE, obj3);
                        i5 |= 128;
                        break;
                    case 8:
                        j = beginStructure.decodeLongElement(descriptor2, 8);
                        i5 |= 256;
                        break;
                    case 9:
                        i6 = beginStructure.decodeIntElement(descriptor2, i3);
                        i5 |= 512;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            z = z5;
            obj5 = obj6;
            i = i5;
            z2 = z7;
            z3 = z6;
            i2 = i6;
        }
        beginStructure.endStructure(descriptor2);
        return new IntMsgInfo(i, z, z3, z2, (MsgAddressInt) obj4, (MsgAddressInt) obj5, (CurrencyCollection) obj, (Coins) obj2, (Coins) obj3, j, i2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, IntMsgInfo value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        IntMsgInfo.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
