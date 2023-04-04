package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.util.stream.A3 */
/* loaded from: classes2.dex */
final class C2709A3 extends AbstractC2870d {

    /* renamed from: j */
    private final AbstractC2864c f690j;

    /* renamed from: k */
    private final InterfaceC2675m f691k;

    /* renamed from: l */
    private final long f692l;

    /* renamed from: m */
    private final long f693m;

    /* renamed from: n */
    private long f694n;

    /* renamed from: o */
    private volatile boolean f695o;

    C2709A3(C2709A3 c2709a3, InterfaceC2701s interfaceC2701s) {
        super(c2709a3, interfaceC2701s);
        this.f690j = c2709a3.f690j;
        this.f691k = c2709a3.f691k;
        this.f692l = c2709a3.f692l;
        this.f693m = c2709a3.f693m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2709A3(AbstractC2864c abstractC2864c, AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, InterfaceC2675m interfaceC2675m, long j, long j2) {
        super(abstractC2999y2, interfaceC2701s);
        this.f690j = abstractC2864c;
        this.f691k = interfaceC2675m;
        this.f692l = j;
        this.f693m = j2;
    }

    /* renamed from: m */
    private long m531m(long j) {
        if (this.f695o) {
            return this.f694n;
        }
        C2709A3 c2709a3 = (C2709A3) this.f942d;
        C2709A3 c2709a32 = (C2709A3) this.f943e;
        if (c2709a3 == null || c2709a32 == null) {
            return this.f694n;
        }
        long m531m = c2709a3.m531m(j);
        return m531m >= j ? m531m : m531m + c2709a32.m531m(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: a */
    public Object mo381a() {
        if (m413e()) {
            InterfaceC2962s1 mo298t0 = this.f690j.mo298t0(EnumC2875d4.SIZED.m428e(this.f690j.f890c) ? this.f690j.mo301q0(this.f940b) : -1L, this.f691k);
            InterfaceC2928m3 mo292H0 = this.f690j.mo292H0(this.f939a.mo299s0(), mo298t0);
            AbstractC2999y2 abstractC2999y2 = this.f939a;
            abstractC2999y2.mo303o0(abstractC2999y2.mo296v0(mo292H0), this.f940b);
            return mo298t0.mo332a();
        }
        AbstractC2999y2 abstractC2999y22 = this.f939a;
        InterfaceC2962s1 mo298t02 = abstractC2999y22.mo298t0(-1L, this.f691k);
        abstractC2999y22.mo297u0(mo298t02, this.f940b);
        InterfaceC2707A1 mo332a = mo298t02.mo332a();
        this.f694n = mo332a.count();
        this.f695o = true;
        this.f940b = null;
        return mo332a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: f */
    public AbstractC2882f mo380f(InterfaceC2701s interfaceC2701s) {
        return new C2709A3(this, interfaceC2701s);
    }

    @Override // p035j$.util.stream.AbstractC2870d
    /* renamed from: i */
    protected void mo439i() {
        this.f905i = true;
        if (this.f695o) {
            mo412g(mo379k());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2870d
    /* renamed from: n */
    public final InterfaceC2707A1 mo379k() {
        return AbstractC2993x2.m313k(this.f690j.mo419B0());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // p035j$.util.stream.AbstractC2882f, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p035j$.util.stream.C2709A3.onCompletion(java.util.concurrent.CountedCompleter):void");
    }
}
