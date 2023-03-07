package p034j$.util.stream;
/* renamed from: j$.util.stream.x3 */
/* loaded from: classes2.dex */
class C2780x3 extends AbstractC2672f3 {

    /* renamed from: b */
    long f1081b;

    /* renamed from: c */
    long f1082c;

    /* renamed from: d */
    final /* synthetic */ C2786y3 f1083d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2780x3(C2786y3 c2786y3, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f1083d = c2786y3;
        this.f1081b = c2786y3.f1087l;
        long j = c2786y3.f1088m;
        this.f1082c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2696j3, p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        long j = this.f1081b;
        if (j != 0) {
            this.f1081b = j - 1;
            return;
        }
        long j2 = this.f1082c;
        if (j2 > 0) {
            this.f1082c = j2 - 1;
            this.f936a.accept(d);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f936a.mo312n(AbstractC2501B3.m533c(j, this.f1083d.f1087l, this.f1082c));
    }

    @Override // p034j$.util.stream.AbstractC2672f3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f1082c == 0 || this.f936a.mo311o();
    }
}
