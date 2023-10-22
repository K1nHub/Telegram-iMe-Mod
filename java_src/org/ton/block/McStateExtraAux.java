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
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: McStateExtra.kt */
@Serializable
/* loaded from: classes6.dex */
public final class McStateExtraAux implements TlbObject {
    private final boolean afterKeyBlock;
    private final BlockCreateStats blockCreateStats;
    private final int flags;
    private final Maybe<ExtBlkRef> lastKeyBlock;
    private final HashmapAugE<KeyExtBlkRef, KeyMaxLt> prevBlocks;
    private final ValidatorInfo validatorInfo;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.McStateExtraAux$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
        private final /* synthetic */ String discriminator;

        {
            Intrinsics.checkNotNullParameter(discriminator, "discriminator");
            this.discriminator = discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final /* synthetic */ Class annotationType() {
            return JsonClassDiscriminator.class;
        }

        @Override // kotlinx.serialization.json.JsonClassDiscriminator
        public final /* synthetic */ String discriminator() {
            return this.discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final boolean equals(Object obj) {
            return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
        }

        @Override // java.lang.annotation.Annotation
        public final int hashCode() {
            return this.discriminator.hashCode() ^ 707790692;
        }

        @Override // java.lang.annotation.Annotation
        public final String toString() {
            return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
        }
    }}), new SealedClassSerializer("org.ton.block.BlockCreateStats", Reflection.getOrCreateKotlinClass(BlockCreateStats.class), new KClass[]{Reflection.getOrCreateKotlinClass(BlockCreateStatsExt.class), Reflection.getOrCreateKotlinClass(BlockCreateStatsRegular.class)}, new KSerializer[]{BlockCreateStatsExt$$serializer.INSTANCE, BlockCreateStatsRegular$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.McStateExtraAux$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
        private final /* synthetic */ String discriminator;

        {
            Intrinsics.checkNotNullParameter(discriminator, "discriminator");
            this.discriminator = discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final /* synthetic */ Class annotationType() {
            return JsonClassDiscriminator.class;
        }

        @Override // kotlinx.serialization.json.JsonClassDiscriminator
        public final /* synthetic */ String discriminator() {
            return this.discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final boolean equals(Object obj) {
            return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
        }

        @Override // java.lang.annotation.Annotation
        public final int hashCode() {
            return this.discriminator.hashCode() ^ 707790692;
        }

        @Override // java.lang.annotation.Annotation
        public final String toString() {
            return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
        }
    }})};

    public /* synthetic */ McStateExtraAux(int i, int i2, ValidatorInfo validatorInfo, HashmapAugE hashmapAugE, boolean z, Maybe maybe, BlockCreateStats blockCreateStats, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, validatorInfo, hashmapAugE, z, maybe, blockCreateStats, serializationConstructorMarker);
    }

    public /* synthetic */ McStateExtraAux(int i, ValidatorInfo validatorInfo, HashmapAugE hashmapAugE, boolean z, Maybe maybe, BlockCreateStats blockCreateStats, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, validatorInfo, hashmapAugE, z, maybe, blockCreateStats);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof McStateExtraAux) {
            McStateExtraAux mcStateExtraAux = (McStateExtraAux) obj;
            return this.flags == mcStateExtraAux.flags && Intrinsics.areEqual(this.validatorInfo, mcStateExtraAux.validatorInfo) && OldMcBlocksInfo.m4980equalsimpl0(this.prevBlocks, mcStateExtraAux.prevBlocks) && this.afterKeyBlock == mcStateExtraAux.afterKeyBlock && Intrinsics.areEqual(this.lastKeyBlock, mcStateExtraAux.lastKeyBlock) && Intrinsics.areEqual(this.blockCreateStats, mcStateExtraAux.blockCreateStats);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.flags * 31) + this.validatorInfo.hashCode()) * 31) + OldMcBlocksInfo.m4981hashCodeimpl(this.prevBlocks)) * 31;
        boolean z = this.afterKeyBlock;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int hashCode2 = (((hashCode + i) * 31) + this.lastKeyBlock.hashCode()) * 31;
        BlockCreateStats blockCreateStats = this.blockCreateStats;
        return hashCode2 + (blockCreateStats == null ? 0 : blockCreateStats.hashCode());
    }

    private McStateExtraAux(int i, int i2, ValidatorInfo validatorInfo, HashmapAugE<KeyExtBlkRef, KeyMaxLt> hashmapAugE, boolean z, Maybe<ExtBlkRef> maybe, BlockCreateStats blockCreateStats, SerializationConstructorMarker serializationConstructorMarker) {
        if (63 != (i & 63)) {
            PluginExceptionsKt.throwMissingFieldException(i, 63, McStateExtraAux$$serializer.INSTANCE.getDescriptor());
        }
        this.flags = i2;
        this.validatorInfo = validatorInfo;
        this.prevBlocks = hashmapAugE;
        this.afterKeyBlock = z;
        this.lastKeyBlock = maybe;
        this.blockCreateStats = blockCreateStats;
        if (i2 <= 1) {
            return;
        }
        throw new IllegalStateException(("Invalid flags: " + i2).toString());
    }

    private McStateExtraAux(int i, ValidatorInfo validatorInfo, HashmapAugE<KeyExtBlkRef, KeyMaxLt> prevBlocks, boolean z, Maybe<ExtBlkRef> lastKeyBlock, BlockCreateStats blockCreateStats) {
        Intrinsics.checkNotNullParameter(validatorInfo, "validatorInfo");
        Intrinsics.checkNotNullParameter(prevBlocks, "prevBlocks");
        Intrinsics.checkNotNullParameter(lastKeyBlock, "lastKeyBlock");
        this.flags = i;
        this.validatorInfo = validatorInfo;
        this.prevBlocks = prevBlocks;
        this.afterKeyBlock = z;
        this.lastKeyBlock = lastKeyBlock;
        this.blockCreateStats = blockCreateStats;
        if (i <= 1) {
            return;
        }
        throw new IllegalStateException(("Invalid flags: " + i).toString());
    }

    public static final /* synthetic */ void write$Self(McStateExtraAux mcStateExtraAux, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeIntElement(serialDescriptor, 0, mcStateExtraAux.flags);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ValidatorInfo$$serializer.INSTANCE, mcStateExtraAux.validatorInfo);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, OldMcBlocksInfo$$serializer.INSTANCE, OldMcBlocksInfo.m4977boximpl(mcStateExtraAux.prevBlocks));
        compositeEncoder.encodeBooleanElement(serialDescriptor, 3, mcStateExtraAux.afterKeyBlock);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], mcStateExtraAux.lastKeyBlock);
        compositeEncoder.encodeNullableSerializableElement(serialDescriptor, 5, kSerializerArr[5], mcStateExtraAux.blockCreateStats);
    }

    public final int getFlags() {
        return this.flags;
    }

    public final ValidatorInfo getValidatorInfo() {
        return this.validatorInfo;
    }

    /* renamed from: getPrevBlocks-D6f0ERk  reason: not valid java name */
    public final HashmapAugE<KeyExtBlkRef, KeyMaxLt> m4969getPrevBlocksD6f0ERk() {
        return this.prevBlocks;
    }

    public final boolean getAfterKeyBlock() {
        return this.afterKeyBlock;
    }

    public final Maybe<ExtBlkRef> getLastKeyBlock() {
        return this.lastKeyBlock;
    }

    public final BlockCreateStats getBlockCreateStats() {
        return this.blockCreateStats;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: McStateExtra.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<McStateExtraAux> {
        private final /* synthetic */ McStateExtraAuxTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public McStateExtraAux loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public McStateExtraAux loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, McStateExtraAux value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<McStateExtraAux> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = McStateExtraAuxTlbConstructor.INSTANCE;
        }

        public final KSerializer<McStateExtraAux> serializer() {
            return McStateExtraAux$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("");
        open.field("flags", Integer.valueOf(this.flags));
        open.field("validator_info", this.validatorInfo);
        open.field("prev_blocks", OldMcBlocksInfo.m4977boximpl(this.prevBlocks));
        open.field("after_key_block", Boolean.valueOf(this.afterKeyBlock));
        open.field("last_key_block", this.lastKeyBlock);
        open.field("block_create_stats", this.blockCreateStats);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
