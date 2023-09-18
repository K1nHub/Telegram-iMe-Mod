package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2882m;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2916A3 extends AbstractC3077d {

    /* renamed from: j */
    private final AbstractC3071c f774j;

    /* renamed from: k */
    private final InterfaceC2882m f775k;

    /* renamed from: l */
    private final long f776l;

    /* renamed from: m */
    private final long f777m;

    /* renamed from: n */
    private long f778n;

    /* renamed from: o */
    private volatile boolean f779o;

    C2916A3(C2916A3 c2916a3, InterfaceC2908s interfaceC2908s) {
        super(c2916a3, interfaceC2908s);
        this.f774j = c2916a3.f774j;
        this.f775k = c2916a3.f775k;
        this.f776l = c2916a3.f776l;
        this.f777m = c2916a3.f777m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2916A3(AbstractC3071c abstractC3071c, AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, InterfaceC2882m interfaceC2882m, long j, long j2) {
        super(abstractC3206y2, interfaceC2908s);
        this.f774j = abstractC3071c;
        this.f775k = interfaceC2882m;
        this.f776l = j;
        this.f777m = j2;
    }

    /* renamed from: m */
    private long m540m(long j) {
        if (this.f779o) {
            return this.f778n;
        }
        C2916A3 c2916a3 = (C2916A3) this.f1026d;
        C2916A3 c2916a32 = (C2916A3) this.f1027e;
        if (c2916a3 == null || c2916a32 == null) {
            return this.f778n;
        }
        long m540m = c2916a3.m540m(j);
        return m540m >= j ? m540m : m540m + c2916a32.m540m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: a */
    public Object mo390a() {
        if (m422e()) {
            InterfaceC3169s1 mo307t0 = this.f774j.mo307t0(EnumC3082d4.SIZED.m437e(this.f774j.f974c) ? this.f774j.mo310q0(this.f1024b) : -1L, this.f775k);
            InterfaceC3135m3 mo301H0 = this.f774j.mo301H0(this.f1023a.mo308s0(), mo307t0);
            AbstractC3206y2 abstractC3206y2 = this.f1023a;
            abstractC3206y2.mo312o0(abstractC3206y2.mo305v0(mo301H0), this.f1024b);
            return mo307t0.mo341a();
        }
        AbstractC3206y2 abstractC3206y22 = this.f1023a;
        InterfaceC3169s1 mo307t02 = abstractC3206y22.mo307t0(-1L, this.f775k);
        abstractC3206y22.mo306u0(mo307t02, this.f1024b);
        InterfaceC2914A1 mo341a = mo307t02.mo341a();
        this.f778n = mo341a.count();
        this.f779o = true;
        this.f1024b = null;
        return mo341a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: f */
    public AbstractC3089f mo389f(InterfaceC2908s interfaceC2908s) {
        return new C2916A3(this, interfaceC2908s);
    }

    @Override // p033j$.util.stream.AbstractC3077d
    /* renamed from: i */
    protected void mo448i() {
        this.f989i = true;
        if (this.f779o) {
            mo421g(mo388k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3077d
    /* renamed from: n */
    public final InterfaceC2914A1 mo388k() {
        return AbstractC3200x2.m322k(this.f774j.mo428B0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p033j$.util.stream.AbstractC3089f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.stream.C2916A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
