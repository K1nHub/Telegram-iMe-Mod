package org.ton.block;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: Maybe.kt */
@Serializable
/* loaded from: classes6.dex */
public final class Just<X> implements Maybe<X> {
    private static final SerialDescriptor $cachedDescriptor;
    public static final Companion Companion = new Companion(null);
    private final X value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Just) && Intrinsics.areEqual(this.value, ((Just) obj).value);
    }

    public int hashCode() {
        X x = this.value;
        if (x == null) {
            return 0;
        }
        return x.hashCode();
    }

    /* compiled from: Maybe.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<Just<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new Just$$serializer(typeSerial0);
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("just", null, 1);
        pluginGeneratedSerialDescriptor.addElement(AppMeasurementSdk.ConditionalUserProperty.VALUE, false);
        $cachedDescriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ Just(int i, Object obj, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, $cachedDescriptor);
        }
        this.value = obj;
    }

    public Just(X x) {
        this.value = x;
    }

    @Override // org.ton.block.Maybe
    public X getValue() {
        return this.value;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("just");
        open.field(AppMeasurementSdk.ConditionalUserProperty.VALUE, getValue());
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
