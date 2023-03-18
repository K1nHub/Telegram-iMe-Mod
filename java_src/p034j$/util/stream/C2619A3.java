package p034j$.util.stream;

import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2619A3 extends AbstractC2780d {

    /* renamed from: j */
    private final AbstractC2774c f684j;

    /* renamed from: k */
    private final InterfaceC2585m f685k;

    /* renamed from: l */
    private final long f686l;

    /* renamed from: m */
    private final long f687m;

    /* renamed from: n */
    private long f688n;

    /* renamed from: o */
    private volatile boolean f689o;

    C2619A3(C2619A3 c2619a3, InterfaceC2611s interfaceC2611s) {
        super(c2619a3, interfaceC2611s);
        this.f684j = c2619a3.f684j;
        this.f685k = c2619a3.f685k;
        this.f686l = c2619a3.f686l;
        this.f687m = c2619a3.f687m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2619A3(AbstractC2774c abstractC2774c, AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, InterfaceC2585m interfaceC2585m, long j, long j2) {
        super(abstractC2909y2, interfaceC2611s);
        this.f684j = abstractC2774c;
        this.f685k = interfaceC2585m;
        this.f686l = j;
        this.f687m = j2;
    }

    /* renamed from: m */
    private long m537m(long j) {
        if (this.f689o) {
            return this.f688n;
        }
        C2619A3 c2619a3 = (C2619A3) this.f936d;
        C2619A3 c2619a32 = (C2619A3) this.f937e;
        if (c2619a3 == null || c2619a32 == null) {
            return this.f688n;
        }
        long m537m = c2619a3.m537m(j);
        return m537m >= j ? m537m : m537m + c2619a32.m537m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: a */
    public Object mo387a() {
        if (m419e()) {
            InterfaceC2872s1 mo304t0 = this.f684j.mo304t0(EnumC2785d4.SIZED.m434e(this.f684j.f884c) ? this.f684j.mo307q0(this.f934b) : -1L, this.f685k);
            InterfaceC2838m3 mo298H0 = this.f684j.mo298H0(this.f933a.mo305s0(), mo304t0);
            AbstractC2909y2 abstractC2909y2 = this.f933a;
            abstractC2909y2.mo309o0(abstractC2909y2.mo302v0(mo298H0), this.f934b);
            return mo304t0.mo338a();
        }
        AbstractC2909y2 abstractC2909y22 = this.f933a;
        InterfaceC2872s1 mo304t02 = abstractC2909y22.mo304t0(-1L, this.f685k);
        abstractC2909y22.mo303u0(mo304t02, this.f934b);
        InterfaceC2617A1 mo338a = mo304t02.mo338a();
        this.f688n = mo338a.count();
        this.f689o = true;
        this.f934b = null;
        return mo338a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: f */
    public AbstractC2792f mo386f(InterfaceC2611s interfaceC2611s) {
        return new C2619A3(this, interfaceC2611s);
    }

    @Override // p034j$.util.stream.AbstractC2780d
    /* renamed from: i */
    protected void mo445i() {
        this.f899i = true;
        if (this.f689o) {
            mo418g(mo385k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2780d
    /* renamed from: n */
    public final InterfaceC2617A1 mo385k() {
        return AbstractC2903x2.m319k(this.f684j.mo425B0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p034j$.util.stream.AbstractC2792f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.stream.C2619A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
