package org.ton.block;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: Maybe.kt */
@Serializable
/* loaded from: classes6.dex */
public final class Nothing<X> implements Maybe<X> {
    private static final SerialDescriptor $cachedDescriptor;
    public static final Companion Companion = new Companion(null);
    private final X value;

    public int hashCode() {
        return 0;
    }

    /* compiled from: Maybe.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<Nothing<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new Nothing$$serializer(typeSerial0);
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("nothing", null, 1);
        pluginGeneratedSerialDescriptor.addElement(AppMeasurementSdk.ConditionalUserProperty.VALUE, true);
        $cachedDescriptor = pluginGeneratedSerialDescriptor;
    }

    public Nothing() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ Nothing(int i, Object obj, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, $cachedDescriptor);
        }
        if ((i & 1) == 0) {
            this.value = null;
        } else {
            this.value = obj;
        }
    }

    public static final /* synthetic */ void write$Self(Nothing nothing, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, KSerializer kSerializer) {
        boolean z = true;
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) && nothing.getValue() == null) {
            z = false;
        }
        if (z) {
            compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 0, kSerializer, nothing.getValue());
        }
    }

    @Override // org.ton.block.Maybe
    public X getValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return obj instanceof Nothing;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        printer.type("nothing");
        return printer;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }
}
