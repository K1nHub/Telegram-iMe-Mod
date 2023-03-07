package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.collections.LongIterator;
/* compiled from: ProgressionIterators.kt */
/* loaded from: classes4.dex */
public final class LongProgressionIterator extends LongIterator {
    private final long finalElement;
    private boolean hasNext;
    private long next;
    private final long step;

    public LongProgressionIterator(long j, long j2, long j3) {
        this.step = j3;
        this.finalElement = j2;
        boolean z = true;
        int i = (j3 > 0L ? 1 : (j3 == 0L ? 0 : -1));
        int i2 = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        if (i <= 0 ? i2 < 0 : i2 > 0) {
            z = false;
        }
        this.hasNext = z;
        this.next = z ? j : j2;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.LongIterator
    public long nextLong() {
        long j = this.next;
        if (j == this.finalElement) {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            this.hasNext = false;
        } else {
            this.next = this.step + j;
        }
        return j;
    }
}
