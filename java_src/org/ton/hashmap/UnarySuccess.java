package org.ton.hashmap;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: UnarySuccess.kt */
@Serializable
/* loaded from: classes6.dex */
public final class UnarySuccess extends Unary {

    /* renamed from: x */
    private final Unary f2098x;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {Unary.Companion.serializer()};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UnarySuccess) && Intrinsics.areEqual(this.f2098x, ((UnarySuccess) obj).f2098x);
    }

    public int hashCode() {
        return this.f2098x.hashCode();
    }

    /* compiled from: UnarySuccess.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<UnarySuccess> serializer() {
            return UnarySuccess$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ UnarySuccess(int i, Unary unary, SerializationConstructorMarker serializationConstructorMarker) {
        super(i, serializationConstructorMarker);
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, UnarySuccess$$serializer.INSTANCE.getDescriptor());
        }
        this.f2098x = unary;
    }

    public static final /* synthetic */ KSerializer[] access$get$childSerializers$cp() {
        return $childSerializers;
    }

    public static final /* synthetic */ void write$Self(UnarySuccess unarySuccess, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        Unary.write$Self(unarySuccess, compositeEncoder, serialDescriptor);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0], unarySuccess.f2098x);
    }

    public final Unary getX() {
        return this.f2098x;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnarySuccess(Unary x) {
        super(null);
        Intrinsics.checkNotNullParameter(x, "x");
        this.f2098x = x;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("unary_succ");
        open.field("x", this.f2098x);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
