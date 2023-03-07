package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2477j;
import p034j$.util.function.Predicate;
/* renamed from: j$.util.stream.X */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2622X implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2622X f848a = new C2622X();

    private /* synthetic */ C2622X() {
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
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p034j$.util.function.Predicate
    public final boolean test(Object obj) {
        return ((C2477j) obj).m544c();
    }
}
