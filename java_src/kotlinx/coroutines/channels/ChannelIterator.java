package kotlinx.coroutines.channels;

import kotlin.coroutines.Continuation;
/* compiled from: Channel.kt */
/* loaded from: classes6.dex */
public interface ChannelIterator<E> {
    Object hasNext(Continuation<? super Boolean> continuation);

    E next();
}
