package p033j$.util;

import java.util.Collections;
import java.util.Objects;
import p033j$.util.function.Function;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
/* renamed from: j$.util.Comparator */
/* loaded from: classes2.dex */
public interface Comparator<T> {

    /* renamed from: j$.util.Comparator$-EL  reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class EL {
        /* renamed from: a */
        public static /* synthetic */ java.util.Comparator m650a(java.util.Comparator comparator, java.util.Comparator comparator2) {
            return comparator instanceof Comparator ? ((Comparator) comparator).thenComparing(comparator2) : CC.$default$thenComparing(comparator, comparator2);
        }

        public static java.util.Comparator reversed(java.util.Comparator comparator) {
            return comparator instanceof Comparator ? ((Comparator) comparator).reversed() : Collections.reverseOrder(comparator);
        }
    }

    int compare(T t, T t2);

    boolean equals(Object obj);

    java.util.Comparator<T> reversed();

    <U extends Comparable<? super U>> java.util.Comparator<T> thenComparing(Function<? super T, ? extends U> function);

    <U> java.util.Comparator<T> thenComparing(Function<? super T, ? extends U> function, java.util.Comparator<? super U> comparator);

    java.util.Comparator<T> thenComparing(java.util.Comparator<? super T> comparator);

    java.util.Comparator<T> thenComparingDouble(ToDoubleFunction<? super T> toDoubleFunction);

    java.util.Comparator<T> thenComparingInt(ToIntFunction<? super T> toIntFunction);

    java.util.Comparator<T> thenComparingLong(ToLongFunction<? super T> toLongFunction);

    /* renamed from: j$.util.Comparator$-CC  reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static java.util.Comparator $default$thenComparing(java.util.Comparator comparator, Function function, java.util.Comparator comparator2) {
            Objects.requireNonNull(function);
            Objects.requireNonNull(comparator2);
            return EL.m650a(comparator, new C2782c(comparator2, function));
        }

        /* renamed from: a */
        public static java.util.Comparator m651a() {
            return EnumC2813e.INSTANCE;
        }

        public static <T, U extends Comparable<? super U>> java.util.Comparator<T> comparing(Function<? super T, ? extends U> function) {
            Objects.requireNonNull(function);
            return new C2812d(function);
        }

        public static <T> java.util.Comparator<T> comparingDouble(ToDoubleFunction<? super T> toDoubleFunction) {
            Objects.requireNonNull(toDoubleFunction);
            return new C2812d(toDoubleFunction);
        }

        public static <T> java.util.Comparator<T> comparingInt(ToIntFunction<? super T> toIntFunction) {
            Objects.requireNonNull(toIntFunction);
            return new C2812d(toIntFunction);
        }

        public static <T> java.util.Comparator<T> comparingLong(ToLongFunction<? super T> toLongFunction) {
            Objects.requireNonNull(toLongFunction);
            return new C2812d(toLongFunction);
        }

        public static <T extends Comparable<? super T>> java.util.Comparator<T> reverseOrder() {
            return Collections.reverseOrder();
        }

        public static java.util.Comparator $default$thenComparing(java.util.Comparator comparator, java.util.Comparator comparator2) {
            Objects.requireNonNull(comparator2);
            return new C2782c(comparator, comparator2);
        }
    }
}
