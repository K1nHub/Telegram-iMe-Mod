package p034j$.util.function;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.concurrent.C2442a;
import p034j$.util.function.Predicate;
/* renamed from: j$.util.function.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2449a implements InterfaceC2450b, Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f644a;

    /* renamed from: b */
    public final /* synthetic */ Object f645b;

    public /* synthetic */ C2449a(Predicate predicate) {
        this.f644a = 2;
        this.f645b = predicate;
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f644a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2442a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2442a(this, function);
        }
    }

    @Override // p034j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f644a) {
            case 0:
                return ((Comparator) this.f645b).compare(obj, obj2) >= 0 ? obj : obj2;
            default:
                return ((Comparator) this.f645b).compare(obj, obj2) <= 0 ? obj : obj2;
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
        return !((Predicate) this.f645b).test(obj);
    }

    public /* synthetic */ C2449a(Comparator comparator, int i) {
        this.f644a = i;
        if (i != 1) {
            this.f645b = comparator;
        } else {
            this.f645b = comparator;
        }
    }
}
