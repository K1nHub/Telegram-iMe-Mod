package kotlinx.coroutines.channels;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.UndeliveredElementException;
/* compiled from: ConflatedBufferedChannel.kt */
/* loaded from: classes4.dex */
public class ConflatedBufferedChannel<E> extends BufferedChannel<E> {
    private final int capacity;
    private final BufferOverflow onBufferOverflow;

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public Object send(E e, Continuation<? super Unit> continuation) {
        return send$suspendImpl((ConflatedBufferedChannel) this, (Object) e, continuation);
    }

    public ConflatedBufferedChannel(int i, BufferOverflow bufferOverflow, Function1<? super E, Unit> function1) {
        super(i, function1);
        this.capacity = i;
        this.onBufferOverflow = bufferOverflow;
        if (!(bufferOverflow != BufferOverflow.SUSPEND)) {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + Reflection.getOrCreateKotlinClass(BufferedChannel.class).getSimpleName() + " instead").toString());
        }
        if (i >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i + " was specified").toString());
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    protected boolean isConflatedDropOldest() {
        return this.onBufferOverflow == BufferOverflow.DROP_OLDEST;
    }

    static /* synthetic */ <E> Object send$suspendImpl(ConflatedBufferedChannel<E> conflatedBufferedChannel, E e, Continuation<? super Unit> continuation) {
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        Object m2115trySendImplMj0NB7M = conflatedBufferedChannel.m2115trySendImplMj0NB7M(e, true);
        if (m2115trySendImplMj0NB7M instanceof ChannelResult.Closed) {
            ChannelResult.m2104exceptionOrNullimpl(m2115trySendImplMj0NB7M);
            Function1<E, Unit> function1 = conflatedBufferedChannel.onUndeliveredElement;
            if (function1 != null && (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, e, null, 2, null)) != null) {
                ExceptionsKt__ExceptionsKt.addSuppressed(callUndeliveredElementCatchingException$default, conflatedBufferedChannel.getSendException());
                throw callUndeliveredElementCatchingException$default;
            }
            throw conflatedBufferedChannel.getSendException();
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU */
    public Object mo2100trySendJP2dKIU(E e) {
        return m2115trySendImplMj0NB7M(e, false);
    }

    /* renamed from: trySendImpl-Mj0NB7M  reason: not valid java name */
    private final Object m2115trySendImplMj0NB7M(E e, boolean z) {
        return this.onBufferOverflow == BufferOverflow.DROP_LATEST ? m2113trySendDropLatestMj0NB7M(e, z) : m2114trySendDropOldestJP2dKIU(e);
    }

    /* renamed from: trySendDropLatest-Mj0NB7M  reason: not valid java name */
    private final Object m2113trySendDropLatestMj0NB7M(E e, boolean z) {
        Function1<E, Unit> function1;
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        Object mo2100trySendJP2dKIU = super.mo2100trySendJP2dKIU(e);
        if (ChannelResult.m2107isSuccessimpl(mo2100trySendJP2dKIU) || ChannelResult.m2106isClosedimpl(mo2100trySendJP2dKIU)) {
            return mo2100trySendJP2dKIU;
        }
        if (z && (function1 = this.onUndeliveredElement) != null && (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, e, null, 2, null)) != null) {
            throw callUndeliveredElementCatchingException$default;
        }
        return ChannelResult.Companion.m2112successJP2dKIU(Unit.INSTANCE);
    }

    /* renamed from: trySendDropOldest-JP2dKIU  reason: not valid java name */
    private final Object m2114trySendDropOldestJP2dKIU(E e) {
        ChannelSegment channelSegment;
        Symbol symbol = BufferedChannelKt.BUFFERED;
        ChannelSegment channelSegment2 = (ChannelSegment) BufferedChannel.sendSegment$FU.get(this);
        while (true) {
            long andIncrement = BufferedChannel.sendersAndCloseStatus$FU.getAndIncrement(this);
            long j = andIncrement & 1152921504606846975L;
            boolean isClosedForSend0 = isClosedForSend0(andIncrement);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = j / i;
            int i2 = (int) (j % i);
            if (channelSegment2.f1399id != j2) {
                ChannelSegment findSegmentSend = findSegmentSend(j2, channelSegment2);
                if (findSegmentSend != null) {
                    channelSegment = findSegmentSend;
                } else if (isClosedForSend0) {
                    return ChannelResult.Companion.m2110closedJP2dKIU(getSendException());
                }
            } else {
                channelSegment = channelSegment2;
            }
            int updateCellSend = updateCellSend(channelSegment, i2, e, j, symbol, isClosedForSend0);
            if (updateCellSend == 0) {
                channelSegment.cleanPrev();
                return ChannelResult.Companion.m2112successJP2dKIU(Unit.INSTANCE);
            } else if (updateCellSend == 1) {
                return ChannelResult.Companion.m2112successJP2dKIU(Unit.INSTANCE);
            } else {
                if (updateCellSend == 2) {
                    if (isClosedForSend0) {
                        channelSegment.onSlotCleaned();
                        return ChannelResult.Companion.m2110closedJP2dKIU(getSendException());
                    }
                    Waiter waiter = symbol instanceof Waiter ? (Waiter) symbol : null;
                    if (waiter != null) {
                        prepareSenderForSuspension(waiter, channelSegment, i2);
                    }
                    dropFirstElementUntilTheSpecifiedCellIsInTheBuffer((channelSegment.f1399id * i) + i2);
                    return ChannelResult.Companion.m2112successJP2dKIU(Unit.INSTANCE);
                } else if (updateCellSend == 3) {
                    throw new IllegalStateException("unexpected".toString());
                } else {
                    if (updateCellSend == 4) {
                        if (j < getReceiversCounter$kotlinx_coroutines_core()) {
                            channelSegment.cleanPrev();
                        }
                        return ChannelResult.Companion.m2110closedJP2dKIU(getSendException());
                    }
                    if (updateCellSend == 5) {
                        channelSegment.cleanPrev();
                    }
                    channelSegment2 = channelSegment;
                }
            }
        }
    }
}
