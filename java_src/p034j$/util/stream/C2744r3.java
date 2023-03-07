package p034j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C2744r3 extends AbstractC2678g3 {

    /* renamed from: b */
    long f1033b;

    /* renamed from: c */
    long f1034c;

    /* renamed from: d */
    final /* synthetic */ C2750s3 f1035d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2744r3(C2750s3 c2750s3, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f1035d = c2750s3;
        this.f1033b = c2750s3.f1046l;
        long j = c2750s3.f1047m;
        this.f1034c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2702k3, p034j$.util.stream.InterfaceC2714m3
    public void accept(int i) {
        long j = this.f1033b;
        if (j != 0) {
            this.f1033b = j - 1;
            return;
        }
        long j2 = this.f1034c;
        if (j2 > 0) {
            this.f1034c = j2 - 1;
            this.f948a.accept(i);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f948a.mo312n(AbstractC2501B3.m533c(j, this.f1035d.f1046l, this.f1034c));
    }

    @Override // p034j$.util.stream.AbstractC2678g3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f1034c == 0 || this.f948a.mo311o();
    }
}
