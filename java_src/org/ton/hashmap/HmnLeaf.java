package org.ton.hashmap;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: HmnLeaf.kt */
@Serializable
/* loaded from: classes6.dex */
public final class HmnLeaf<T> implements HashMapNode<T> {
    private static final SerialDescriptor $cachedDescriptor;
    public static final Companion Companion = new Companion(null);
    private final T value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof HmnLeaf) && Intrinsics.areEqual(this.value, ((HmnLeaf) obj).value);
    }

    public int hashCode() {
        T t = this.value;
        if (t == null) {
            return 0;
        }
        return t.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ HmnLeaf(int i, Object obj, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, $cachedDescriptor);
        }
        this.value = obj;
    }

    public HmnLeaf(T t) {
        this.value = t;
    }

    public final T getValue() {
        return this.value;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: HmnLeaf.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T0> KSerializer<HmnLeaf<T0>> serializer(KSerializer<T0> typeSerial0) {
            Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
            return new HmnLeaf$$serializer(typeSerial0);
        }

        public final <T> TlbCodec<HmnLeaf<T>> tlbCodec(TlbCodec<T> x) {
            Intrinsics.checkNotNullParameter(x, "x");
            return new HashMapNodeLeafTlbConstructor(x);
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("hmn_leaf", null, 1);
        pluginGeneratedSerialDescriptor.addElement(AppMeasurementSdk.ConditionalUserProperty.VALUE, false);
        $cachedDescriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("hmn_leaf");
        open.field(AppMeasurementSdk.ConditionalUserProperty.VALUE, this.value);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
