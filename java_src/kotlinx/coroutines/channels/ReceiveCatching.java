package kotlinx.coroutines.channels;

import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BufferedChannel.kt */
/* loaded from: classes4.dex */
public final class ReceiveCatching<E> implements Waiter {
    public final CancellableContinuationImpl<ChannelResult<? extends E>> cont;

    @Override // kotlinx.coroutines.Waiter
    public void invokeOnCancellation(Segment<?> segment, int i) {
        this.cont.invokeOnCancellation(segment, i);
    }
}
