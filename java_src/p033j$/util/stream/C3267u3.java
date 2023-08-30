package p033j$.util.stream;
/* renamed from: j$.util.stream.u3 */
/* loaded from: classes2.dex */
class C3267u3 extends AbstractC3189h3 {

    /* renamed from: b */
    long f1159b;

    /* renamed from: c */
    long f1160c;

    /* renamed from: d */
    final /* synthetic */ C3273v3 f1161d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3267u3(C3273v3 c3273v3, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f1161d = c3273v3;
        this.f1159b = c3273v3.f1167l;
        long j = c3273v3.f1168m;
        this.f1160c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        long j2 = this.f1159b;
        if (j2 != 0) {
            this.f1159b = j2 - 1;
            return;
        }
        long j3 = this.f1160c;
        if (j3 > 0) {
            this.f1160c = j3 - 1;
            this.f1057a.accept(j);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1057a.mo315n(AbstractC3006B3.m536c(j, this.f1161d.f1167l, this.f1160c));
    }

    @Override // p033j$.util.stream.AbstractC3189h3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1160c == 0 || this.f1057a.mo314o();
    }
}
