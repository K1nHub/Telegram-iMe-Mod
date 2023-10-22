package p033j$.util.stream;
/* renamed from: j$.util.stream.u3 */
/* loaded from: classes2.dex */
class C3120u3 extends AbstractC3042h3 {

    /* renamed from: b */
    long f1199b;

    /* renamed from: c */
    long f1200c;

    /* renamed from: d */
    final /* synthetic */ C3126v3 f1201d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3120u3(C3126v3 c3126v3, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1201d = c3126v3;
        this.f1199b = c3126v3.f1207l;
        long j = c3126v3.f1208m;
        this.f1200c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public void accept(long j) {
        long j2 = this.f1199b;
        if (j2 != 0) {
            this.f1199b = j2 - 1;
            return;
        }
        long j3 = this.f1200c;
        if (j3 > 0) {
            this.f1200c = j3 - 1;
            this.f1097a.accept(j);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f1097a.mo360m(AbstractC2859B3.m581c(j, this.f1201d.f1207l, this.f1200c));
    }

    @Override // p033j$.util.stream.AbstractC3042h3, p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public boolean mo359o() {
        return this.f1200c == 0 || this.f1097a.mo359o();
    }
}
