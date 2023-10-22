package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ExtInMsgInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ExtInMsgInfo implements CommonMsgInfo {
    private final MsgAddressInt dest;
    private final Coins importFee;
    private final MsgAddressExt src;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new SealedClassSerializer("org.ton.block.MsgAddressExt", Reflection.getOrCreateKotlinClass(MsgAddressExt.class), new KClass[]{Reflection.getOrCreateKotlinClass(AddrExtern.class), Reflection.getOrCreateKotlinClass(AddrNone.class)}, new KSerializer[]{AddrExtern$$serializer.INSTANCE, new ObjectSerializer("addr_none", AddrNone.INSTANCE, new Annotation[]{new C7477x717c34d6("@type")})}, new Annotation[]{new C7477x717c34d6("@type")}), new SealedClassSerializer("org.ton.block.MsgAddressInt", Reflection.getOrCreateKotlinClass(MsgAddressInt.class), new KClass[]{Reflection.getOrCreateKotlinClass(AddrStd.class), Reflection.getOrCreateKotlinClass(AddrVar.class)}, new KSerializer[]{AddrStd$$serializer.INSTANCE, AddrVar$$serializer.INSTANCE}, new Annotation[]{new C7477x717c34d6("@type")}), null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ExtInMsgInfo) {
            ExtInMsgInfo extInMsgInfo = (ExtInMsgInfo) obj;
            return Intrinsics.areEqual(this.src, extInMsgInfo.src) && Intrinsics.areEqual(this.dest, extInMsgInfo.dest) && Intrinsics.areEqual(this.importFee, extInMsgInfo.importFee);
        }
        return false;
    }

    public int hashCode() {
        return (((this.src.hashCode() * 31) + this.dest.hashCode()) * 31) + this.importFee.hashCode();
    }

    public /* synthetic */ ExtInMsgInfo(int i, MsgAddressExt msgAddressExt, MsgAddressInt msgAddressInt, Coins coins, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, ExtInMsgInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.src = msgAddressExt;
        this.dest = msgAddressInt;
        this.importFee = coins;
    }

    public ExtInMsgInfo(MsgAddressExt src, MsgAddressInt dest, Coins importFee) {
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(dest, "dest");
        Intrinsics.checkNotNullParameter(importFee, "importFee");
        this.src = src;
        this.dest = dest;
        this.importFee = importFee;
    }

    public static final /* synthetic */ void write$Self(ExtInMsgInfo extInMsgInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], extInMsgInfo.src);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], extInMsgInfo.dest);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, Coins$$serializer.INSTANCE, extInMsgInfo.importFee);
    }

    public final MsgAddressExt getSrc() {
        return this.src;
    }

    public final MsgAddressInt getDest() {
        return this.dest;
    }

    public final Coins getImportFee() {
        return this.importFee;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ExtInMsgInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ExtInMsgInfo> {
        private final /* synthetic */ ExtInMsgInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ExtInMsgInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ExtInMsgInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ExtInMsgInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ExtInMsgInfo> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ExtInMsgInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<ExtInMsgInfo> serializer() {
            return ExtInMsgInfo$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("ext_in_msg_info");
        open.field("src", this.src);
        open.field("dest", this.dest);
        open.field("import_fee", this.importFee);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
