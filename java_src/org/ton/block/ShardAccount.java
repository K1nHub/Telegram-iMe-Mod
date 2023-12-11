package org.ton.block;

import java.lang.annotation.Annotation;
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
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ShardAccount.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ShardAccount implements TlbObject {
    private final CellRef<Account> account;
    private final BitString lastTransHash;
    private final long lastTransLt;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null, null};

    public /* synthetic */ ShardAccount(int i, CellRef cellRef, BitString bitString, ULong uLong, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, cellRef, bitString, uLong, serializationConstructorMarker);
    }

    public /* synthetic */ ShardAccount(CellRef cellRef, BitString bitString, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(cellRef, bitString, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShardAccount) {
            ShardAccount shardAccount = (ShardAccount) obj;
            return Intrinsics.areEqual(this.account, shardAccount.account) && Intrinsics.areEqual(this.lastTransHash, shardAccount.lastTransHash) && this.lastTransLt == shardAccount.lastTransLt;
        }
        return false;
    }

    public int hashCode() {
        return (((this.account.hashCode() * 31) + this.lastTransHash.hashCode()) * 31) + ULong.m1998hashCodeimpl(this.lastTransLt);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ShardAccount(int i, CellRef<? extends Account> cellRef, BitString bitString, ULong uLong, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, ShardAccount$$serializer.INSTANCE.getDescriptor());
        }
        this.account = cellRef;
        this.lastTransHash = bitString;
        this.lastTransLt = uLong.m2000unboximpl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ShardAccount(CellRef<? extends Account> account, BitString lastTransHash, long j) {
        Intrinsics.checkNotNullParameter(account, "account");
        Intrinsics.checkNotNullParameter(lastTransHash, "lastTransHash");
        this.account = account;
        this.lastTransHash = lastTransHash;
        this.lastTransLt = j;
    }

    public static final /* synthetic */ void write$Self(ShardAccount shardAccount, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0], shardAccount.account);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, FiftHexBitStringSerializer.INSTANCE, shardAccount.lastTransHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, ULongSerializer.INSTANCE, ULong.m1995boximpl(shardAccount.lastTransLt));
    }

    public final CellRef<Account> getAccount() {
        return this.account;
    }

    public final BitString getLastTransHash() {
        return this.lastTransHash;
    }

    /* renamed from: getLastTransLt-s-VKNKU  reason: not valid java name */
    public final long m5130getLastTransLtsVKNKU() {
        return this.lastTransLt;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ShardAccount.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ShardAccount> {
        private final /* synthetic */ ShardAccountTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardAccount loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardAccount loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ShardAccount value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ShardAccount> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ShardAccountTlbConstructor.INSTANCE;
        }

        public final KSerializer<ShardAccount> serializer() {
            return ShardAccount$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("account_descr");
        open.field("account", this.account);
        open.field("last_trans_hash", this.lastTransHash);
        open.field("last_trans_lt", ULong.m1995boximpl(this.lastTransLt));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
