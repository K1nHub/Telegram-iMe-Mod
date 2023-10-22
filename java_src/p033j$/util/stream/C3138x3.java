package p033j$.util.stream;
/* renamed from: j$.util.stream.x3 */
/* loaded from: classes2.dex */
class C3138x3 extends AbstractC3030f3 {

    /* renamed from: b */
    long f1225b;

    /* renamed from: c */
    long f1226c;

    /* renamed from: d */
    final /* synthetic */ C3144y3 f1227d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3138x3(C3144y3 c3144y3, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1227d = c3144y3;
        this.f1225b = c3144y3.f1231l;
        long j = c3144y3.f1232m;
        this.f1226c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3054j3, p033j$.util.stream.InterfaceC3072m3
    public void accept(double d) {
        long j = this.f1225b;
        if (j != 0) {
            this.f1225b = j - 1;
            return;
        }
        long j2 = this.f1226c;
        if (j2 > 0) {
            this.f1226c = j2 - 1;
            this.f1080a.accept(d);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f1080a.mo360m(AbstractC2859B3.m581c(j, this.f1227d.f1231l, this.f1226c));
    }

    @Override // p033j$.util.stream.AbstractC3030f3, p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public boolean mo359o() {
        return this.f1226c == 0 || this.f1080a.mo359o();
    }
}
