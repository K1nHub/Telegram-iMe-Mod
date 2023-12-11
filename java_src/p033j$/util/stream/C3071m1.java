package p033j$.util.stream;

import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C3071m1 extends AbstractC3015d {

    /* renamed from: j */
    private final C3065l1 f1131j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3071m1(C3065l1 c3065l1, AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        super(abstractC3144y2, spliterator);
        this.f1131j = c3065l1;
    }

    C3071m1(C3071m1 c3071m1, Spliterator spliterator) {
        super(c3071m1, spliterator);
        this.f1131j = c3071m1.f1131j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3027f
    /* renamed from: a */
    public Object mo436a() {
        boolean z;
        AbstractC3144y2 abstractC3144y2 = this.f1072a;
        AbstractC3053j1 abstractC3053j1 = (AbstractC3053j1) this.f1131j.f1125c.get();
        abstractC3144y2.mo352t0(abstractC3053j1, this.f1073b);
        boolean z2 = abstractC3053j1.f1109b;
        z = this.f1131j.f1124b.f1115b;
        if (z2 == z) {
            m492l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3027f
    /* renamed from: f */
    public AbstractC3027f mo435f(Spliterator spliterator) {
        return new C3071m1(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3015d
    /* renamed from: k */
    protected Object mo434k() {
        boolean z;
        z = this.f1131j.f1124b.f1115b;
        return Boolean.valueOf(!z);
    }
}
