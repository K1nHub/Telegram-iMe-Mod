package org.ton.block;

import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: IntMsgInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class IntMsgInfo implements CommonMsgInfo {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final boolean bounce;
    private final boolean bounced;
    private final int created_at;
    private final long created_lt;
    private final MsgAddressInt dest;
    private final Coins fwd_fee;
    private final boolean ihrDisabled;
    private final Coins ihr_fee;
    private final MsgAddressInt src;
    private final CurrencyCollection value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IntMsgInfo) {
            IntMsgInfo intMsgInfo = (IntMsgInfo) obj;
            return this.ihrDisabled == intMsgInfo.ihrDisabled && this.bounce == intMsgInfo.bounce && this.bounced == intMsgInfo.bounced && Intrinsics.areEqual(this.src, intMsgInfo.src) && Intrinsics.areEqual(this.dest, intMsgInfo.dest) && Intrinsics.areEqual(this.value, intMsgInfo.value) && Intrinsics.areEqual(this.ihr_fee, intMsgInfo.ihr_fee) && Intrinsics.areEqual(this.fwd_fee, intMsgInfo.fwd_fee) && this.created_lt == intMsgInfo.created_lt && this.created_at == intMsgInfo.created_at;
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
        return ((((((((((((((i3 + (z2 ? 1 : z2 ? 1 : 0)) * 31) + this.src.hashCode()) * 31) + this.dest.hashCode()) * 31) + this.value.hashCode()) * 31) + this.ihr_fee.hashCode()) * 31) + this.fwd_fee.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.created_lt)) * 31) + this.created_at;
    }

    public /* synthetic */ IntMsgInfo(int i, boolean z, boolean z2, boolean z3, MsgAddressInt msgAddressInt, MsgAddressInt msgAddressInt2, CurrencyCollection currencyCollection, Coins coins, Coins coins2, long j, int i2, SerializationConstructorMarker serializationConstructorMarker) {
        if (1023 != (i & AnalyticsListener.EVENT_DRM_KEYS_LOADED)) {
            PluginExceptionsKt.throwMissingFieldException(i, AnalyticsListener.EVENT_DRM_KEYS_LOADED, IntMsgInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.ihrDisabled = z;
        this.bounce = z2;
        this.bounced = z3;
        this.src = msgAddressInt;
        this.dest = msgAddressInt2;
        this.value = currencyCollection;
        this.ihr_fee = coins;
        this.fwd_fee = coins2;
        this.created_lt = j;
        this.created_at = i2;
    }

    public IntMsgInfo(boolean z, boolean z2, boolean z3, MsgAddressInt src, MsgAddressInt dest, CurrencyCollection value, Coins ihr_fee, Coins fwd_fee, long j, int i) {
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(dest, "dest");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(ihr_fee, "ihr_fee");
        Intrinsics.checkNotNullParameter(fwd_fee, "fwd_fee");
        this.ihrDisabled = z;
        this.bounce = z2;
        this.bounced = z3;
        this.src = src;
        this.dest = dest;
        this.value = value;
        this.ihr_fee = ihr_fee;
        this.fwd_fee = fwd_fee;
        this.created_lt = j;
        this.created_at = i;
    }

    public static final /* synthetic */ void write$Self(IntMsgInfo intMsgInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeBooleanElement(serialDescriptor, 0, intMsgInfo.ihrDisabled);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 1, intMsgInfo.bounce);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 2, intMsgInfo.bounced);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], intMsgInfo.src);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], intMsgInfo.dest);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 5, CurrencyCollection$$serializer.INSTANCE, intMsgInfo.value);
        Coins$$serializer coins$$serializer = Coins$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 6, coins$$serializer, intMsgInfo.ihr_fee);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 7, coins$$serializer, intMsgInfo.fwd_fee);
        compositeEncoder.encodeLongElement(serialDescriptor, 8, intMsgInfo.created_lt);
        compositeEncoder.encodeIntElement(serialDescriptor, 9, intMsgInfo.created_at);
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

    public final MsgAddressInt getSrc() {
        return this.src;
    }

    public final MsgAddressInt getDest() {
        return this.dest;
    }

    public final CurrencyCollection getValue() {
        return this.value;
    }

    public final Coins getIhr_fee() {
        return this.ihr_fee;
    }

    public final Coins getFwd_fee() {
        return this.fwd_fee;
    }

    public final long getCreated_lt() {
        return this.created_lt;
    }

    public final int getCreated_at() {
        return this.created_at;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: IntMsgInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<IntMsgInfo> {
        private final /* synthetic */ IntMsgInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public IntMsgInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public IntMsgInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, IntMsgInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<IntMsgInfo> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = IntMsgInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<IntMsgInfo> serializer() {
            return IntMsgInfo$$serializer.INSTANCE;
        }
    }

    static {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MsgAddressInt.class);
        KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(AddrStd.class), Reflection.getOrCreateKotlinClass(AddrVar.class)};
        AddrStd$$serializer addrStd$$serializer = AddrStd$$serializer.INSTANCE;
        AddrVar$$serializer addrVar$$serializer = AddrVar$$serializer.INSTANCE;
        $childSerializers = new KSerializer[]{null, null, null, new SealedClassSerializer("org.ton.block.MsgAddressInt", orCreateKotlinClass, kClassArr, new KSerializer[]{addrStd$$serializer, addrVar$$serializer}, new Annotation[]{new C7558x56daaf1f("@type")}), new SealedClassSerializer("org.ton.block.MsgAddressInt", Reflection.getOrCreateKotlinClass(MsgAddressInt.class), new KClass[]{Reflection.getOrCreateKotlinClass(AddrStd.class), Reflection.getOrCreateKotlinClass(AddrVar.class)}, new KSerializer[]{addrStd$$serializer, addrVar$$serializer}, new Annotation[]{new C7558x56daaf1f("@type")}), null, null, null, null, null};
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
        open.field("ihr_fee", this.ihr_fee);
        open.field("fwd_fee", this.fwd_fee);
        open.field("created_lt", Long.valueOf(this.created_lt));
        open.field("created_at", Integer.valueOf(this.created_at));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
