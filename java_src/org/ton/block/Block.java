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
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbCombinatorProvider;
/* compiled from: Block.kt */
@Serializable
/* loaded from: classes6.dex */
public final class Block implements TlbObject {
    private final CellRef<BlockExtra> extra;
    private final int globalId;
    private final CellRef<BlockInfo> info;
    private final CellRef<MerkleUpdate<ShardState>> stateUpdate;
    private final CellRef<ValueFlow> valueFlow;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Block) {
            Block block = (Block) obj;
            return this.globalId == block.globalId && Intrinsics.areEqual(this.info, block.info) && Intrinsics.areEqual(this.valueFlow, block.valueFlow) && Intrinsics.areEqual(this.stateUpdate, block.stateUpdate) && Intrinsics.areEqual(this.extra, block.extra);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.globalId * 31) + this.info.hashCode()) * 31) + this.valueFlow.hashCode()) * 31) + this.stateUpdate.hashCode()) * 31) + this.extra.hashCode();
    }

    public /* synthetic */ Block(int i, int i2, CellRef cellRef, CellRef cellRef2, CellRef cellRef3, CellRef cellRef4, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i & 31)) {
            PluginExceptionsKt.throwMissingFieldException(i, 31, Block$$serializer.INSTANCE.getDescriptor());
        }
        this.globalId = i2;
        this.info = cellRef;
        this.valueFlow = cellRef2;
        this.stateUpdate = cellRef3;
        this.extra = cellRef4;
    }

    public Block(int i, CellRef<BlockInfo> info, CellRef<ValueFlow> valueFlow, CellRef<MerkleUpdate<ShardState>> stateUpdate, CellRef<BlockExtra> extra) {
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(valueFlow, "valueFlow");
        Intrinsics.checkNotNullParameter(stateUpdate, "stateUpdate");
        Intrinsics.checkNotNullParameter(extra, "extra");
        this.globalId = i;
        this.info = info;
        this.valueFlow = valueFlow;
        this.stateUpdate = stateUpdate;
        this.extra = extra;
    }

    public static final /* synthetic */ void write$Self(Block block, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeIntElement(serialDescriptor, 0, block.globalId);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], block.info);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], block.valueFlow);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], block.stateUpdate);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], block.extra);
    }

    public final int getGlobalId() {
        return this.globalId;
    }

    public final CellRef<BlockInfo> getInfo() {
        return this.info;
    }

    public final CellRef<ValueFlow> getValueFlow() {
        return this.valueFlow;
    }

    public final CellRef<MerkleUpdate<ShardState>> getStateUpdate() {
        return this.stateUpdate;
    }

    public final CellRef<BlockExtra> getExtra() {
        return this.extra;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: Block.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<Block> {
        private final /* synthetic */ TlbCombinator<Block> $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public Block loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public Block loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, Block value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<Block> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
            this.$$delegate_0 = TlbConstructorKt.asTlbCombinator(TlbConstructor.INSTANCE, Reflection.getOrCreateKotlinClass(Block.class));
        }

        public final KSerializer<Block> serializer() {
            return Block$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("block");
        open.field("global_id", Integer.valueOf(this.globalId));
        open.field("info", this.info);
        open.field("value_flow", this.valueFlow);
        open.field("state_update", this.stateUpdate);
        open.field("extra", this.extra);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
