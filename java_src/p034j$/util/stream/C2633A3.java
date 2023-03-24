package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2633A3 extends AbstractC2794d {

    /* renamed from: j */
    private final AbstractC2788c f685j;

    /* renamed from: k */
    private final InterfaceC2599m f686k;

    /* renamed from: l */
    private final long f687l;

    /* renamed from: m */
    private final long f688m;

    /* renamed from: n */
    private long f689n;

    /* renamed from: o */
    private volatile boolean f690o;

    C2633A3(C2633A3 c2633a3, InterfaceC2625s interfaceC2625s) {
        super(c2633a3, interfaceC2625s);
        this.f685j = c2633a3.f685j;
        this.f686k = c2633a3.f686k;
        this.f687l = c2633a3.f687l;
        this.f688m = c2633a3.f688m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2633A3(AbstractC2788c abstractC2788c, AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, InterfaceC2599m interfaceC2599m, long j, long j2) {
        super(abstractC2923y2, interfaceC2625s);
        this.f685j = abstractC2788c;
        this.f686k = interfaceC2599m;
        this.f687l = j;
        this.f688m = j2;
    }

    /* renamed from: m */
    private long m536m(long j) {
        if (this.f690o) {
            return this.f689n;
        }
        C2633A3 c2633a3 = (C2633A3) this.f937d;
        C2633A3 c2633a32 = (C2633A3) this.f938e;
        if (c2633a3 == null || c2633a32 == null) {
            return this.f689n;
        }
        long m536m = c2633a3.m536m(j);
        return m536m >= j ? m536m : m536m + c2633a32.m536m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: a */
    public Object mo386a() {
        if (m418e()) {
            InterfaceC2886s1 mo303t0 = this.f685j.mo303t0(EnumC2799d4.SIZED.m433e(this.f685j.f885c) ? this.f685j.mo306q0(this.f935b) : -1L, this.f686k);
            InterfaceC2852m3 mo297H0 = this.f685j.mo297H0(this.f934a.mo304s0(), mo303t0);
            AbstractC2923y2 abstractC2923y2 = this.f934a;
            abstractC2923y2.mo308o0(abstractC2923y2.mo301v0(mo297H0), this.f935b);
            return mo303t0.mo337a();
        }
        AbstractC2923y2 abstractC2923y22 = this.f934a;
        InterfaceC2886s1 mo303t02 = abstractC2923y22.mo303t0(-1L, this.f686k);
        abstractC2923y22.mo302u0(mo303t02, this.f935b);
        InterfaceC2631A1 mo337a = mo303t02.mo337a();
        this.f689n = mo337a.count();
        this.f690o = true;
        this.f935b = null;
        return mo337a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: f */
    public AbstractC2806f mo385f(InterfaceC2625s interfaceC2625s) {
        return new C2633A3(this, interfaceC2625s);
    }

    @Override // p034j$.util.stream.AbstractC2794d
    /* renamed from: i */
    protected void mo444i() {
        this.f900i = true;
        if (this.f690o) {
            mo417g(mo384k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2794d
    /* renamed from: n */
    public final InterfaceC2631A1 mo384k() {
        return AbstractC2917x2.m318k(this.f685j.mo424B0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p034j$.util.stream.AbstractC2806f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.stream.C2633A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
