package org.ton.tlb.constructor;

import java.math.BigInteger;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbConstructor;
/* compiled from: UIntTlbConstructor.kt */
/* loaded from: classes6.dex */
public class UIntTlbConstructor extends TlbConstructor<BigInteger> {
    public static final Companion Companion = new Companion(null);

    /* compiled from: UIntTlbConstructor.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ TlbConstructor int$default(Companion companion, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = 32;
            }
            return companion.m5255int(i);
        }

        /* renamed from: int  reason: not valid java name */
        public final TlbConstructor<UInt> m5255int(final int i) {
            return number(new Function2<CellBuilder, UInt, Unit>() { // from class: org.ton.tlb.constructor.UIntTlbConstructor$Companion$int$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(CellBuilder cellBuilder, UInt uInt) {
                    m5257invokeQn1smSk(cellBuilder, uInt.m1976unboximpl());
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke-Qn1smSk  reason: not valid java name */
                public final void m5257invokeQn1smSk(CellBuilder number, int i2) {
                    Intrinsics.checkNotNullParameter(number, "$this$number");
                    number.storeUInt(i2, i);
                }
            }, new Function1<CellSlice, UInt>() { // from class: org.ton.tlb.constructor.UIntTlbConstructor$Companion$int$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ UInt invoke(CellSlice cellSlice) {
                    return UInt.m1971boximpl(m5258invokeOGnWXxg(cellSlice));
                }

                /* renamed from: invoke-OGnWXxg  reason: not valid java name */
                public final int m5258invokeOGnWXxg(CellSlice number) {
                    Intrinsics.checkNotNullParameter(number, "$this$number");
                    return UInt.m1972constructorimpl(number.loadUInt(i).intValue());
                }
            });
        }

        public static /* synthetic */ TlbConstructor long$default(Companion companion, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = 64;
            }
            return companion.m5256long(i);
        }

        /* renamed from: long  reason: not valid java name */
        public final TlbConstructor<ULong> m5256long(final int i) {
            return number(new Function2<CellBuilder, ULong, Unit>() { // from class: org.ton.tlb.constructor.UIntTlbConstructor$Companion$long$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(CellBuilder cellBuilder, ULong uLong) {
                    m5259invoke2TYgG_w(cellBuilder, uLong.m1998unboximpl());
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke-2TYgG_w  reason: not valid java name */
                public final void m5259invoke2TYgG_w(CellBuilder number, long j) {
                    Intrinsics.checkNotNullParameter(number, "$this$number");
                    number.storeUInt(j, i);
                }
            }, new Function1<CellSlice, ULong>() { // from class: org.ton.tlb.constructor.UIntTlbConstructor$Companion$long$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ ULong invoke(CellSlice cellSlice) {
                    return ULong.m1993boximpl(m5260invokeI7RO_PI(cellSlice));
                }

                /* renamed from: invoke-I7RO_PI  reason: not valid java name */
                public final long m5260invokeI7RO_PI(CellSlice number) {
                    Intrinsics.checkNotNullParameter(number, "$this$number");
                    return ULong.m1994constructorimpl(number.loadUInt(i).longValue());
                }
            });
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [org.ton.tlb.constructor.UIntTlbConstructor$Companion$number$1] */
        private final <T> UIntTlbConstructor$Companion$number$1 number(final Function2<? super CellBuilder, ? super T, Unit> function2, final Function1<? super CellSlice, ? extends T> function1) {
            return new TlbConstructor<T>() { // from class: org.ton.tlb.constructor.UIntTlbConstructor$Companion$number$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super("", null, 2, null);
                }

                @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
                public void storeTlb(CellBuilder cellBuilder, T value) {
                    Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
                    Intrinsics.checkNotNullParameter(value, "value");
                    function2.invoke(cellBuilder, value);
                }

                @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
                public T loadTlb(CellSlice cellSlice) {
                    Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
                    return function1.invoke(cellSlice);
                }
            };
        }
    }
}
