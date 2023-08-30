package p033j$.util.stream;
/* renamed from: j$.util.stream.x3 */
/* loaded from: classes2.dex */
class C3285x3 extends AbstractC3177f3 {

    /* renamed from: b */
    long f1185b;

    /* renamed from: c */
    long f1186c;

    /* renamed from: d */
    final /* synthetic */ C3291y3 f1187d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3285x3(C3291y3 c3291y3, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f1187d = c3291y3;
        this.f1185b = c3291y3.f1191l;
        long j = c3291y3.f1192m;
        this.f1186c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3201j3, p033j$.util.stream.InterfaceC3219m3
    public void accept(double d) {
        long j = this.f1185b;
        if (j != 0) {
            this.f1185b = j - 1;
            return;
        }
        long j2 = this.f1186c;
        if (j2 > 0) {
            this.f1186c = j2 - 1;
            this.f1040a.accept(d);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1040a.mo315n(AbstractC3006B3.m536c(j, this.f1187d.f1191l, this.f1186c));
    }

    @Override // p033j$.util.stream.AbstractC3177f3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1186c == 0 || this.f1040a.mo314o();
    }
}
