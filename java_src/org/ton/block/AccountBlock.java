package org.ton.block;

import java.lang.annotation.Annotation;
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
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAug;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbCombinatorProvider;
/* compiled from: AccountBlock.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AccountBlock implements TlbObject {
    private final BitString accountAddr;
    private final CellRef<HashUpdate> stateUpdate;
    private final HashmapAug<CellRef<Transaction>, CurrencyCollection> transactions;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(HashmapAug.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountBlock) {
            AccountBlock accountBlock = (AccountBlock) obj;
            return Intrinsics.areEqual(this.accountAddr, accountBlock.accountAddr) && Intrinsics.areEqual(this.transactions, accountBlock.transactions) && Intrinsics.areEqual(this.stateUpdate, accountBlock.stateUpdate);
        }
        return false;
    }

    public int hashCode() {
        return (((this.accountAddr.hashCode() * 31) + this.transactions.hashCode()) * 31) + this.stateUpdate.hashCode();
    }

    public /* synthetic */ AccountBlock(int i, BitString bitString, HashmapAug hashmapAug, CellRef cellRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, AccountBlock$$serializer.INSTANCE.getDescriptor());
        }
        this.accountAddr = bitString;
        this.transactions = hashmapAug;
        this.stateUpdate = cellRef;
    }

    public AccountBlock(BitString accountAddr, HashmapAug<CellRef<Transaction>, CurrencyCollection> transactions, CellRef<HashUpdate> stateUpdate) {
        Intrinsics.checkNotNullParameter(accountAddr, "accountAddr");
        Intrinsics.checkNotNullParameter(transactions, "transactions");
        Intrinsics.checkNotNullParameter(stateUpdate, "stateUpdate");
        this.accountAddr = accountAddr;
        this.transactions = transactions;
        this.stateUpdate = stateUpdate;
    }

    public static final /* synthetic */ void write$Self(AccountBlock accountBlock, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, FiftHexBitStringSerializer.INSTANCE, accountBlock.accountAddr);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], accountBlock.transactions);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], accountBlock.stateUpdate);
    }

    public final BitString getAccountAddr() {
        return this.accountAddr;
    }

    public final HashmapAug<CellRef<Transaction>, CurrencyCollection> getTransactions() {
        return this.transactions;
    }

    public final CellRef<HashUpdate> getStateUpdate() {
        return this.stateUpdate;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: AccountBlock.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<AccountBlock> {
        private final /* synthetic */ AccountBlockTlbCombinator $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public AccountBlock loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public AccountBlock loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, AccountBlock value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<AccountBlock> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
            this.$$delegate_0 = AccountBlockTlbCombinator.INSTANCE;
        }

        public final KSerializer<AccountBlock> serializer() {
            return AccountBlock$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("acc_trans");
        open.field("account_addr", this.accountAddr);
        open.field("transactions", this.transactions);
        open.field("state_update", this.stateUpdate);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
