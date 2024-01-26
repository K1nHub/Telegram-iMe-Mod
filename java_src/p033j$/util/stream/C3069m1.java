package p033j$.util.stream;

import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C3069m1 extends AbstractC3013d {

    /* renamed from: j */
    private final C3063l1 f1131j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3069m1(C3063l1 c3063l1, AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        super(abstractC3142y2, spliterator);
        this.f1131j = c3063l1;
    }

    C3069m1(C3069m1 c3069m1, Spliterator spliterator) {
        super(c3069m1, spliterator);
        this.f1131j = c3069m1.f1131j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: a */
    public Object mo439a() {
        boolean z;
        AbstractC3142y2 abstractC3142y2 = this.f1072a;
        AbstractC3051j1 abstractC3051j1 = (AbstractC3051j1) this.f1131j.f1125c.get();
        abstractC3142y2.mo355t0(abstractC3051j1, this.f1073b);
        boolean z2 = abstractC3051j1.f1109b;
        z = this.f1131j.f1124b.f1115b;
        if (z2 == z) {
            m495l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: f */
    public AbstractC3025f mo438f(Spliterator spliterator) {
        return new C3069m1(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3013d
    /* renamed from: k */
    protected Object mo437k() {
        boolean z;
        z = this.f1131j.f1124b.f1115b;
        return Boolean.valueOf(!z);
    }
}
