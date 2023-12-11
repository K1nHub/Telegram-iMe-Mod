package kotlinx.coroutines.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.Segment;
/* compiled from: ConcurrentLinkedList.kt */
/* loaded from: classes4.dex */
public final class SegmentOrClosed<S extends Segment<S>> {
    /* renamed from: constructor-impl  reason: not valid java name */
    public static <S extends Segment<S>> Object m2123constructorimpl(Object obj) {
        return obj;
    }

    /* renamed from: isClosed-impl  reason: not valid java name */
    public static final boolean m2125isClosedimpl(Object obj) {
        return obj == ConcurrentLinkedListKt.CLOSED;
    }

    /* renamed from: getSegment-impl  reason: not valid java name */
    public static final S m2124getSegmentimpl(Object obj) {
        if (obj != ConcurrentLinkedListKt.CLOSED) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
            return (S) obj;
        }
        throw new IllegalStateException("Does not contain segment".toString());
    }
}
