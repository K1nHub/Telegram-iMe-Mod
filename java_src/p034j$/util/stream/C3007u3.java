package p034j$.util.stream;
/* renamed from: j$.util.stream.u3 */
/* loaded from: classes2.dex */
class C3007u3 extends AbstractC2929h3 {

    /* renamed from: b */
    long f1064b;

    /* renamed from: c */
    long f1065c;

    /* renamed from: d */
    final /* synthetic */ C3013v3 f1066d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3007u3(C3013v3 c3013v3, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f1066d = c3013v3;
        this.f1064b = c3013v3.f1072l;
        long j = c3013v3.f1073m;
        this.f1065c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        long j2 = this.f1064b;
        if (j2 != 0) {
            this.f1064b = j2 - 1;
            return;
        }
        long j3 = this.f1065c;
        if (j3 > 0) {
            this.f1065c = j3 - 1;
            this.f962a.accept(j);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f962a.mo297n(AbstractC2746B3.m518c(j, this.f1066d.f1072l, this.f1065c));
    }

    @Override // p034j$.util.stream.AbstractC2929h3, p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f1065c == 0 || this.f962a.mo296o();
    }
}
