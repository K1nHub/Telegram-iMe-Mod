package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.ULong;
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
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.hashmap.HmeEmpty;
import org.ton.hashmap.HmeRoot;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ShardStateUnsplit.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ShardStateUnsplitAux implements TlbObject {
    private final HashMapE<LibDescr> libraries;
    private final Maybe<BlkMasterInfo> masterRef;
    private final long overloadHistory;
    private final CurrencyCollection totalBalance;
    private final CurrencyCollection totalValidatorFees;
    private final long underloadHistory;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, new SealedClassSerializer("org.ton.hashmap.HashMapE", Reflection.getOrCreateKotlinClass(HashMapE.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmeEmpty.class), Reflection.getOrCreateKotlinClass(HmeRoot.class)}, new KSerializer[]{HmeEmpty.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), HmeRoot.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7788x50c509b1("@type")}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7788x50c509b1("@type")})};

    public /* synthetic */ ShardStateUnsplitAux(int i, ULong uLong, ULong uLong2, CurrencyCollection currencyCollection, CurrencyCollection currencyCollection2, HashMapE hashMapE, Maybe maybe, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uLong, uLong2, currencyCollection, currencyCollection2, hashMapE, maybe, serializationConstructorMarker);
    }

    public /* synthetic */ ShardStateUnsplitAux(long j, long j2, CurrencyCollection currencyCollection, CurrencyCollection currencyCollection2, HashMapE hashMapE, Maybe maybe, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, currencyCollection, currencyCollection2, hashMapE, maybe);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShardStateUnsplitAux) {
            ShardStateUnsplitAux shardStateUnsplitAux = (ShardStateUnsplitAux) obj;
            return this.overloadHistory == shardStateUnsplitAux.overloadHistory && this.underloadHistory == shardStateUnsplitAux.underloadHistory && Intrinsics.areEqual(this.totalBalance, shardStateUnsplitAux.totalBalance) && Intrinsics.areEqual(this.totalValidatorFees, shardStateUnsplitAux.totalValidatorFees) && Intrinsics.areEqual(this.libraries, shardStateUnsplitAux.libraries) && Intrinsics.areEqual(this.masterRef, shardStateUnsplitAux.masterRef);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((ULong.m1999hashCodeimpl(this.overloadHistory) * 31) + ULong.m1999hashCodeimpl(this.underloadHistory)) * 31) + this.totalBalance.hashCode()) * 31) + this.totalValidatorFees.hashCode()) * 31) + this.libraries.hashCode()) * 31) + this.masterRef.hashCode();
    }

    private ShardStateUnsplitAux(int i, ULong uLong, ULong uLong2, CurrencyCollection currencyCollection, CurrencyCollection currencyCollection2, HashMapE<LibDescr> hashMapE, Maybe<BlkMasterInfo> maybe, SerializationConstructorMarker serializationConstructorMarker) {
        if (63 != (i & 63)) {
            PluginExceptionsKt.throwMissingFieldException(i, 63, ShardStateUnsplitAux$$serializer.INSTANCE.getDescriptor());
        }
        this.overloadHistory = uLong.m2001unboximpl();
        this.underloadHistory = uLong2.m2001unboximpl();
        this.totalBalance = currencyCollection;
        this.totalValidatorFees = currencyCollection2;
        this.libraries = hashMapE;
        this.masterRef = maybe;
    }

    private ShardStateUnsplitAux(long j, long j2, CurrencyCollection totalBalance, CurrencyCollection totalValidatorFees, HashMapE<LibDescr> libraries, Maybe<BlkMasterInfo> masterRef) {
        Intrinsics.checkNotNullParameter(totalBalance, "totalBalance");
        Intrinsics.checkNotNullParameter(totalValidatorFees, "totalValidatorFees");
        Intrinsics.checkNotNullParameter(libraries, "libraries");
        Intrinsics.checkNotNullParameter(masterRef, "masterRef");
        this.overloadHistory = j;
        this.underloadHistory = j2;
        this.totalBalance = totalBalance;
        this.totalValidatorFees = totalValidatorFees;
        this.libraries = libraries;
        this.masterRef = masterRef;
    }

    public static final /* synthetic */ void write$Self(ShardStateUnsplitAux shardStateUnsplitAux, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        ULongSerializer uLongSerializer = ULongSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, uLongSerializer, ULong.m1996boximpl(shardStateUnsplitAux.overloadHistory));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, uLongSerializer, ULong.m1996boximpl(shardStateUnsplitAux.underloadHistory));
        CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, currencyCollection$$serializer, shardStateUnsplitAux.totalBalance);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, currencyCollection$$serializer, shardStateUnsplitAux.totalValidatorFees);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], shardStateUnsplitAux.libraries);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], shardStateUnsplitAux.masterRef);
    }

    /* renamed from: getOverloadHistory-s-VKNKU  reason: not valid java name */
    public final long m5368getOverloadHistorysVKNKU() {
        return this.overloadHistory;
    }

    /* renamed from: getUnderloadHistory-s-VKNKU  reason: not valid java name */
    public final long m5369getUnderloadHistorysVKNKU() {
        return this.underloadHistory;
    }

    public final CurrencyCollection getTotalBalance() {
        return this.totalBalance;
    }

    public final CurrencyCollection getTotalValidatorFees() {
        return this.totalValidatorFees;
    }

    public final HashMapE<LibDescr> getLibraries() {
        return this.libraries;
    }

    public final Maybe<BlkMasterInfo> getMasterRef() {
        return this.masterRef;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ShardStateUnsplit.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ShardStateUnsplitAux> {
        private final /* synthetic */ ShardStateUnsplitAuxTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardStateUnsplitAux loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardStateUnsplitAux loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ShardStateUnsplitAux value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ShardStateUnsplitAux> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ShardStateUnsplitAuxTlbConstructor.INSTANCE;
        }

        public final KSerializer<ShardStateUnsplitAux> serializer() {
            return ShardStateUnsplitAux$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("");
        open.field("overload_history", ULong.m1996boximpl(this.overloadHistory));
        open.field("underload_history", ULong.m1996boximpl(this.underloadHistory));
        open.field("total_balance", this.totalBalance);
        open.field("total_validator_fees", this.totalValidatorFees);
        open.field("libraries", this.libraries);
        open.field("master_ref", this.masterRef);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
