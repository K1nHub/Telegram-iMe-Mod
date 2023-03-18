package p034j$.util.stream;
/* renamed from: j$.util.stream.o3 */
/* loaded from: classes2.dex */
class C2850o3 extends AbstractC2814i3 {

    /* renamed from: b */
    long f1008b;

    /* renamed from: c */
    long f1009c;

    /* renamed from: d */
    final /* synthetic */ C2856p3 f1010d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2850o3(C2856p3 c2856p3, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f1010d = c2856p3;
        this.f1008b = c2856p3.f1014l;
        long j = c2856p3.f1015m;
        this.f1009c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        long j = this.f1008b;
        if (j != 0) {
            this.f1008b = j - 1;
            return;
        }
        long j2 = this.f1009c;
        if (j2 > 0) {
            this.f1009c = j2 - 1;
            this.f965a.accept((InterfaceC2838m3) obj);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f965a.mo312n(AbstractC2625B3.m533c(j, this.f1010d.f1014l, this.f1009c));
    }

    @Override // p034j$.util.stream.AbstractC2814i3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f1009c == 0 || this.f965a.mo311o();
    }
}
