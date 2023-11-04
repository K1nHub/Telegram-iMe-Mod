package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.hashmap.HashmapAugE;
import org.ton.hashmap.HmeEmpty;
import org.ton.hashmap.HmeRoot;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbCombinatorProvider;
/* compiled from: McBlockExtra.kt */
@Serializable
/* loaded from: classes6.dex */
public final class McBlockExtra implements TlbObject {
    private final ConfigParams config;
    private final boolean keyBlock;

    /* renamed from: r1 */
    private final CellRef<McBlockExtraAux> f2044r1;
    private final HashmapAugE<ShardFeeCreated, ShardFeeCreated> shardFees;
    private final HashMapE<BinTree<ShardDescr>> shardHashes;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new SealedClassSerializer("org.ton.hashmap.HashMapE", Reflection.getOrCreateKotlinClass(HashMapE.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmeEmpty.class), Reflection.getOrCreateKotlinClass(HmeRoot.class)}, new KSerializer[]{HmeEmpty.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), HmeRoot.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7566x712f2ee6("@type")}), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(HashmapAugE.class), new Annotation[]{new C7566x712f2ee6("@type")}), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof McBlockExtra) {
            McBlockExtra mcBlockExtra = (McBlockExtra) obj;
            return this.keyBlock == mcBlockExtra.keyBlock && Intrinsics.areEqual(this.shardHashes, mcBlockExtra.shardHashes) && Intrinsics.areEqual(this.shardFees, mcBlockExtra.shardFees) && Intrinsics.areEqual(this.f2044r1, mcBlockExtra.f2044r1) && Intrinsics.areEqual(this.config, mcBlockExtra.config);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    public int hashCode() {
        boolean z = this.keyBlock;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int hashCode = ((((((r0 * 31) + this.shardHashes.hashCode()) * 31) + this.shardFees.hashCode()) * 31) + this.f2044r1.hashCode()) * 31;
        ConfigParams configParams = this.config;
        return hashCode + (configParams == null ? 0 : configParams.hashCode());
    }

    public /* synthetic */ McBlockExtra(int i, boolean z, HashMapE hashMapE, HashmapAugE hashmapAugE, CellRef cellRef, ConfigParams configParams, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i & 31)) {
            PluginExceptionsKt.throwMissingFieldException(i, 31, McBlockExtra$$serializer.INSTANCE.getDescriptor());
        }
        this.keyBlock = z;
        this.shardHashes = hashMapE;
        this.shardFees = hashmapAugE;
        this.f2044r1 = cellRef;
        this.config = configParams;
    }

    public McBlockExtra(boolean z, HashMapE<BinTree<ShardDescr>> shardHashes, HashmapAugE<ShardFeeCreated, ShardFeeCreated> shardFees, CellRef<McBlockExtraAux> r1, ConfigParams configParams) {
        Intrinsics.checkNotNullParameter(shardHashes, "shardHashes");
        Intrinsics.checkNotNullParameter(shardFees, "shardFees");
        Intrinsics.checkNotNullParameter(r1, "r1");
        this.keyBlock = z;
        this.shardHashes = shardHashes;
        this.shardFees = shardFees;
        this.f2044r1 = r1;
        this.config = configParams;
    }

    public static final /* synthetic */ void write$Self(McBlockExtra mcBlockExtra, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeBooleanElement(serialDescriptor, 0, mcBlockExtra.keyBlock);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], mcBlockExtra.shardHashes);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], mcBlockExtra.shardFees);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], mcBlockExtra.f2044r1);
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 4, ConfigParams$$serializer.INSTANCE, mcBlockExtra.config);
    }

    public final boolean getKeyBlock() {
        return this.keyBlock;
    }

    public final HashMapE<BinTree<ShardDescr>> getShardHashes() {
        return this.shardHashes;
    }

    public final HashmapAugE<ShardFeeCreated, ShardFeeCreated> getShardFees() {
        return this.shardFees;
    }

    public final CellRef<McBlockExtraAux> getR1() {
        return this.f2044r1;
    }

    public final ConfigParams getConfig() {
        return this.config;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: McBlockExtra.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<McBlockExtra> {
        private final /* synthetic */ TlbCombinator<McBlockExtra> $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public McBlockExtra loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public McBlockExtra loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, McBlockExtra value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<McBlockExtra> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
            this.$$delegate_0 = TlbConstructorKt.asTlbCombinator(McBlockExtraTlbConstructor.INSTANCE, Reflection.getOrCreateKotlinClass(McBlockExtra.class));
        }

        public final KSerializer<McBlockExtra> serializer() {
            return McBlockExtra$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("masterchain_block_extra");
        open.field("key_block", Boolean.valueOf(this.keyBlock));
        open.field("shard_hashes", this.shardHashes);
        open.field("shard_fees", this.shardFees);
        open.field(this.f2044r1);
        open.field("config", this.config);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
