package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.Segment;
/* compiled from: BufferedChannel.kt */
/* loaded from: classes4.dex */
public final class ChannelSegment<E> extends Segment<ChannelSegment<E>> {
    private final BufferedChannel<E> _channel;
    private final AtomicReferenceArray data;

    public ChannelSegment(long j, ChannelSegment<E> channelSegment, BufferedChannel<E> bufferedChannel, int i) {
        super(j, channelSegment, i);
        this._channel = bufferedChannel;
        this.data = new AtomicReferenceArray(BufferedChannelKt.SEGMENT_SIZE * 2);
    }

    public final BufferedChannel<E> getChannel() {
        BufferedChannel<E> bufferedChannel = this._channel;
        Intrinsics.checkNotNull(bufferedChannel);
        return bufferedChannel;
    }

    @Override // kotlinx.coroutines.internal.Segment
    public int getNumberOfSlots() {
        return BufferedChannelKt.SEGMENT_SIZE;
    }

    public final void storeElement$kotlinx_coroutines_core(int i, E e) {
        setElementLazy(i, e);
    }

    public final E getElement$kotlinx_coroutines_core(int i) {
        return (E) this.data.get(i * 2);
    }

    public final E retrieveElement$kotlinx_coroutines_core(int i) {
        E element$kotlinx_coroutines_core = getElement$kotlinx_coroutines_core(i);
        cleanElement$kotlinx_coroutines_core(i);
        return element$kotlinx_coroutines_core;
    }

    public final void cleanElement$kotlinx_coroutines_core(int i) {
        setElementLazy(i, null);
    }

    private final void setElementLazy(int i, Object obj) {
        this.data.lazySet(i * 2, obj);
    }

    public final Object getState$kotlinx_coroutines_core(int i) {
        return this.data.get((i * 2) + 1);
    }

    public final void setState$kotlinx_coroutines_core(int i, Object obj) {
        this.data.set((i * 2) + 1, obj);
    }

    public final boolean casState$kotlinx_coroutines_core(int i, Object obj, Object obj2) {
        return this.data.compareAndSet((i * 2) + 1, obj, obj2);
    }

    public final Object getAndSetState$kotlinx_coroutines_core(int i, Object obj) {
        return this.data.getAndSet((i * 2) + 1, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0064, code lost:
        cleanElement$kotlinx_coroutines_core(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0067, code lost:
        if (r0 == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0069, code lost:
        r4 = getChannel().onUndeliveredElement;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006f, code lost:
        if (r4 == null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0071, code lost:
        kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0074, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
        return;
     */
    @Override // kotlinx.coroutines.internal.Segment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCancellation(int r4, java.lang.Throwable r5, kotlin.coroutines.CoroutineContext r6) {
        /*
            r3 = this;
            int r5 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            if (r4 < r5) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            if (r0 == 0) goto La
            int r4 = r4 - r5
        La:
            java.lang.Object r5 = r3.getElement$kotlinx_coroutines_core(r4)
        Le:
            java.lang.Object r1 = r3.getState$kotlinx_coroutines_core(r4)
            boolean r2 = r1 instanceof kotlinx.coroutines.Waiter
            if (r2 != 0) goto L75
            boolean r2 = r1 instanceof kotlinx.coroutines.channels.WaiterEB
            if (r2 == 0) goto L1b
            goto L75
        L1b:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            if (r1 == r2) goto L64
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
            if (r1 != r2) goto L28
            goto L64
        L28:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_EB$p()
            if (r1 == r2) goto Le
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_RCV$p()
            if (r1 != r2) goto L35
            goto Le
        L35:
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.channels.BufferedChannelKt.access$getDONE_RCV$p()
            if (r1 == r4) goto L63
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.channels.BufferedChannelKt.BUFFERED
            if (r1 != r4) goto L40
            goto L63
        L40:
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            if (r1 != r4) goto L47
            return
        L47:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "unexpected state: "
            r5.append(r6)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L63:
            return
        L64:
            r3.cleanElement$kotlinx_coroutines_core(r4)
            if (r0 == 0) goto L74
            kotlinx.coroutines.channels.BufferedChannel r4 = r3.getChannel()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r4 = r4.onUndeliveredElement
            if (r4 == 0) goto L74
            kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r4, r5, r6)
        L74:
            return
        L75:
            if (r0 == 0) goto L7c
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            goto L80
        L7c:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
        L80:
            boolean r1 = r3.casState$kotlinx_coroutines_core(r4, r1, r2)
            if (r1 == 0) goto Le
            r3.cleanElement$kotlinx_coroutines_core(r4)
            r1 = r0 ^ 1
            r3.onCancelledRequest(r4, r1)
            if (r0 == 0) goto L9b
            kotlinx.coroutines.channels.BufferedChannel r4 = r3.getChannel()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r4 = r4.onUndeliveredElement
            if (r4 == 0) goto L9b
            kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r4, r5, r6)
        L9b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelSegment.onCancellation(int, java.lang.Throwable, kotlin.coroutines.CoroutineContext):void");
    }

    public final void onCancelledRequest(int i, boolean z) {
        if (z) {
            getChannel().waitExpandBufferCompletion$kotlinx_coroutines_core((this.f1399id * BufferedChannelKt.SEGMENT_SIZE) + i);
        }
        onSlotCleaned();
    }
}
