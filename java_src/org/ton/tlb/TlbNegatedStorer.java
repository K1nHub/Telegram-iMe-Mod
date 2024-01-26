package org.ton.tlb;

import org.ton.cell.CellBuilder;
/* compiled from: TlbCodec.kt */
/* loaded from: classes6.dex */
public interface TlbNegatedStorer<T> extends TlbStorer<T> {
    int storeNegatedTlb(CellBuilder cellBuilder, T t);
}
