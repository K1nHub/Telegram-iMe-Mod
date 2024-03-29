package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.Predicate */
/* loaded from: classes2.dex */
public interface Predicate<T> {

    /* renamed from: j$.util.function.Predicate$-CC */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static Predicate $default$and(Predicate predicate, Predicate predicate2) {
            Objects.requireNonNull(predicate2);
            return new C2832w(predicate, predicate2, 0);
        }

        public static Predicate $default$negate(Predicate predicate) {
            return new C2810a(predicate);
        }

        public static Predicate $default$or(Predicate predicate, Predicate predicate2) {
            Objects.requireNonNull(predicate2);
            return new C2832w(predicate, predicate2, 1);
        }
    }

    Predicate<T> and(Predicate<? super T> predicate);

    Predicate<T> negate();

    /* renamed from: or */
    Predicate<T> mo53or(Predicate<? super T> predicate);

    boolean test(T t);
}
