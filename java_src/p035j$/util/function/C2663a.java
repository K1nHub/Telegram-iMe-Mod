package p035j$.util.function;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.concurrent.C2656a;
import p035j$.util.function.Predicate;
/* renamed from: j$.util.function.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2663a implements InterfaceC2664b, Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f655a;

    /* renamed from: b */
    public final /* synthetic */ Object f656b;

    public /* synthetic */ C2663a(Predicate predicate) {
        this.f655a = 2;
        this.f656b = predicate;
    }

    @Override // p035j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p035j$.util.function.BiFunction
    public BiFunction andThen(Function function) {
        switch (this.f655a) {
            case 0:
                Objects.requireNonNull(function);
                return new C2656a(this, function);
            default:
                Objects.requireNonNull(function);
                return new C2656a(this, function);
        }
    }

    @Override // p035j$.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f655a) {
            case 0:
                return ((Comparator) this.f656b).compare(obj, obj2) >= 0 ? obj : obj2;
            default:
                return ((Comparator) this.f656b).compare(obj, obj2) <= 0 ? obj : obj2;
        }
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
    public boolean test(Object obj) {
        return !((Predicate) this.f656b).test(obj);
    }

    public /* synthetic */ C2663a(Comparator comparator, int i) {
        this.f655a = i;
        if (i != 1) {
            this.f656b = comparator;
        } else {
            this.f656b = comparator;
        }
    }
}
