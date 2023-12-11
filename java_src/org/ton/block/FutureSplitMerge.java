package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.UInt;
import kotlin.jvm.functions.Function0;
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
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbCombinatorProvider;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: FutureSplitMerge.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public interface FutureSplitMerge extends TlbObject {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: FutureSplitMerge.kt */
    @Serializable
    /* loaded from: classes6.dex */
    public static final class FsmNone implements FutureSplitMerge, TlbConstructorProvider<FsmNone> {
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate;
        public static final FsmNone INSTANCE = new FsmNone();
        private final /* synthetic */ FutureSplitMergeNoneTlbConstructor $$delegate_0 = FutureSplitMergeNoneTlbConstructor.INSTANCE;

        @Override // org.ton.tlb.TlbLoader
        public FsmNone loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public FsmNone loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, FsmNone value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<FsmNone> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        static {
            Lazy<KSerializer<Object>> lazy;
            lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<KSerializer<Object>>() { // from class: org.ton.block.FutureSplitMerge.FsmNone.1
                @Override // kotlin.jvm.functions.Function0
                public final KSerializer<Object> invoke() {
                    return new ObjectSerializer("fsm_none", FsmNone.INSTANCE, new Annotation[]{new C7554xec1cadf2("@type")});
                }
            });
            $cachedSerializer$delegate = lazy;
        }

        private FsmNone() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<FsmNone> serializer() {
            return get$cachedSerializer();
        }

        @Override // org.ton.tlb.TlbObject
        public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
            Intrinsics.checkNotNullParameter(printer, "printer");
            return printer.type("fsm_none");
        }

        public String toString() {
            return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
        }
    }

    /* compiled from: FutureSplitMerge.kt */
    @Serializable
    /* loaded from: classes6.dex */
    public static final class FsmMerge implements FutureSplitMerge {
        public static final Companion Companion = new Companion(null);
        private final int interval;
        private final int mergeUtime;

        public /* synthetic */ FsmMerge(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2);
        }

        public /* synthetic */ FsmMerge(int i, UInt uInt, UInt uInt2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, uInt, uInt2, serializationConstructorMarker);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof FsmMerge) {
                FsmMerge fsmMerge = (FsmMerge) obj;
                return this.mergeUtime == fsmMerge.mergeUtime && this.interval == fsmMerge.interval;
            }
            return false;
        }

        public int hashCode() {
            return (UInt.m1976hashCodeimpl(this.mergeUtime) * 31) + UInt.m1976hashCodeimpl(this.interval);
        }

        private FsmMerge(int i, int i2) {
            this.mergeUtime = i;
            this.interval = i2;
        }

        private FsmMerge(int i, UInt uInt, UInt uInt2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, FutureSplitMerge$FsmMerge$$serializer.INSTANCE.getDescriptor());
            }
            this.mergeUtime = uInt.m1978unboximpl();
            this.interval = uInt2.m1978unboximpl();
        }

        public static final /* synthetic */ void write$Self(FsmMerge fsmMerge, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
            UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
            compositeEncoder.encodeSerializableElement(serialDescriptor, 0, uIntSerializer, UInt.m1973boximpl(fsmMerge.mergeUtime));
            compositeEncoder.encodeSerializableElement(serialDescriptor, 1, uIntSerializer, UInt.m1973boximpl(fsmMerge.interval));
        }

        /* renamed from: getMergeUtime-pVg5ArA  reason: not valid java name */
        public final int m5093getMergeUtimepVg5ArA() {
            return this.mergeUtime;
        }

        /* renamed from: getInterval-pVg5ArA  reason: not valid java name */
        public final int m5092getIntervalpVg5ArA() {
            return this.interval;
        }

        public String toString() {
            return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
        }

        /* compiled from: FutureSplitMerge.kt */
        /* loaded from: classes6.dex */
        public static final class Companion implements TlbConstructorProvider<FsmMerge> {
            private final /* synthetic */ FutureSplitMergeMergeTlbConstructor $$delegate_0;

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Override // org.ton.tlb.TlbLoader
            public FsmMerge loadTlb(Cell cell) {
                Intrinsics.checkNotNullParameter(cell, "cell");
                return this.$$delegate_0.loadTlb(cell);
            }

            @Override // org.ton.tlb.TlbLoader
            public FsmMerge loadTlb(CellSlice cellSlice) {
                Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
                return this.$$delegate_0.loadTlb(cellSlice);
            }

            @Override // org.ton.tlb.TlbStorer
            public void storeTlb(CellBuilder cellBuilder, FsmMerge value) {
                Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
                Intrinsics.checkNotNullParameter(value, "value");
                this.$$delegate_0.storeTlb(cellBuilder, value);
            }

            @Override // org.ton.tlb.providers.TlbConstructorProvider
            public org.ton.tlb.TlbConstructor<FsmMerge> tlbConstructor() {
                return this.$$delegate_0.tlbConstructor();
            }

            private Companion() {
                this.$$delegate_0 = FutureSplitMergeMergeTlbConstructor.INSTANCE;
            }

            public final KSerializer<FsmMerge> serializer() {
                return FutureSplitMerge$FsmMerge$$serializer.INSTANCE;
            }
        }

        @Override // org.ton.tlb.TlbObject
        public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
            Intrinsics.checkNotNullParameter(printer, "printer");
            TlbPrettyPrinter open = printer.open("fsm_merge");
            open.field("merge_utime", UInt.m1973boximpl(this.mergeUtime));
            open.field("interval", UInt.m1973boximpl(this.interval));
            TlbPrettyPrinter.close$default(open, null, 1, null);
            return printer;
        }
    }

    /* compiled from: FutureSplitMerge.kt */
    @Serializable
    /* loaded from: classes6.dex */
    public static final class FsmSplit implements FutureSplitMerge {
        public static final Companion Companion = new Companion(null);
        private final int interval;
        private final int splitUtime;

        public /* synthetic */ FsmSplit(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2);
        }

        public /* synthetic */ FsmSplit(int i, UInt uInt, UInt uInt2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, uInt, uInt2, serializationConstructorMarker);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof FsmSplit) {
                FsmSplit fsmSplit = (FsmSplit) obj;
                return this.splitUtime == fsmSplit.splitUtime && this.interval == fsmSplit.interval;
            }
            return false;
        }

        public int hashCode() {
            return (UInt.m1976hashCodeimpl(this.splitUtime) * 31) + UInt.m1976hashCodeimpl(this.interval);
        }

        private FsmSplit(int i, int i2) {
            this.splitUtime = i;
            this.interval = i2;
        }

        private FsmSplit(int i, UInt uInt, UInt uInt2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i & 3)) {
                PluginExceptionsKt.throwMissingFieldException(i, 3, FutureSplitMerge$FsmSplit$$serializer.INSTANCE.getDescriptor());
            }
            this.splitUtime = uInt.m1978unboximpl();
            this.interval = uInt2.m1978unboximpl();
        }

        public static final /* synthetic */ void write$Self(FsmSplit fsmSplit, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
            UIntSerializer uIntSerializer = UIntSerializer.INSTANCE;
            compositeEncoder.encodeSerializableElement(serialDescriptor, 0, uIntSerializer, UInt.m1973boximpl(fsmSplit.splitUtime));
            compositeEncoder.encodeSerializableElement(serialDescriptor, 1, uIntSerializer, UInt.m1973boximpl(fsmSplit.interval));
        }

        /* renamed from: getSplitUtime-pVg5ArA  reason: not valid java name */
        public final int m5095getSplitUtimepVg5ArA() {
            return this.splitUtime;
        }

        /* renamed from: getInterval-pVg5ArA  reason: not valid java name */
        public final int m5094getIntervalpVg5ArA() {
            return this.interval;
        }

        public String toString() {
            return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
        }

        /* compiled from: FutureSplitMerge.kt */
        /* loaded from: classes6.dex */
        public static final class Companion implements TlbConstructorProvider<FsmSplit> {
            private final /* synthetic */ FsmSplitTlbConstructor $$delegate_0;

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Override // org.ton.tlb.TlbLoader
            public FsmSplit loadTlb(Cell cell) {
                Intrinsics.checkNotNullParameter(cell, "cell");
                return this.$$delegate_0.loadTlb(cell);
            }

            @Override // org.ton.tlb.TlbLoader
            public FsmSplit loadTlb(CellSlice cellSlice) {
                Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
                return this.$$delegate_0.loadTlb(cellSlice);
            }

            @Override // org.ton.tlb.TlbStorer
            public void storeTlb(CellBuilder cellBuilder, FsmSplit value) {
                Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
                Intrinsics.checkNotNullParameter(value, "value");
                this.$$delegate_0.storeTlb(cellBuilder, value);
            }

            @Override // org.ton.tlb.providers.TlbConstructorProvider
            public org.ton.tlb.TlbConstructor<FsmSplit> tlbConstructor() {
                return this.$$delegate_0.tlbConstructor();
            }

            private Companion() {
                this.$$delegate_0 = FsmSplitTlbConstructor.INSTANCE;
            }

            public final KSerializer<FsmSplit> serializer() {
                return FutureSplitMerge$FsmSplit$$serializer.INSTANCE;
            }
        }

        @Override // org.ton.tlb.TlbObject
        public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
            Intrinsics.checkNotNullParameter(printer, "printer");
            TlbPrettyPrinter open = printer.open("fsm_split");
            open.field("split_utime", UInt.m1973boximpl(this.splitUtime));
            open.field("interval", UInt.m1973boximpl(this.interval));
            TlbPrettyPrinter.close$default(open, null, 1, null);
            return printer;
        }
    }

    /* compiled from: FutureSplitMerge.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<FutureSplitMerge> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ FutureSplitMergeTlbCombinator $$delegate_0 = FutureSplitMergeTlbCombinator.INSTANCE;

        @Override // org.ton.tlb.TlbLoader
        public FutureSplitMerge loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public FutureSplitMerge loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, FutureSplitMerge value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<FutureSplitMerge> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
        }

        public final KSerializer<FutureSplitMerge> serializer() {
            return new SealedClassSerializer("org.ton.block.FutureSplitMerge", Reflection.getOrCreateKotlinClass(FutureSplitMerge.class), new KClass[]{Reflection.getOrCreateKotlinClass(FsmMerge.class), Reflection.getOrCreateKotlinClass(FsmNone.class), Reflection.getOrCreateKotlinClass(FsmSplit.class)}, new KSerializer[]{FutureSplitMerge$FsmMerge$$serializer.INSTANCE, new ObjectSerializer("fsm_none", FsmNone.INSTANCE, new Annotation[]{new C7554xec1cadf2("@type")}), FutureSplitMerge$FsmSplit$$serializer.INSTANCE}, new Annotation[]{new C7554xec1cadf2("@type")});
        }
    }
}
