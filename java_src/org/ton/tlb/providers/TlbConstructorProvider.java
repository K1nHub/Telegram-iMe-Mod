package org.ton.tlb.providers;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
/* compiled from: TlbConstructorProvider.kt */
/* loaded from: classes6.dex */
public interface TlbConstructorProvider<T> extends TlbCodec<T> {
    TlbConstructor<T> tlbConstructor();

    /* compiled from: TlbConstructorProvider.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static <T> T loadTlb(TlbConstructorProvider<T> tlbConstructorProvider, CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return tlbConstructorProvider.tlbConstructor().loadTlb(cellSlice);
        }

        public static <T> void storeTlb(TlbConstructorProvider<T> tlbConstructorProvider, CellBuilder cellBuilder, T value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            tlbConstructorProvider.tlbConstructor().storeTlb(cellBuilder, value);
        }
    }
}
