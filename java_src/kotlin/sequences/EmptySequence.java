package kotlin.sequences;

import java.util.Iterator;
import kotlin.collections.EmptyIterator;
/* compiled from: Sequences.kt */
/* loaded from: classes6.dex */
final class EmptySequence implements Sequence, DropTakeSequence {
    public static final EmptySequence INSTANCE = new EmptySequence();

    private EmptySequence() {
    }

    @Override // kotlin.sequences.Sequence
    public Iterator iterator() {
        return EmptyIterator.INSTANCE;
    }

    @Override // kotlin.sequences.DropTakeSequence
    public EmptySequence drop(int i) {
        return INSTANCE;
    }
}
