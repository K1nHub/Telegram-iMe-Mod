package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.Optional;
import p034j$.util.function.Predicate;
/* renamed from: j$.util.stream.V */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2857V implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2857V f849a = new C2857V();

    private /* synthetic */ C2857V() {
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
        return ((Optional) obj).isPresent();
    }
}
