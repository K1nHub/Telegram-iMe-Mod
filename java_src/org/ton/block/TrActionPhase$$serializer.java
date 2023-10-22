package org.ton.block;

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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
/* compiled from: TrActionPhase.kt */
/* loaded from: classes6.dex */
public final class TrActionPhase$$serializer implements GeneratedSerializer<TrActionPhase> {
    public static final TrActionPhase$$serializer INSTANCE;
    private static final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;

    static {
        TrActionPhase$$serializer trActionPhase$$serializer = new TrActionPhase$$serializer();
        INSTANCE = trActionPhase$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("tr_phase_action", trActionPhase$$serializer, 14);
        pluginGeneratedSerialDescriptor.addElement("success", false);
        pluginGeneratedSerialDescriptor.addElement("valid", false);
        pluginGeneratedSerialDescriptor.addElement("no_funds", false);
        pluginGeneratedSerialDescriptor.addElement("status_change", false);
        pluginGeneratedSerialDescriptor.addElement("total_fwd_fees", false);
        pluginGeneratedSerialDescriptor.addElement("total_action_fees", false);
        pluginGeneratedSerialDescriptor.addElement("result_code", false);
        pluginGeneratedSerialDescriptor.addElement("result_arg", false);
        pluginGeneratedSerialDescriptor.addElement("tot_actions", false);
        pluginGeneratedSerialDescriptor.addElement("spec_actions", false);
        pluginGeneratedSerialDescriptor.addElement("skipped_actions", false);
        pluginGeneratedSerialDescriptor.addElement("msgs_created", false);
        pluginGeneratedSerialDescriptor.addElement("action_list_hash", false);
        pluginGeneratedSerialDescriptor.addElement("tot_msg_size", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private TrActionPhase$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        KSerializer<?>[] kSerializerArr;
        kSerializerArr = TrActionPhase.$childSerializers;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{booleanSerializer, booleanSerializer, booleanSerializer, kSerializerArr[3], kSerializerArr[4], kSerializerArr[5], intSerializer, kSerializerArr[7], intSerializer, intSerializer, intSerializer, intSerializer, FiftHexBitStringSerializer.INSTANCE, StorageUsedShort$$serializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public TrActionPhase deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        int i;
        int i2;
        Object obj;
        Object obj2;
        Object obj3;
        boolean z;
        int i3;
        Object obj4;
        boolean z2;
        int i4;
        int i5;
        boolean z3;
        int i6;
        Object obj5;
        Object obj6;
        char c;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor2);
        kSerializerArr = TrActionPhase.$childSerializers;
        int i7 = 10;
        if (beginStructure.decodeSequentially()) {
            boolean decodeBooleanElement = beginStructure.decodeBooleanElement(descriptor2, 0);
            boolean decodeBooleanElement2 = beginStructure.decodeBooleanElement(descriptor2, 1);
            boolean decodeBooleanElement3 = beginStructure.decodeBooleanElement(descriptor2, 2);
            obj5 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], null);
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], null);
            Object decodeSerializableElement2 = beginStructure.decodeSerializableElement(descriptor2, 5, kSerializerArr[5], null);
            int decodeIntElement = beginStructure.decodeIntElement(descriptor2, 6);
            Object decodeSerializableElement3 = beginStructure.decodeSerializableElement(descriptor2, 7, kSerializerArr[7], null);
            int decodeIntElement2 = beginStructure.decodeIntElement(descriptor2, 8);
            int decodeIntElement3 = beginStructure.decodeIntElement(descriptor2, 9);
            int decodeIntElement4 = beginStructure.decodeIntElement(descriptor2, 10);
            int decodeIntElement5 = beginStructure.decodeIntElement(descriptor2, 11);
            i3 = 16383;
            obj3 = decodeSerializableElement;
            i = decodeIntElement;
            i2 = decodeIntElement2;
            z3 = decodeBooleanElement3;
            i6 = decodeIntElement5;
            obj = beginStructure.decodeSerializableElement(descriptor2, 12, FiftHexBitStringSerializer.INSTANCE, null);
            obj4 = decodeSerializableElement3;
            i4 = decodeIntElement4;
            z = decodeBooleanElement;
            obj6 = decodeSerializableElement2;
            obj2 = beginStructure.decodeSerializableElement(descriptor2, 13, StorageUsedShort$$serializer.INSTANCE, null);
            i5 = decodeIntElement3;
            z2 = decodeBooleanElement2;
        } else {
            int i8 = 13;
            int i9 = 0;
            boolean z4 = false;
            int i10 = 0;
            int i11 = 0;
            i = 0;
            i2 = 0;
            boolean z5 = false;
            int i12 = 0;
            obj = null;
            Object obj7 = null;
            obj2 = null;
            Object obj8 = null;
            boolean z6 = true;
            Object obj9 = null;
            obj3 = null;
            boolean z7 = false;
            while (z6) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor2);
                switch (decodeElementIndex) {
                    case -1:
                        z6 = false;
                        i8 = 13;
                    case 0:
                        i9 |= 1;
                        z7 = beginStructure.decodeBooleanElement(descriptor2, 0);
                        i8 = 13;
                        i7 = 10;
                    case 1:
                        z4 = beginStructure.decodeBooleanElement(descriptor2, 1);
                        i9 |= 2;
                        i8 = 13;
                        i7 = 10;
                    case 2:
                        z5 = beginStructure.decodeBooleanElement(descriptor2, 2);
                        i9 |= 4;
                        i8 = 13;
                        i7 = 10;
                    case 3:
                        obj9 = beginStructure.decodeSerializableElement(descriptor2, 3, kSerializerArr[3], obj9);
                        i9 |= 8;
                        i8 = 13;
                        i7 = 10;
                    case 4:
                        obj3 = beginStructure.decodeSerializableElement(descriptor2, 4, kSerializerArr[4], obj3);
                        i9 |= 16;
                        i8 = 13;
                        i7 = 10;
                    case 5:
                        obj7 = beginStructure.decodeSerializableElement(descriptor2, 5, kSerializerArr[5], obj7);
                        i9 |= 32;
                        i8 = 13;
                        i7 = 10;
                    case 6:
                        c = 7;
                        i = beginStructure.decodeIntElement(descriptor2, 6);
                        i9 |= 64;
                        i8 = 13;
                        i7 = 10;
                    case 7:
                        c = 7;
                        obj8 = beginStructure.decodeSerializableElement(descriptor2, 7, kSerializerArr[7], obj8);
                        i9 |= 128;
                        i8 = 13;
                        i7 = 10;
                    case 8:
                        i2 = beginStructure.decodeIntElement(descriptor2, 8);
                        i9 |= 256;
                        i8 = 13;
                    case 9:
                        i11 = beginStructure.decodeIntElement(descriptor2, 9);
                        i9 |= 512;
                        i8 = 13;
                    case 10:
                        i10 = beginStructure.decodeIntElement(descriptor2, i7);
                        i9 |= 1024;
                        i8 = 13;
                    case 11:
                        i12 = beginStructure.decodeIntElement(descriptor2, 11);
                        i9 |= 2048;
                        i8 = 13;
                    case 12:
                        obj = beginStructure.decodeSerializableElement(descriptor2, 12, FiftHexBitStringSerializer.INSTANCE, obj);
                        i9 |= 4096;
                        i8 = 13;
                    case 13:
                        obj2 = beginStructure.decodeSerializableElement(descriptor2, i8, StorageUsedShort$$serializer.INSTANCE, obj2);
                        i9 |= 8192;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            z = z7;
            i3 = i9;
            obj4 = obj8;
            z2 = z4;
            i4 = i10;
            i5 = i11;
            z3 = z5;
            i6 = i12;
            obj5 = obj9;
            obj6 = obj7;
        }
        beginStructure.endStructure(descriptor2);
        return new TrActionPhase(i3, z, z2, z3, (AccStatusChange) obj5, (Maybe) obj3, (Maybe) obj6, i, (Maybe) obj4, i2, i5, i4, i6, (BitString) obj, (StorageUsedShort) obj2, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, TrActionPhase value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor2);
        TrActionPhase.write$Self(value, beginStructure, descriptor2);
        beginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
