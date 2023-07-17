package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Optional;
import p033j$.util.function.Predicate;
/* renamed from: j$.util.stream.V */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2978V implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2978V f931a = new C2978V();

    private /* synthetic */ C2978V() {
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return Predicate.CC.$default$negate(this);
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo23or(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p033j$.util.function.Predicate
    public final boolean test(Object obj) {
        return ((Optional) obj).isPresent();
    }
}
