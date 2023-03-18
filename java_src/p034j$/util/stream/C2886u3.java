package p034j$.util.stream;
/* renamed from: j$.util.stream.u3 */
/* loaded from: classes2.dex */
class C2886u3 extends AbstractC2808h3 {

    /* renamed from: b */
    long f1060b;

    /* renamed from: c */
    long f1061c;

    /* renamed from: d */
    final /* synthetic */ C2892v3 f1062d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2886u3(C2892v3 c2892v3, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f1062d = c2892v3;
        this.f1060b = c2892v3.f1068l;
        long j = c2892v3.f1069m;
        this.f1061c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        long j2 = this.f1060b;
        if (j2 != 0) {
            this.f1060b = j2 - 1;
            return;
        }
        long j3 = this.f1061c;
        if (j3 > 0) {
            this.f1061c = j3 - 1;
            this.f958a.accept(j);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f958a.mo312n(AbstractC2625B3.m533c(j, this.f1062d.f1068l, this.f1061c));
    }

    @Override // p034j$.util.stream.AbstractC2808h3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f1061c == 0 || this.f958a.mo311o();
    }
}
