package org.ton.tlb.providers;

import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
/* compiled from: TlbCombinatorProvider.kt */
/* loaded from: classes6.dex */
public interface TlbCombinatorProvider<T> extends TlbCodec<T> {
    TlbCombinator<T> tlbCombinator();
}
