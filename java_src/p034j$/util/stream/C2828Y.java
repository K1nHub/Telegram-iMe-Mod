package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2679k;
import p034j$.util.function.Predicate;
/* renamed from: j$.util.stream.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2828Y implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2828Y f858a = new C2828Y();

    private /* synthetic */ C2828Y() {
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
        return ((C2679k) obj).m520c();
    }
}