package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
/* compiled from: Channel.kt */
/* loaded from: classes4.dex */
public interface ReceiveChannel<E> {
    void cancel(CancellationException cancellationException);

    ChannelIterator<E> iterator();

    /* renamed from: receiveCatching-JP2dKIU */
    Object mo1672receiveCatchingJP2dKIU(Continuation<? super ChannelResult<? extends E>> continuation);
}
