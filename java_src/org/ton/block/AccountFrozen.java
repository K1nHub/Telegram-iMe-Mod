package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: AccountFrozen.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AccountFrozen implements AccountState {
    public static final Companion Companion = new Companion(null);
    private final BitString stateHash;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AccountFrozen) && Intrinsics.areEqual(this.stateHash, ((AccountFrozen) obj).stateHash);
    }

    public int hashCode() {
        return this.stateHash.hashCode();
    }

    public /* synthetic */ AccountFrozen(int i, BitString bitString, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, AccountFrozen$$serializer.INSTANCE.getDescriptor());
        }
        this.stateHash = bitString;
        if (!(bitString.getSize() == 256)) {
            throw new IllegalArgumentException("stateHash must be 256 bits long".toString());
        }
    }

    public AccountFrozen(BitString stateHash) {
        Intrinsics.checkNotNullParameter(stateHash, "stateHash");
        this.stateHash = stateHash;
        if (!(stateHash.getSize() == 256)) {
            throw new IllegalArgumentException("stateHash must be 256 bits long".toString());
        }
    }

    public final BitString stateHash() {
        return this.stateHash;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: AccountFrozen.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<AccountFrozen> {
        private final /* synthetic */ AccountFrozenTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public AccountFrozen loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public AccountFrozen loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, AccountFrozen value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<AccountFrozen> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = AccountFrozenTlbConstructor.INSTANCE;
        }

        public final KSerializer<AccountFrozen> serializer() {
            return AccountFrozen$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("account_frozen");
        printer.field("state_hash", this.stateHash);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
