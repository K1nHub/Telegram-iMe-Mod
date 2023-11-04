package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.block.AccountStatus;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbCombinatorProvider;
/* compiled from: Transaction.kt */
@Serializable
/* loaded from: classes6.dex */
public final class Transaction implements TlbObject {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final BitString accountAddr;
    private final CellRef<TransactionDescr> description;
    private final AccountStatus endStatus;

    /* renamed from: lt */
    private final long f2052lt;
    private final int now;
    private final AccountStatus origStatus;
    private final int outMsgCnt;
    private final BitString prevTransHash;
    private final long prevTransLt;

    /* renamed from: r1 */
    private final CellRef<TransactionAux> f2053r1;
    private final CellRef<HashUpdate> stateUpdate;
    private final CurrencyCollection totalFees;

    public /* synthetic */ Transaction(int i, BitString bitString, ULong uLong, BitString bitString2, ULong uLong2, UInt uInt, int i2, AccountStatus accountStatus, AccountStatus accountStatus2, CellRef cellRef, CurrencyCollection currencyCollection, CellRef cellRef2, CellRef cellRef3, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, bitString, uLong, bitString2, uLong2, uInt, i2, accountStatus, accountStatus2, cellRef, currencyCollection, cellRef2, cellRef3, serializationConstructorMarker);
    }

    public /* synthetic */ Transaction(BitString bitString, long j, BitString bitString2, long j2, int i, int i2, AccountStatus accountStatus, AccountStatus accountStatus2, CellRef cellRef, CurrencyCollection currencyCollection, CellRef cellRef2, CellRef cellRef3, DefaultConstructorMarker defaultConstructorMarker) {
        this(bitString, j, bitString2, j2, i, i2, accountStatus, accountStatus2, cellRef, currencyCollection, cellRef2, cellRef3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Transaction) {
            Transaction transaction = (Transaction) obj;
            return Intrinsics.areEqual(this.accountAddr, transaction.accountAddr) && this.f2052lt == transaction.f2052lt && Intrinsics.areEqual(this.prevTransHash, transaction.prevTransHash) && this.prevTransLt == transaction.prevTransLt && this.now == transaction.now && this.outMsgCnt == transaction.outMsgCnt && this.origStatus == transaction.origStatus && this.endStatus == transaction.endStatus && Intrinsics.areEqual(this.f2053r1, transaction.f2053r1) && Intrinsics.areEqual(this.totalFees, transaction.totalFees) && Intrinsics.areEqual(this.stateUpdate, transaction.stateUpdate) && Intrinsics.areEqual(this.description, transaction.description);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((((((this.accountAddr.hashCode() * 31) + ULong.m1996hashCodeimpl(this.f2052lt)) * 31) + this.prevTransHash.hashCode()) * 31) + ULong.m1996hashCodeimpl(this.prevTransLt)) * 31) + UInt.m1974hashCodeimpl(this.now)) * 31) + this.outMsgCnt) * 31) + this.origStatus.hashCode()) * 31) + this.endStatus.hashCode()) * 31) + this.f2053r1.hashCode()) * 31) + this.totalFees.hashCode()) * 31) + this.stateUpdate.hashCode()) * 31) + this.description.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Transaction(int i, BitString bitString, ULong uLong, BitString bitString2, ULong uLong2, UInt uInt, int i2, AccountStatus accountStatus, AccountStatus accountStatus2, CellRef<TransactionAux> cellRef, CurrencyCollection currencyCollection, CellRef<HashUpdate> cellRef2, CellRef<? extends TransactionDescr> cellRef3, SerializationConstructorMarker serializationConstructorMarker) {
        if (4095 != (i & 4095)) {
            PluginExceptionsKt.throwMissingFieldException(i, 4095, Transaction$$serializer.INSTANCE.getDescriptor());
        }
        this.accountAddr = bitString;
        this.f2052lt = uLong.m1998unboximpl();
        this.prevTransHash = bitString2;
        this.prevTransLt = uLong2.m1998unboximpl();
        this.now = uInt.m1976unboximpl();
        this.outMsgCnt = i2;
        this.origStatus = accountStatus;
        this.endStatus = accountStatus2;
        this.f2053r1 = cellRef;
        this.totalFees = currencyCollection;
        this.stateUpdate = cellRef2;
        this.description = cellRef3;
        if (!(bitString.getSize() == 256)) {
            throw new IllegalArgumentException(("expected accountAddr.size == 256, actual: " + bitString.getSize()).toString());
        }
        if (bitString2.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected prevTransHash.size == 256, actual: " + bitString.getSize()).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Transaction(BitString accountAddr, long j, BitString prevTransHash, long j2, int i, int i2, AccountStatus origStatus, AccountStatus endStatus, CellRef<TransactionAux> r1, CurrencyCollection totalFees, CellRef<HashUpdate> stateUpdate, CellRef<? extends TransactionDescr> description) {
        Intrinsics.checkNotNullParameter(accountAddr, "accountAddr");
        Intrinsics.checkNotNullParameter(prevTransHash, "prevTransHash");
        Intrinsics.checkNotNullParameter(origStatus, "origStatus");
        Intrinsics.checkNotNullParameter(endStatus, "endStatus");
        Intrinsics.checkNotNullParameter(r1, "r1");
        Intrinsics.checkNotNullParameter(totalFees, "totalFees");
        Intrinsics.checkNotNullParameter(stateUpdate, "stateUpdate");
        Intrinsics.checkNotNullParameter(description, "description");
        this.accountAddr = accountAddr;
        this.f2052lt = j;
        this.prevTransHash = prevTransHash;
        this.prevTransLt = j2;
        this.now = i;
        this.outMsgCnt = i2;
        this.origStatus = origStatus;
        this.endStatus = endStatus;
        this.f2053r1 = r1;
        this.totalFees = totalFees;
        this.stateUpdate = stateUpdate;
        this.description = description;
        if (!(accountAddr.getSize() == 256)) {
            throw new IllegalArgumentException(("expected accountAddr.size == 256, actual: " + accountAddr.getSize()).toString());
        }
        if (prevTransHash.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected prevTransHash.size == 256, actual: " + accountAddr.getSize()).toString());
    }

    public static final /* synthetic */ void write$Self(Transaction transaction, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, fiftHexBitStringSerializer, transaction.accountAddr);
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, uLongSerializer, ULong.m1993boximpl(transaction.f2052lt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, fiftHexBitStringSerializer, transaction.prevTransHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, uLongSerializer, ULong.m1993boximpl(transaction.prevTransLt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, UIntSerializer.INSTANCE, UInt.m1971boximpl(transaction.now));
        compositeEncoder.encodeIntElement(serialDescriptor, 5, transaction.outMsgCnt);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 6, kSerializerArr[6], transaction.origStatus);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 7, kSerializerArr[7], transaction.endStatus);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 8, kSerializerArr[8], transaction.f2053r1);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 9, CurrencyCollection$$serializer.INSTANCE, transaction.totalFees);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 10, kSerializerArr[10], transaction.stateUpdate);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 11, kSerializerArr[11], transaction.description);
    }

    public final BitString accountAddr() {
        return this.accountAddr;
    }

    /* renamed from: lt */
    public final long m36lt() {
        return this.f2052lt;
    }

    public final BitString prevTransHash() {
        return this.prevTransHash;
    }

    public final long prevTransLt() {
        return this.prevTransLt;
    }

    public final int now() {
        return this.now;
    }

    public final int outMsgCnt() {
        return this.outMsgCnt;
    }

    public final AccountStatus origStatus() {
        return this.origStatus;
    }

    public final AccountStatus endStatus() {
        return this.endStatus;
    }

    /* renamed from: r1 */
    public final CellRef<TransactionAux> m35r1() {
        return this.f2053r1;
    }

    public final CurrencyCollection totalFees() {
        return this.totalFees;
    }

    public final CellRef<HashUpdate> stateUpdate() {
        return this.stateUpdate;
    }

    public final CellRef<TransactionDescr> description() {
        return this.description;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("transaction");
        open.field("account_addr", this.accountAddr);
        open.field("lt", ULong.m1993boximpl(this.f2052lt));
        open.field("prev_trans_hash", this.prevTransHash);
        open.field("prev_trans_lt", ULong.m1993boximpl(this.prevTransLt));
        open.field("now", UInt.m1971boximpl(this.now));
        open.field("outmsg_cnt", Integer.valueOf(this.outMsgCnt));
        open.field("orig_status", this.origStatus);
        open.field("end_status", this.endStatus);
        open.field(this.f2053r1);
        open.field("total_fees", this.totalFees);
        open.field("state_update", this.stateUpdate);
        open.field("description", this.description);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<Transaction> {
        private final /* synthetic */ TlbCombinator<Transaction> $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public Transaction loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public Transaction loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, Transaction value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<Transaction> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
            this.$$delegate_0 = TlbConstructorKt.asTlbCombinator(TransactionTlConstructor.INSTANCE, Reflection.getOrCreateKotlinClass(Transaction.class));
        }

        public final KSerializer<Transaction> serializer() {
            return Transaction$$serializer.INSTANCE;
        }
    }

    static {
        AccountStatus.Companion companion = AccountStatus.Companion;
        $childSerializers = new KSerializer[]{null, null, null, null, null, null, companion.serializer(), companion.serializer(), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};
    }
}
