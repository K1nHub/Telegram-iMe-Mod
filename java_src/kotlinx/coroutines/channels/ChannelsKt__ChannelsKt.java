package kotlinx.coroutines.channels;

import kotlin.Unit;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.channels.ChannelResult;
/* compiled from: Channels.kt */
/* loaded from: classes4.dex */
final /* synthetic */ class ChannelsKt__ChannelsKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> Object trySendBlocking(SendChannel<? super E> sendChannel, E e) {
        Object runBlocking$default;
        Object mo2100trySendJP2dKIU = sendChannel.mo2100trySendJP2dKIU(e);
        if (mo2100trySendJP2dKIU instanceof ChannelResult.Failed) {
            runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new ChannelsKt__ChannelsKt$trySendBlocking$2(sendChannel, e, null), 1, null);
            return ((ChannelResult) runBlocking$default).m2109unboximpl();
        }
        Unit unit = (Unit) mo2100trySendJP2dKIU;
        return ChannelResult.Companion.m2112successJP2dKIU(Unit.INSTANCE);
    }
}
