package kotlinx.serialization.internal;

import java.lang.Enum;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
/* compiled from: Enums.kt */
/* loaded from: classes4.dex */
public final class EnumSerializer<T extends Enum<T>> implements KSerializer<T> {
    private final Lazy descriptor$delegate;
    private SerialDescriptor overriddenDescriptor;
    private final T[] values;

    public EnumSerializer(final String serialName, T[] values) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(values, "values");
        this.values = values;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SerialDescriptor>(this) { // from class: kotlinx.serialization.internal.EnumSerializer$descriptor$2
            final /* synthetic */ EnumSerializer<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final SerialDescriptor invoke() {
                SerialDescriptor serialDescriptor;
                SerialDescriptor createUnmarkedDescriptor;
                serialDescriptor = ((EnumSerializer) this.this$0).overriddenDescriptor;
                if (serialDescriptor == null) {
                    createUnmarkedDescriptor = this.this$0.createUnmarkedDescriptor(serialName);
                    return createUnmarkedDescriptor;
                }
                return serialDescriptor;
            }
        });
        this.descriptor$delegate = lazy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (Encoder) ((Enum) obj));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EnumSerializer(String serialName, T[] values, SerialDescriptor descriptor) {
        this(serialName, values);
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        this.overriddenDescriptor = descriptor;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SerialDescriptor createUnmarkedDescriptor(String str) {
        EnumDescriptor enumDescriptor = new EnumDescriptor(str, this.values.length);
        for (T t : this.values) {
            PluginGeneratedSerialDescriptor.addElement$default(enumDescriptor, t.name(), false, 2, null);
        }
        return enumDescriptor;
    }

    public void serialize(Encoder encoder, T value) {
        int indexOf;
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        indexOf = ArraysKt___ArraysKt.indexOf(this.values, value);
        if (indexOf == -1) {
            StringBuilder sb = new StringBuilder();
            sb.append(value);
            sb.append(" is not a valid enum ");
            sb.append(getDescriptor().getSerialName());
            sb.append(", must be one of ");
            String arrays = Arrays.toString(this.values);
            Intrinsics.checkNotNullExpressionValue(arrays, "toString(this)");
            sb.append(arrays);
            throw new SerializationException(sb.toString());
        }
        encoder.encodeEnum(getDescriptor(), indexOf);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public T deserialize(Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        int decodeEnum = decoder.decodeEnum(getDescriptor());
        boolean z = false;
        if (decodeEnum >= 0 && decodeEnum < this.values.length) {
            z = true;
        }
        if (!z) {
            throw new SerializationException(decodeEnum + " is not among valid " + getDescriptor().getSerialName() + " enum values, values size is " + this.values.length);
        }
        return this.values[decodeEnum];
    }

    public String toString() {
        return "kotlinx.serialization.internal.EnumSerializer<" + getDescriptor().getSerialName() + '>';
    }
}
