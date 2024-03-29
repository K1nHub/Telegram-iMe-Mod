package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.Function */
/* loaded from: classes2.dex */
public interface Function<T, R> {

    /* renamed from: j$.util.function.Function$-CC */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static Function $default$andThen(Function function, Function function2) {
            Objects.requireNonNull(function2);
            return new C2818i(function, function2, 0);
        }

        public static Function $default$compose(Function function, Function function2) {
            Objects.requireNonNull(function2);
            return new C2818i(function, function2, 1);
        }
    }

    <V> Function<T, V> andThen(Function<? super R, ? extends V> function);

    R apply(T t);

    <V> Function<V, R> compose(Function<? super V, ? extends T> function);
}
