package p035j$.util.stream;
/* renamed from: j$.util.stream.x3 */
/* loaded from: classes2.dex */
class C2994x3 extends AbstractC2886f3 {

    /* renamed from: b */
    long f1092b;

    /* renamed from: c */
    long f1093c;

    /* renamed from: d */
    final /* synthetic */ C3000y3 f1094d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2994x3(C3000y3 c3000y3, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f1094d = c3000y3;
        this.f1092b = c3000y3.f1098l;
        long j = c3000y3.f1099m;
        this.f1093c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p035j$.util.stream.InterfaceC2910j3, p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        long j = this.f1092b;
        if (j != 0) {
            this.f1092b = j - 1;
            return;
        }
        long j2 = this.f1093c;
        if (j2 > 0) {
            this.f1093c = j2 - 1;
            this.f947a.accept(d);
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f947a.mo306n(AbstractC2715B3.m527c(j, this.f1094d.f1098l, this.f1093c));
    }

    @Override // p035j$.util.stream.AbstractC2886f3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public boolean mo305o() {
        return this.f1093c == 0 || this.f947a.mo305o();
    }
}
