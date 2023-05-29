package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.SendingCollector;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.kt */
/* loaded from: classes4.dex */
public final class ChannelAsFlow<T> extends ChannelFlow<T> {
    private static final /* synthetic */ AtomicIntegerFieldUpdater consumed$FU = AtomicIntegerFieldUpdater.newUpdater(ChannelAsFlow.class, "consumed");
    private final ReceiveChannel<T> channel;
    private final boolean consume;
    private volatile /* synthetic */ int consumed;

    public /* synthetic */ ChannelAsFlow(ReceiveChannel receiveChannel, boolean z, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(receiveChannel, z, (i2 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i2 & 8) != 0 ? -3 : i, (i2 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelAsFlow(ReceiveChannel<? extends T> receiveChannel, boolean z, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.channel = receiveChannel;
        this.consume = z;
        this.consumed = 0;
    }

    private final void markConsumed() {
        if (this.consume) {
            if (!(consumed$FU.getAndSet(this, 1) == 0)) {
                throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once".toString());
            }
        }
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected Object collectTo(ProducerScope<? super T> producerScope, Continuation<? super Unit> continuation) {
        Object emitAllImpl$FlowKt__ChannelsKt;
        Object coroutine_suspended;
        emitAllImpl$FlowKt__ChannelsKt = FlowKt__ChannelsKt.emitAllImpl$FlowKt__ChannelsKt(new SendingCollector(producerScope), this.channel, this.consume, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return emitAllImpl$FlowKt__ChannelsKt == coroutine_suspended ? emitAllImpl$FlowKt__ChannelsKt : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ReceiveChannel<T> produceImpl(CoroutineScope coroutineScope) {
        markConsumed();
        if (this.capacity == -3) {
            return this.channel;
        }
        return super.produceImpl(coroutineScope);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object emitAllImpl$FlowKt__ChannelsKt;
        Object coroutine_suspended2;
        if (this.capacity == -3) {
            markConsumed();
            emitAllImpl$FlowKt__ChannelsKt = FlowKt__ChannelsKt.emitAllImpl$FlowKt__ChannelsKt(flowCollector, this.channel, this.consume, continuation);
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return emitAllImpl$FlowKt__ChannelsKt == coroutine_suspended2 ? emitAllImpl$FlowKt__ChannelsKt : Unit.INSTANCE;
        }
        Object collect = super.collect(flowCollector, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected String additionalToStringProps() {
        return "channel=" + this.channel;
    }
}
