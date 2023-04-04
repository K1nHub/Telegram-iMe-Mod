package p035j$.util.function;

import p035j$.util.function.Predicate;
/* renamed from: j$.util.function.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2686x implements Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f669a;

    /* renamed from: b */
    public final /* synthetic */ Predicate f670b;

    /* renamed from: c */
    public final /* synthetic */ Predicate f671c;

    public /* synthetic */ C2686x(Predicate predicate, Predicate predicate2, int i) {
        this.f669a = i;
        if (i != 1) {
            this.f670b = predicate;
            this.f671c = predicate2;
            return;
        }
        this.f670b = predicate;
        this.f671c = predicate2;
    }

    @Override // p035j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f669a) {
            case 0:
                return Predicate.CC.$default$and(this, predicate);
            default:
                return Predicate.CC.$default$and(this, predicate);
        }
    }

    @Override // p035j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        switch (this.f669a) {
            case 0:
                return Predicate.CC.$default$negate(this);
            default:
                return Predicate.CC.$default$negate(this);
        }
    }

    @Override // p035j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        switch (this.f669a) {
            case 0:
                return Predicate.CC.$default$or(this, predicate);
            default:
                return Predicate.CC.$default$or(this, predicate);
        }
    }

    @Override // p035j$.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f669a) {
            case 0:
                return this.f670b.test(obj) && this.f671c.test(obj);
            default:
                return this.f670b.test(obj) || this.f671c.test(obj);
        }
    }
}
