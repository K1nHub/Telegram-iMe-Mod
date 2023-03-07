package kotlin.sequences;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__AppendableKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Sequences.kt */
/* loaded from: classes4.dex */
public class SequencesKt___SequencesKt extends SequencesKt___SequencesJvmKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Sequence<T> drop(Sequence<? extends T> sequence, int i) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        if (i >= 0) {
            return i == 0 ? sequence : sequence instanceof DropTakeSequence ? ((DropTakeSequence) sequence).drop(i) : new DropSequence(sequence, i);
        }
        throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
    }

    public static <T> Sequence<T> filter(Sequence<? extends T> sequence, Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return new FilteringSequence(sequence, true, predicate);
    }

    public static <T> Sequence<T> filterNot(Sequence<? extends T> sequence, Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return new FilteringSequence(sequence, false, predicate);
    }

    public static final <T, C extends Collection<? super T>> C toCollection(Sequence<? extends T> sequence, C destination) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        for (T t : sequence) {
            destination.add(t);
        }
        return destination;
    }

    public static <T> List<T> toList(Sequence<? extends T> sequence) {
        List<T> optimizeReadOnlyList;
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        optimizeReadOnlyList = CollectionsKt__CollectionsKt.optimizeReadOnlyList(toMutableList(sequence));
        return optimizeReadOnlyList;
    }

    public static final <T> List<T> toMutableList(Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        return (List) toCollection(sequence, new ArrayList());
    }

    public static <T> Set<T> toSet(Sequence<? extends T> sequence) {
        Set<T> optimizeReadOnlySet;
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        optimizeReadOnlySet = SetsKt__SetsKt.optimizeReadOnlySet((Set) toCollection(sequence, new LinkedHashSet()));
        return optimizeReadOnlySet;
    }

    public static <T, R> Sequence<R> map(Sequence<? extends T> sequence, Function1<? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        return new TransformingSequence(sequence, transform);
    }

    public static <T> Sequence<Pair<T, T>> zipWithNext(Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        return zipWithNext(sequence, SequencesKt___SequencesKt$zipWithNext$1.INSTANCE);
    }

    public static final <T, R> Sequence<R> zipWithNext(Sequence<? extends T> sequence, Function2<? super T, ? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        return SequencesKt__SequenceBuilderKt.sequence(new SequencesKt___SequencesKt$zipWithNext$2(sequence, transform, null));
    }

    public static final <T, A extends Appendable> A joinTo(Sequence<? extends T> sequence, A buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i, CharSequence truncated, Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        buffer.append(prefix);
        int i2 = 0;
        for (T t : sequence) {
            i2++;
            if (i2 > 1) {
                buffer.append(separator);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            StringsKt__AppendableKt.appendElement(buffer, t, function1);
        }
        if (i >= 0 && i2 > i) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static /* synthetic */ String joinToString$default(Sequence sequence, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        String str = (i2 & 2) != 0 ? "" : charSequence2;
        String str2 = (i2 & 4) == 0 ? charSequence3 : "";
        int i3 = (i2 & 8) != 0 ? -1 : i;
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence5 = charSequence4;
        if ((i2 & 32) != 0) {
            function1 = null;
        }
        return joinToString(sequence, charSequence, str, str2, i3, charSequence5, function1);
    }

    public static final <T> String joinToString(Sequence<? extends T> sequence, CharSequence separator, CharSequence prefix, CharSequence postfix, int i, CharSequence truncated, Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        String sb = ((StringBuilder) joinTo(sequence, new StringBuilder(), separator, prefix, postfix, i, truncated, function1)).toString();
        Intrinsics.checkNotNullExpressionValue(sb, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb;
    }

    public static <T> Iterable<T> asIterable(Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        return new SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1(sequence);
    }
}
