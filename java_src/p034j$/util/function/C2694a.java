package p034j$.util.function;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.concurrent.C2687a;
import p034j$.util.function.Predicate;
/* renamed from: j$.util.function.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2694a implements InterfaceC2695b, Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f653a;

    /* renamed from: b */
    public final /* synthetic */ Object f654b;

    public /* synthetic */ C2694a(Predicate predicate) {
        this.f653a = 2;
        this.f654b = predicate;
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p034j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f653a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2687a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2687a(this, function);
        }
    }

    @Override // p034j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f653a) {
            case 0:
                return ((Comparator) this.f654b).compare(obj, obj2) >= 0 ? obj : obj2;
            default:
                return ((Comparator) this.f654b).compare(obj, obj2) <= 0 ? obj : obj2;
        }
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
    public boolean test(Object obj) {
        return !((Predicate) this.f654b).test(obj);
    }

    public /* synthetic */ C2694a(Comparator comparator, int i) {
        this.f653a = i;
        if (i != 1) {
            this.f654b = comparator;
        } else {
            this.f654b = comparator;
        }
    }
}
