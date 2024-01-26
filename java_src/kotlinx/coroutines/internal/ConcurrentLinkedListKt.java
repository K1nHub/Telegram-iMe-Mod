package kotlinx.coroutines.internal;

import kotlin.jvm.functions.Function2;
/* compiled from: ConcurrentLinkedList.kt */
/* loaded from: classes4.dex */
public final class ConcurrentLinkedListKt {
    private static final Symbol CLOSED = new Symbol("CLOSED");

    public static final <S extends Segment<S>> Object findSegmentInternal(S s, long j, Function2<? super Long, ? super S, ? extends S> function2) {
        while (true) {
            if (s.f1399id >= j && !s.isRemoved()) {
                return SegmentOrClosed.m2124constructorimpl(s);
            }
            Object nextOrClosed = s.getNextOrClosed();
            if (nextOrClosed == CLOSED) {
                return SegmentOrClosed.m2124constructorimpl(CLOSED);
            }
            S s2 = (S) ((ConcurrentLinkedListNode) nextOrClosed);
            if (s2 == null) {
                s2 = function2.invoke(Long.valueOf(s.f1399id + 1), s);
                if (s.trySetNext(s2)) {
                    if (s.isRemoved()) {
                        s.remove();
                    }
                }
            }
            s = s2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.coroutines.internal.ConcurrentLinkedListNode] */
    public static final <N extends ConcurrentLinkedListNode<N>> N close(N n) {
        while (true) {
            Object nextOrClosed = n.getNextOrClosed();
            if (nextOrClosed == CLOSED) {
                return n;
            }
            ?? r0 = (ConcurrentLinkedListNode) nextOrClosed;
            if (r0 != 0) {
                n = r0;
            } else if (n.markAsClosed()) {
                return n;
            }
        }
    }
}
