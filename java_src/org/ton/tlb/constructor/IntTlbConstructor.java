package org.ton.tlb.constructor;

import java.math.BigInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbConstructor;
/* compiled from: IntTlbConstructor.kt */
/* loaded from: classes6.dex */
public final class IntTlbConstructor extends TlbConstructor<BigInteger> {
    public static final Companion Companion = new Companion(null);

    /* compiled from: IntTlbConstructor.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: int  reason: not valid java name */
        public final TlbConstructor<Integer> m5236int(final int i) {
            return number(new Function2<CellBuilder, Integer, Unit>() { // from class: org.ton.tlb.constructor.IntTlbConstructor$Companion$int$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(CellBuilder cellBuilder, Integer num) {
                    invoke(cellBuilder, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(CellBuilder number, int i2) {
                    Intrinsics.checkNotNullParameter(number, "$this$number");
                    number.storeInt(i2, i);
                }
            }, new Function1<CellSlice, Integer>() { // from class: org.ton.tlb.constructor.IntTlbConstructor$Companion$int$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Integer invoke(CellSlice number) {
                    Intrinsics.checkNotNullParameter(number, "$this$number");
                    return Integer.valueOf(number.loadInt(i).intValue());
                }
            });
        }

        private final <T extends Number> TlbConstructor<T> number(final Function2<? super CellBuilder, ? super T, Unit> function2, final Function1<? super CellSlice, ? extends T> function1) {
            return (TlbConstructor<T>) new TlbConstructor<T>() { // from class: org.ton.tlb.constructor.IntTlbConstructor$Companion$number$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super("", null, 2, null);
                }

                /* JADX WARN: Incorrect types in method signature: (Lorg/ton/cell/CellBuilder;TT;)V */
                @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
                public void storeTlb(CellBuilder cellBuilder, Number value) {
                    Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
                    Intrinsics.checkNotNullParameter(value, "value");
                    function2.invoke(cellBuilder, value);
                }

                /* JADX WARN: Incorrect return type in method signature: (Lorg/ton/cell/CellSlice;)TT; */
                @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
                public Number loadTlb(CellSlice cellSlice) {
                    Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
                    return (Number) function1.invoke(cellSlice);
                }
            };
        }
    }
}
