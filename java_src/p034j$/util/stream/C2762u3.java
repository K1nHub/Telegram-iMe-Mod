package p034j$.util.stream;
/* renamed from: j$.util.stream.u3 */
/* loaded from: classes2.dex */
class C2762u3 extends AbstractC2684h3 {

    /* renamed from: b */
    long f1055b;

    /* renamed from: c */
    long f1056c;

    /* renamed from: d */
    final /* synthetic */ C2768v3 f1057d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762u3(C2768v3 c2768v3, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f1057d = c2768v3;
        this.f1055b = c2768v3.f1063l;
        long j = c2768v3.f1064m;
        this.f1056c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        long j2 = this.f1055b;
        if (j2 != 0) {
            this.f1055b = j2 - 1;
            return;
        }
        long j3 = this.f1056c;
        if (j3 > 0) {
            this.f1056c = j3 - 1;
            this.f953a.accept(j);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f953a.mo312n(AbstractC2501B3.m533c(j, this.f1057d.f1063l, this.f1056c));
    }

    @Override // p034j$.util.stream.AbstractC2684h3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public boolean mo311o() {
        return this.f1056c == 0 || this.f953a.mo311o();
    }
}
