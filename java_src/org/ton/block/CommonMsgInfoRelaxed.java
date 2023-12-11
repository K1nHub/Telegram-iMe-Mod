package org.ton.block;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
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
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbCombinatorProvider;
/* compiled from: CommonMsgInfoRelaxed.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface CommonMsgInfoRelaxed extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: CommonMsgInfoRelaxed.kt */
    /* loaded from: classes6.dex */
    public static final class IntMsgInfoRelaxed implements CommonMsgInfoRelaxed {
        private final boolean bounce;
        private final boolean bounced;
        private final int createdAt;
        private final long createdLt;
        private final MsgAddressInt dest;
        private final Coins fwdFee;
        private final boolean ihrDisabled;
        private final Coins ihrFee;
        private final MsgAddress src;
        private final CurrencyCollection value;

        public /* synthetic */ IntMsgInfoRelaxed(boolean z, boolean z2, boolean z3, MsgAddress msgAddress, MsgAddressInt msgAddressInt, CurrencyCollection currencyCollection, Coins coins, Coins coins2, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, z2, z3, msgAddress, msgAddressInt, currencyCollection, coins, coins2, j, i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof IntMsgInfoRelaxed) {
                IntMsgInfoRelaxed intMsgInfoRelaxed = (IntMsgInfoRelaxed) obj;
                return this.ihrDisabled == intMsgInfoRelaxed.ihrDisabled && this.bounce == intMsgInfoRelaxed.bounce && this.bounced == intMsgInfoRelaxed.bounced && Intrinsics.areEqual(this.src, intMsgInfoRelaxed.src) && Intrinsics.areEqual(this.dest, intMsgInfoRelaxed.dest) && Intrinsics.areEqual(this.value, intMsgInfoRelaxed.value) && Intrinsics.areEqual(this.ihrFee, intMsgInfoRelaxed.ihrFee) && Intrinsics.areEqual(this.fwdFee, intMsgInfoRelaxed.fwdFee) && this.createdLt == intMsgInfoRelaxed.createdLt && this.createdAt == intMsgInfoRelaxed.createdAt;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v20 */
        /* JADX WARN: Type inference failed for: r0v21 */
        /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
        public int hashCode() {
            boolean z = this.ihrDisabled;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            int i = r0 * 31;
            ?? r2 = this.bounce;
            int i2 = r2;
            if (r2 != 0) {
                i2 = 1;
            }
            int i3 = (i + i2) * 31;
            boolean z2 = this.bounced;
            return ((((((((((((((i3 + (z2 ? 1 : z2 ? 1 : 0)) * 31) + this.src.hashCode()) * 31) + this.dest.hashCode()) * 31) + this.value.hashCode()) * 31) + this.ihrFee.hashCode()) * 31) + this.fwdFee.hashCode()) * 31) + ULong.m1998hashCodeimpl(this.createdLt)) * 31) + UInt.m1976hashCodeimpl(this.createdAt);
        }

        private IntMsgInfoRelaxed(boolean z, boolean z2, boolean z3, MsgAddress src, MsgAddressInt dest, CurrencyCollection value, Coins ihrFee, Coins fwdFee, long j, int i) {
            Intrinsics.checkNotNullParameter(src, "src");
            Intrinsics.checkNotNullParameter(dest, "dest");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(ihrFee, "ihrFee");
            Intrinsics.checkNotNullParameter(fwdFee, "fwdFee");
            this.ihrDisabled = z;
            this.bounce = z2;
            this.bounced = z3;
            this.src = src;
            this.dest = dest;
            this.value = value;
            this.ihrFee = ihrFee;
            this.fwdFee = fwdFee;
            this.createdLt = j;
            this.createdAt = i;
        }

        public final boolean getIhrDisabled() {
            return this.ihrDisabled;
        }

        public final boolean getBounce() {
            return this.bounce;
        }

        public final boolean getBounced() {
            return this.bounced;
        }

        public final MsgAddress getSrc() {
            return this.src;
        }

        public final MsgAddressInt getDest() {
            return this.dest;
        }

        public final CurrencyCollection getValue() {
            return this.value;
        }

        public final Coins getIhrFee() {
            return this.ihrFee;
        }

        public final Coins getFwdFee() {
            return this.fwdFee;
        }

        /* renamed from: getCreatedLt-s-VKNKU  reason: not valid java name */
        public final long m5082getCreatedLtsVKNKU() {
            return this.createdLt;
        }

        /* renamed from: getCreatedAt-pVg5ArA  reason: not valid java name */
        public final int m5081getCreatedAtpVg5ArA() {
            return this.createdAt;
        }

        public String toString() {
            return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
        }

        @Override // org.ton.tlb.TlbObject
        public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
            Intrinsics.checkNotNullParameter(printer, "printer");
            TlbPrettyPrinter open = printer.open("int_msg_info");
            open.field("ihr_disabled", Boolean.valueOf(this.ihrDisabled));
            open.field("bounce", Boolean.valueOf(this.bounce));
            open.field("bounced", Boolean.valueOf(this.bounced));
            open.field("src", this.src);
            open.field("dest", this.dest);
            open.field(AppMeasurementSdk.ConditionalUserProperty.VALUE, this.value);
            open.field("ihr_fee", this.ihrFee);
            open.field("fwd_fee", this.fwdFee);
            open.field("created_lt", ULong.m1995boximpl(this.createdLt));
            open.field("created_at", UInt.m1973boximpl(this.createdAt));
            TlbPrettyPrinter.close$default(open, null, 1, null);
            return printer;
        }
    }

    /* compiled from: CommonMsgInfoRelaxed.kt */
    /* loaded from: classes6.dex */
    public static final class ExtOutMsgInfoRelaxed implements CommonMsgInfoRelaxed {
        private final int createdAt;
        private final long createdLt;
        private final MsgAddressExt dest;
        private final MsgAddress src;

        public /* synthetic */ ExtOutMsgInfoRelaxed(MsgAddress msgAddress, MsgAddressExt msgAddressExt, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(msgAddress, msgAddressExt, j, i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ExtOutMsgInfoRelaxed) {
                ExtOutMsgInfoRelaxed extOutMsgInfoRelaxed = (ExtOutMsgInfoRelaxed) obj;
                return Intrinsics.areEqual(this.src, extOutMsgInfoRelaxed.src) && Intrinsics.areEqual(this.dest, extOutMsgInfoRelaxed.dest) && this.createdLt == extOutMsgInfoRelaxed.createdLt && this.createdAt == extOutMsgInfoRelaxed.createdAt;
            }
            return false;
        }

        public int hashCode() {
            return (((((this.src.hashCode() * 31) + this.dest.hashCode()) * 31) + ULong.m1998hashCodeimpl(this.createdLt)) * 31) + UInt.m1976hashCodeimpl(this.createdAt);
        }

        private ExtOutMsgInfoRelaxed(MsgAddress src, MsgAddressExt dest, long j, int i) {
            Intrinsics.checkNotNullParameter(src, "src");
            Intrinsics.checkNotNullParameter(dest, "dest");
            this.src = src;
            this.dest = dest;
            this.createdLt = j;
            this.createdAt = i;
        }

        public final MsgAddress getSrc() {
            return this.src;
        }

        public final MsgAddressExt getDest() {
            return this.dest;
        }

        /* renamed from: getCreatedLt-s-VKNKU  reason: not valid java name */
        public final long m5080getCreatedLtsVKNKU() {
            return this.createdLt;
        }

        /* renamed from: getCreatedAt-pVg5ArA  reason: not valid java name */
        public final int m5079getCreatedAtpVg5ArA() {
            return this.createdAt;
        }

        public String toString() {
            return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
        }

        @Override // org.ton.tlb.TlbObject
        public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
            Intrinsics.checkNotNullParameter(printer, "printer");
            TlbPrettyPrinter open = printer.open("ext_out_msg_info");
            open.field("src", this.src);
            open.field("dest", this.dest);
            open.field("created_lt", ULong.m1995boximpl(this.createdLt));
            open.field("created_at", UInt.m1973boximpl(this.createdAt));
            TlbPrettyPrinter.close$default(open, null, 1, null);
            return printer;
        }
    }

    /* compiled from: CommonMsgInfoRelaxed.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<CommonMsgInfoRelaxed> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ CommonMsgInfoRelaxedTlbCombinator $$delegate_0 = CommonMsgInfoRelaxedTlbCombinator.INSTANCE;

        @Override // org.ton.tlb.TlbLoader
        public CommonMsgInfoRelaxed loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public CommonMsgInfoRelaxed loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, CommonMsgInfoRelaxed value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<CommonMsgInfoRelaxed> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
        }

        public final KSerializer<CommonMsgInfoRelaxed> serializer() {
            return new SealedClassSerializer("org.ton.block.CommonMsgInfoRelaxed", Reflection.getOrCreateKotlinClass(CommonMsgInfoRelaxed.class), new KClass[0], new KSerializer[0], new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.CommonMsgInfoRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
            }});
        }
    }
}
