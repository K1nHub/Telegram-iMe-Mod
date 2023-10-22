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
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: BlockExtra.kt */
@Serializable
/* loaded from: classes6.dex */
public final class BlockExtra implements TlbObject {
    private final CellRef<HashmapAugE<AccountBlock, CurrencyCollection>> accountBlocks;
    private final BitString createdBy;
    private final Maybe<CellRef<McBlockExtra>> custom;
    private final CellRef<HashmapAugE<InMsg, ImportFees>> inMsgDescr;
    private final CellRef<HashmapAugE<OutMsg, CurrencyCollection>> outMsgDescr;
    private final BitString randSeed;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null, null, new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.BlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BlockExtra) {
            BlockExtra blockExtra = (BlockExtra) obj;
            return Intrinsics.areEqual(this.inMsgDescr, blockExtra.inMsgDescr) && Intrinsics.areEqual(this.outMsgDescr, blockExtra.outMsgDescr) && Intrinsics.areEqual(this.accountBlocks, blockExtra.accountBlocks) && Intrinsics.areEqual(this.randSeed, blockExtra.randSeed) && Intrinsics.areEqual(this.createdBy, blockExtra.createdBy) && Intrinsics.areEqual(this.custom, blockExtra.custom);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.inMsgDescr.hashCode() * 31) + this.outMsgDescr.hashCode()) * 31) + this.accountBlocks.hashCode()) * 31) + this.randSeed.hashCode()) * 31) + this.createdBy.hashCode()) * 31) + this.custom.hashCode();
    }

    public /* synthetic */ BlockExtra(int i, CellRef cellRef, CellRef cellRef2, CellRef cellRef3, BitString bitString, BitString bitString2, Maybe maybe, SerializationConstructorMarker serializationConstructorMarker) {
        if (63 != (i & 63)) {
            PluginExceptionsKt.throwMissingFieldException(i, 63, BlockExtra$$serializer.INSTANCE.getDescriptor());
        }
        this.inMsgDescr = cellRef;
        this.outMsgDescr = cellRef2;
        this.accountBlocks = cellRef3;
        this.randSeed = bitString;
        this.createdBy = bitString2;
        this.custom = maybe;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BlockExtra(CellRef<? extends HashmapAugE<InMsg, ImportFees>> inMsgDescr, CellRef<? extends HashmapAugE<OutMsg, CurrencyCollection>> outMsgDescr, CellRef<? extends HashmapAugE<AccountBlock, CurrencyCollection>> accountBlocks, BitString randSeed, BitString createdBy, Maybe<CellRef<McBlockExtra>> custom) {
        Intrinsics.checkNotNullParameter(inMsgDescr, "inMsgDescr");
        Intrinsics.checkNotNullParameter(outMsgDescr, "outMsgDescr");
        Intrinsics.checkNotNullParameter(accountBlocks, "accountBlocks");
        Intrinsics.checkNotNullParameter(randSeed, "randSeed");
        Intrinsics.checkNotNullParameter(createdBy, "createdBy");
        Intrinsics.checkNotNullParameter(custom, "custom");
        this.inMsgDescr = inMsgDescr;
        this.outMsgDescr = outMsgDescr;
        this.accountBlocks = accountBlocks;
        this.randSeed = randSeed;
        this.createdBy = createdBy;
        this.custom = custom;
    }

    public static final /* synthetic */ void write$Self(BlockExtra blockExtra, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], blockExtra.inMsgDescr);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], blockExtra.outMsgDescr);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], blockExtra.accountBlocks);
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, fiftHexBitStringSerializer, blockExtra.randSeed);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, fiftHexBitStringSerializer, blockExtra.createdBy);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], blockExtra.custom);
    }

    public final CellRef<HashmapAugE<InMsg, ImportFees>> getInMsgDescr() {
        return this.inMsgDescr;
    }

    public final CellRef<HashmapAugE<OutMsg, CurrencyCollection>> getOutMsgDescr() {
        return this.outMsgDescr;
    }

    public final CellRef<HashmapAugE<AccountBlock, CurrencyCollection>> getAccountBlocks() {
        return this.accountBlocks;
    }

    public final BitString getRandSeed() {
        return this.randSeed;
    }

    public final BitString getCreatedBy() {
        return this.createdBy;
    }

    public final Maybe<CellRef<McBlockExtra>> getCustom() {
        return this.custom;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: BlockExtra.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<BlockExtra> {
        private final /* synthetic */ TlbCombinator<BlockExtra> $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public BlockExtra loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public BlockExtra loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, BlockExtra value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = TlbConstructorKt.asTlbCombinator(BlockExtraTlbConstructor.INSTANCE, Reflection.getOrCreateKotlinClass(BlockExtra.class));
        }

        public final KSerializer<BlockExtra> serializer() {
            return BlockExtra$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("block_extra");
        open.field("in_msg_descr", this.inMsgDescr);
        open.field("out_msg_descr", this.outMsgDescr);
        open.field("account_blocks", this.accountBlocks);
        open.field("rand_seed", this.randSeed);
        open.field("created_by", this.createdBy);
        open.field("custom", this.custom);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
