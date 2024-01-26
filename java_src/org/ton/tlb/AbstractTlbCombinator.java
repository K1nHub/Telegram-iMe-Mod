package org.ton.tlb;

import org.ton.cell.Cell;
import org.ton.tlb.TlbCodec;
/* compiled from: AbstractTlbCombinator.kt */
/* loaded from: classes6.dex */
public abstract class AbstractTlbCombinator<T> implements TlbCodec<T> {
    @Override // org.ton.tlb.TlbLoader
    public T loadTlb(Cell cell) {
        return (T) TlbCodec.DefaultImpls.loadTlb(this, cell);
    }
}
