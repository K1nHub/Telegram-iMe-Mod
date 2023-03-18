package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2601j;
import p034j$.util.function.Predicate;
/* renamed from: j$.util.stream.X */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2746X implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2746X f853a = new C2746X();

    private /* synthetic */ C2746X() {
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
        return ((C2601j) obj).m544c();
    }
}
