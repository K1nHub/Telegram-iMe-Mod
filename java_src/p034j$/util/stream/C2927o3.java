package p034j$.util.stream;
/* renamed from: j$.util.stream.o3 */
/* loaded from: classes2.dex */
class C2927o3 extends AbstractC2891i3 {

    /* renamed from: b */
    long f1009b;

    /* renamed from: c */
    long f1010c;

    /* renamed from: d */
    final /* synthetic */ C2933p3 f1011d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2927o3(C2933p3 c2933p3, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f1011d = c2933p3;
        this.f1009b = c2933p3.f1015l;
        long j = c2933p3.f1016m;
        this.f1010c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        long j = this.f1009b;
        if (j != 0) {
            this.f1009b = j - 1;
            return;
        }
        long j2 = this.f1010c;
        if (j2 > 0) {
            this.f1010c = j2 - 1;
            this.f966a.accept((InterfaceC2915m3) obj);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f966a.mo292n(AbstractC2702B3.m513c(j, this.f1011d.f1015l, this.f1010c));
    }

    @Override // p034j$.util.stream.AbstractC2891i3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public boolean mo291o() {
        return this.f1010c == 0 || this.f966a.mo291o();
    }
}
