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
        Object mo1614trySendJP2dKIU = sendChannel.mo1614trySendJP2dKIU(e);
        if (mo1614trySendJP2dKIU instanceof ChannelResult.Failed) {
            runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new ChannelsKt__ChannelsKt$trySendBlocking$2(sendChannel, e, null), 1, null);
            return ((ChannelResult) runBlocking$default).m1623unboximpl();
        }
        Unit unit = (Unit) mo1614trySendJP2dKIU;
        return ChannelResult.Companion.m1626successJP2dKIU(Unit.INSTANCE);
    }
}
