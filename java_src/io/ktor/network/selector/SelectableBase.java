package io.ktor.network.selector;

import java.nio.channels.SelectableChannel;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
/* compiled from: SelectableJvm.kt */
/* loaded from: classes4.dex */
public class SelectableBase implements Selectable {
    private static final /* synthetic */ AtomicIntegerFieldUpdater _interestedOps$FU = AtomicIntegerFieldUpdater.newUpdater(SelectableBase.class, "_interestedOps");
    private volatile /* synthetic */ int _interestedOps;
    private final AtomicBoolean _isClosed;
    private final SelectableChannel channel;
    private final InterestSuspensionsMap suspensions;

    public SelectableBase(SelectableChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.channel = channel;
        this._isClosed = new AtomicBoolean(false);
        this.suspensions = new InterestSuspensionsMap();
        this._interestedOps = 0;
    }

    @Override // io.ktor.network.selector.Selectable
    public SelectableChannel getChannel() {
        return this.channel;
    }

    @Override // io.ktor.network.selector.Selectable
    public InterestSuspensionsMap getSuspensions() {
        return this.suspensions;
    }

    @Override // io.ktor.network.selector.Selectable
    public boolean isClosed() {
        return this._isClosed.get();
    }

    @Override // io.ktor.network.selector.Selectable
    public int getInterestedOps() {
        return this._interestedOps;
    }

    @Override // io.ktor.network.selector.Selectable
    public void interestOp(SelectInterest interest, boolean z) {
        int i;
        Intrinsics.checkNotNullParameter(interest, "interest");
        int flag = interest.getFlag();
        do {
            i = this._interestedOps;
        } while (!_interestedOps$FU.compareAndSet(this, i, z ? i | flag : (~flag) & i));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this._isClosed.compareAndSet(false, true)) {
            this._interestedOps = 0;
            InterestSuspensionsMap suspensions = getSuspensions();
            for (SelectInterest selectInterest : SelectInterest.Companion.getAllInterests()) {
                CancellableContinuation<Unit> removeSuspension = suspensions.removeSuspension(selectInterest);
                if (removeSuspension != null) {
                    Result.Companion companion = Result.Companion;
                    removeSuspension.resumeWith(Result.m1942constructorimpl(ResultKt.createFailure(new ClosedChannelCancellationException())));
                }
            }
        }
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
        close();
    }
}
