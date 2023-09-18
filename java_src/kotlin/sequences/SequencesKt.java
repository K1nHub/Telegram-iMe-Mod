package kotlin.sequences;

import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
/* loaded from: classes6.dex */
public final class SequencesKt extends SequencesKt___SequencesKt {
    public static /* bridge */ /* synthetic */ <T> Iterable<T> asIterable(Sequence<? extends T> sequence) {
        return SequencesKt___SequencesKt.asIterable(sequence);
    }

    public static /* bridge */ /* synthetic */ <T> Sequence<T> asSequence(Iterator<? extends T> it) {
        return SequencesKt__SequencesKt.asSequence(it);
    }

    public static /* bridge */ /* synthetic */ <T> T firstOrNull(Sequence<? extends T> sequence) {
        return (T) SequencesKt___SequencesKt.firstOrNull(sequence);
    }

    public static /* bridge */ /* synthetic */ <T> Sequence<T> generateSequence(T t, Function1<? super T, ? extends T> function1) {
        return SequencesKt__SequencesKt.generateSequence(t, function1);
    }

    public static /* bridge */ /* synthetic */ <T> Iterator<T> iterator(Function2<? super SequenceScope<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return SequencesKt__SequenceBuilderKt.iterator(function2);
    }

    public static /* bridge */ /* synthetic */ <T> T last(Sequence<? extends T> sequence) {
        return (T) SequencesKt___SequencesKt.last(sequence);
    }

    public static /* bridge */ /* synthetic */ <T, R> Sequence<R> map(Sequence<? extends T> sequence, Function1<? super T, ? extends R> function1) {
        return SequencesKt___SequencesKt.map(sequence, function1);
    }

    public static /* bridge */ /* synthetic */ <T> List<T> toList(Sequence<? extends T> sequence) {
        return SequencesKt___SequencesKt.toList(sequence);
    }
}
