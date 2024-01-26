package org.ton.block;

import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.UIntSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ValidatorInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ValidatorInfo implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final int catchainSeqno;
    private final boolean nxCcUpdated;
    private final int validatorListHashShort;

    public /* synthetic */ ValidatorInfo(int i, int i2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, z);
    }

    public /* synthetic */ ValidatorInfo(int i, UInt uInt, UInt uInt2, boolean z, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uInt, uInt2, z, serializationConstructorMarker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ValidatorInfo) {
            ValidatorInfo validatorInfo = (ValidatorInfo) obj;
            return this.validatorListHashShort == validatorInfo.validatorListHashShort && this.catchainSeqno == validatorInfo.catchainSeqno && this.nxCcUpdated == validatorInfo.nxCcUpdated;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m1977hashCodeimpl = ((UInt.m1977hashCodeimpl(this.validatorListHashShort) * 31) + UInt.m1977hashCodeimpl(this.catchainSeqno)) * 31;
        boolean z = this.nxCcUpdated;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m1977hashCodeimpl + i;
    }

    private ValidatorInfo(int i, int i2, boolean z) {
        this.validatorListHashShort = i;
        this.catchainSeqno = i2;
        this.nxCcUpdated = z;
    }

    private ValidatorInfo(int i, UInt uInt, UInt uInt2, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, ValidatorInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.validatorListHashShort = uInt.m1979unboximpl();
        this.catchainSeqno = uInt2.m1979unboximpl();
        this.nxCcUpdated = z;
    }

    public static final /* synthetic */ void write$Self(ValidatorInfo validatorInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, uIntSerializer, UInt.m1974boximpl(validatorInfo.validatorListHashShort));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, uIntSerializer, UInt.m1974boximpl(validatorInfo.catchainSeqno));
        compositeEncoder.encodeBooleanElement(serialDescriptor, 2, validatorInfo.nxCcUpdated);
    }

    /* renamed from: getValidatorListHashShort-pVg5ArA  reason: not valid java name */
    public final int m5372getValidatorListHashShortpVg5ArA() {
        return this.validatorListHashShort;
    }

    /* renamed from: getCatchainSeqno-pVg5ArA  reason: not valid java name */
    public final int m5371getCatchainSeqnopVg5ArA() {
        return this.catchainSeqno;
    }

    public final boolean getNxCcUpdated() {
        return this.nxCcUpdated;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ValidatorInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ValidatorInfo> {
        private final /* synthetic */ ValidatorInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ValidatorInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ValidatorInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ValidatorInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ValidatorInfo> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ValidatorInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<ValidatorInfo> serializer() {
            return ValidatorInfo$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("validator_info");
        open.field("validator_list_hash_short", UInt.m1974boximpl(this.validatorListHashShort));
        open.field("catchain_seqno", UInt.m1974boximpl(this.catchainSeqno));
        open.field("nx_cc_updated", Boolean.valueOf(this.nxCcUpdated));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
