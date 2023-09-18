package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.ExceptionsKt;
/* compiled from: Channels.common.kt */
/* loaded from: classes6.dex */
final /* synthetic */ class ChannelsKt__Channels_commonKt {
    public static final void cancelConsumed(ReceiveChannel<?> receiveChannel, Throwable th) {
        if (th != null) {
            r0 = th instanceof CancellationException ? (CancellationException) th : null;
            if (r0 == null) {
                r0 = ExceptionsKt.CancellationException("Channel was consumed, consumer had failed", th);
            }
        }
        receiveChannel.cancel(r0);
    }
}
