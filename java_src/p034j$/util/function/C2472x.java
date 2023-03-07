package p034j$.util.function;

import p034j$.util.function.Predicate;
/* renamed from: j$.util.function.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2472x implements Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f658a;

    /* renamed from: b */
    public final /* synthetic */ Predicate f659b;

    /* renamed from: c */
    public final /* synthetic */ Predicate f660c;

    public /* synthetic */ C2472x(Predicate predicate, Predicate predicate2, int i) {
        this.f658a = i;
        if (i != 1) {
            this.f659b = predicate;
            this.f660c = predicate2;
            return;
        }
        this.f659b = predicate;
        this.f660c = predicate2;
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f658a) {
            case 0:
                return Predicate.CC.$default$and(this, predicate);
            default:
                return Predicate.CC.$default$and(this, predicate);
        }
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        switch (this.f658a) {
            case 0:
                return Predicate.CC.$default$negate(this);
            default:
                return Predicate.CC.$default$negate(this);
        }
    }

    @Override // p034j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        switch (this.f658a) {
            case 0:
                return Predicate.CC.$default$or(this, predicate);
            default:
                return Predicate.CC.$default$or(this, predicate);
        }
    }

    @Override // p034j$.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f658a) {
            case 0:
                return this.f659b.test(obj) && this.f660c.test(obj);
            default:
                return this.f659b.test(obj) || this.f660c.test(obj);
        }
    }
}
