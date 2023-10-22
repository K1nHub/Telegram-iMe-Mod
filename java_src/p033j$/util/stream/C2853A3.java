package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2853A3 extends AbstractC3014d {

    /* renamed from: j */
    private final AbstractC3008c f823j;

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

    C2853A3(C2853A3 c2853a3, Spliterator spliterator) {
        super(c2853a3, spliterator);
        this.f823j = c2853a3.f823j;
        this.f824k = c2853a3.f824k;
        this.f825l = c2853a3.f825l;
        this.f826m = c2853a3.f826m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2853A3(AbstractC3008c abstractC3008c, AbstractC3143y2 abstractC3143y2, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(abstractC3143y2, spliterator);
        this.f823j = abstractC3008c;
        this.f824k = intFunction;
        this.f825l = j;
        this.f826m = j2;
    }

    /* renamed from: m */
    private long m585m(long j) {
        if (this.f828o) {
            return this.f827n;
        }
        C2853A3 c2853a3 = (C2853A3) this.f1075d;
        C2853A3 c2853a32 = (C2853A3) this.f1076e;
        if (c2853a3 == null || c2853a32 == null) {
            return this.f827n;
        }
        long m585m = c2853a3.m585m(j);
        return m585m >= j ? m585m : m585m + c2853a32.m585m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: a */
    public Object mo435a() {
        if (m467e()) {
            InterfaceC3106s1 mo352s0 = this.f823j.mo352s0(EnumC3019d4.SIZED.m482e(this.f823j.f1023c) ? this.f823j.mo355p0(this.f1073b) : -1L, this.f824k);
            InterfaceC3072m3 mo346G0 = this.f823j.mo346G0(this.f1072a.mo353r0(), mo352s0);
            AbstractC3143y2 abstractC3143y2 = this.f1072a;
            abstractC3143y2.mo357n0(abstractC3143y2.mo350u0(mo346G0), this.f1073b);
            return mo352s0.mo386a();
        }
        AbstractC3143y2 abstractC3143y22 = this.f1072a;
        InterfaceC3106s1 mo352s02 = abstractC3143y22.mo352s0(-1L, this.f824k);
        abstractC3143y22.mo351t0(mo352s02, this.f1073b);
        InterfaceC2851A1 mo386a = mo352s02.mo386a();
        this.f827n = mo386a.count();
        this.f828o = true;
        this.f1073b = null;
        return mo386a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: f */
    public AbstractC3026f mo434f(Spliterator spliterator) {
        return new C2853A3(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3014d
    /* renamed from: i */
    protected void mo493i() {
        this.f1038i = true;
        if (this.f828o) {
            mo466g(mo433k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3014d
    /* renamed from: n */
    public final InterfaceC2851A1 mo433k() {
        return AbstractC3137x2.m367k(this.f823j.mo474A0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p033j$.util.stream.AbstractC3026f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.stream.C2853A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
