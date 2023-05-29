package p034j$.util.function;

import p034j$.util.function.Predicate;
/* renamed from: j$.util.function.x */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2717x implements Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f667a;

    /* renamed from: b */
    public final /* synthetic */ Predicate f668b;

    /* renamed from: c */
    public final /* synthetic */ Predicate f669c;

    public /* synthetic */ C2717x(Predicate predicate, Predicate predicate2, int i) {
        this.f667a = i;
        if (i != 1) {
            this.f668b = predicate;
            this.f669c = predicate2;
            return;
        }
        this.f668b = predicate;
        this.f669c = predicate2;
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f667a) {
            case 0:
                return Predicate.CC.$default$and(this, predicate);
            default:
                return Predicate.CC.$default$and(this, predicate);
        }
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        switch (this.f667a) {
            case 0:
                return Predicate.CC.$default$negate(this);
            default:
                return Predicate.CC.$default$negate(this);
        }
    }

    @Override // p034j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo23or(Predicate predicate) {
        switch (this.f667a) {
            case 0:
                return Predicate.CC.$default$or(this, predicate);
            default:
                return Predicate.CC.$default$or(this, predicate);
        }
    }

    @Override // p034j$.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f667a) {
            case 0:
                return this.f668b.test(obj) && this.f669c.test(obj);
            default:
                return this.f668b.test(obj) || this.f669c.test(obj);
        }
    }
}
