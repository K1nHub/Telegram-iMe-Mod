package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2852A3 extends AbstractC3013d {

    /* renamed from: j */
    private final AbstractC3007c f823j;

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

    C2852A3(C2852A3 c2852a3, Spliterator spliterator) {
        super(c2852a3, spliterator);
        this.f823j = c2852a3.f823j;
        this.f824k = c2852a3.f824k;
        this.f825l = c2852a3.f825l;
        this.f826m = c2852a3.f826m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2852A3(AbstractC3007c abstractC3007c, AbstractC3142y2 abstractC3142y2, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(abstractC3142y2, spliterator);
        this.f823j = abstractC3007c;
        this.f824k = intFunction;
        this.f825l = j;
        this.f826m = j2;
    }

    /* renamed from: m */
    private long m589m(long j) {
        if (this.f828o) {
            return this.f827n;
        }
        C2852A3 c2852a3 = (C2852A3) this.f1075d;
        C2852A3 c2852a32 = (C2852A3) this.f1076e;
        if (c2852a3 == null || c2852a32 == null) {
            return this.f827n;
        }
        long m589m = c2852a3.m589m(j);
        return m589m >= j ? m589m : m589m + c2852a32.m589m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: a */
    public Object mo439a() {
        if (m471e()) {
            InterfaceC3105s1 mo356s0 = this.f823j.mo356s0(EnumC3018d4.SIZED.m486e(this.f823j.f1023c) ? this.f823j.mo359p0(this.f1073b) : -1L, this.f824k);
            InterfaceC3071m3 mo350G0 = this.f823j.mo350G0(this.f1072a.mo357r0(), mo356s0);
            AbstractC3142y2 abstractC3142y2 = this.f1072a;
            abstractC3142y2.mo361n0(abstractC3142y2.mo354u0(mo350G0), this.f1073b);
            return mo356s0.mo390a();
        }
        AbstractC3142y2 abstractC3142y22 = this.f1072a;
        InterfaceC3105s1 mo356s02 = abstractC3142y22.mo356s0(-1L, this.f824k);
        abstractC3142y22.mo355t0(mo356s02, this.f1073b);
        InterfaceC2850A1 mo390a = mo356s02.mo390a();
        this.f827n = mo390a.count();
        this.f828o = true;
        this.f1073b = null;
        return mo390a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: f */
    public AbstractC3025f mo438f(Spliterator spliterator) {
        return new C2852A3(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3013d
    /* renamed from: i */
    protected void mo497i() {
        this.f1038i = true;
        if (this.f828o) {
            mo470g(mo437k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3013d
    /* renamed from: n */
    public final InterfaceC2850A1 mo437k() {
        return AbstractC3136x2.m371k(this.f823j.mo478A0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p033j$.util.stream.AbstractC3025f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.stream.C2852A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
