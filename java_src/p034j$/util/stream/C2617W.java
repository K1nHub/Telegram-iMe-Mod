package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2476i;
import p034j$.util.function.Predicate;
/* renamed from: j$.util.stream.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2617W implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2617W f844a = new C2617W();

    private /* synthetic */ C2617W() {
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
        return ((C2476i) obj).m548c();
    }
}
