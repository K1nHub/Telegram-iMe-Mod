package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.C2690i;
import p035j$.util.function.Predicate;
/* renamed from: j$.util.stream.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2831W implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2831W f855a = new C2831W();

    private /* synthetic */ C2831W() {
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
        return ((C2690i) obj).m542c();
    }
}
