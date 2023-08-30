package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2966m;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C3000A3 extends AbstractC3161d {

    /* renamed from: j */
    private final AbstractC3155c f783j;

    /* renamed from: k */
    private final InterfaceC2966m f784k;

    /* renamed from: l */
    private final long f785l;

    /* renamed from: m */
    private final long f786m;

    /* renamed from: n */
    private long f787n;

    /* renamed from: o */
    private volatile boolean f788o;

    C3000A3(C3000A3 c3000a3, InterfaceC2992s interfaceC2992s) {
        super(c3000a3, interfaceC2992s);
        this.f783j = c3000a3.f783j;
        this.f784k = c3000a3.f784k;
        this.f785l = c3000a3.f785l;
        this.f786m = c3000a3.f786m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3000A3(AbstractC3155c abstractC3155c, AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, InterfaceC2966m interfaceC2966m, long j, long j2) {
        super(abstractC3290y2, interfaceC2992s);
        this.f783j = abstractC3155c;
        this.f784k = interfaceC2966m;
        this.f785l = j;
        this.f786m = j2;
    }

    /* renamed from: m */
    private long m540m(long j) {
        if (this.f788o) {
            return this.f787n;
        }
        C3000A3 c3000a3 = (C3000A3) this.f1035d;
        C3000A3 c3000a32 = (C3000A3) this.f1036e;
        if (c3000a3 == null || c3000a32 == null) {
            return this.f787n;
        }
        long m540m = c3000a3.m540m(j);
        return m540m >= j ? m540m : m540m + c3000a32.m540m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3173f
    /* renamed from: a */
    public Object mo390a() {
        if (m422e()) {
            InterfaceC3253s1 mo307t0 = this.f783j.mo307t0(EnumC3166d4.SIZED.m437e(this.f783j.f983c) ? this.f783j.mo310q0(this.f1033b) : -1L, this.f784k);
            InterfaceC3219m3 mo301H0 = this.f783j.mo301H0(this.f1032a.mo308s0(), mo307t0);
            AbstractC3290y2 abstractC3290y2 = this.f1032a;
            abstractC3290y2.mo312o0(abstractC3290y2.mo305v0(mo301H0), this.f1033b);
            return mo307t0.mo341a();
        }
        AbstractC3290y2 abstractC3290y22 = this.f1032a;
        InterfaceC3253s1 mo307t02 = abstractC3290y22.mo307t0(-1L, this.f784k);
        abstractC3290y22.mo306u0(mo307t02, this.f1033b);
        InterfaceC2998A1 mo341a = mo307t02.mo341a();
        this.f787n = mo341a.count();
        this.f788o = true;
        this.f1033b = null;
        return mo341a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3173f
    /* renamed from: f */
    public AbstractC3173f mo389f(InterfaceC2992s interfaceC2992s) {
        return new C3000A3(this, interfaceC2992s);
    }

    @Override // p033j$.util.stream.AbstractC3161d
    /* renamed from: i */
    protected void mo448i() {
        this.f998i = true;
        if (this.f788o) {
            mo421g(mo388k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3161d
    /* renamed from: n */
    public final InterfaceC2998A1 mo388k() {
        return AbstractC3284x2.m322k(this.f783j.mo428B0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p033j$.util.stream.AbstractC3173f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.util.stream.C3000A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
