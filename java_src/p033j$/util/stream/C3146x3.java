package p033j$.util.stream;
/* renamed from: j$.util.stream.x3 */
/* loaded from: classes2.dex */
class C3146x3 extends AbstractC3038f3 {

    /* renamed from: b */
    long f1175b;

    /* renamed from: c */
    long f1176c;

    /* renamed from: d */
    final /* synthetic */ C3152y3 f1177d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3146x3(C3152y3 c3152y3, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1177d = c3152y3;
        this.f1175b = c3152y3.f1181l;
        long j = c3152y3.f1182m;
        this.f1176c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3062j3, p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        long j = this.f1175b;
        if (j != 0) {
            this.f1175b = j - 1;
            return;
        }
        long j2 = this.f1176c;
        if (j2 > 0) {
            this.f1176c = j2 - 1;
            this.f1030a.accept(d);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1030a.mo315n(AbstractC2867B3.m536c(j, this.f1177d.f1181l, this.f1176c));
    }

    @Override // p033j$.util.stream.AbstractC3038f3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1176c == 0 || this.f1030a.mo314o();
    }
}
