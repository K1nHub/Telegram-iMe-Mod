package p033j$.util.function;

import p033j$.util.function.Predicate;
/* renamed from: j$.util.function.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2837w implements Predicate {

    /* renamed from: a */
    public final /* synthetic */ int f796a;

    /* renamed from: b */
    public final /* synthetic */ Predicate f797b;

    /* renamed from: c */
    public final /* synthetic */ Predicate f798c;

    public /* synthetic */ C2837w(Predicate predicate, Predicate predicate2, int i) {
        this.f796a = i;
        if (i != 1) {
            this.f797b = predicate;
            this.f798c = predicate2;
            return;
        }
        this.f797b = predicate;
        this.f798c = predicate2;
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f796a) {
            case 0:
                return Predicate.CC.$default$and(this, predicate);
            default:
                return Predicate.CC.$default$and(this, predicate);
        }
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        switch (this.f796a) {
            case 0:
                return Predicate.CC.$default$negate(this);
            default:
                return Predicate.CC.$default$negate(this);
        }
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo53or(Predicate predicate) {
        switch (this.f796a) {
            case 0:
                return Predicate.CC.$default$or(this, predicate);
            default:
                return Predicate.CC.$default$or(this, predicate);
        }
    }

    @Override // p033j$.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f796a) {
            case 0:
                return this.f797b.test(obj) && this.f798c.test(obj);
            default:
                return this.f797b.test(obj) || this.f798c.test(obj);
        }
    }
}
