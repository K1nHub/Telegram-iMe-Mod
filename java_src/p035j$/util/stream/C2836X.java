package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.C2691j;
import p035j$.util.function.Predicate;
/* renamed from: j$.util.stream.X */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2836X implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2836X f859a = new C2836X();

    private /* synthetic */ C2836X() {
    }

    @Override // p035j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p035j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return Predicate.CC.$default$negate(this);
    }

    @Override // p035j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p035j$.util.function.Predicate
    public final boolean test(Object obj) {
        return ((C2691j) obj).m538c();
    }
}
