package p034j$.util.stream;
/* renamed from: j$.util.stream.x3 */
/* loaded from: classes2.dex */
class C2981x3 extends AbstractC2873f3 {

    /* renamed from: b */
    long f1087b;

    /* renamed from: c */
    long f1088c;

    /* renamed from: d */
    final /* synthetic */ C2987y3 f1089d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2981x3(C2987y3 c2987y3, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f1089d = c2987y3;
        this.f1087b = c2987y3.f1093l;
        long j = c2987y3.f1094m;
        this.f1088c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2897j3, p034j$.util.stream.InterfaceC2915m3
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

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f942a.mo292n(AbstractC2702B3.m513c(j, this.f1089d.f1093l, this.f1088c));
    }

    @Override // p034j$.util.stream.AbstractC2873f3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public boolean mo291o() {
        return this.f1088c == 0 || this.f942a.mo291o();
    }
}
