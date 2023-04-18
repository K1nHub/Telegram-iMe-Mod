package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.Optional;
import p034j$.util.function.Predicate;
/* renamed from: j$.util.stream.V */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2813V implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2813V f846a = new C2813V();

    private /* synthetic */ C2813V() {
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
        return ((Optional) obj).isPresent();
    }
}
