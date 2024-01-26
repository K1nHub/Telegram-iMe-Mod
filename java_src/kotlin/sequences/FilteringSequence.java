package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Sequences.kt */
/* loaded from: classes4.dex */
public final class FilteringSequence<T> implements Sequence<T> {
    private final Function1<T, Boolean> predicate;
    private final boolean sendWhen;
    private final Sequence<T> sequence;

    /* JADX WARN: Multi-variable type inference failed */
    public FilteringSequence(Sequence<? extends T> sequence, boolean z, Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        this.sequence = sequence;
        this.sendWhen = z;
        this.predicate = predicate;
    }

    @Override // kotlin.sequences.Sequence
    public Iterator<T> iterator() {
        return new FilteringSequence$iterator$1(this);
    }
}
