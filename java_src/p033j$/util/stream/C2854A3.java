package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2854A3 extends AbstractC3015d {

    /* renamed from: j */
    private final AbstractC3009c f823j;

    /* renamed from: k */
    private final IntFunction f824k;

    /* renamed from: l */
    private final long f825l;

    /* renamed from: m */
    private final long f826m;

    /* renamed from: n */
    private long f827n;

    /* renamed from: o */
    private volatile boolean f828o;

    C2854A3(C2854A3 c2854a3, Spliterator spliterator) {
        super(c2854a3, spliterator);
        this.f823j = c2854a3.f823j;
        this.f824k = c2854a3.f824k;
        this.f825l = c2854a3.f825l;
        this.f826m = c2854a3.f826m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2854A3(AbstractC3009c abstractC3009c, AbstractC3144y2 abstractC3144y2, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(abstractC3144y2, spliterator);
        this.f823j = abstractC3009c;
        this.f824k = intFunction;
        this.f825l = j;
        this.f826m = j2;
    }

    /* renamed from: m */
    private long m586m(long j) {
        if (this.f828o) {
            return this.f827n;
        }
        C2854A3 c2854a3 = (C2854A3) this.f1075d;
        C2854A3 c2854a32 = (C2854A3) this.f1076e;
        if (c2854a3 == null || c2854a32 == null) {
            return this.f827n;
        }
        long m586m = c2854a3.m586m(j);
        return m586m >= j ? m586m : m586m + c2854a32.m586m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3027f
    /* renamed from: a */
    public Object mo436a() {
        if (m468e()) {
            InterfaceC3107s1 mo353s0 = this.f823j.mo353s0(EnumC3020d4.SIZED.m483e(this.f823j.f1023c) ? this.f823j.mo356p0(this.f1073b) : -1L, this.f824k);
            InterfaceC3073m3 mo347G0 = this.f823j.mo347G0(this.f1072a.mo354r0(), mo353s0);
            AbstractC3144y2 abstractC3144y2 = this.f1072a;
            abstractC3144y2.mo358n0(abstractC3144y2.mo351u0(mo347G0), this.f1073b);
            return mo353s0.mo387a();
        }
        AbstractC3144y2 abstractC3144y22 = this.f1072a;
        InterfaceC3107s1 mo353s02 = abstractC3144y22.mo353s0(-1L, this.f824k);
        abstractC3144y22.mo352t0(mo353s02, this.f1073b);
        InterfaceC2852A1 mo387a = mo353s02.mo387a();
        this.f827n = mo387a.count();
        this.f828o = true;
        this.f1073b = null;
        return mo387a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3027f
    /* renamed from: f */
    public AbstractC3027f mo435f(Spliterator spliterator) {
        return new C2854A3(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3015d
    /* renamed from: i */
    protected void mo494i() {
        this.f1038i = true;
        if (this.f828o) {
            mo467g(mo434k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3015d
    /* renamed from: n */
    public final InterfaceC2852A1 mo434k() {
        return AbstractC3138x2.m368k(this.f823j.mo475A0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p033j$.util.stream.AbstractC3027f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.stream.C2854A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
