package p034j$.util.function;
/* renamed from: j$.util.function.BiFunction */
/* loaded from: classes2.dex */
public interface BiFunction<T, U, R> {
    BiFunction andThen(Function function);

    Object apply(Object obj, Object obj2);
}
