package org.ton.block;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.ton.block.Either;
/* compiled from: Either.kt */
/* loaded from: classes6.dex */
public final class Either$Right$$serializer<X, Y> implements GeneratedSerializer<Either.Right<X, Y>> {
    private final /* synthetic */ PluginGeneratedSerialDescriptor descriptor;
    private final /* synthetic */ KSerializer<?> typeSerial0;
    private final /* synthetic */ KSerializer<?> typeSerial1;

    private Either$Right$$serializer() {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor(TtmlNode.RIGHT, this, 3);
        pluginGeneratedSerialDescriptor.addElement(AppMeasurementSdk.ConditionalUserProperty.VALUE, false);
        pluginGeneratedSerialDescriptor.addElement("x", true);
        pluginGeneratedSerialDescriptor.addElement("y", true);
        pluginGeneratedSerialDescriptor.pushClassAnnotation(new C7549x9f9cbbcf("@type"));
        this.descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Either$Right$$serializer(KSerializer typeSerial0, KSerializer typeSerial1) {
        this();
        Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
        Intrinsics.checkNotNullParameter(typeSerial1, "typeSerial1");
        this.typeSerial0 = typeSerial0;
        this.typeSerial1 = typeSerial1;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{this.typeSerial1, BuiltinSerializersKt.getNullable(this.typeSerial0), BuiltinSerializersKt.getNullable(this.typeSerial1)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Either.Right<X, Y> deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        int i;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor descriptor = getDescriptor();
        CompositeDecoder beginStructure = decoder.beginStructure(descriptor);
        Object obj4 = null;
        if (beginStructure.decodeSequentially()) {
            Object decodeSerializableElement = beginStructure.decodeSerializableElement(descriptor, 0, this.typeSerial1, null);
            Object decodeNullableSerializableElement = beginStructure.decodeNullableSerializableElement(descriptor, 1, this.typeSerial0, null);
            obj2 = decodeSerializableElement;
            obj3 = beginStructure.decodeNullableSerializableElement(descriptor, 2, this.typeSerial1, null);
            i = 7;
            obj = decodeNullableSerializableElement;
        } else {
            Object obj5 = null;
            Object obj6 = null;
            int i2 = 0;
            boolean z = true;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(descriptor);
                if (decodeElementIndex == -1) {
                    z = false;
                } else if (decodeElementIndex == 0) {
                    obj4 = beginStructure.decodeSerializableElement(descriptor, 0, this.typeSerial1, obj4);
                    i2 |= 1;
                } else if (decodeElementIndex == 1) {
                    obj5 = beginStructure.decodeNullableSerializableElement(descriptor, 1, this.typeSerial0, obj5);
                    i2 |= 2;
                } else if (decodeElementIndex != 2) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    obj6 = beginStructure.decodeNullableSerializableElement(descriptor, 2, this.typeSerial1, obj6);
                    i2 |= 4;
                }
            }
            obj = obj5;
            obj2 = obj4;
            obj3 = obj6;
            i = i2;
        }
        beginStructure.endStructure(descriptor);
        return new Either.Right<>(i, obj2, obj, obj3, null);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (Either.Right) ((Either.Right) obj));
    }

    public void serialize(Encoder encoder, Either.Right<X, Y> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor descriptor = getDescriptor();
        CompositeEncoder beginStructure = encoder.beginStructure(descriptor);
        Either.Right.write$Self(value, beginStructure, descriptor, this.typeSerial0, this.typeSerial1);
        beginStructure.endStructure(descriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return new KSerializer[]{this.typeSerial0, this.typeSerial1};
    }
}
