package p034j$.util.function;
/* renamed from: j$.util.function.Predicate */
/* loaded from: classes2.dex */
public interface Predicate<T> {

    /* renamed from: j$.util.function.Predicate$-CC */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static Predicate $default$negate(Predicate predicate) {
            return new C2650a(predicate);
        }
    }

    Predicate<T> and(Predicate<? super T> predicate);

    Predicate<T> negate();

    /* renamed from: or */
    Predicate<T> mo21or(Predicate<? super T> predicate);

    boolean test(T t);
}
