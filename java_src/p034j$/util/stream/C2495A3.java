package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2495A3 extends AbstractC2656d {

    /* renamed from: j */
    private final AbstractC2650c f679j;

    /* renamed from: k */
    private final InterfaceC2461m f680k;

    /* renamed from: l */
    private final long f681l;

    /* renamed from: m */
    private final long f682m;

    /* renamed from: n */
    private long f683n;

    /* renamed from: o */
    private volatile boolean f684o;

    C2495A3(C2495A3 c2495a3, InterfaceC2487s interfaceC2487s) {
        super(c2495a3, interfaceC2487s);
        this.f679j = c2495a3.f679j;
        this.f680k = c2495a3.f680k;
        this.f681l = c2495a3.f681l;
        this.f682m = c2495a3.f682m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2495A3(AbstractC2650c abstractC2650c, AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, InterfaceC2461m interfaceC2461m, long j, long j2) {
        super(abstractC2785y2, interfaceC2487s);
        this.f679j = abstractC2650c;
        this.f680k = interfaceC2461m;
        this.f681l = j;
        this.f682m = j2;
    }

    /* renamed from: m */
    private long m537m(long j) {
        if (this.f684o) {
            return this.f683n;
        }
        C2495A3 c2495a3 = (C2495A3) this.f931d;
        C2495A3 c2495a32 = (C2495A3) this.f932e;
        if (c2495a3 == null || c2495a32 == null) {
            return this.f683n;
        }
        long m537m = c2495a3.m537m(j);
        return m537m >= j ? m537m : m537m + c2495a32.m537m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2668f
    /* renamed from: a */
    public Object mo387a() {
        if (m419e()) {
            InterfaceC2748s1 mo304t0 = this.f679j.mo304t0(EnumC2661d4.SIZED.m434e(this.f679j.f879c) ? this.f679j.mo307q0(this.f929b) : -1L, this.f680k);
            InterfaceC2714m3 mo298H0 = this.f679j.mo298H0(this.f928a.mo305s0(), mo304t0);
            AbstractC2785y2 abstractC2785y2 = this.f928a;
            abstractC2785y2.mo309o0(abstractC2785y2.mo302v0(mo298H0), this.f929b);
            return mo304t0.mo338a();
        }
        AbstractC2785y2 abstractC2785y22 = this.f928a;
        InterfaceC2748s1 mo304t02 = abstractC2785y22.mo304t0(-1L, this.f680k);
        abstractC2785y22.mo303u0(mo304t02, this.f929b);
        InterfaceC2493A1 mo338a = mo304t02.mo338a();
        this.f683n = mo338a.count();
        this.f684o = true;
        this.f929b = null;
        return mo338a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2668f
    /* renamed from: f */
    public AbstractC2668f mo386f(InterfaceC2487s interfaceC2487s) {
        return new C2495A3(this, interfaceC2487s);
    }

    @Override // p034j$.util.stream.AbstractC2656d
    /* renamed from: i */
    protected void mo445i() {
        this.f894i = true;
        if (this.f684o) {
            mo418g(mo385k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2656d
    /* renamed from: n */
    public final InterfaceC2493A1 mo385k() {
        return AbstractC2779x2.m319k(this.f679j.mo425B0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p034j$.util.stream.AbstractC2668f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.stream.C2495A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
