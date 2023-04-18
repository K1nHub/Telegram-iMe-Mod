package p034j$.util.stream;

import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2696A3 extends AbstractC2857d {

    /* renamed from: j */
    private final AbstractC2851c f685j;

    /* renamed from: k */
    private final InterfaceC2662m f686k;

    /* renamed from: l */
    private final long f687l;

    /* renamed from: m */
    private final long f688m;

    /* renamed from: n */
    private long f689n;

    /* renamed from: o */
    private volatile boolean f690o;

    C2696A3(C2696A3 c2696a3, InterfaceC2688s interfaceC2688s) {
        super(c2696a3, interfaceC2688s);
        this.f685j = c2696a3.f685j;
        this.f686k = c2696a3.f686k;
        this.f687l = c2696a3.f687l;
        this.f688m = c2696a3.f688m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2696A3(AbstractC2851c abstractC2851c, AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, InterfaceC2662m interfaceC2662m, long j, long j2) {
        super(abstractC2986y2, interfaceC2688s);
        this.f685j = abstractC2851c;
        this.f686k = interfaceC2662m;
        this.f687l = j;
        this.f688m = j2;
    }

    /* renamed from: m */
    private long m517m(long j) {
        if (this.f690o) {
            return this.f689n;
        }
        C2696A3 c2696a3 = (C2696A3) this.f937d;
        C2696A3 c2696a32 = (C2696A3) this.f938e;
        if (c2696a3 == null || c2696a32 == null) {
            return this.f689n;
        }
        long m517m = c2696a3.m517m(j);
        return m517m >= j ? m517m : m517m + c2696a32.m517m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2869f
    /* renamed from: a */
    public Object mo367a() {
        if (m399e()) {
            InterfaceC2949s1 mo284t0 = this.f685j.mo284t0(EnumC2862d4.SIZED.m414e(this.f685j.f885c) ? this.f685j.mo287q0(this.f935b) : -1L, this.f686k);
            InterfaceC2915m3 mo278H0 = this.f685j.mo278H0(this.f934a.mo285s0(), mo284t0);
            AbstractC2986y2 abstractC2986y2 = this.f934a;
            abstractC2986y2.mo289o0(abstractC2986y2.mo282v0(mo278H0), this.f935b);
            return mo284t0.mo318a();
        }
        AbstractC2986y2 abstractC2986y22 = this.f934a;
        InterfaceC2949s1 mo284t02 = abstractC2986y22.mo284t0(-1L, this.f686k);
        abstractC2986y22.mo283u0(mo284t02, this.f935b);
        InterfaceC2694A1 mo318a = mo284t02.mo318a();
        this.f689n = mo318a.count();
        this.f690o = true;
        this.f935b = null;
        return mo318a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2869f
    /* renamed from: f */
    public AbstractC2869f mo366f(InterfaceC2688s interfaceC2688s) {
        return new C2696A3(this, interfaceC2688s);
    }

    @Override // p034j$.util.stream.AbstractC2857d
    /* renamed from: i */
    protected void mo425i() {
        this.f900i = true;
        if (this.f690o) {
            mo398g(mo365k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2857d
    /* renamed from: n */
    public final InterfaceC2694A1 mo365k() {
        return AbstractC2980x2.m299k(this.f685j.mo405B0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p034j$.util.stream.AbstractC2869f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.stream.C2696A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
