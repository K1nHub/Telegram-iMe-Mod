package p034j$.util.stream;

import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2701m;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2735A3 extends AbstractC2896d {

    /* renamed from: j */
    private final AbstractC2890c f688j;

    /* renamed from: k */
    private final InterfaceC2701m f689k;

    /* renamed from: l */
    private final long f690l;

    /* renamed from: m */
    private final long f691m;

    /* renamed from: n */
    private long f692n;

    /* renamed from: o */
    private volatile boolean f693o;

    C2735A3(C2735A3 c2735a3, InterfaceC2727s interfaceC2727s) {
        super(c2735a3, interfaceC2727s);
        this.f688j = c2735a3.f688j;
        this.f689k = c2735a3.f689k;
        this.f690l = c2735a3.f690l;
        this.f691m = c2735a3.f691m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2735A3(AbstractC2890c abstractC2890c, AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, InterfaceC2701m interfaceC2701m, long j, long j2) {
        super(abstractC3025y2, interfaceC2727s);
        this.f688j = abstractC2890c;
        this.f689k = interfaceC2701m;
        this.f690l = j;
        this.f691m = j2;
    }

    /* renamed from: m */
    private long m522m(long j) {
        if (this.f693o) {
            return this.f692n;
        }
        C2735A3 c2735a3 = (C2735A3) this.f940d;
        C2735A3 c2735a32 = (C2735A3) this.f941e;
        if (c2735a3 == null || c2735a32 == null) {
            return this.f692n;
        }
        long m522m = c2735a3.m522m(j);
        return m522m >= j ? m522m : m522m + c2735a32.m522m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2908f
    /* renamed from: a */
    public Object mo372a() {
        if (m404e()) {
            InterfaceC2988s1 mo289t0 = this.f688j.mo289t0(EnumC2901d4.SIZED.m419e(this.f688j.f888c) ? this.f688j.mo292q0(this.f938b) : -1L, this.f689k);
            InterfaceC2954m3 mo283H0 = this.f688j.mo283H0(this.f937a.mo290s0(), mo289t0);
            AbstractC3025y2 abstractC3025y2 = this.f937a;
            abstractC3025y2.mo294o0(abstractC3025y2.mo287v0(mo283H0), this.f938b);
            return mo289t0.mo323a();
        }
        AbstractC3025y2 abstractC3025y22 = this.f937a;
        InterfaceC2988s1 mo289t02 = abstractC3025y22.mo289t0(-1L, this.f689k);
        abstractC3025y22.mo288u0(mo289t02, this.f938b);
        InterfaceC2733A1 mo323a = mo289t02.mo323a();
        this.f692n = mo323a.count();
        this.f693o = true;
        this.f938b = null;
        return mo323a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2908f
    /* renamed from: f */
    public AbstractC2908f mo371f(InterfaceC2727s interfaceC2727s) {
        return new C2735A3(this, interfaceC2727s);
    }

    @Override // p034j$.util.stream.AbstractC2896d
    /* renamed from: i */
    protected void mo430i() {
        this.f903i = true;
        if (this.f693o) {
            mo403g(mo370k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2896d
    /* renamed from: n */
    public final InterfaceC2733A1 mo370k() {
        return AbstractC3019x2.m304k(this.f688j.mo410B0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p034j$.util.stream.AbstractC2908f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p034j$.util.stream.C2735A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
