package org.ton.block;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.math.BigInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bigint.BigIntJvmKt;
import org.ton.bigint.BigIntSerializer;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: VarUInteger.kt */
@Serializable
/* loaded from: classes6.dex */
public final class VarUInteger implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final int len;
    private final BigInteger value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VarUInteger) {
            VarUInteger varUInteger = (VarUInteger) obj;
            return this.len == varUInteger.len && Intrinsics.areEqual(this.value, varUInteger.value);
        }
        return false;
    }

    public int hashCode() {
        return (this.len * 31) + this.value.hashCode();
    }

    public /* synthetic */ VarUInteger(int i, int i2, @Serializable(with = BigIntSerializer.class) BigInteger bigInteger, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, VarUInteger$$serializer.INSTANCE.getDescriptor());
        }
        this.len = i2;
        this.value = bigInteger;
    }

    public VarUInteger(int i, BigInteger value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.len = i;
        this.value = value;
    }

    public static final /* synthetic */ void write$Self(VarUInteger varUInteger, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, varUInteger.len);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, BigIntSerializer.INSTANCE, varUInteger.value);
    }

    public final int len() {
        return this.len;
    }

    public final BigInteger value() {
        return this.value;
    }

    public VarUInteger(int i) {
        this(BigIntJvmKt.toBigInt(i));
    }

    public VarUInteger(long j) {
        this(BigIntJvmKt.toBigInt(j));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VarUInteger(BigInteger value) {
        this((BigIntJvmKt.getBitLength(value) / 8) + (BigIntJvmKt.getBitLength(value) % 8 == 0 ? 0 : 1), value);
        Intrinsics.checkNotNullParameter(value, "value");
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("var_uint");
        open.field("len", Integer.valueOf(this.len));
        open.field(AppMeasurementSdk.ConditionalUserProperty.VALUE, this.value);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }

    public String toString() {
        String bigInteger = this.value.toString();
        Intrinsics.checkNotNullExpressionValue(bigInteger, "value.toString()");
        return bigInteger;
    }

    /* compiled from: VarUInteger.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<VarUInteger> serializer() {
            return VarUInteger$$serializer.INSTANCE;
        }

        public final TlbCodec<VarUInteger> tlbCodec(int i) {
            return new VarUIntegerTlbConstructor(i);
        }
    }

    /* compiled from: VarUInteger.kt */
    /* loaded from: classes6.dex */
    private static final class VarUIntegerTlbConstructor extends org.ton.tlb.TlbConstructor<VarUInteger> {

        /* renamed from: n */
        private final int f2042n;

        public VarUIntegerTlbConstructor(int i) {
            super("var_uint$_ {n:#} len:(#< n) value:(uint (len * 8)) = VarUInteger n;", null, 2, null);
            this.f2042n = i;
        }

        @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, VarUInteger value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            cellBuilder.storeUIntLes(value.len(), this.f2042n);
            cellBuilder.storeUInt(value.value(), value.len() * 8);
        }

        @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
        public VarUInteger loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            int intValue = cellSlice.loadUIntLes(this.f2042n).intValue();
            return new VarUInteger(intValue, cellSlice.loadUInt(intValue * 8));
        }
    }
}
