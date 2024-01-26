package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Buffer.kt */
/* renamed from: io.ktor.utils.io.core.Buffer */
/* loaded from: classes4.dex */
public class Buffer {
    public static final Companion Companion = new Companion(null);
    private final int capacity;
    private int limit;
    private final ByteBuffer memory;
    private int readPosition;
    private int startGap;
    private int writePosition;

    public /* synthetic */ Buffer(ByteBuffer byteBuffer, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteBuffer);
    }

    private Buffer(ByteBuffer byteBuffer) {
        this.memory = byteBuffer;
        this.limit = byteBuffer.limit();
        this.capacity = byteBuffer.limit();
    }

    /* renamed from: getMemory-SK3TCg8  reason: not valid java name */
    public final ByteBuffer m1920getMemorySK3TCg8() {
        return this.memory;
    }

    public final int getReadPosition() {
        return this.readPosition;
    }

    public final int getWritePosition() {
        return this.writePosition;
    }

    public final int getStartGap() {
        return this.startGap;
    }

    public final int getLimit() {
        return this.limit;
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public final void discardExact(int i) {
        if (i == 0) {
            return;
        }
        int i2 = this.readPosition + i;
        if (i < 0 || i2 > this.writePosition) {
            BufferKt.discardFailed(i, getWritePosition() - getReadPosition());
            throw new KotlinNothingValueException();
        } else {
            this.readPosition = i2;
        }
    }

    public final void commitWritten(int i) {
        int i2 = this.writePosition + i;
        if (i < 0 || i2 > this.limit) {
            BufferKt.commitWrittenFailed(i, getLimit() - getWritePosition());
            throw new KotlinNothingValueException();
        } else {
            this.writePosition = i2;
        }
    }

    public final boolean commitWrittenUntilIndex(int i) {
        int i2 = this.limit;
        int i3 = this.writePosition;
        if (i < i3) {
            BufferKt.commitWrittenFailed(i - i3, getLimit() - getWritePosition());
            throw new KotlinNothingValueException();
        } else if (i < i2) {
            this.writePosition = i;
            return true;
        } else if (i == i2) {
            this.writePosition = i;
            return false;
        } else {
            BufferKt.commitWrittenFailed(i - i3, getLimit() - getWritePosition());
            throw new KotlinNothingValueException();
        }
    }

    public final void discardUntilIndex$ktor_io(int i) {
        if (i < 0 || i > this.writePosition) {
            BufferKt.discardFailed(i - this.readPosition, getWritePosition() - getReadPosition());
            throw new KotlinNothingValueException();
        } else if (this.readPosition != i) {
            this.readPosition = i;
        }
    }

    public final void reserveStartGap(int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("startGap shouldn't be negative: " + i).toString());
        }
        int i2 = this.readPosition;
        if (i2 >= i) {
            this.startGap = i;
        } else if (i2 == this.writePosition) {
            if (i > this.limit) {
                BufferKt.startGapReservationFailedDueToLimit(this, i);
                throw new KotlinNothingValueException();
            }
            this.writePosition = i;
            this.readPosition = i;
            this.startGap = i;
        } else {
            BufferKt.startGapReservationFailed(this, i);
            throw new KotlinNothingValueException();
        }
    }

    public final void reserveEndGap(int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("endGap shouldn't be negative: " + i).toString());
        }
        int i2 = this.capacity - i;
        if (i2 >= this.writePosition) {
            this.limit = i2;
            return;
        }
        if (i2 < 0) {
            BufferKt.endGapReservationFailedDueToCapacity(this, i);
        }
        if (i2 < this.startGap) {
            BufferKt.endGapReservationFailedDueToStartGap(this, i);
        }
        if (this.readPosition == this.writePosition) {
            this.limit = i2;
            this.readPosition = i2;
            this.writePosition = i2;
            return;
        }
        BufferKt.endGapReservationFailedDueToContent(this, i);
    }

    public final void resetForRead() {
        this.startGap = 0;
        this.readPosition = 0;
        this.writePosition = this.capacity;
    }

    public final void resetForWrite() {
        resetForWrite(this.capacity - this.startGap);
    }

    public final void resetForWrite(int i) {
        int i2 = this.startGap;
        this.readPosition = i2;
        this.writePosition = i2;
        this.limit = i;
    }

    public final void releaseGaps$ktor_io() {
        releaseStartGap$ktor_io(0);
        releaseEndGap$ktor_io();
    }

    public final void releaseEndGap$ktor_io() {
        this.limit = this.capacity;
    }

    public final void releaseStartGap$ktor_io(int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("newReadPosition shouldn't be negative: " + i).toString());
        }
        if (!(i <= this.readPosition)) {
            throw new IllegalArgumentException(("newReadPosition shouldn't be ahead of the read position: " + i + " > " + this.readPosition).toString());
        }
        this.readPosition = i;
        if (this.startGap > i) {
            this.startGap = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void duplicateTo(Buffer copy) {
        Intrinsics.checkNotNullParameter(copy, "copy");
        copy.limit = this.limit;
        copy.startGap = this.startGap;
        copy.readPosition = this.readPosition;
        copy.writePosition = this.writePosition;
    }

    public final byte readByte() {
        int i = this.readPosition;
        if (i == this.writePosition) {
            throw new EOFException("No readable bytes available.");
        }
        this.readPosition = i + 1;
        return this.memory.get(i);
    }

    public final void writeByte(byte b) {
        int i = this.writePosition;
        if (i != this.limit) {
            this.memory.put(i, b);
            this.writePosition = i + 1;
            return;
        }
        throw new InsufficientSpaceException("No free space in the buffer to write a byte");
    }

    public void reset() {
        releaseGaps$ktor_io();
        resetForWrite();
    }

    public String toString() {
        return "Buffer(" + (getWritePosition() - getReadPosition()) + " used, " + (getLimit() - getWritePosition()) + " free, " + (this.startGap + (getCapacity() - getLimit())) + " reserved of " + this.capacity + ')';
    }

    /* compiled from: Buffer.kt */
    /* renamed from: io.ktor.utils.io.core.Buffer$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Buffer getEmpty() {
            return ChunkBuffer.Companion.getEmpty();
        }
    }
}
