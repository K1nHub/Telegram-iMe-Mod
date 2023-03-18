package p034j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C2868r3 extends AbstractC2802g3 {

    /* renamed from: b */
    long f1038b;

    /* renamed from: c */
    long f1039c;

    /* renamed from: d */
    final /* synthetic */ C2874s3 f1040d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2868r3(C2874s3 c2874s3, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f1040d = c2874s3;
        this.f1038b = c2874s3.f1051l;
        long j = c2874s3.f1052m;
        this.f1039c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2826k3, p034j$.util.stream.InterfaceC2838m3
    public void accept(int i) {
        long j = this.f1038b;
        if (j != 0) {
            this.f1038b = j - 1;
            return;
        }
        long j2 = this.f1039c;
        if (j2 > 0) {
            this.f1039c = j2 - 1;
            this.f953a.accept(i);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f953a.mo312n(AbstractC2625B3.m533c(j, this.f1040d.f1051l, this.f1039c));
    }

    @Override // p034j$.util.stream.AbstractC2802g3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f1039c == 0 || this.f953a.mo311o();
    }
}
