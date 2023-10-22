package org.ton.tlb;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.tlb.TlbLoader;
/* compiled from: TlbCodec.kt */
/* loaded from: classes6.dex */
public interface TlbCodec<T> extends TlbStorer<T>, TlbLoader<T> {

    /* compiled from: TlbCodec.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static <T> T loadTlb(TlbCodec<T> tlbCodec, Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return (T) TlbLoader.DefaultImpls.loadTlb(tlbCodec, cell);
        }
    }
}
