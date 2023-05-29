package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2722j;
import p034j$.util.function.Predicate;
/* renamed from: j$.util.stream.X */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2867X implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2867X f857a = new C2867X();

    private /* synthetic */ C2867X() {
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return Predicate.CC.$default$negate(this);
    }

    @Override // p034j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo23or(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p034j$.util.function.Predicate
    public final boolean test(Object obj) {
        return ((C2722j) obj).m529c();
    }
}
