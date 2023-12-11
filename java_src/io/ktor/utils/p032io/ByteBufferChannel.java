package io.ktor.utils.p032io;

import io.ktor.utils.p032io.core.ByteBuffersKt;
import io.ktor.utils.p032io.core.BytePacketBuilder;
import io.ktor.utils.p032io.core.ByteReadPacket;
import io.ktor.utils.p032io.core.OutputArraysJVMKt;
import io.ktor.utils.p032io.internal.CancellableReusableContinuation;
import io.ktor.utils.p032io.internal.ClosedElement;
import io.ktor.utils.p032io.internal.JoiningState;
import io.ktor.utils.p032io.internal.ObjectPoolKt;
import io.ktor.utils.p032io.internal.ReadSessionImpl;
import io.ktor.utils.p032io.internal.ReadWriteBufferState;
import io.ktor.utils.p032io.internal.RingBufferCapacity;
import io.ktor.utils.p032io.internal.WriteSessionImpl;
import io.ktor.utils.p032io.pool.ObjectPool;
import java.nio.ByteBuffer;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.Job;
/* compiled from: ByteBufferChannel.kt */
/* renamed from: io.ktor.utils.io.ByteBufferChannel */
/* loaded from: classes4.dex */
public class ByteBufferChannel implements ByteChannel, ByteReadChannel, ByteWriteChannel, LookAheadSuspendSession {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _closed$FU;
    private static final /* synthetic */ AtomicReferenceFieldUpdater _readOp$FU;
    private static final /* synthetic */ AtomicReferenceFieldUpdater _state$FU;
    static final /* synthetic */ AtomicReferenceFieldUpdater _writeOp$FU;
    private volatile /* synthetic */ Object _closed;
    private volatile /* synthetic */ Object _readOp;
    private volatile /* synthetic */ Object _state;
    volatile /* synthetic */ Object _writeOp;
    private volatile Job attachedJob;
    private final boolean autoFlush;
    private volatile JoiningState joining;
    private final ObjectPool<ReadWriteBufferState.Initial> pool;
    private int readPosition;
    private final CancellableReusableContinuation<Boolean> readSuspendContinuationCache;
    private final int reservedSize;
    private volatile long totalBytesRead;
    private volatile long totalBytesWritten;
    private int writePosition;
    private final CancellableReusableContinuation<Unit> writeSuspendContinuationCache;
    private final Function1<Continuation<? super Unit>, Object> writeSuspension;
    private volatile int writeSuspensionSize;

    static {
        new Companion(null);
        _state$FU = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_state");
        _closed$FU = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_closed");
        _readOp$FU = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_readOp");
        _writeOp$FU = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_writeOp");
    }

    @Override // io.ktor.utils.p032io.ByteReadChannel
    public <R> Object lookAheadSuspend(Function2<? super LookAheadSuspendSession, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        return lookAheadSuspend$suspendImpl(this, function2, continuation);
    }

    @Override // io.ktor.utils.p032io.ByteReadChannel
    public Object readPacket(int i, Continuation<? super ByteReadPacket> continuation) {
        return readPacket$suspendImpl(this, i, continuation);
    }

    @Override // io.ktor.utils.p032io.ByteWriteChannel
    public Object write(int i, Function1<? super ByteBuffer, Unit> function1, Continuation<? super Unit> continuation) {
        return write$suspendImpl(this, i, function1, continuation);
    }

    public Object writeAvailable(byte[] bArr, int i, int i2, Continuation<? super Integer> continuation) {
        return writeAvailable$suspendImpl(this, bArr, i, i2, continuation);
    }

    @Override // io.ktor.utils.p032io.ByteWriteChannel
    public Object writeFully(ByteBuffer byteBuffer, Continuation<? super Unit> continuation) {
        return writeFully$suspendImpl(this, byteBuffer, continuation);
    }

    @Override // io.ktor.utils.p032io.ByteWriteChannel
    public Object writeFully(byte[] bArr, int i, int i2, Continuation<? super Unit> continuation) {
        return writeFully$suspendImpl(this, bArr, i, i2, continuation);
    }

    @Override // io.ktor.utils.p032io.ByteWriteChannel
    public Object writePacket(ByteReadPacket byteReadPacket, Continuation<? super Unit> continuation) {
        return writePacket$suspendImpl(this, byteReadPacket, continuation);
    }

    public ByteBufferChannel(boolean z, ObjectPool<ReadWriteBufferState.Initial> pool, int i) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        this.autoFlush = z;
        this.pool = pool;
        this.reservedSize = i;
        this._state = ReadWriteBufferState.IdleEmpty.INSTANCE;
        this._closed = null;
        this._readOp = null;
        this._writeOp = null;
        new ReadSessionImpl(this);
        new WriteSessionImpl(this);
        this.readSuspendContinuationCache = new CancellableReusableContinuation<>();
        this.writeSuspendContinuationCache = new CancellableReusableContinuation<>();
        this.writeSuspension = new Function1<Continuation<? super Unit>, Object>() { // from class: io.ktor.utils.io.ByteBufferChannel$writeSuspension$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            /* JADX WARN: Code restructure failed: missing block: B:21:0x0053, code lost:
                r5 = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x006a, code lost:
                continue;
             */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invoke(kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
                /*
                    r9 = this;
                    java.lang.String r0 = "ucont"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                    io.ktor.utils.io.ByteBufferChannel r0 = io.ktor.utils.p032io.ByteBufferChannel.this
                    int r0 = io.ktor.utils.p032io.ByteBufferChannel.access$getWriteSuspensionSize$p(r0)
                Lc:
                    io.ktor.utils.io.ByteBufferChannel r1 = io.ktor.utils.p032io.ByteBufferChannel.this
                    io.ktor.utils.io.internal.ClosedElement r1 = io.ktor.utils.p032io.ByteBufferChannel.access$getClosed(r1)
                    if (r1 == 0) goto L24
                    java.lang.Throwable r1 = r1.getSendException()
                    if (r1 != 0) goto L1b
                    goto L24
                L1b:
                    io.ktor.utils.p032io.ByteBufferChannelKt.access$rethrowClosed(r1)
                    kotlin.KotlinNothingValueException r10 = new kotlin.KotlinNothingValueException
                    r10.<init>()
                    throw r10
                L24:
                    io.ktor.utils.io.ByteBufferChannel r1 = io.ktor.utils.p032io.ByteBufferChannel.this
                    boolean r1 = io.ktor.utils.p032io.ByteBufferChannel.access$writeSuspendPredicate(r1, r0)
                    if (r1 != 0) goto L38
                    kotlin.Result$Companion r1 = kotlin.Result.Companion
                    kotlin.Unit r1 = kotlin.Unit.INSTANCE
                    java.lang.Object r1 = kotlin.Result.m1942constructorimpl(r1)
                    r10.resumeWith(r1)
                    goto L6c
                L38:
                    io.ktor.utils.io.ByteBufferChannel r1 = io.ktor.utils.p032io.ByteBufferChannel.this
                    kotlin.coroutines.Continuation r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r10)
                    io.ktor.utils.io.ByteBufferChannel r3 = io.ktor.utils.p032io.ByteBufferChannel.this
                L40:
                    kotlin.coroutines.Continuation r4 = io.ktor.utils.p032io.ByteBufferChannel.access$getWriteOp(r1)
                    r5 = 1
                    r6 = 0
                    if (r4 != 0) goto L4a
                    r4 = r5
                    goto L4b
                L4a:
                    r4 = r6
                L4b:
                    if (r4 == 0) goto L83
                    boolean r4 = io.ktor.utils.p032io.ByteBufferChannel.access$writeSuspendPredicate(r3, r0)
                    if (r4 != 0) goto L55
                L53:
                    r5 = r6
                    goto L6a
                L55:
                    java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = io.ktor.utils.p032io.ByteBufferChannel._writeOp$FU
                    r7 = 0
                    boolean r8 = r4.compareAndSet(r1, r7, r2)
                    if (r8 == 0) goto L40
                    boolean r3 = io.ktor.utils.p032io.ByteBufferChannel.access$writeSuspendPredicate(r3, r0)
                    if (r3 != 0) goto L6a
                    boolean r1 = r4.compareAndSet(r1, r2, r7)
                    if (r1 != 0) goto L53
                L6a:
                    if (r5 == 0) goto Lc
                L6c:
                    io.ktor.utils.io.ByteBufferChannel r10 = io.ktor.utils.p032io.ByteBufferChannel.this
                    io.ktor.utils.p032io.ByteBufferChannel.access$flushImpl(r10, r0)
                    io.ktor.utils.io.ByteBufferChannel r10 = io.ktor.utils.p032io.ByteBufferChannel.this
                    boolean r10 = io.ktor.utils.p032io.ByteBufferChannel.access$shouldResumeReadOp(r10)
                    if (r10 == 0) goto L7e
                    io.ktor.utils.io.ByteBufferChannel r10 = io.ktor.utils.p032io.ByteBufferChannel.this
                    io.ktor.utils.p032io.ByteBufferChannel.access$resumeReadOp(r10)
                L7e:
                    java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    return r10
                L83:
                    java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                    java.lang.String r0 = "Operation is already in progress"
                    java.lang.String r0 = r0.toString()
                    r10.<init>(r0)
                    throw r10
                */
                throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel$writeSuspension$1.invoke(kotlin.coroutines.Continuation):java.lang.Object");
            }
        };
    }

    public boolean getAutoFlush() {
        return this.autoFlush;
    }

    public /* synthetic */ ByteBufferChannel(boolean z, ObjectPool objectPool, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i2 & 2) != 0 ? ObjectPoolKt.getBufferObjectPool() : objectPool, (i2 & 4) != 0 ? 8 : i);
    }

    private final ReadWriteBufferState getState() {
        return (ReadWriteBufferState) this._state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClosedElement getClosed() {
        return (ClosedElement) this._closed;
    }

    private final Continuation<Boolean> getReadOp() {
        return (Continuation) this._readOp;
    }

    private final void setReadOp(Continuation<? super Boolean> continuation) {
        this._readOp = continuation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Continuation<Unit> getWriteOp() {
        return (Continuation) this._writeOp;
    }

    public final ReadWriteBufferState currentState$ktor_io() {
        return getState();
    }

    @Override // io.ktor.utils.p032io.ByteChannel
    public void attachJob(Job job) {
        Intrinsics.checkNotNullParameter(job, "job");
        Job job2 = this.attachedJob;
        if (job2 != null) {
            Job.DefaultImpls.cancel$default(job2, null, 1, null);
        }
        this.attachedJob = job;
        Job.DefaultImpls.invokeOnCompletion$default(job, true, false, new Function1<Throwable, Unit>() { // from class: io.ktor.utils.io.ByteBufferChannel$attachJob$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                ByteBufferChannel.this.attachedJob = null;
                if (th == null) {
                    return;
                }
                ByteBufferChannel.this.cancel(ExceptionUtilsKt.unwrapCancellationException(th));
            }
        }, 2, null);
    }

    @Override // io.ktor.utils.p032io.ByteReadChannel
    public boolean isClosedForWrite() {
        return getClosed() != null;
    }

    public long getTotalBytesRead() {
        return this.totalBytesRead;
    }

    public void setTotalBytesRead$ktor_io(long j) {
        this.totalBytesRead = j;
    }

    public long getTotalBytesWritten() {
        return this.totalBytesWritten;
    }

    public void setTotalBytesWritten$ktor_io(long j) {
        this.totalBytesWritten = j;
    }

    @Override // io.ktor.utils.p032io.ByteReadChannel
    public Throwable getClosedCause() {
        ClosedElement closed = getClosed();
        if (closed != null) {
            return closed.getCause();
        }
        return null;
    }

    @Override // io.ktor.utils.p032io.ByteWriteChannel
    public boolean close(Throwable th) {
        ClosedElement closedElement;
        JoiningState joiningState;
        if (getClosed() != null) {
            return false;
        }
        if (th == null) {
            closedElement = ClosedElement.Companion.getEmptyCause();
        } else {
            closedElement = new ClosedElement(th);
        }
        getState().capacity.flush();
        if (_closed$FU.compareAndSet(this, null, closedElement)) {
            getState().capacity.flush();
            if (getState().capacity.isEmpty() || th != null) {
                tryTerminate$ktor_io();
            }
            resumeClosed(th);
            if (getState() == ReadWriteBufferState.Terminated.INSTANCE && (joiningState = this.joining) != null) {
                ensureClosedJoined(joiningState);
            }
            if (th != null) {
                Job job = this.attachedJob;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, null, 1, null);
                }
                this.readSuspendContinuationCache.close(th);
                this.writeSuspendContinuationCache.close(th);
                return true;
            }
            this.writeSuspendContinuationCache.close(new ClosedWriteChannelException("Byte channel was closed"));
            this.readSuspendContinuationCache.close((CancellableReusableContinuation<Boolean>) Boolean.valueOf(getState().capacity.flush()));
            return true;
        }
        return false;
    }

    @Override // io.ktor.utils.p032io.ByteReadChannel
    public boolean cancel(Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel has been cancelled");
        }
        return close(th);
    }

    private final boolean tryReleaseBuffer(boolean z) {
        Object obj;
        ReadWriteBufferState.Terminated terminated;
        ReadWriteBufferState.Initial initial = null;
        do {
            obj = this._state;
            ReadWriteBufferState readWriteBufferState = (ReadWriteBufferState) obj;
            ClosedElement closed = getClosed();
            if (initial != null) {
                if ((closed != null ? closed.getCause() : null) == null) {
                    initial.capacity.resetForWrite();
                }
                resumeWriteOp();
                initial = null;
            }
            terminated = ReadWriteBufferState.Terminated.INSTANCE;
            if (readWriteBufferState == terminated) {
                return true;
            }
            if (readWriteBufferState != ReadWriteBufferState.IdleEmpty.INSTANCE) {
                if (closed != null && (readWriteBufferState instanceof ReadWriteBufferState.IdleNonEmpty) && (readWriteBufferState.capacity.tryLockForRelease() || closed.getCause() != null)) {
                    if (closed.getCause() != null) {
                        readWriteBufferState.capacity.forceLockForRelease();
                    }
                    initial = ((ReadWriteBufferState.IdleNonEmpty) readWriteBufferState).getInitial();
                } else if (!z || !(readWriteBufferState instanceof ReadWriteBufferState.IdleNonEmpty) || !readWriteBufferState.capacity.tryLockForRelease()) {
                    return false;
                } else {
                    initial = ((ReadWriteBufferState.IdleNonEmpty) readWriteBufferState).getInitial();
                }
            }
        } while (!_state$FU.compareAndSet(this, obj, terminated));
        if (initial != null && getState() == terminated) {
            releaseBuffer(initial);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void flushImpl(int i) {
        ReadWriteBufferState state;
        ReadWriteBufferState.Terminated terminated;
        ByteBufferChannel delegatedTo;
        JoiningState joiningState = this.joining;
        if (joiningState != null && (delegatedTo = joiningState.getDelegatedTo()) != null) {
            delegatedTo.flush();
        }
        do {
            state = getState();
            terminated = ReadWriteBufferState.Terminated.INSTANCE;
            if (state == terminated) {
                return;
            }
            state.capacity.flush();
        } while (state != getState());
        int i2 = state.capacity._availableForWrite$internal;
        if (state.capacity._availableForRead$internal >= 1) {
            resumeReadOp();
        }
        JoiningState joiningState2 = this.joining;
        if (i2 >= i) {
            if (joiningState2 == null || getState() == terminated) {
                resumeWriteOp();
            }
        }
    }

    private final void restoreStateAfterRead() {
        Object obj;
        ReadWriteBufferState stopReading$ktor_io;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        ReadWriteBufferState.IdleNonEmpty idleNonEmpty = null;
        do {
            obj = this._state;
            ReadWriteBufferState readWriteBufferState = (ReadWriteBufferState) obj;
            ReadWriteBufferState.IdleNonEmpty idleNonEmpty2 = idleNonEmpty;
            if (idleNonEmpty2 != null) {
                idleNonEmpty2.capacity.resetForWrite();
                resumeWriteOp();
                idleNonEmpty = null;
            }
            stopReading$ktor_io = readWriteBufferState.stopReading$ktor_io();
            if ((stopReading$ktor_io instanceof ReadWriteBufferState.IdleNonEmpty) && getState() == readWriteBufferState && stopReading$ktor_io.capacity.tryLockForRelease()) {
                stopReading$ktor_io = ReadWriteBufferState.IdleEmpty.INSTANCE;
                idleNonEmpty = stopReading$ktor_io;
            }
            atomicReferenceFieldUpdater = _state$FU;
        } while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, stopReading$ktor_io));
        ReadWriteBufferState.IdleEmpty idleEmpty = ReadWriteBufferState.IdleEmpty.INSTANCE;
        if (stopReading$ktor_io == idleEmpty) {
            ReadWriteBufferState.IdleNonEmpty idleNonEmpty3 = idleNonEmpty;
            if (idleNonEmpty3 != null) {
                releaseBuffer(idleNonEmpty3.getInitial());
            }
            resumeWriteOp();
        } else if ((stopReading$ktor_io instanceof ReadWriteBufferState.IdleNonEmpty) && stopReading$ktor_io.capacity.isEmpty() && stopReading$ktor_io.capacity.tryLockForRelease() && atomicReferenceFieldUpdater.compareAndSet(this, stopReading$ktor_io, idleEmpty)) {
            stopReading$ktor_io.capacity.resetForWrite();
            releaseBuffer(((ReadWriteBufferState.IdleNonEmpty) stopReading$ktor_io).getInitial());
            resumeWriteOp();
        }
    }

    private final ByteBuffer setupStateForRead() {
        Object obj;
        Throwable cause;
        ReadWriteBufferState startReading$ktor_io;
        Throwable cause2;
        do {
            obj = this._state;
            ReadWriteBufferState readWriteBufferState = (ReadWriteBufferState) obj;
            if (Intrinsics.areEqual(readWriteBufferState, ReadWriteBufferState.Terminated.INSTANCE) ? true : Intrinsics.areEqual(readWriteBufferState, ReadWriteBufferState.IdleEmpty.INSTANCE)) {
                ClosedElement closed = getClosed();
                if (closed == null || (cause = closed.getCause()) == null) {
                    return null;
                }
                ByteBufferChannelKt.rethrowClosed(cause);
                throw new KotlinNothingValueException();
            }
            ClosedElement closed2 = getClosed();
            if (closed2 != null && (cause2 = closed2.getCause()) != null) {
                ByteBufferChannelKt.rethrowClosed(cause2);
                throw new KotlinNothingValueException();
            } else if (readWriteBufferState.capacity._availableForRead$internal == 0) {
                return null;
            } else {
                startReading$ktor_io = readWriteBufferState.startReading$ktor_io();
            }
        } while (!_state$FU.compareAndSet(this, obj, startReading$ktor_io));
        ByteBuffer readBuffer = startReading$ktor_io.getReadBuffer();
        prepareBuffer(readBuffer, this.readPosition, startReading$ktor_io.capacity._availableForRead$internal);
        return readBuffer;
    }

    public final void restoreStateAfterWrite$ktor_io() {
        Object obj;
        ReadWriteBufferState stopWriting$ktor_io;
        ReadWriteBufferState.IdleNonEmpty idleNonEmpty;
        ReadWriteBufferState.IdleNonEmpty idleNonEmpty2 = null;
        do {
            obj = this._state;
            stopWriting$ktor_io = ((ReadWriteBufferState) obj).stopWriting$ktor_io();
            if ((stopWriting$ktor_io instanceof ReadWriteBufferState.IdleNonEmpty) && stopWriting$ktor_io.capacity.isEmpty()) {
                stopWriting$ktor_io = ReadWriteBufferState.IdleEmpty.INSTANCE;
                idleNonEmpty2 = stopWriting$ktor_io;
            }
        } while (!_state$FU.compareAndSet(this, obj, stopWriting$ktor_io));
        if (stopWriting$ktor_io != ReadWriteBufferState.IdleEmpty.INSTANCE || (idleNonEmpty = idleNonEmpty2) == null) {
            return;
        }
        releaseBuffer(idleNonEmpty.getInitial());
    }

    @Override // io.ktor.utils.p032io.ByteWriteChannel
    public void flush() {
        flushImpl(1);
    }

    private final void prepareBuffer(ByteBuffer byteBuffer, int i, int i2) {
        int coerceAtMost;
        if (!(i >= 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(i2 >= 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(i2 + i, byteBuffer.capacity() - this.reservedSize);
        byteBuffer.limit(coerceAtMost);
        byteBuffer.position(i);
    }

    public final ByteBuffer setupStateForWrite$ktor_io() {
        Object obj;
        ReadWriteBufferState readWriteBufferState;
        ReadWriteBufferState.IdleEmpty idleEmpty;
        ReadWriteBufferState startWriting$ktor_io;
        Continuation<Unit> writeOp = getWriteOp();
        if (writeOp == null) {
            ReadWriteBufferState readWriteBufferState2 = null;
            ReadWriteBufferState.Initial initial = null;
            do {
                obj = this._state;
                readWriteBufferState = (ReadWriteBufferState) obj;
                if (this.joining != null) {
                    if (initial != null) {
                        releaseBuffer(initial);
                    }
                    return null;
                } else if (getClosed() != null) {
                    if (initial != null) {
                        releaseBuffer(initial);
                    }
                    ClosedElement closed = getClosed();
                    Intrinsics.checkNotNull(closed);
                    ByteBufferChannelKt.rethrowClosed(closed.getSendException());
                    throw new KotlinNothingValueException();
                } else {
                    idleEmpty = ReadWriteBufferState.IdleEmpty.INSTANCE;
                    if (readWriteBufferState == idleEmpty) {
                        if (initial == null) {
                            initial = newBuffer();
                        }
                        startWriting$ktor_io = initial.startWriting$ktor_io();
                    } else if (readWriteBufferState == ReadWriteBufferState.Terminated.INSTANCE) {
                        if (initial != null) {
                            releaseBuffer(initial);
                        }
                        if (this.joining != null) {
                            return null;
                        }
                        ClosedElement closed2 = getClosed();
                        Intrinsics.checkNotNull(closed2);
                        ByteBufferChannelKt.rethrowClosed(closed2.getSendException());
                        throw new KotlinNothingValueException();
                    } else {
                        startWriting$ktor_io = readWriteBufferState.startWriting$ktor_io();
                    }
                }
            } while (!_state$FU.compareAndSet(this, obj, startWriting$ktor_io));
            if (getClosed() != null) {
                restoreStateAfterWrite$ktor_io();
                tryTerminate$ktor_io();
                ClosedElement closed3 = getClosed();
                Intrinsics.checkNotNull(closed3);
                ByteBufferChannelKt.rethrowClosed(closed3.getSendException());
                throw new KotlinNothingValueException();
            }
            ByteBuffer writeBuffer = startWriting$ktor_io.getWriteBuffer();
            if (initial != null) {
                if (readWriteBufferState == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("old");
                } else {
                    readWriteBufferState2 = readWriteBufferState;
                }
                if (readWriteBufferState2 != idleEmpty) {
                    releaseBuffer(initial);
                }
            }
            prepareBuffer(writeBuffer, this.writePosition, startWriting$ktor_io.capacity._availableForWrite$internal);
            return writeBuffer;
        }
        throw new IllegalStateException("Write operation is already in progress: " + writeOp);
    }

    public final boolean tryTerminate$ktor_io() {
        if (getClosed() == null || !tryReleaseBuffer(false)) {
            return false;
        }
        JoiningState joiningState = this.joining;
        if (joiningState != null) {
            ensureClosedJoined(joiningState);
        }
        resumeReadOp();
        resumeWriteOp();
        return true;
    }

    private final int carryIndex(ByteBuffer byteBuffer, int i) {
        return i >= byteBuffer.capacity() - this.reservedSize ? i - (byteBuffer.capacity() - this.reservedSize) : i;
    }

    private final int tryWritePacketPart(ByteReadPacket byteReadPacket) {
        ByteBufferChannel byteBufferChannel;
        JoiningState joiningState = this.joining;
        if (joiningState == null || (byteBufferChannel = resolveDelegation(this, joiningState)) == null) {
            byteBufferChannel = this;
        }
        ByteBuffer byteBuffer = byteBufferChannel.setupStateForWrite$ktor_io();
        if (byteBuffer == null) {
            return 0;
        }
        RingBufferCapacity ringBufferCapacity = byteBufferChannel.getState().capacity;
        long totalBytesWritten = byteBufferChannel.getTotalBytesWritten();
        try {
            ClosedElement closed = byteBufferChannel.getClosed();
            if (closed != null) {
                ByteBufferChannelKt.rethrowClosed(closed.getSendException());
                throw new KotlinNothingValueException();
            }
            int tryWriteAtMost = ringBufferCapacity.tryWriteAtMost((int) Math.min(byteReadPacket.getRemaining(), byteBuffer.remaining()));
            if (tryWriteAtMost > 0) {
                byteBuffer.limit(byteBuffer.position() + tryWriteAtMost);
                ByteBuffersKt.readFully(byteReadPacket, byteBuffer);
                byteBufferChannel.bytesWritten(byteBuffer, ringBufferCapacity, tryWriteAtMost);
            }
            return tryWriteAtMost;
        } finally {
            if (ringBufferCapacity.isFull() || byteBufferChannel.getAutoFlush()) {
                byteBufferChannel.flush();
            }
            if (byteBufferChannel != this) {
                setTotalBytesWritten$ktor_io(getTotalBytesWritten() + (byteBufferChannel.getTotalBytesWritten() - totalBytesWritten));
            }
            byteBufferChannel.restoreStateAfterWrite$ktor_io();
            byteBufferChannel.tryTerminate$ktor_io();
        }
    }

    private final int writeAsMuchAsPossible(ByteBuffer byteBuffer) {
        ByteBufferChannel byteBufferChannel;
        int tryWriteAtMost;
        JoiningState joiningState = this.joining;
        if (joiningState == null || (byteBufferChannel = resolveDelegation(this, joiningState)) == null) {
            byteBufferChannel = this;
        }
        ByteBuffer byteBuffer2 = byteBufferChannel.setupStateForWrite$ktor_io();
        if (byteBuffer2 == null) {
            return 0;
        }
        RingBufferCapacity ringBufferCapacity = byteBufferChannel.getState().capacity;
        long totalBytesWritten = byteBufferChannel.getTotalBytesWritten();
        try {
            ClosedElement closed = byteBufferChannel.getClosed();
            if (closed != null) {
                ByteBufferChannelKt.rethrowClosed(closed.getSendException());
                throw new KotlinNothingValueException();
            }
            int limit = byteBuffer.limit();
            int i = 0;
            while (true) {
                int position = limit - byteBuffer.position();
                if (position == 0 || (tryWriteAtMost = ringBufferCapacity.tryWriteAtMost(Math.min(position, byteBuffer2.remaining()))) == 0) {
                    break;
                }
                if (!(tryWriteAtMost > 0)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                byteBuffer.limit(byteBuffer.position() + tryWriteAtMost);
                byteBuffer2.put(byteBuffer);
                i += tryWriteAtMost;
                byteBufferChannel.prepareBuffer(byteBuffer2, byteBufferChannel.carryIndex(byteBuffer2, byteBufferChannel.writePosition + i), ringBufferCapacity._availableForWrite$internal);
            }
            byteBuffer.limit(limit);
            byteBufferChannel.bytesWritten(byteBuffer2, ringBufferCapacity, i);
            return i;
        } finally {
            if (ringBufferCapacity.isFull() || byteBufferChannel.getAutoFlush()) {
                byteBufferChannel.flush();
            }
            if (byteBufferChannel != this) {
                setTotalBytesWritten$ktor_io(getTotalBytesWritten() + (byteBufferChannel.getTotalBytesWritten() - totalBytesWritten));
            }
            byteBufferChannel.restoreStateAfterWrite$ktor_io();
            byteBufferChannel.tryTerminate$ktor_io();
        }
    }

    private final int writeAsMuchAsPossible(byte[] bArr, int i, int i2) {
        ByteBufferChannel byteBufferChannel;
        JoiningState joiningState = this.joining;
        if (joiningState == null || (byteBufferChannel = resolveDelegation(this, joiningState)) == null) {
            byteBufferChannel = this;
        }
        ByteBuffer byteBuffer = byteBufferChannel.setupStateForWrite$ktor_io();
        if (byteBuffer == null) {
            return 0;
        }
        RingBufferCapacity ringBufferCapacity = byteBufferChannel.getState().capacity;
        long totalBytesWritten = byteBufferChannel.getTotalBytesWritten();
        try {
            ClosedElement closed = byteBufferChannel.getClosed();
            if (closed != null) {
                ByteBufferChannelKt.rethrowClosed(closed.getSendException());
                throw new KotlinNothingValueException();
            }
            int i3 = 0;
            while (true) {
                int tryWriteAtMost = ringBufferCapacity.tryWriteAtMost(Math.min(i2 - i3, byteBuffer.remaining()));
                if (tryWriteAtMost == 0) {
                    byteBufferChannel.bytesWritten(byteBuffer, ringBufferCapacity, i3);
                    return i3;
                }
                if (!(tryWriteAtMost > 0)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                byteBuffer.put(bArr, i + i3, tryWriteAtMost);
                i3 += tryWriteAtMost;
                byteBufferChannel.prepareBuffer(byteBuffer, byteBufferChannel.carryIndex(byteBuffer, byteBufferChannel.writePosition + i3), ringBufferCapacity._availableForWrite$internal);
            }
        } finally {
            if (ringBufferCapacity.isFull() || byteBufferChannel.getAutoFlush()) {
                byteBufferChannel.flush();
            }
            if (byteBufferChannel != this) {
                setTotalBytesWritten$ktor_io(getTotalBytesWritten() + (byteBufferChannel.getTotalBytesWritten() - totalBytesWritten));
            }
            byteBufferChannel.restoreStateAfterWrite$ktor_io();
            byteBufferChannel.tryTerminate$ktor_io();
        }
    }

    /* JADX WARN: Finally extract failed */
    public int writeAvailable(int i, Function1<? super ByteBuffer, Unit> block) {
        ByteBufferChannel byteBufferChannel;
        int i2;
        Intrinsics.checkNotNullParameter(block, "block");
        int i3 = 1;
        if (i > 0) {
            if (i <= 4088) {
                JoiningState joiningState = this.joining;
                if (joiningState == null || (byteBufferChannel = resolveDelegation(this, joiningState)) == null) {
                    byteBufferChannel = this;
                }
                ByteBuffer byteBuffer = byteBufferChannel.setupStateForWrite$ktor_io();
                if (byteBuffer == null) {
                    i2 = 0;
                } else {
                    RingBufferCapacity ringBufferCapacity = byteBufferChannel.getState().capacity;
                    long totalBytesWritten = byteBufferChannel.getTotalBytesWritten();
                    try {
                        ClosedElement closed = byteBufferChannel.getClosed();
                        if (closed != null) {
                            ByteBufferChannelKt.rethrowClosed(closed.getSendException());
                            throw new KotlinNothingValueException();
                        }
                        int tryWriteAtLeast = ringBufferCapacity.tryWriteAtLeast(i);
                        if (tryWriteAtLeast <= 0) {
                            i3 = 0;
                        } else {
                            byteBufferChannel.prepareBuffer(byteBuffer, byteBufferChannel.writePosition, tryWriteAtLeast);
                            int position = byteBuffer.position();
                            int limit = byteBuffer.limit();
                            block.invoke(byteBuffer);
                            if (!(limit == byteBuffer.limit())) {
                                throw new IllegalStateException("Buffer limit modified".toString());
                            }
                            int position2 = byteBuffer.position() - position;
                            if ((position2 >= 0 ? 1 : 0) == 0) {
                                throw new IllegalStateException("Position has been moved backward: pushback is not supported".toString());
                            }
                            if (position2 < 0) {
                                throw new IllegalStateException();
                            }
                            byteBufferChannel.bytesWritten(byteBuffer, ringBufferCapacity, position2);
                            if (position2 < tryWriteAtLeast) {
                                ringBufferCapacity.completeRead(tryWriteAtLeast - position2);
                            }
                            r1 = position2;
                        }
                        if (ringBufferCapacity.isFull() || byteBufferChannel.getAutoFlush()) {
                            byteBufferChannel.flush();
                        }
                        if (byteBufferChannel != this) {
                            setTotalBytesWritten$ktor_io(getTotalBytesWritten() + (byteBufferChannel.getTotalBytesWritten() - totalBytesWritten));
                        }
                        byteBufferChannel.restoreStateAfterWrite$ktor_io();
                        byteBufferChannel.tryTerminate$ktor_io();
                        i2 = r1;
                        r1 = i3;
                    } catch (Throwable th) {
                        if (ringBufferCapacity.isFull() || byteBufferChannel.getAutoFlush()) {
                            byteBufferChannel.flush();
                        }
                        if (byteBufferChannel != this) {
                            setTotalBytesWritten$ktor_io(getTotalBytesWritten() + (byteBufferChannel.getTotalBytesWritten() - totalBytesWritten));
                        }
                        byteBufferChannel.restoreStateAfterWrite$ktor_io();
                        byteBufferChannel.tryTerminate$ktor_io();
                        throw th;
                    }
                }
                if (r1 == 0) {
                    return -1;
                }
                return i2;
            }
            throw new IllegalArgumentException(("Min(" + i + ") shouldn't be greater than 4088").toString());
        }
        throw new IllegalArgumentException("min should be positive".toString());
    }

    private final int readAsMuchAsPossible(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2 = setupStateForRead();
        int i = 0;
        if (byteBuffer2 != null) {
            RingBufferCapacity ringBufferCapacity = getState().capacity;
            try {
                if (ringBufferCapacity._availableForRead$internal != 0) {
                    int capacity = byteBuffer2.capacity() - this.reservedSize;
                    while (true) {
                        int remaining = byteBuffer.remaining();
                        if (remaining == 0) {
                            break;
                        }
                        int i2 = this.readPosition;
                        int tryReadAtMost = ringBufferCapacity.tryReadAtMost(Math.min(capacity - i2, remaining));
                        if (tryReadAtMost == 0) {
                            break;
                        }
                        byteBuffer2.limit(i2 + tryReadAtMost);
                        byteBuffer2.position(i2);
                        byteBuffer.put(byteBuffer2);
                        bytesRead(byteBuffer2, ringBufferCapacity, tryReadAtMost);
                        i += tryReadAtMost;
                    }
                }
            } finally {
                restoreStateAfterRead();
                tryTerminate$ktor_io();
            }
        }
        return i;
    }

    public final Object readFully(ByteBuffer byteBuffer, Continuation<? super Integer> continuation) {
        int readAsMuchAsPossible = readAsMuchAsPossible(byteBuffer);
        return !byteBuffer.hasRemaining() ? Boxing.boxInt(readAsMuchAsPossible) : readFullySuspend(byteBuffer, readAsMuchAsPossible, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0054 -> B:21:0x0057). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readFullySuspend(java.nio.ByteBuffer r6, int r7, kotlin.coroutines.Continuation<? super java.lang.Integer> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.ktor.utils.p032io.ByteBufferChannel$readFullySuspend$1
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$readFullySuspend$1 r0 = (io.ktor.utils.p032io.ByteBufferChannel$readFullySuspend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$readFullySuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readFullySuspend$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            int r6 = r0.I$0
            java.lang.Object r7 = r0.L$1
            java.nio.ByteBuffer r7 = (java.nio.ByteBuffer) r7
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.p032io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L57
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            kotlin.ResultKt.throwOnFailure(r8)
            r2 = r5
        L3f:
            boolean r8 = r6.hasRemaining()
            if (r8 == 0) goto L88
            r0.L$0 = r2
            r0.L$1 = r6
            r0.I$0 = r7
            r0.label = r3
            java.lang.Object r8 = r2.readSuspend(r3, r0)
            if (r8 != r1) goto L54
            return r1
        L54:
            r4 = r7
            r7 = r6
            r6 = r4
        L57:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L68
            int r8 = r2.readAsMuchAsPossible(r7)
            int r6 = r6 + r8
            r4 = r7
            r7 = r6
            r6 = r4
            goto L3f
        L68:
            kotlinx.coroutines.channels.ClosedReceiveChannelException r6 = new kotlinx.coroutines.channels.ClosedReceiveChannelException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "Unexpected EOF: expected "
            r8.append(r0)
            int r7 = r7.remaining()
            r8.append(r7)
            java.lang.String r7 = " more bytes"
            r8.append(r7)
            java.lang.String r7 = r8.toString()
            r6.<init>(r7)
            throw r6
        L88:
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.readFullySuspend(java.nio.ByteBuffer, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object readPacket$suspendImpl(ByteBufferChannel byteBufferChannel, int i, Continuation<? super ByteReadPacket> continuation) {
        Throwable cause;
        ClosedElement closed = byteBufferChannel.getClosed();
        if (closed != null && (cause = closed.getCause()) != null) {
            ByteBufferChannelKt.rethrowClosed(cause);
            throw new KotlinNothingValueException();
        } else if (i == 0) {
            return ByteReadPacket.Companion.getEmpty();
        } else {
            BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, null);
            ByteBuffer borrow = ObjectPoolKt.getBufferPool().borrow();
            while (i > 0) {
                try {
                    borrow.clear();
                    if (borrow.remaining() > i) {
                        borrow.limit(i);
                    }
                    int readAsMuchAsPossible = byteBufferChannel.readAsMuchAsPossible(borrow);
                    if (readAsMuchAsPossible == 0) {
                        break;
                    }
                    borrow.flip();
                    OutputArraysJVMKt.writeFully(bytePacketBuilder, borrow);
                    i -= readAsMuchAsPossible;
                } catch (Throwable th) {
                    ObjectPoolKt.getBufferPool().recycle(borrow);
                    bytePacketBuilder.release();
                    throw th;
                }
            }
            if (i == 0) {
                ObjectPoolKt.getBufferPool().recycle(borrow);
                return bytePacketBuilder.build();
            }
            return byteBufferChannel.readPacketSuspend(i, bytePacketBuilder, borrow, continuation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004a A[Catch: all -> 0x0081, TRY_ENTER, TryCatch #0 {all -> 0x0081, blocks: (B:26:0x0067, B:20:0x004a, B:22:0x0053, B:23:0x0056, B:27:0x0075), top: B:37:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0075 A[Catch: all -> 0x0081, TRY_LEAVE, TryCatch #0 {all -> 0x0081, blocks: (B:26:0x0067, B:20:0x004a, B:22:0x0053, B:23:0x0056, B:27:0x0075), top: B:37:0x0067 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0064 -> B:37:0x0067). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readPacketSuspend(int r6, io.ktor.utils.p032io.core.BytePacketBuilder r7, java.nio.ByteBuffer r8, kotlin.coroutines.Continuation<? super io.ktor.utils.p032io.core.ByteReadPacket> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof io.ktor.utils.p032io.ByteBufferChannel$readPacketSuspend$1
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.utils.io.ByteBufferChannel$readPacketSuspend$1 r0 = (io.ktor.utils.p032io.ByteBufferChannel$readPacketSuspend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$readPacketSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readPacketSuspend$1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L44
            if (r2 != r3) goto L3c
            int r6 = r0.I$0
            java.lang.Object r7 = r0.L$2
            java.nio.ByteBuffer r7 = (java.nio.ByteBuffer) r7
            java.lang.Object r8 = r0.L$1
            io.ktor.utils.io.core.BytePacketBuilder r8 = (io.ktor.utils.p032io.core.BytePacketBuilder) r8
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.p032io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L3a
            r4 = r8
            r8 = r7
            r7 = r4
            goto L67
        L3a:
            r6 = move-exception
            goto L85
        L3c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L44:
            kotlin.ResultKt.throwOnFailure(r9)
            r2 = r5
        L48:
            if (r6 <= 0) goto L75
            r8.clear()     // Catch: java.lang.Throwable -> L81
            int r9 = r8.remaining()     // Catch: java.lang.Throwable -> L81
            if (r9 <= r6) goto L56
            r8.limit(r6)     // Catch: java.lang.Throwable -> L81
        L56:
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L81
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L81
            r0.L$2 = r8     // Catch: java.lang.Throwable -> L81
            r0.I$0 = r6     // Catch: java.lang.Throwable -> L81
            r0.label = r3     // Catch: java.lang.Throwable -> L81
            java.lang.Object r9 = r2.readFully(r8, r0)     // Catch: java.lang.Throwable -> L81
            if (r9 != r1) goto L67
            return r1
        L67:
            java.lang.Number r9 = (java.lang.Number) r9     // Catch: java.lang.Throwable -> L81
            int r9 = r9.intValue()     // Catch: java.lang.Throwable -> L81
            r8.flip()     // Catch: java.lang.Throwable -> L81
            io.ktor.utils.p032io.core.OutputArraysJVMKt.writeFully(r7, r8)     // Catch: java.lang.Throwable -> L81
            int r6 = r6 - r9
            goto L48
        L75:
            io.ktor.utils.io.core.ByteReadPacket r6 = r7.build()     // Catch: java.lang.Throwable -> L81
            io.ktor.utils.io.pool.ObjectPool r7 = io.ktor.utils.p032io.internal.ObjectPoolKt.getBufferPool()
            r7.recycle(r8)
            return r6
        L81:
            r6 = move-exception
            r4 = r8
            r8 = r7
            r7 = r4
        L85:
            r8.release()     // Catch: java.lang.Throwable -> L89
            throw r6     // Catch: java.lang.Throwable -> L89
        L89:
            r6 = move-exception
            io.ktor.utils.io.pool.ObjectPool r8 = io.ktor.utils.p032io.internal.ObjectPoolKt.getBufferPool()
            r8.recycle(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.readPacketSuspend(int, io.ktor.utils.io.core.BytePacketBuilder, java.nio.ByteBuffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void bytesWritten(ByteBuffer byteBuffer, RingBufferCapacity ringBufferCapacity, int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.writePosition = carryIndex(byteBuffer, this.writePosition + i);
        ringBufferCapacity.completeWrite(i);
        setTotalBytesWritten$ktor_io(getTotalBytesWritten() + i);
    }

    private final void bytesRead(ByteBuffer byteBuffer, RingBufferCapacity ringBufferCapacity, int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.readPosition = carryIndex(byteBuffer, this.readPosition + i);
        ringBufferCapacity.completeRead(i);
        setTotalBytesRead$ktor_io(getTotalBytesRead() + i);
        resumeWriteOp();
    }

    public final ByteBufferChannel resolveChannelInstance$ktor_io() {
        ByteBufferChannel resolveDelegation;
        JoiningState joiningState = this.joining;
        return (joiningState == null || (resolveDelegation = resolveDelegation(this, joiningState)) == null) ? this : resolveDelegation;
    }

    private final ByteBufferChannel resolveDelegation(ByteBufferChannel byteBufferChannel, JoiningState joiningState) {
        while (byteBufferChannel.getState() == ReadWriteBufferState.Terminated.INSTANCE) {
            byteBufferChannel = joiningState.getDelegatedTo();
            joiningState = byteBufferChannel.joining;
            if (joiningState == null) {
                return byteBufferChannel;
            }
        }
        return null;
    }

    static /* synthetic */ Object writeFully$suspendImpl(ByteBufferChannel byteBufferChannel, ByteBuffer byteBuffer, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        ByteBufferChannel resolveDelegation;
        Object coroutine_suspended2;
        JoiningState joiningState = byteBufferChannel.joining;
        if (joiningState != null && (resolveDelegation = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState)) != null) {
            Object writeFully = resolveDelegation.writeFully(byteBuffer, continuation);
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return writeFully == coroutine_suspended2 ? writeFully : Unit.INSTANCE;
        }
        byteBufferChannel.writeAsMuchAsPossible(byteBuffer);
        if (byteBuffer.hasRemaining()) {
            Object writeFullySuspend = byteBufferChannel.writeFullySuspend(byteBuffer, continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return writeFullySuspend == coroutine_suspended ? writeFullySuspend : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0054 -> B:22:0x0057). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeFullySuspend(java.nio.ByteBuffer r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.p032io.ByteBufferChannel$writeFullySuspend$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1 r0 = (io.ktor.utils.p032io.ByteBufferChannel$writeFullySuspend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L6f
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r6 = r0.L$1
            java.nio.ByteBuffer r6 = (java.nio.ByteBuffer) r6
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.p032io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L57
        L40:
            kotlin.ResultKt.throwOnFailure(r7)
            r2 = r5
        L44:
            boolean r7 = r6.hasRemaining()
            if (r7 == 0) goto L76
            r0.L$0 = r2
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r7 = r2.tryWriteSuspend$ktor_io(r4, r0)
            if (r7 != r1) goto L57
            return r1
        L57:
            io.ktor.utils.io.internal.JoiningState r7 = r2.joining
            if (r7 == 0) goto L72
            io.ktor.utils.io.ByteBufferChannel r7 = r2.resolveDelegation(r2, r7)
            if (r7 == 0) goto L72
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r6 = r7.writeFully(r6, r0)
            if (r6 != r1) goto L6f
            return r1
        L6f:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L72:
            r2.writeAsMuchAsPossible(r6)
            goto L44
        L76:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.writeFullySuspend(java.nio.ByteBuffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void ensureClosedJoined(JoiningState joiningState) {
        ClosedElement closed = getClosed();
        if (closed == null) {
            return;
        }
        this.joining = null;
        if (!joiningState.getDelegateClose()) {
            joiningState.getDelegatedTo().flush();
            joiningState.complete();
            return;
        }
        ReadWriteBufferState state = joiningState.getDelegatedTo().getState();
        boolean z = (state instanceof ReadWriteBufferState.Writing) || (state instanceof ReadWriteBufferState.ReadingWriting);
        if (closed.getCause() != null || !z) {
            joiningState.getDelegatedTo().close(closed.getCause());
        } else {
            joiningState.getDelegatedTo().flush();
        }
        joiningState.complete();
    }

    static /* synthetic */ Object writeFully$suspendImpl(ByteBufferChannel byteBufferChannel, byte[] bArr, int i, int i2, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        ByteBufferChannel resolveDelegation;
        Object coroutine_suspended2;
        JoiningState joiningState = byteBufferChannel.joining;
        if (joiningState != null && (resolveDelegation = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState)) != null) {
            Object writeFully = resolveDelegation.writeFully(bArr, i, i2, continuation);
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return writeFully == coroutine_suspended2 ? writeFully : Unit.INSTANCE;
        }
        while (i2 > 0) {
            int writeAsMuchAsPossible = byteBufferChannel.writeAsMuchAsPossible(bArr, i, i2);
            if (writeAsMuchAsPossible == 0) {
                break;
            }
            i += writeAsMuchAsPossible;
            i2 -= writeAsMuchAsPossible;
        }
        if (i2 == 0) {
            return Unit.INSTANCE;
        }
        Object writeFullySuspend = byteBufferChannel.writeFullySuspend(bArr, i, i2, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return writeFullySuspend == coroutine_suspended ? writeFullySuspend : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0054 -> B:20:0x0057). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeFullySuspend(byte[] r6, int r7, int r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof io.ktor.utils.p032io.ByteBufferChannel$writeFullySuspend$5
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5 r0 = (io.ktor.utils.p032io.ByteBufferChannel$writeFullySuspend$5) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5 r0 = new io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            int r6 = r0.I$1
            int r7 = r0.I$0
            java.lang.Object r8 = r0.L$1
            byte[] r8 = (byte[]) r8
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.p032io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L57
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3d:
            kotlin.ResultKt.throwOnFailure(r9)
            r2 = r5
        L41:
            if (r8 <= 0) goto L63
            r0.L$0 = r2
            r0.L$1 = r6
            r0.I$0 = r7
            r0.I$1 = r8
            r0.label = r3
            java.lang.Object r9 = r2.writeAvailable(r6, r7, r8, r0)
            if (r9 != r1) goto L54
            return r1
        L54:
            r4 = r8
            r8 = r6
            r6 = r4
        L57:
            java.lang.Number r9 = (java.lang.Number) r9
            int r9 = r9.intValue()
            int r7 = r7 + r9
            int r6 = r6 - r9
            r4 = r8
            r8 = r6
            r6 = r4
            goto L41
        L63:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.writeFullySuspend(byte[], int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object writeAvailable$suspendImpl(ByteBufferChannel byteBufferChannel, byte[] bArr, int i, int i2, Continuation<? super Integer> continuation) {
        ByteBufferChannel resolveDelegation;
        JoiningState joiningState = byteBufferChannel.joining;
        if (joiningState == null || (resolveDelegation = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState)) == null) {
            int writeAsMuchAsPossible = byteBufferChannel.writeAsMuchAsPossible(bArr, i, i2);
            if (writeAsMuchAsPossible > 0) {
                return Boxing.boxInt(writeAsMuchAsPossible);
            }
            return byteBufferChannel.writeSuspend(bArr, i, i2, continuation);
        }
        return resolveDelegation.writeAvailable(bArr, i, i2, continuation);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:20:0x005c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeSuspend(byte[] r7, int r8, int r9, kotlin.coroutines.Continuation<? super java.lang.Integer> r10) {
        /*
            r6 = this;
            boolean r0 = r10 instanceof io.ktor.utils.p032io.ByteBufferChannel$writeSuspend$1
            if (r0 == 0) goto L13
            r0 = r10
            io.ktor.utils.io.ByteBufferChannel$writeSuspend$1 r0 = (io.ktor.utils.p032io.ByteBufferChannel$writeSuspend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$writeSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$writeSuspend$1
            r0.<init>(r6, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L47
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r10)
            goto L74
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            int r7 = r0.I$1
            int r8 = r0.I$0
            java.lang.Object r9 = r0.L$1
            byte[] r9 = (byte[]) r9
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.p032io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r10)
            r5 = r9
            r9 = r7
            r7 = r5
            goto L5c
        L47:
            kotlin.ResultKt.throwOnFailure(r10)
            r2 = r6
        L4b:
            r0.L$0 = r2
            r0.L$1 = r7
            r0.I$0 = r8
            r0.I$1 = r9
            r0.label = r4
            java.lang.Object r10 = r2.tryWriteSuspend$ktor_io(r4, r0)
            if (r10 != r1) goto L5c
            return r1
        L5c:
            io.ktor.utils.io.internal.JoiningState r10 = r2.joining
            if (r10 == 0) goto L75
            io.ktor.utils.io.ByteBufferChannel r10 = r2.resolveDelegation(r2, r10)
            if (r10 == 0) goto L75
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r10 = r10.writeSuspend(r7, r8, r9, r0)
            if (r10 != r1) goto L74
            return r1
        L74:
            return r10
        L75:
            int r10 = r2.writeAsMuchAsPossible(r7, r8, r9)
            if (r10 <= 0) goto L4b
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r10)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.writeSuspend(byte[], int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object write$suspendImpl(io.ktor.utils.p032io.ByteBufferChannel r5, int r6, kotlin.jvm.functions.Function1<? super java.nio.ByteBuffer, kotlin.Unit> r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            boolean r0 = r8 instanceof io.ktor.utils.p032io.ByteBufferChannel$write$1
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$write$1 r0 = (io.ktor.utils.p032io.ByteBufferChannel$write$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$write$1 r0 = new io.ktor.utils.io.ByteBufferChannel$write$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            int r5 = r0.I$0
            java.lang.Object r6 = r0.L$1
            kotlin.jvm.functions.Function1 r6 = (kotlin.jvm.functions.Function1) r6
            java.lang.Object r7 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r7 = (io.ktor.utils.p032io.ByteBufferChannel) r7
            kotlin.ResultKt.throwOnFailure(r8)
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
            goto L51
        L37:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3f:
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = 0
            if (r6 <= 0) goto L47
            r2 = r3
            goto L48
        L47:
            r2 = r8
        L48:
            if (r2 == 0) goto L89
            r2 = 4088(0xff8, float:5.729E-42)
            if (r6 > r2) goto L4f
            r8 = r3
        L4f:
            if (r8 == 0) goto L69
        L51:
            int r8 = r5.writeAvailable(r6, r7)
            if (r8 < 0) goto L5a
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L5a:
            r0.L$0 = r5
            r0.L$1 = r7
            r0.I$0 = r6
            r0.label = r3
            java.lang.Object r8 = r5.awaitFreeSpaceOrDelegate(r6, r7, r0)
            if (r8 != r1) goto L51
            return r1
        L69:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r7 = "Min("
            r5.append(r7)
            r5.append(r6)
            java.lang.String r6 = ") should'nt be greater than (4088)"
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r5 = r5.toString()
            r6.<init>(r5)
            throw r6
        L89:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "min should be positive"
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.write$suspendImpl(io.ktor.utils.io.ByteBufferChannel, int, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object awaitFreeSpaceOrDelegate(int r6, kotlin.jvm.functions.Function1<? super java.nio.ByteBuffer, kotlin.Unit> r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.ktor.utils.p032io.ByteBufferChannel$awaitFreeSpaceOrDelegate$1
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$awaitFreeSpaceOrDelegate$1 r0 = (io.ktor.utils.p032io.ByteBufferChannel$awaitFreeSpaceOrDelegate$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$awaitFreeSpaceOrDelegate$1 r0 = new io.ktor.utils.io.ByteBufferChannel$awaitFreeSpaceOrDelegate$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L42
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6d
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            int r6 = r0.I$0
            java.lang.Object r7 = r0.L$1
            kotlin.jvm.functions.Function1 r7 = (kotlin.jvm.functions.Function1) r7
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.p032io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L55
        L42:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r5
            r0.L$1 = r7
            r0.I$0 = r6
            r0.label = r4
            java.lang.Object r8 = r5.writeSuspend(r6, r0)
            if (r8 != r1) goto L54
            return r1
        L54:
            r2 = r5
        L55:
            io.ktor.utils.io.internal.JoiningState r8 = r2.joining
            if (r8 == 0) goto L70
            io.ktor.utils.io.ByteBufferChannel r8 = r2.resolveDelegation(r2, r8)
            if (r8 == 0) goto L70
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r6 = r8.write(r6, r7, r0)
            if (r6 != r1) goto L6d
            return r1
        L6d:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L70:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.awaitFreeSpaceOrDelegate(int, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object writePacket$suspendImpl(ByteBufferChannel byteBufferChannel, ByteReadPacket byteReadPacket, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        ByteBufferChannel resolveDelegation;
        Object coroutine_suspended2;
        ByteBufferChannel resolveDelegation2;
        Object coroutine_suspended3;
        JoiningState joiningState = byteBufferChannel.joining;
        if (joiningState != null && (resolveDelegation2 = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState)) != null) {
            Object writePacket = resolveDelegation2.writePacket(byteReadPacket, continuation);
            coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return writePacket == coroutine_suspended3 ? writePacket : Unit.INSTANCE;
        }
        do {
            try {
                if (!(!byteReadPacket.getEndOfInput())) {
                    break;
                }
            } catch (Throwable th) {
                byteReadPacket.release();
                throw th;
            }
        } while (byteBufferChannel.tryWritePacketPart(byteReadPacket) != 0);
        if (byteReadPacket.getRemaining() > 0) {
            JoiningState joiningState2 = byteBufferChannel.joining;
            if (joiningState2 == null || (resolveDelegation = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState2)) == null) {
                Object writePacketSuspend = byteBufferChannel.writePacketSuspend(byteReadPacket, continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return writePacketSuspend == coroutine_suspended ? writePacketSuspend : Unit.INSTANCE;
            }
            Object writePacket2 = resolveDelegation.writePacket(byteReadPacket, continuation);
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return writePacket2 == coroutine_suspended2 ? writePacket2 : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051 A[Catch: all -> 0x0044, TryCatch #0 {all -> 0x0044, blocks: (B:13:0x002c, B:35:0x0076, B:18:0x0040, B:28:0x005e, B:30:0x0062, B:32:0x0068, B:38:0x007c, B:23:0x004a, B:25:0x0051), top: B:44:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0080  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x005b -> B:28:0x005e). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writePacketSuspend(io.ktor.utils.p032io.core.ByteReadPacket r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.p032io.ByteBufferChannel$writePacketSuspend$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$writePacketSuspend$1 r0 = (io.ktor.utils.p032io.ByteBufferChannel$writePacketSuspend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$writePacketSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$writePacketSuspend$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L46
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r6 = r0.L$0
            io.ktor.utils.io.core.ByteReadPacket r6 = (io.ktor.utils.p032io.core.ByteReadPacket) r6
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L44
            goto L76
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            java.lang.Object r6 = r0.L$1
            io.ktor.utils.io.core.ByteReadPacket r6 = (io.ktor.utils.p032io.core.ByteReadPacket) r6
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.p032io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L44
            goto L5e
        L44:
            r7 = move-exception
            goto L86
        L46:
            kotlin.ResultKt.throwOnFailure(r7)
            r2 = r5
        L4a:
            boolean r7 = r6.getEndOfInput()     // Catch: java.lang.Throwable -> L44
            r7 = r7 ^ r4
            if (r7 == 0) goto L80
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L44
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L44
            r0.label = r4     // Catch: java.lang.Throwable -> L44
            java.lang.Object r7 = r2.writeSuspend(r4, r0)     // Catch: java.lang.Throwable -> L44
            if (r7 != r1) goto L5e
            return r1
        L5e:
            io.ktor.utils.io.internal.JoiningState r7 = r2.joining     // Catch: java.lang.Throwable -> L44
            if (r7 == 0) goto L7c
            io.ktor.utils.io.ByteBufferChannel r7 = r2.resolveDelegation(r2, r7)     // Catch: java.lang.Throwable -> L44
            if (r7 == 0) goto L7c
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L44
            r2 = 0
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L44
            r0.label = r3     // Catch: java.lang.Throwable -> L44
            java.lang.Object r7 = r7.writePacket(r6, r0)     // Catch: java.lang.Throwable -> L44
            if (r7 != r1) goto L76
            return r1
        L76:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L44
            r6.release()
            return r7
        L7c:
            r2.tryWritePacketPart(r6)     // Catch: java.lang.Throwable -> L44
            goto L4a
        L80:
            r6.release()
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L86:
            r6.release()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.writePacketSuspend(io.ktor.utils.io.core.ByteReadPacket, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ <R> java.lang.Object lookAheadSuspend$suspendImpl(io.ktor.utils.p032io.ByteBufferChannel r7, kotlin.jvm.functions.Function2<? super io.ktor.utils.p032io.LookAheadSuspendSession, ? super kotlin.coroutines.Continuation<? super R>, ? extends java.lang.Object> r8, kotlin.coroutines.Continuation<? super R> r9) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.lookAheadSuspend$suspendImpl(io.ktor.utils.io.ByteBufferChannel, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // io.ktor.utils.p032io.LookAheadSession
    /* renamed from: consumed */
    public void mo1932consumed(int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        ReadWriteBufferState state = getState();
        if (state.capacity.tryReadExact(i)) {
            if (i > 0) {
                bytesRead(state.getReadBuffer(), state.capacity, i);
                return;
            }
            return;
        }
        throw new IllegalStateException("Unable to consume " + i + " bytes: not enough available bytes");
    }

    @Override // io.ktor.utils.p032io.LookAheadSuspendSession
    public final Object awaitAtLeast(int i, Continuation<? super Boolean> continuation) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("atLeast parameter shouldn't be negative: " + i).toString());
        }
        if (i <= 4088) {
            if (getState().capacity._availableForRead$internal >= i) {
                if (getState().getIdle() || (getState() instanceof ReadWriteBufferState.Writing)) {
                    setupStateForRead();
                }
                return Boxing.boxBoolean(true);
            } else if (getState().getIdle() || (getState() instanceof ReadWriteBufferState.Writing)) {
                return awaitAtLeastSuspend(i, continuation);
            } else {
                if (i == 1) {
                    return readSuspendImpl(1, continuation);
                }
                return readSuspend(i, continuation);
            }
        }
        throw new IllegalArgumentException(("atLeast parameter shouldn't be larger than max buffer size of 4088: " + i).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object awaitAtLeastSuspend(int r5, kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.ktor.utils.p032io.ByteBufferChannel$awaitAtLeastSuspend$1
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.utils.io.ByteBufferChannel$awaitAtLeastSuspend$1 r0 = (io.ktor.utils.p032io.ByteBufferChannel$awaitAtLeastSuspend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$awaitAtLeastSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$awaitAtLeastSuspend$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r5 = (io.ktor.utils.p032io.ByteBufferChannel) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L44
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r6 = r4.readSuspend(r5, r0)
            if (r6 != r1) goto L43
            return r1
        L43:
            r5 = r4
        L44:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L59
            io.ktor.utils.io.internal.ReadWriteBufferState r0 = r5.getState()
            boolean r0 = r0.getIdle()
            if (r0 == 0) goto L59
            r5.setupStateForRead()
        L59:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.awaitAtLeastSuspend(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // io.ktor.utils.p032io.LookAheadSession
    public ByteBuffer request(int i, int i2) {
        ReadWriteBufferState state = getState();
        int i3 = state.capacity._availableForRead$internal;
        int i4 = this.readPosition;
        if (i3 < i2 + i) {
            return null;
        }
        if (state.getIdle() || (!(state instanceof ReadWriteBufferState.Reading) && !(state instanceof ReadWriteBufferState.ReadingWriting))) {
            if (setupStateForRead() == null) {
                return null;
            }
            return request(i, i2);
        }
        ByteBuffer readBuffer = state.getReadBuffer();
        prepareBuffer(readBuffer, carryIndex(readBuffer, i4 + i), i3 - i);
        if (readBuffer.remaining() >= i2) {
            return readBuffer;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resumeReadOp() {
        Continuation continuation = (Continuation) _readOp$FU.getAndSet(this, null);
        if (continuation != null) {
            ClosedElement closed = getClosed();
            Throwable cause = closed != null ? closed.getCause() : null;
            if (cause != null) {
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m1942constructorimpl(ResultKt.createFailure(cause)));
                return;
            }
            Result.Companion companion2 = Result.Companion;
            continuation.resumeWith(Result.m1942constructorimpl(Boolean.TRUE));
        }
    }

    private final void resumeWriteOp() {
        Continuation<Unit> writeOp;
        ClosedElement closed;
        Object createFailure;
        do {
            writeOp = getWriteOp();
            if (writeOp == null) {
                return;
            }
            closed = getClosed();
            if (closed == null && this.joining != null) {
                ReadWriteBufferState state = getState();
                if (!(state instanceof ReadWriteBufferState.Writing) && !(state instanceof ReadWriteBufferState.ReadingWriting) && state != ReadWriteBufferState.Terminated.INSTANCE) {
                    return;
                }
            }
        } while (!_writeOp$FU.compareAndSet(this, writeOp, null));
        if (closed == null) {
            Result.Companion companion = Result.Companion;
            createFailure = Unit.INSTANCE;
        } else {
            Result.Companion companion2 = Result.Companion;
            createFailure = ResultKt.createFailure(closed.getSendException());
        }
        writeOp.resumeWith(Result.m1942constructorimpl(createFailure));
    }

    private final void resumeClosed(Throwable th) {
        Continuation continuation = (Continuation) _readOp$FU.getAndSet(this, null);
        if (continuation != null) {
            if (th != null) {
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m1942constructorimpl(ResultKt.createFailure(th)));
            } else {
                Boolean valueOf = Boolean.valueOf(getState().capacity._availableForRead$internal > 0);
                Result.Companion companion2 = Result.Companion;
                continuation.resumeWith(Result.m1942constructorimpl(valueOf));
            }
        }
        Continuation continuation2 = (Continuation) _writeOp$FU.getAndSet(this, null);
        if (continuation2 != null) {
            Result.Companion companion3 = Result.Companion;
            if (th == null) {
                th = new ClosedWriteChannelException("Byte channel was closed");
            }
            continuation2.resumeWith(Result.m1942constructorimpl(ResultKt.createFailure(th)));
        }
    }

    private final Object readSuspend(int i, Continuation<? super Boolean> continuation) {
        boolean z = true;
        if (getState().capacity._availableForRead$internal >= i) {
            return Boxing.boxBoolean(true);
        }
        ClosedElement closed = getClosed();
        if (closed == null) {
            if (i == 1) {
                return readSuspendImpl(1, continuation);
            }
            return readSuspendLoop(i, continuation);
        }
        Throwable cause = closed.getCause();
        if (cause != null) {
            ByteBufferChannelKt.rethrowClosed(cause);
            throw new KotlinNothingValueException();
        }
        RingBufferCapacity ringBufferCapacity = getState().capacity;
        z = (!ringBufferCapacity.flush() || ringBufferCapacity._availableForRead$internal < i) ? false : false;
        if (getReadOp() != null) {
            throw new IllegalStateException("Read operation is already in progress");
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0092 -> B:39:0x0095). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readSuspendLoop(int r6, kotlin.coroutines.Continuation<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.p032io.ByteBufferChannel$readSuspendLoop$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1 r0 = (io.ktor.utils.p032io.ByteBufferChannel$readSuspendLoop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 != r4) goto L30
            int r6 = r0.I$0
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.p032io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L95
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            kotlin.ResultKt.throwOnFailure(r7)
            r2 = r5
        L3c:
            io.ktor.utils.io.internal.ReadWriteBufferState r7 = r2.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r7 = r7.capacity
            int r7 = r7._availableForRead$internal
            if (r7 < r6) goto L4b
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r6
        L4b:
            io.ktor.utils.io.internal.ClosedElement r7 = r2.getClosed()
            if (r7 == 0) goto L88
            java.lang.Throwable r0 = r7.getCause()
            if (r0 != 0) goto L7b
            io.ktor.utils.io.internal.ReadWriteBufferState r7 = r2.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r7 = r7.capacity
            boolean r0 = r7.flush()
            if (r0 == 0) goto L68
            int r7 = r7._availableForRead$internal
            if (r7 < r6) goto L68
            r3 = r4
        L68:
            kotlin.coroutines.Continuation r6 = r2.getReadOp()
            if (r6 != 0) goto L73
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r6
        L73:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Read operation is already in progress"
            r6.<init>(r7)
            throw r6
        L7b:
            java.lang.Throwable r6 = r7.getCause()
            io.ktor.utils.p032io.ByteBufferChannelKt.access$rethrowClosed(r6)
            kotlin.KotlinNothingValueException r6 = new kotlin.KotlinNothingValueException
            r6.<init>()
            throw r6
        L88:
            r0.L$0 = r2
            r0.I$0 = r6
            r0.label = r4
            java.lang.Object r7 = r2.readSuspendImpl(r6, r0)
            if (r7 != r1) goto L95
            return r1
        L95:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 != 0) goto L3c
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.readSuspendLoop(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00f5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00b8 A[EDGE_INSN: B:92:0x00b8->B:56:0x00b8 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object suspensionForSize(int r7, kotlin.coroutines.Continuation<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.suspensionForSize(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readSuspendImpl(int r5, kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.ktor.utils.p032io.ByteBufferChannel$readSuspendImpl$1
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1 r0 = (io.ktor.utils.p032io.ByteBufferChannel$readSuspendImpl$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r5 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r5 = (io.ktor.utils.p032io.ByteBufferChannel) r5
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2d
            goto L7f
        L2d:
            r6 = move-exception
            goto L82
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            io.ktor.utils.io.internal.ReadWriteBufferState r6 = r4.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r2 = r6.capacity
            int r2 = r2._availableForRead$internal
            if (r2 >= r5) goto L58
            io.ktor.utils.io.internal.JoiningState r2 = r4.joining
            if (r2 == 0) goto L56
            kotlin.coroutines.Continuation r2 = r4.getWriteOp()
            if (r2 == 0) goto L56
            io.ktor.utils.io.internal.ReadWriteBufferState$IdleEmpty r2 = io.ktor.utils.p032io.internal.ReadWriteBufferState.IdleEmpty.INSTANCE
            if (r6 == r2) goto L58
            boolean r6 = r6 instanceof io.ktor.utils.p032io.internal.ReadWriteBufferState.IdleNonEmpty
            if (r6 != 0) goto L58
        L56:
            r6 = r3
            goto L59
        L58:
            r6 = 0
        L59:
            if (r6 != 0) goto L60
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r5
        L60:
            r0.L$0 = r4     // Catch: java.lang.Throwable -> L80
            r0.I$0 = r5     // Catch: java.lang.Throwable -> L80
            r0.label = r3     // Catch: java.lang.Throwable -> L80
            io.ktor.utils.io.internal.CancellableReusableContinuation<java.lang.Boolean> r6 = r4.readSuspendContinuationCache     // Catch: java.lang.Throwable -> L80
            r4.suspensionForSize(r5, r6)     // Catch: java.lang.Throwable -> L80
            kotlin.coroutines.Continuation r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)     // Catch: java.lang.Throwable -> L80
            java.lang.Object r6 = r6.completeSuspendBlock(r5)     // Catch: java.lang.Throwable -> L80
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()     // Catch: java.lang.Throwable -> L80
            if (r6 != r5) goto L7c
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)     // Catch: java.lang.Throwable -> L80
        L7c:
            if (r6 != r1) goto L7f
            return r1
        L7f:
            return r6
        L80:
            r6 = move-exception
            r5 = r4
        L82:
            r0 = 0
            r5.setReadOp(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.readSuspendImpl(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean shouldResumeReadOp() {
        return this.joining != null && (getState() == ReadWriteBufferState.IdleEmpty.INSTANCE || (getState() instanceof ReadWriteBufferState.IdleNonEmpty));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean writeSuspendPredicate(int i) {
        JoiningState joiningState = this.joining;
        ReadWriteBufferState state = getState();
        if (getClosed() == null) {
            if (joiningState == null) {
                if (state.capacity._availableForWrite$internal < i && state != ReadWriteBufferState.IdleEmpty.INSTANCE) {
                    return true;
                }
            } else if (state != ReadWriteBufferState.Terminated.INSTANCE && !(state instanceof ReadWriteBufferState.Writing) && !(state instanceof ReadWriteBufferState.ReadingWriting)) {
                return true;
            }
        }
        return false;
    }

    public final Object tryWriteSuspend$ktor_io(int i, Continuation<? super Unit> continuation) {
        Continuation<? super Unit> intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        Object coroutine_suspended4;
        Throwable sendException;
        if (!writeSuspendPredicate(i)) {
            ClosedElement closed = getClosed();
            if (closed != null && (sendException = closed.getSendException()) != null) {
                ByteBufferChannelKt.rethrowClosed(sendException);
                throw new KotlinNothingValueException();
            }
            return Unit.INSTANCE;
        }
        this.writeSuspensionSize = i;
        if (this.attachedJob != null) {
            Object invoke = this.writeSuspension.invoke(continuation);
            coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (invoke == coroutine_suspended3) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended4 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return invoke == coroutine_suspended4 ? invoke : Unit.INSTANCE;
        }
        CancellableReusableContinuation<Unit> cancellableReusableContinuation = this.writeSuspendContinuationCache;
        this.writeSuspension.invoke(cancellableReusableContinuation);
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        Object completeSuspendBlock = cancellableReusableContinuation.completeSuspendBlock(intercepted);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (completeSuspendBlock == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return completeSuspendBlock == coroutine_suspended2 ? completeSuspendBlock : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeSuspend(int r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.p032io.ByteBufferChannel$writeSuspend$3
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$writeSuspend$3 r0 = (io.ktor.utils.p032io.ByteBufferChannel$writeSuspend$3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteBufferChannel$writeSuspend$3 r0 = new io.ktor.utils.io.ByteBufferChannel$writeSuspend$3
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            int r6 = r0.I$0
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.p032io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L3b
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            r2 = r5
        L3b:
            boolean r7 = r2.writeSuspendPredicate(r6)
            if (r7 == 0) goto L66
            r0.L$0 = r2
            r0.I$0 = r6
            r0.label = r3
            kotlinx.coroutines.CancellableContinuationImpl r7 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r4 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)
            r7.<init>(r4, r3)
            r7.initCancellability()
            access$writeSuspendBlock(r2, r6, r7)
            java.lang.Object r7 = r7.getResult()
            java.lang.Object r4 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r7 != r4) goto L63
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L63:
            if (r7 != r1) goto L3b
            return r1
        L66:
            io.ktor.utils.io.internal.ClosedElement r6 = r2.getClosed()
            if (r6 == 0) goto L7c
            java.lang.Throwable r6 = r6.getSendException()
            if (r6 != 0) goto L73
            goto L7c
        L73:
            io.ktor.utils.p032io.ByteBufferChannelKt.access$rethrowClosed(r6)
            kotlin.KotlinNothingValueException r6 = new kotlin.KotlinNothingValueException
            r6.<init>()
            throw r6
        L7c:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.writeSuspend(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0054, code lost:
        flushImpl(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005b, code lost:
        if (shouldResumeReadOp() == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005d, code lost:
        resumeReadOp();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeSuspendBlock(int r6, kotlinx.coroutines.CancellableContinuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
        L0:
            io.ktor.utils.io.internal.ClosedElement r0 = r5.getClosed()
            if (r0 == 0) goto L16
            java.lang.Throwable r0 = r0.getSendException()
            if (r0 != 0) goto Ld
            goto L16
        Ld:
            io.ktor.utils.p032io.ByteBufferChannelKt.access$rethrowClosed(r0)
            kotlin.KotlinNothingValueException r6 = new kotlin.KotlinNothingValueException
            r6.<init>()
            throw r6
        L16:
            boolean r0 = r5.writeSuspendPredicate(r6)
            if (r0 != 0) goto L28
            kotlin.Result$Companion r0 = kotlin.Result.Companion
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            java.lang.Object r0 = kotlin.Result.m1942constructorimpl(r0)
            r7.resumeWith(r0)
            goto L54
        L28:
            kotlin.coroutines.Continuation r0 = r5.getWriteOp()
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L32
            r0 = r1
            goto L33
        L32:
            r0 = r2
        L33:
            if (r0 == 0) goto L61
            boolean r0 = r5.writeSuspendPredicate(r6)
            if (r0 != 0) goto L3d
        L3b:
            r1 = r2
            goto L52
        L3d:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = io.ktor.utils.p032io.ByteBufferChannel._writeOp$FU
            r3 = 0
            boolean r4 = r0.compareAndSet(r5, r3, r7)
            if (r4 == 0) goto L28
            boolean r4 = r5.writeSuspendPredicate(r6)
            if (r4 != 0) goto L52
            boolean r0 = r0.compareAndSet(r5, r7, r3)
            if (r0 != 0) goto L3b
        L52:
            if (r1 == 0) goto L0
        L54:
            r5.flushImpl(r6)
            boolean r6 = r5.shouldResumeReadOp()
            if (r6 == 0) goto L60
            r5.resumeReadOp()
        L60:
            return
        L61:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Operation is already in progress"
            java.lang.String r7 = r7.toString()
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.p032io.ByteBufferChannel.writeSuspendBlock(int, kotlinx.coroutines.CancellableContinuation):void");
    }

    private final ReadWriteBufferState.Initial newBuffer() {
        ReadWriteBufferState.Initial borrow = this.pool.borrow();
        borrow.capacity.resetForWrite();
        return borrow;
    }

    private final void releaseBuffer(ReadWriteBufferState.Initial initial) {
        this.pool.recycle(initial);
    }

    public String toString() {
        return "ByteBufferChannel(" + hashCode() + ", " + getState() + ')';
    }

    /* compiled from: ByteBufferChannel.kt */
    /* renamed from: io.ktor.utils.io.ByteBufferChannel$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
