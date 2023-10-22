package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.core.internal.UnsafeKt;
import io.ktor.utils.p032io.pool.ObjectPool;
import java.io.Closeable;
import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Input.kt */
/* renamed from: io.ktor.utils.io.core.Input */
/* loaded from: classes4.dex */
public abstract class Input implements Closeable {
    private ChunkBuffer _head;
    private int headEndExclusive;
    private ByteBuffer headMemory;
    private int headPosition;
    private boolean noMoreChunksAvailable;
    private final ObjectPool<ChunkBuffer> pool;
    private long tailRemaining;

    static {
        new Companion(null);
    }

    protected abstract void closeSource();

    protected abstract ChunkBuffer fill();

    public Input(ChunkBuffer head, long j, ObjectPool<ChunkBuffer> pool) {
        Intrinsics.checkNotNullParameter(head, "head");
        Intrinsics.checkNotNullParameter(pool, "pool");
        this.pool = pool;
        this._head = head;
        this.headMemory = head.m1912getMemorySK3TCg8();
        this.headPosition = head.getReadPosition();
        int writePosition = head.getWritePosition();
        this.headEndExclusive = writePosition;
        this.tailRemaining = j - (writePosition - this.headPosition);
    }

    public final ObjectPool<ChunkBuffer> getPool() {
        return this.pool;
    }

    private final void set_head(ChunkBuffer chunkBuffer) {
        this._head = chunkBuffer;
        this.headMemory = chunkBuffer.m1912getMemorySK3TCg8();
        this.headPosition = chunkBuffer.getReadPosition();
        this.headEndExclusive = chunkBuffer.getWritePosition();
    }

    public final ChunkBuffer getHead() {
        ChunkBuffer chunkBuffer = this._head;
        chunkBuffer.discardUntilIndex$ktor_io(this.headPosition);
        return chunkBuffer;
    }

    /* renamed from: getHeadMemory-SK3TCg8  reason: not valid java name */
    public final ByteBuffer m1914getHeadMemorySK3TCg8() {
        return this.headMemory;
    }

    public final int getHeadPosition() {
        return this.headPosition;
    }

    public final void setHeadPosition(int i) {
        this.headPosition = i;
    }

    public final int getHeadEndExclusive() {
        return this.headEndExclusive;
    }

    private final void afterRead(ChunkBuffer chunkBuffer) {
        if (chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition() == 0) {
            releaseHead$ktor_io(chunkBuffer);
        }
    }

    public final void setTailRemaining(long j) {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("tailRemaining shouldn't be negative: " + j).toString());
        }
        this.tailRemaining = j;
    }

    private final ChunkBuffer prepareReadLoop(int i, ChunkBuffer chunkBuffer) {
        while (true) {
            int headEndExclusive = getHeadEndExclusive() - getHeadPosition();
            if (headEndExclusive >= i) {
                return chunkBuffer;
            }
            ChunkBuffer next = chunkBuffer.getNext();
            if (next == null && (next = doFill()) == null) {
                return null;
            }
            if (headEndExclusive == 0) {
                if (chunkBuffer != ChunkBuffer.Companion.getEmpty()) {
                    releaseHead$ktor_io(chunkBuffer);
                }
                chunkBuffer = next;
            } else {
                int writeBufferAppend = BufferAppendKt.writeBufferAppend(chunkBuffer, next, i - headEndExclusive);
                this.headEndExclusive = chunkBuffer.getWritePosition();
                setTailRemaining(this.tailRemaining - writeBufferAppend);
                if (!(next.getWritePosition() > next.getReadPosition())) {
                    chunkBuffer.setNext(null);
                    chunkBuffer.setNext(next.cleanNext());
                    next.release(this.pool);
                } else {
                    next.reserveStartGap(writeBufferAppend);
                }
                if (chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition() >= i) {
                    return chunkBuffer;
                }
                if (i > 8) {
                    minSizeIsTooBig(i);
                    throw new KotlinNothingValueException();
                }
            }
        }
    }

    public final boolean getEndOfInput() {
        return getHeadEndExclusive() - getHeadPosition() == 0 && this.tailRemaining == 0 && (this.noMoreChunksAvailable || doFill() == null);
    }

    public final long getRemaining() {
        return (getHeadEndExclusive() - getHeadPosition()) + this.tailRemaining;
    }

    public final boolean canRead() {
        return (this.headPosition == this.headEndExclusive && this.tailRemaining == 0) ? false : true;
    }

    public final void release() {
        ChunkBuffer head = getHead();
        ChunkBuffer empty = ChunkBuffer.Companion.getEmpty();
        if (head != empty) {
            set_head(empty);
            setTailRemaining(0L);
            BuffersKt.releaseAll(head, this.pool);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        release();
        if (!this.noMoreChunksAvailable) {
            this.noMoreChunksAvailable = true;
        }
        closeSource();
    }

    public final byte readByte() {
        int i = this.headPosition;
        int i2 = i + 1;
        if (i2 < this.headEndExclusive) {
            this.headPosition = i2;
            return this.headMemory.get(i);
        }
        return readByteSlow();
    }

    private final byte readByteSlow() {
        int i = this.headPosition;
        if (i < this.headEndExclusive) {
            byte b = this.headMemory.get(i);
            this.headPosition = i;
            ChunkBuffer chunkBuffer = this._head;
            chunkBuffer.discardUntilIndex$ktor_io(i);
            ensureNext(chunkBuffer);
            return b;
        }
        ChunkBuffer prepareRead = prepareRead(1);
        if (prepareRead == null) {
            StringsKt.prematureEndOfStream(1);
            throw new KotlinNothingValueException();
        }
        byte readByte = prepareRead.readByte();
        UnsafeKt.completeReadHead(this, prepareRead);
        return readByte;
    }

    public final int discard(int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Negative discard is not allowed: " + i).toString());
        }
        return discardAsMuchAsPossible(i, 0);
    }

    public final void discardExact(int i) {
        if (discard(i) == i) {
            return;
        }
        throw new EOFException("Unable to discard " + i + " bytes due to end of packet");
    }

    private final int discardAsMuchAsPossible(int i, int i2) {
        while (i != 0) {
            ChunkBuffer prepareRead = prepareRead(1);
            if (prepareRead == null) {
                return i2;
            }
            int min = Math.min(prepareRead.getWritePosition() - prepareRead.getReadPosition(), i);
            prepareRead.discardExact(min);
            this.headPosition += min;
            afterRead(prepareRead);
            i -= min;
            i2 += min;
        }
        return i2;
    }

    public final ChunkBuffer prepareReadHead$ktor_io(int i) {
        return prepareReadLoop(i, getHead());
    }

    public final ChunkBuffer ensureNextHead$ktor_io(ChunkBuffer current) {
        Intrinsics.checkNotNullParameter(current, "current");
        return ensureNext(current);
    }

    public final ChunkBuffer ensureNext(ChunkBuffer current) {
        Intrinsics.checkNotNullParameter(current, "current");
        return ensureNext(current, ChunkBuffer.Companion.getEmpty());
    }

    public final void fixGapAfterRead$ktor_io(ChunkBuffer current) {
        Intrinsics.checkNotNullParameter(current, "current");
        ChunkBuffer next = current.getNext();
        if (next == null) {
            fixGapAfterReadFallback(current);
            return;
        }
        int writePosition = current.getWritePosition() - current.getReadPosition();
        int min = Math.min(writePosition, 8 - (current.getCapacity() - current.getLimit()));
        if (next.getStartGap() < min) {
            fixGapAfterReadFallback(current);
            return;
        }
        BufferKt.restoreStartGap(next, min);
        if (writePosition > min) {
            current.releaseEndGap$ktor_io();
            this.headEndExclusive = current.getWritePosition();
            setTailRemaining(this.tailRemaining + min);
            return;
        }
        set_head(next);
        setTailRemaining(this.tailRemaining - ((next.getWritePosition() - next.getReadPosition()) - min));
        current.cleanNext();
        current.release(this.pool);
    }

    private final void fixGapAfterReadFallback(ChunkBuffer chunkBuffer) {
        if (!this.noMoreChunksAvailable || chunkBuffer.getNext() != null) {
            int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
            int min = Math.min(writePosition, 8 - (chunkBuffer.getCapacity() - chunkBuffer.getLimit()));
            if (writePosition > min) {
                fixGapAfterReadFallbackUnreserved(chunkBuffer, writePosition, min);
            } else {
                ChunkBuffer borrow = this.pool.borrow();
                borrow.reserveEndGap(8);
                borrow.setNext(chunkBuffer.cleanNext());
                BufferAppendKt.writeBufferAppend(borrow, chunkBuffer, writePosition);
                set_head(borrow);
            }
            chunkBuffer.release(this.pool);
            return;
        }
        this.headPosition = chunkBuffer.getReadPosition();
        this.headEndExclusive = chunkBuffer.getWritePosition();
        setTailRemaining(0L);
    }

    private final void fixGapAfterReadFallbackUnreserved(ChunkBuffer chunkBuffer, int i, int i2) {
        ChunkBuffer borrow = this.pool.borrow();
        ChunkBuffer borrow2 = this.pool.borrow();
        borrow.reserveEndGap(8);
        borrow2.reserveEndGap(8);
        borrow.setNext(borrow2);
        borrow2.setNext(chunkBuffer.cleanNext());
        BufferAppendKt.writeBufferAppend(borrow, chunkBuffer, i - i2);
        BufferAppendKt.writeBufferAppend(borrow2, chunkBuffer, i2);
        set_head(borrow);
        setTailRemaining(BuffersKt.remainingAll(borrow2));
    }

    private final ChunkBuffer ensureNext(ChunkBuffer chunkBuffer, ChunkBuffer chunkBuffer2) {
        while (chunkBuffer != chunkBuffer2) {
            ChunkBuffer cleanNext = chunkBuffer.cleanNext();
            chunkBuffer.release(this.pool);
            if (cleanNext != null) {
                if (cleanNext.getWritePosition() > cleanNext.getReadPosition()) {
                    set_head(cleanNext);
                    setTailRemaining(this.tailRemaining - (cleanNext.getWritePosition() - cleanNext.getReadPosition()));
                    return cleanNext;
                }
                chunkBuffer = cleanNext;
            } else {
                set_head(chunkBuffer2);
                setTailRemaining(0L);
                chunkBuffer = chunkBuffer2;
            }
        }
        return doFill();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void markNoMoreChunksAvailable() {
        if (this.noMoreChunksAvailable) {
            return;
        }
        this.noMoreChunksAvailable = true;
    }

    private final ChunkBuffer doFill() {
        if (this.noMoreChunksAvailable) {
            return null;
        }
        ChunkBuffer fill = fill();
        if (fill == null) {
            this.noMoreChunksAvailable = true;
            return null;
        }
        appendView(fill);
        return fill;
    }

    private final void appendView(ChunkBuffer chunkBuffer) {
        ChunkBuffer findTail = BuffersKt.findTail(this._head);
        if (findTail == ChunkBuffer.Companion.getEmpty()) {
            set_head(chunkBuffer);
            if (!(this.tailRemaining == 0)) {
                throw new IllegalStateException("It should be no tail remaining bytes if current tail is EmptyBuffer");
            }
            ChunkBuffer next = chunkBuffer.getNext();
            setTailRemaining(next != null ? BuffersKt.remainingAll(next) : 0L);
            return;
        }
        findTail.setNext(chunkBuffer);
        setTailRemaining(this.tailRemaining + BuffersKt.remainingAll(chunkBuffer));
    }

    public final ChunkBuffer prepareRead(int i) {
        ChunkBuffer head = getHead();
        return this.headEndExclusive - this.headPosition >= i ? head : prepareReadLoop(i, head);
    }

    private final Void minSizeIsTooBig(int i) {
        throw new IllegalStateException("minSize of " + i + " is too big (should be less than 8)");
    }

    public final ChunkBuffer releaseHead$ktor_io(ChunkBuffer head) {
        Intrinsics.checkNotNullParameter(head, "head");
        ChunkBuffer cleanNext = head.cleanNext();
        if (cleanNext == null) {
            cleanNext = ChunkBuffer.Companion.getEmpty();
        }
        set_head(cleanNext);
        setTailRemaining(this.tailRemaining - (cleanNext.getWritePosition() - cleanNext.getReadPosition()));
        head.release(this.pool);
        return cleanNext;
    }

    /* compiled from: Input.kt */
    /* renamed from: io.ktor.utils.io.core.Input$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
