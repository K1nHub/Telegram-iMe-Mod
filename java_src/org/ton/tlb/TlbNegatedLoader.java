package org.ton.tlb;

import org.ton.cell.CellSlice;
/* compiled from: TlbCodec.kt */
/* loaded from: classes6.dex */
public interface TlbNegatedLoader<T> extends TlbLoader<T> {
    TlbNegatedResult<T> loadNegatedTlb(CellSlice cellSlice);
}
