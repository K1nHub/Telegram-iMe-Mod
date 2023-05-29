package p034j$.util.stream;
/* renamed from: j$.util.stream.o3 */
/* loaded from: classes2.dex */
class C2971o3 extends AbstractC2935i3 {

    /* renamed from: b */
    long f1012b;

    /* renamed from: c */
    long f1013c;

    /* renamed from: d */
    final /* synthetic */ C2977p3 f1014d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2971o3(C2977p3 c2977p3, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f1014d = c2977p3;
        this.f1012b = c2977p3.f1018l;
        long j = c2977p3.f1019m;
        this.f1013c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        long j = this.f1012b;
        if (j != 0) {
            this.f1012b = j - 1;
            return;
        }
        long j2 = this.f1013c;
        if (j2 > 0) {
            this.f1013c = j2 - 1;
            this.f969a.accept((InterfaceC2959m3) obj);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f969a.mo297n(AbstractC2746B3.m518c(j, this.f1014d.f1018l, this.f1013c));
    }

    @Override // p034j$.util.stream.AbstractC2935i3, p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f1013c == 0 || this.f969a.mo296o();
    }
}
