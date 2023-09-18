package p033j$.util.stream;
/* renamed from: j$.util.stream.x3 */
/* loaded from: classes2.dex */
class C3201x3 extends AbstractC3093f3 {

    /* renamed from: b */
    long f1176b;

    /* renamed from: c */
    long f1177c;

    /* renamed from: d */
    final /* synthetic */ C3207y3 f1178d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3201x3(C3207y3 c3207y3, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f1178d = c3207y3;
        this.f1176b = c3207y3.f1182l;
        long j = c3207y3.f1183m;
        this.f1177c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3117j3, p033j$.util.stream.InterfaceC3135m3
    public void accept(double d) {
        long j = this.f1176b;
        if (j != 0) {
            this.f1176b = j - 1;
            return;
        }
        long j2 = this.f1177c;
        if (j2 > 0) {
            this.f1177c = j2 - 1;
            this.f1031a.accept(d);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1031a.mo315n(AbstractC2922B3.m536c(j, this.f1178d.f1182l, this.f1177c));
    }

    @Override // p033j$.util.stream.AbstractC3093f3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1177c == 0 || this.f1031a.mo314o();
    }
}
