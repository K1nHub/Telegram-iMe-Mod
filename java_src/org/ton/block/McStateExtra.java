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
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbCombinatorProvider;
/* compiled from: McStateExtra.kt */
@Serializable
/* loaded from: classes6.dex */
public final class McStateExtra implements TlbObject {
    private final ConfigParams config;
    private final CurrencyCollection globalBalance;

    /* renamed from: r1 */
    private final CellRef<McStateExtraAux> f2064r1;
    private final HashMapE<CellRef<? extends BinTree<ShardDescr>>> shardHashes;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null};

    public /* synthetic */ McStateExtra(int i, HashMapE hashMapE, ConfigParams configParams, CellRef cellRef, CurrencyCollection currencyCollection, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, hashMapE, configParams, cellRef, currencyCollection, serializationConstructorMarker);
    }

    public /* synthetic */ McStateExtra(HashMapE hashMapE, ConfigParams configParams, CellRef cellRef, CurrencyCollection currencyCollection, DefaultConstructorMarker defaultConstructorMarker) {
        this(hashMapE, configParams, cellRef, currencyCollection);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof McStateExtra) {
            McStateExtra mcStateExtra = (McStateExtra) obj;
            return ShardHashes.m5350equalsimpl0(this.shardHashes, mcStateExtra.shardHashes) && Intrinsics.areEqual(this.config, mcStateExtra.config) && Intrinsics.areEqual(this.f2064r1, mcStateExtra.f2064r1) && Intrinsics.areEqual(this.globalBalance, mcStateExtra.globalBalance);
        }
        return false;
    }

    public int hashCode() {
        return (((((ShardHashes.m5351hashCodeimpl(this.shardHashes) * 31) + this.config.hashCode()) * 31) + this.f2064r1.hashCode()) * 31) + this.globalBalance.hashCode();
    }

    private McStateExtra(int i, HashMapE<CellRef<? extends BinTree<ShardDescr>>> hashMapE, ConfigParams configParams, CellRef<McStateExtraAux> cellRef, CurrencyCollection currencyCollection, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, McStateExtra$$serializer.INSTANCE.getDescriptor());
        }
        this.shardHashes = hashMapE;
        this.config = configParams;
        this.f2064r1 = cellRef;
        this.globalBalance = currencyCollection;
    }

    private McStateExtra(HashMapE<CellRef<? extends BinTree<ShardDescr>>> shardHashes, ConfigParams config, CellRef<McStateExtraAux> r1, CurrencyCollection globalBalance) {
        Intrinsics.checkNotNullParameter(shardHashes, "shardHashes");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(r1, "r1");
        Intrinsics.checkNotNullParameter(globalBalance, "globalBalance");
        this.shardHashes = shardHashes;
        this.config = config;
        this.f2064r1 = r1;
        this.globalBalance = globalBalance;
    }

    public static final /* synthetic */ void write$Self(McStateExtra mcStateExtra, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, ShardHashes$$serializer.INSTANCE, ShardHashes.m5347boximpl(mcStateExtra.shardHashes));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ConfigParams$$serializer.INSTANCE, mcStateExtra.config);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], mcStateExtra.f2064r1);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, CurrencyCollection$$serializer.INSTANCE, mcStateExtra.globalBalance);
    }

    /* renamed from: getShardHashes-78z5ENA  reason: not valid java name */
    public final HashMapE<CellRef<? extends BinTree<ShardDescr>>> m5289getShardHashes78z5ENA() {
        return this.shardHashes;
    }

    public final ConfigParams getConfig() {
        return this.config;
    }

    public final CellRef<McStateExtraAux> getR1() {
        return this.f2064r1;
    }

    public final CurrencyCollection getGlobalBalance() {
        return this.globalBalance;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: McStateExtra.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<McStateExtra> {
        private final /* synthetic */ TlbCombinator<McStateExtra> $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public McStateExtra loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public McStateExtra loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, McStateExtra value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<McStateExtra> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
            this.$$delegate_0 = TlbConstructorKt.asTlbCombinator(McStateExtraTlbConstructor.INSTANCE, Reflection.getOrCreateKotlinClass(McStateExtra.class));
        }

        public final KSerializer<McStateExtra> serializer() {
            return McStateExtra$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("masterchain_state_extra");
        open.field("shard_hashes", ShardHashes.m5347boximpl(this.shardHashes));
        open.field("config", this.config);
        open.field(this.f2064r1);
        open.field("global_balance", this.globalBalance);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
