package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.collections.CharIterator;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ProgressionIterators.kt */
/* loaded from: classes4.dex */
public final class CharProgressionIterator extends CharIterator {
    private final int finalElement;
    private boolean hasNext;
    private int next;
    private final int step;

    public CharProgressionIterator(char c, char c2, int i) {
        this.step = i;
        this.finalElement = c2;
        boolean z = true;
        if (i <= 0 ? Intrinsics.compare((int) c, (int) c2) < 0 : Intrinsics.compare((int) c, (int) c2) > 0) {
            z = false;
        }
        this.hasNext = z;
        this.next = z ? c : c2;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.CharIterator
    public char nextChar() {
        int i = this.next;
        if (i == this.finalElement) {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            this.hasNext = false;
        } else {
            this.next = this.step + i;
        }
        return (char) i;
    }
}
