package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2861A3 extends AbstractC3022d {

    /* renamed from: j */
    private final AbstractC3016c f773j;

    /* renamed from: k */
    private final InterfaceC2827m f774k;

    /* renamed from: l */
    private final long f775l;

    /* renamed from: m */
    private final long f776m;

    /* renamed from: n */
    private long f777n;

    /* renamed from: o */
    private volatile boolean f778o;

    C2861A3(C2861A3 c2861a3, InterfaceC2853s interfaceC2853s) {
        super(c2861a3, interfaceC2853s);
        this.f773j = c2861a3.f773j;
        this.f774k = c2861a3.f774k;
        this.f775l = c2861a3.f775l;
        this.f776m = c2861a3.f776m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2861A3(AbstractC3016c abstractC3016c, AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m, long j, long j2) {
        super(abstractC3151y2, interfaceC2853s);
        this.f773j = abstractC3016c;
        this.f774k = interfaceC2827m;
        this.f775l = j;
        this.f776m = j2;
    }

    /* renamed from: m */
    private long m540m(long j) {
        if (this.f778o) {
            return this.f777n;
        }
        C2861A3 c2861a3 = (C2861A3) this.f1025d;
        C2861A3 c2861a32 = (C2861A3) this.f1026e;
        if (c2861a3 == null || c2861a32 == null) {
            return this.f777n;
        }
        long m540m = c2861a3.m540m(j);
        return m540m >= j ? m540m : m540m + c2861a32.m540m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: a */
    public Object mo390a() {
        if (m422e()) {
            InterfaceC3114s1 mo307t0 = this.f773j.mo307t0(EnumC3027d4.SIZED.m437e(this.f773j.f973c) ? this.f773j.mo310q0(this.f1023b) : -1L, this.f774k);
            InterfaceC3080m3 mo301H0 = this.f773j.mo301H0(this.f1022a.mo308s0(), mo307t0);
            AbstractC3151y2 abstractC3151y2 = this.f1022a;
            abstractC3151y2.mo312o0(abstractC3151y2.mo305v0(mo301H0), this.f1023b);
            return mo307t0.mo341a();
        }
        AbstractC3151y2 abstractC3151y22 = this.f1022a;
        InterfaceC3114s1 mo307t02 = abstractC3151y22.mo307t0(-1L, this.f774k);
        abstractC3151y22.mo306u0(mo307t02, this.f1023b);
        InterfaceC2859A1 mo341a = mo307t02.mo341a();
        this.f777n = mo341a.count();
        this.f778o = true;
        this.f1023b = null;
        return mo341a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: f */
    public AbstractC3034f mo389f(InterfaceC2853s interfaceC2853s) {
        return new C2861A3(this, interfaceC2853s);
    }

    @Override // p033j$.util.stream.AbstractC3022d
    /* renamed from: i */
    protected void mo448i() {
        this.f988i = true;
        if (this.f778o) {
            mo421g(mo388k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3022d
    /* renamed from: n */
    public final InterfaceC2859A1 mo388k() {
        return AbstractC3145x2.m322k(this.f773j.mo428B0());
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
