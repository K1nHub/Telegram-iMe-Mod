package org.ton.tlb;

import java.util.Arrays;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.exception.UnknownTlbConstructorException;
/* compiled from: TlbNegatedCombinator.kt */
/* loaded from: classes6.dex */
public abstract class TlbNegatedCombinator<T> extends TlbCombinator<T> implements TlbNegatedCodec<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TlbNegatedCombinator(KClass<T> baseClass, Pair<? extends KClass<? extends T>, ? extends TlbNegatedConstructor<? extends T>>... subClasses) {
        super(baseClass, (Pair[]) Arrays.copyOf(subClasses, subClasses.length));
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(subClasses, "subClasses");
    }

    @Override // org.ton.tlb.TlbCombinator, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, T value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        storeNegatedTlb(cellBuilder, value);
    }

    @Override // org.ton.tlb.TlbCombinator, org.ton.tlb.TlbLoader
    public T loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return loadNegatedTlb(cellSlice).getValue();
    }

    @Override // org.ton.tlb.TlbNegatedStorer
    public int storeNegatedTlb(CellBuilder cellBuilder, T value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        TlbStorer<T> findTlbStorerOrNull = findTlbStorerOrNull(value);
        TlbNegatedConstructor tlbNegatedConstructor = findTlbStorerOrNull instanceof TlbNegatedConstructor ? (TlbNegatedConstructor) findTlbStorerOrNull : null;
        if (tlbNegatedConstructor == null) {
            throw new UnknownTlbConstructorException(null, 1, null);
        }
        cellBuilder.storeBits(tlbNegatedConstructor.getId());
        return tlbNegatedConstructor.storeNegatedTlb(cellBuilder, value);
    }

    @Override // org.ton.tlb.TlbNegatedLoader
    public TlbNegatedResult<T> loadNegatedTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbLoader<? extends T> findTlbLoaderOrNull = findTlbLoaderOrNull(cellSlice);
        TlbNegatedConstructor tlbNegatedConstructor = findTlbLoaderOrNull instanceof TlbNegatedConstructor ? (TlbNegatedConstructor) findTlbLoaderOrNull : null;
        if (tlbNegatedConstructor == null) {
            throw new UnknownTlbConstructorException(null, 1, null);
        }
        cellSlice.skipBits(tlbNegatedConstructor.getId().getSize());
        TlbNegatedResult<T> loadNegatedTlb = tlbNegatedConstructor.loadNegatedTlb(cellSlice);
        Intrinsics.checkNotNull(loadNegatedTlb, "null cannot be cast to non-null type org.ton.tlb.TlbNegatedResult<T of org.ton.tlb.TlbNegatedCombinator>");
        return loadNegatedTlb;
    }
}
