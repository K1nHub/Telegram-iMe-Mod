package kotlin.sequences;

import java.util.Iterator;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Sequences.kt */
/* loaded from: classes4.dex */
public class SequencesKt__SequencesKt extends SequencesKt__SequencesJVMKt {
    public static <T> Sequence<T> asSequence(final Iterator<? extends T> it) {
        Intrinsics.checkNotNullParameter(it, "<this>");
        return constrainOnce(new Sequence<T>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator<T> iterator() {
                return it;
            }
        });
    }

    public static <T> Sequence<T> sequenceOf(T... elements) {
        Sequence<T> asSequence;
        Sequence<T> emptySequence;
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.length == 0) {
            emptySequence = emptySequence();
            return emptySequence;
        }
        asSequence = ArraysKt___ArraysKt.asSequence(elements);
        return asSequence;
    }

    public static <T> Sequence<T> emptySequence() {
        return EmptySequence.INSTANCE;
    }

    public static final <T> Sequence<T> flatten(Sequence<? extends Sequence<? extends T>> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        return flatten$SequencesKt__SequencesKt(sequence, new Function1<Sequence<? extends T>, Iterator<? extends T>>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$flatten$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke((Sequence) ((Sequence) obj));
            }

            public final Iterator<T> invoke(Sequence<? extends T> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return (Iterator<? extends T>) it.iterator();
            }
        });
    }

    public static <T> Sequence<T> flattenSequenceOfIterable(Sequence<? extends Iterable<? extends T>> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        return flatten$SequencesKt__SequencesKt(sequence, new Function1<Iterable<? extends T>, Iterator<? extends T>>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$flatten$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke((Iterable) ((Iterable) obj));
            }

            public final Iterator<T> invoke(Iterable<? extends T> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return (Iterator<? extends T>) it.iterator();
            }
        });
    }

    private static final <T, R> Sequence<R> flatten$SequencesKt__SequencesKt(Sequence<? extends T> sequence, Function1<? super T, ? extends Iterator<? extends R>> function1) {
        if (sequence instanceof TransformingSequence) {
            return ((TransformingSequence) sequence).flatten$kotlin_stdlib(function1);
        }
        return new FlatteningSequence(sequence, new Function1<T, T>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$flatten$3
            @Override // kotlin.jvm.functions.Function1
            public final T invoke(T t) {
                return t;
            }
        }, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Sequence<T> constrainOnce(Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        return sequence instanceof ConstrainedOnceSequence ? sequence : new ConstrainedOnceSequence(sequence);
    }

    public static <T> Sequence<T> generateSequence(final Function0<? extends T> nextFunction) {
        Intrinsics.checkNotNullParameter(nextFunction, "nextFunction");
        return constrainOnce(new GeneratorSequence(nextFunction, new Function1<T, T>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$generateSequence$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final T invoke(T it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return nextFunction.invoke();
            }
        }));
    }

    public static <T> Sequence<T> generateSequence(final T t, Function1<? super T, ? extends T> nextFunction) {
        Intrinsics.checkNotNullParameter(nextFunction, "nextFunction");
        if (t == null) {
            return EmptySequence.INSTANCE;
        }
        return new GeneratorSequence(new Function0<T>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$generateSequence$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                return t;
            }
        }, nextFunction);
    }
}
