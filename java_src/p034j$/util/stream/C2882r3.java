package p034j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C2882r3 extends AbstractC2816g3 {

    /* renamed from: b */
    long f1039b;

    /* renamed from: c */
    long f1040c;

    /* renamed from: d */
    final /* synthetic */ C2888s3 f1041d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2882r3(C2888s3 c2888s3, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f1041d = c2888s3;
        this.f1039b = c2888s3.f1052l;
        long j = c2888s3.f1053m;
        this.f1040c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2840k3, p034j$.util.stream.InterfaceC2852m3
    public void accept(int i) {
        long j = this.f1039b;
        if (j != 0) {
            this.f1039b = j - 1;
            return;
        }
        long j2 = this.f1040c;
        if (j2 > 0) {
            this.f1040c = j2 - 1;
            this.f954a.accept(i);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f954a.mo311n(AbstractC2639B3.m532c(j, this.f1041d.f1052l, this.f1040c));
    }

    @Override // p034j$.util.stream.AbstractC2816g3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public boolean mo310o() {
        return this.f1040c == 0 || this.f954a.mo310o();
    }
}
