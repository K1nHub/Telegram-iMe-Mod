package p034j$.util.stream;
/* renamed from: j$.util.stream.x3 */
/* loaded from: classes2.dex */
class C2904x3 extends AbstractC2796f3 {

    /* renamed from: b */
    long f1086b;

    /* renamed from: c */
    long f1087c;

    /* renamed from: d */
    final /* synthetic */ C2910y3 f1088d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2904x3(C2910y3 c2910y3, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f1088d = c2910y3;
        this.f1086b = c2910y3.f1092l;
        long j = c2910y3.f1093m;
        this.f1087c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2820j3, p034j$.util.stream.InterfaceC2838m3
    public void accept(double d) {
        long j = this.f1086b;
        if (j != 0) {
            this.f1086b = j - 1;
            return;
        }
        long j2 = this.f1087c;
        if (j2 > 0) {
            this.f1087c = j2 - 1;
            this.f941a.accept(d);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f941a.mo312n(AbstractC2625B3.m533c(j, this.f1088d.f1092l, this.f1087c));
    }

    @Override // p034j$.util.stream.AbstractC2796f3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f1087c == 0 || this.f941a.mo311o();
    }
}
