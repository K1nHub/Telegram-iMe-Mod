package p034j$.util.stream;
/* renamed from: j$.util.stream.x3 */
/* loaded from: classes2.dex */
class C3020x3 extends AbstractC2912f3 {

    /* renamed from: b */
    long f1090b;

    /* renamed from: c */
    long f1091c;

    /* renamed from: d */
    final /* synthetic */ C3026y3 f1092d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3020x3(C3026y3 c3026y3, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f1092d = c3026y3;
        this.f1090b = c3026y3.f1096l;
        long j = c3026y3.f1097m;
        this.f1091c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2936j3, p034j$.util.stream.InterfaceC2954m3
    public void accept(double d) {
        long j = this.f1090b;
        if (j != 0) {
            this.f1090b = j - 1;
            return;
        }
        long j2 = this.f1091c;
        if (j2 > 0) {
            this.f1091c = j2 - 1;
            this.f945a.accept(d);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f945a.mo297n(AbstractC2741B3.m518c(j, this.f1092d.f1096l, this.f1091c));
    }

    @Override // p034j$.util.stream.AbstractC2912f3, p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f1091c == 0 || this.f945a.mo296o();
    }
}
