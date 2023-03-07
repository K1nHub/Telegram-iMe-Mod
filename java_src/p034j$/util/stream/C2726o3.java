package p034j$.util.stream;
/* renamed from: j$.util.stream.o3 */
/* loaded from: classes2.dex */
class C2726o3 extends AbstractC2690i3 {

    /* renamed from: b */
    long f1003b;

    /* renamed from: c */
    long f1004c;

    /* renamed from: d */
    final /* synthetic */ C2732p3 f1005d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2726o3(C2732p3 c2732p3, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f1005d = c2732p3;
        this.f1003b = c2732p3.f1009l;
        long j = c2732p3.f1010m;
        this.f1004c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        long j = this.f1003b;
        if (j != 0) {
            this.f1003b = j - 1;
            return;
        }
        long j2 = this.f1004c;
        if (j2 > 0) {
            this.f1004c = j2 - 1;
            this.f960a.accept((InterfaceC2714m3) obj);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f960a.mo312n(AbstractC2501B3.m533c(j, this.f1005d.f1009l, this.f1004c));
    }

    @Override // p034j$.util.stream.AbstractC2690i3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f1004c == 0 || this.f960a.mo311o();
    }
}
