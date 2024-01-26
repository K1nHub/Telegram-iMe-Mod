package org.ton.block;

import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
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
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: MsgExportDeqShort.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MsgExportDeqShort implements OutMsg {
    public static final Companion Companion = new Companion(null);
    private final long importBlockLt;
    private final BitString msgEnvHash;
    private final long nextAddrPfx;
    private final int nextWorkchain;

    public /* synthetic */ MsgExportDeqShort(int i, BitString bitString, int i2, ULong uLong, ULong uLong2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, bitString, i2, uLong, uLong2, serializationConstructorMarker);
    }

    public /* synthetic */ MsgExportDeqShort(BitString bitString, int i, long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(bitString, i, j, j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MsgExportDeqShort) {
            MsgExportDeqShort msgExportDeqShort = (MsgExportDeqShort) obj;
            return Intrinsics.areEqual(this.msgEnvHash, msgExportDeqShort.msgEnvHash) && this.nextWorkchain == msgExportDeqShort.nextWorkchain && this.nextAddrPfx == msgExportDeqShort.nextAddrPfx && this.importBlockLt == msgExportDeqShort.importBlockLt;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.msgEnvHash.hashCode() * 31) + this.nextWorkchain) * 31) + ULong.m1999hashCodeimpl(this.nextAddrPfx)) * 31) + ULong.m1999hashCodeimpl(this.importBlockLt);
    }

    private MsgExportDeqShort(int i, BitString bitString, int i2, ULong uLong, ULong uLong2, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, MsgExportDeqShort$$serializer.INSTANCE.getDescriptor());
        }
        this.msgEnvHash = bitString;
        this.nextWorkchain = i2;
        this.nextAddrPfx = uLong.m2001unboximpl();
        this.importBlockLt = uLong2.m2001unboximpl();
    }

    private MsgExportDeqShort(BitString msgEnvHash, int i, long j, long j2) {
        Intrinsics.checkNotNullParameter(msgEnvHash, "msgEnvHash");
        this.msgEnvHash = msgEnvHash;
        this.nextWorkchain = i;
        this.nextAddrPfx = j;
        this.importBlockLt = j2;
    }

    public static final /* synthetic */ void write$Self(MsgExportDeqShort msgExportDeqShort, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, FiftHexBitStringSerializer.INSTANCE, msgExportDeqShort.msgEnvHash);
        compositeEncoder.encodeIntElement(serialDescriptor, 1, msgExportDeqShort.nextWorkchain);
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, uLongSerializer, ULong.m1996boximpl(msgExportDeqShort.nextAddrPfx));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, uLongSerializer, ULong.m1996boximpl(msgExportDeqShort.importBlockLt));
    }

    public final BitString getMsgEnvHash() {
        return this.msgEnvHash;
    }

    public final int getNextWorkchain() {
        return this.nextWorkchain;
    }

    /* renamed from: getNextAddrPfx-s-VKNKU  reason: not valid java name */
    public final long m5297getNextAddrPfxsVKNKU() {
        return this.nextAddrPfx;
    }

    /* renamed from: getImportBlockLt-s-VKNKU  reason: not valid java name */
    public final long m5296getImportBlockLtsVKNKU() {
        return this.importBlockLt;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: MsgExportDeqShort.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<MsgExportDeqShort> {
        private final /* synthetic */ MsgExportDeqShortTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgExportDeqShort loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgExportDeqShort loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgExportDeqShort value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<MsgExportDeqShort> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = MsgExportDeqShortTlbConstructor.INSTANCE;
        }

        public final KSerializer<MsgExportDeqShort> serializer() {
            return MsgExportDeqShort$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("msg_export_deq_short");
        open.field("msg_env_hash", this.msgEnvHash);
        open.field("next_workchain", Integer.valueOf(this.nextWorkchain));
        open.field("next_addr_pfx", ULong.m1996boximpl(this.nextAddrPfx));
        open.field("import_block_lt", ULong.m1996boximpl(this.importBlockLt));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
