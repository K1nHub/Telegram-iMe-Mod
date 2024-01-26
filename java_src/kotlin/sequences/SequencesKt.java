package kotlin.sequences;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
/* loaded from: classes4.dex */
public final class SequencesKt extends SequencesKt___SequencesKt {
    public static /* bridge */ /* synthetic */ <T> Sequence<T> asSequence(Iterator<? extends T> it) {
        return SequencesKt__SequencesKt.asSequence(it);
    }

    public static /* bridge */ /* synthetic */ <T> Sequence<T> emptySequence() {
        return SequencesKt__SequencesKt.emptySequence();
    }

    public static /* bridge */ /* synthetic */ <T> T firstOrNull(Sequence<? extends T> sequence) {
        return (T) SequencesKt___SequencesKt.firstOrNull(sequence);
    }

    public static /* bridge */ /* synthetic */ <T> Sequence<T> flattenSequenceOfIterable(Sequence<? extends Iterable<? extends T>> sequence) {
        return SequencesKt__SequencesKt.flattenSequenceOfIterable(sequence);
    }

    public static /* bridge */ /* synthetic */ <T> Sequence<T> generateSequence(T t, Function1<? super T, ? extends T> function1) {
        return SequencesKt__SequencesKt.generateSequence(t, function1);
    }

    public static /* bridge */ /* synthetic */ <T> T last(Sequence<? extends T> sequence) {
        return (T) SequencesKt___SequencesKt.last(sequence);
    }

    public static /* bridge */ /* synthetic */ <T, R> Sequence<R> map(Sequence<? extends T> sequence, Function1<? super T, ? extends R> function1) {
        return SequencesKt___SequencesKt.map(sequence, function1);
    }

    public static /* bridge */ /* synthetic */ <T> Sequence<T> takeWhile(Sequence<? extends T> sequence, Function1<? super T, Boolean> function1) {
        return SequencesKt___SequencesKt.takeWhile(sequence, function1);
    }

    public static /* bridge */ /* synthetic */ <T> List<T> toMutableList(Sequence<? extends T> sequence) {
        return SequencesKt___SequencesKt.toMutableList(sequence);
    }
}
