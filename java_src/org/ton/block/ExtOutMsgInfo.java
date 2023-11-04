package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.UInt;
import kotlin.ULong;
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
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ExtOutMsgInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ExtOutMsgInfo implements CommonMsgInfo {
    private final int createdAt;
    private final long createdLt;
    private final MsgAddressExt dest;
    private final MsgAddressInt src;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new SealedClassSerializer("org.ton.block.MsgAddressInt", Reflection.getOrCreateKotlinClass(MsgAddressInt.class), new KClass[]{Reflection.getOrCreateKotlinClass(AddrStd.class), Reflection.getOrCreateKotlinClass(AddrVar.class)}, new KSerializer[]{AddrStd$$serializer.INSTANCE, AddrVar$$serializer.INSTANCE}, new Annotation[]{new C7553xb643addd("@type")}), new SealedClassSerializer("org.ton.block.MsgAddressExt", Reflection.getOrCreateKotlinClass(MsgAddressExt.class), new KClass[]{Reflection.getOrCreateKotlinClass(AddrExtern.class), Reflection.getOrCreateKotlinClass(AddrNone.class)}, new KSerializer[]{AddrExtern$$serializer.INSTANCE, new ObjectSerializer("addr_none", AddrNone.INSTANCE, new Annotation[]{new C7553xb643addd("@type")})}, new Annotation[]{new C7553xb643addd("@type")}), null, null};

    public /* synthetic */ ExtOutMsgInfo(int i, MsgAddressInt msgAddressInt, MsgAddressExt msgAddressExt, ULong uLong, UInt uInt, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, msgAddressInt, msgAddressExt, uLong, uInt, serializationConstructorMarker);
    }

    public /* synthetic */ ExtOutMsgInfo(MsgAddressInt msgAddressInt, MsgAddressExt msgAddressExt, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(msgAddressInt, msgAddressExt, j, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ExtOutMsgInfo) {
            ExtOutMsgInfo extOutMsgInfo = (ExtOutMsgInfo) obj;
            return Intrinsics.areEqual(this.src, extOutMsgInfo.src) && Intrinsics.areEqual(this.dest, extOutMsgInfo.dest) && this.createdLt == extOutMsgInfo.createdLt && this.createdAt == extOutMsgInfo.createdAt;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.src.hashCode() * 31) + this.dest.hashCode()) * 31) + ULong.m1996hashCodeimpl(this.createdLt)) * 31) + UInt.m1974hashCodeimpl(this.createdAt);
    }

    private ExtOutMsgInfo(int i, MsgAddressInt msgAddressInt, MsgAddressExt msgAddressExt, ULong uLong, UInt uInt, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, ExtOutMsgInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.src = msgAddressInt;
        this.dest = msgAddressExt;
        this.createdLt = uLong.m1998unboximpl();
        this.createdAt = uInt.m1976unboximpl();
    }

    private ExtOutMsgInfo(MsgAddressInt src, MsgAddressExt dest, long j, int i) {
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(dest, "dest");
        this.src = src;
        this.dest = dest;
        this.createdLt = j;
        this.createdAt = i;
    }

    public static final /* synthetic */ void write$Self(ExtOutMsgInfo extOutMsgInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], extOutMsgInfo.src);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], extOutMsgInfo.dest);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, ULongSerializer.INSTANCE, ULong.m1993boximpl(extOutMsgInfo.createdLt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, UIntSerializer.INSTANCE, UInt.m1971boximpl(extOutMsgInfo.createdAt));
    }

    public final MsgAddressInt getSrc() {
        return this.src;
    }

    public final MsgAddressExt getDest() {
        return this.dest;
    }

    /* renamed from: getCreatedLt-s-VKNKU  reason: not valid java name */
    public final long m5109getCreatedLtsVKNKU() {
        return this.createdLt;
    }

    /* renamed from: getCreatedAt-pVg5ArA  reason: not valid java name */
    public final int m5108getCreatedAtpVg5ArA() {
        return this.createdAt;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ExtOutMsgInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ExtOutMsgInfo> {
        private final /* synthetic */ ExtOutMsgInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ExtOutMsgInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ExtOutMsgInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ExtOutMsgInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ExtOutMsgInfo> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ExtOutMsgInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<ExtOutMsgInfo> serializer() {
            return ExtOutMsgInfo$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("ext_out_msg_info");
        open.field("src", this.src);
        open.field("dest", this.dest);
        open.field("created_lt", ULong.m1993boximpl(this.createdLt));
        open.field("created_at", UInt.m1971boximpl(this.createdAt));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
