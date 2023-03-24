package p034j$.util.function;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.concurrent.C2580a;
import p034j$.util.function.Predicate;
/* renamed from: j$.util.function.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2587a implements InterfaceC2588b, Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f650a;

    /* renamed from: b */
    public final /* synthetic */ Object f651b;

    public /* synthetic */ C2587a(Predicate predicate) {
        this.f650a = 2;
        this.f651b = predicate;
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f650a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2580a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2580a(this, function);
        }
    }

    @Override // p034j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f650a) {
            case 0:
                return ((Comparator) this.f651b).compare(obj, obj2) >= 0 ? obj : obj2;
            default:
                return ((Comparator) this.f651b).compare(obj, obj2) <= 0 ? obj : obj2;
        }
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
    public boolean test(Object obj) {
        return !((Predicate) this.f651b).test(obj);
    }

    public /* synthetic */ C2587a(Comparator comparator, int i) {
        this.f650a = i;
        if (i != 1) {
            this.f651b = comparator;
        } else {
            this.f651b = comparator;
        }
    }
}
