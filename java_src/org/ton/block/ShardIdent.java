package org.ton.block;

import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: ShardIdent.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ShardIdent implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final int shardPfxBits;
    private final long shardPrefix;
    private final int workchainId;

    public /* synthetic */ ShardIdent(int i, int i2, int i3, ULong uLong, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3, uLong, serializationConstructorMarker);
    }

    public /* synthetic */ ShardIdent(int i, int i2, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShardIdent) {
            ShardIdent shardIdent = (ShardIdent) obj;
            return this.shardPfxBits == shardIdent.shardPfxBits && this.workchainId == shardIdent.workchainId && this.shardPrefix == shardIdent.shardPrefix;
        }
        return false;
    }

    public int hashCode() {
        return (((this.shardPfxBits * 31) + this.workchainId) * 31) + ULong.m1998hashCodeimpl(this.shardPrefix);
    }

    private ShardIdent(int i, int i2, int i3, ULong uLong, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, ShardIdent$$serializer.INSTANCE.getDescriptor());
        }
        this.shardPfxBits = i2;
        this.workchainId = i3;
        this.shardPrefix = uLong.m2000unboximpl();
        if (i2 <= 60) {
            return;
        }
        throw new IllegalArgumentException(("expected: shard_pfx_bits <= 60, actual: " + i2).toString());
    }

    private ShardIdent(int i, int i2, long j) {
        this.shardPfxBits = i;
        this.workchainId = i2;
        this.shardPrefix = j;
        if (i <= 60) {
            return;
        }
        throw new IllegalArgumentException(("expected: shard_pfx_bits <= 60, actual: " + i).toString());
    }

    public static final /* synthetic */ void write$Self(ShardIdent shardIdent, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, shardIdent.shardPfxBits);
        compositeEncoder.encodeIntElement(serialDescriptor, 1, shardIdent.workchainId);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, ULongSerializer.INSTANCE, ULong.m1995boximpl(shardIdent.shardPrefix));
    }

    public final int getShardPfxBits() {
        return this.shardPfxBits;
    }

    public final int getWorkchainId() {
        return this.workchainId;
    }

    /* renamed from: getShardPrefix-s-VKNKU  reason: not valid java name */
    public final long m5178getShardPrefixsVKNKU() {
        return this.shardPrefix;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ShardIdent.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<ShardIdent> {
        private final /* synthetic */ TlbCombinator<ShardIdent> $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardIdent loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardIdent loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ShardIdent value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = TlbConstructorKt.asTlbCombinator(ShardIdentTlbConstructor.INSTANCE, Reflection.getOrCreateKotlinClass(ShardIdent.class));
        }

        public final KSerializer<ShardIdent> serializer() {
            return ShardIdent$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("shard_ident");
        open.field("shard_pfx_bits", Integer.valueOf(this.shardPfxBits));
        open.field("workchain_id", Integer.valueOf(this.workchainId));
        open.field("shard_prefix", ULong.m1995boximpl(this.shardPrefix));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
