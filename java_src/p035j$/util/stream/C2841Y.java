package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.C2692k;
import p035j$.util.function.Predicate;
/* renamed from: j$.util.stream.Y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2841Y implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2841Y f863a = new C2841Y();

    private /* synthetic */ C2841Y() {
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
        return ((C2692k) obj).m534c();
    }
}
