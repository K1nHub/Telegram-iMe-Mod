package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2861A3 extends AbstractC3022d {

    /* renamed from: j */
    private final AbstractC3016c f770j;

    /* renamed from: k */
    private final InterfaceC2827m f771k;

    /* renamed from: l */
    private final long f772l;

    /* renamed from: m */
    private final long f773m;

    /* renamed from: n */
    private long f774n;

    /* renamed from: o */
    private volatile boolean f775o;

    C2861A3(C2861A3 c2861a3, InterfaceC2853s interfaceC2853s) {
        super(c2861a3, interfaceC2853s);
        this.f770j = c2861a3.f770j;
        this.f771k = c2861a3.f771k;
        this.f772l = c2861a3.f772l;
        this.f773m = c2861a3.f773m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2861A3(AbstractC3016c abstractC3016c, AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m, long j, long j2) {
        super(abstractC3151y2, interfaceC2853s);
        this.f770j = abstractC3016c;
        this.f771k = interfaceC2827m;
        this.f772l = j;
        this.f773m = j2;
    }

    /* renamed from: m */
    private long m522m(long j) {
        if (this.f775o) {
            return this.f774n;
        }
        C2861A3 c2861a3 = (C2861A3) this.f1022d;
        C2861A3 c2861a32 = (C2861A3) this.f1023e;
        if (c2861a3 == null || c2861a32 == null) {
            return this.f774n;
        }
        long m522m = c2861a3.m522m(j);
        return m522m >= j ? m522m : m522m + c2861a32.m522m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: a */
    public Object mo372a() {
        if (m404e()) {
            InterfaceC3114s1 mo289t0 = this.f770j.mo289t0(EnumC3027d4.SIZED.m419e(this.f770j.f970c) ? this.f770j.mo292q0(this.f1020b) : -1L, this.f771k);
            InterfaceC3080m3 mo283H0 = this.f770j.mo283H0(this.f1019a.mo290s0(), mo289t0);
            AbstractC3151y2 abstractC3151y2 = this.f1019a;
            abstractC3151y2.mo294o0(abstractC3151y2.mo287v0(mo283H0), this.f1020b);
            return mo289t0.mo323a();
        }
        AbstractC3151y2 abstractC3151y22 = this.f1019a;
        InterfaceC3114s1 mo289t02 = abstractC3151y22.mo289t0(-1L, this.f771k);
        abstractC3151y22.mo288u0(mo289t02, this.f1020b);
        InterfaceC2859A1 mo323a = mo289t02.mo323a();
        this.f774n = mo323a.count();
        this.f775o = true;
        this.f1020b = null;
        return mo323a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: f */
    public AbstractC3034f mo371f(InterfaceC2853s interfaceC2853s) {
        return new C2861A3(this, interfaceC2853s);
    }

    @Override // p033j$.util.stream.AbstractC3022d
    /* renamed from: i */
    protected void mo430i() {
        this.f985i = true;
        if (this.f775o) {
            mo403g(mo370k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3022d
    /* renamed from: n */
    public final InterfaceC2859A1 mo370k() {
        return AbstractC3145x2.m304k(this.f770j.mo410B0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p033j$.util.stream.AbstractC3034f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.stream.C2861A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
