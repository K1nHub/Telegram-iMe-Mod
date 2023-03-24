package p034j$.util.stream;
/* renamed from: j$.util.stream.x3 */
/* loaded from: classes2.dex */
class C2918x3 extends AbstractC2810f3 {

    /* renamed from: b */
    long f1087b;

    /* renamed from: c */
    long f1088c;

    /* renamed from: d */
    final /* synthetic */ C2924y3 f1089d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2918x3(C2924y3 c2924y3, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f1089d = c2924y3;
        this.f1087b = c2924y3.f1093l;
        long j = c2924y3.f1094m;
        this.f1088c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2834j3, p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        long j = this.f1087b;
        if (j != 0) {
            this.f1087b = j - 1;
            return;
        }
        long j2 = this.f1088c;
        if (j2 > 0) {
            this.f1088c = j2 - 1;
            this.f942a.accept(d);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f942a.mo311n(AbstractC2639B3.m532c(j, this.f1089d.f1093l, this.f1088c));
    }

    @Override // p034j$.util.stream.AbstractC2810f3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public boolean mo310o() {
        return this.f1088c == 0 || this.f942a.mo310o();
    }
}
