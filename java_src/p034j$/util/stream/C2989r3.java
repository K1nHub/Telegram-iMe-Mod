package p034j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C2989r3 extends AbstractC2923g3 {

    /* renamed from: b */
    long f1042b;

    /* renamed from: c */
    long f1043c;

    /* renamed from: d */
    final /* synthetic */ C2995s3 f1044d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2989r3(C2995s3 c2995s3, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f1044d = c2995s3;
        this.f1042b = c2995s3.f1055l;
        long j = c2995s3.f1056m;
        this.f1043c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2947k3, p034j$.util.stream.InterfaceC2959m3
    public void accept(int i) {
        long j = this.f1042b;
        if (j != 0) {
            this.f1042b = j - 1;
            return;
        }
        long j2 = this.f1043c;
        if (j2 > 0) {
            this.f1043c = j2 - 1;
            this.f957a.accept(i);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f957a.mo297n(AbstractC2746B3.m518c(j, this.f1044d.f1055l, this.f1043c));
    }

    @Override // p034j$.util.stream.AbstractC2923g3, p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f1043c == 0 || this.f957a.mo296o();
    }
}
