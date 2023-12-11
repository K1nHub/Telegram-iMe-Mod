package p033j$.util.stream;
/* renamed from: j$.util.stream.u3 */
/* loaded from: classes2.dex */
class C3121u3 extends AbstractC3043h3 {

    /* renamed from: b */
    long f1199b;

    /* renamed from: c */
    long f1200c;

    /* renamed from: d */
    final /* synthetic */ C3127v3 f1201d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3121u3(C3127v3 c3127v3, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f1201d = c3127v3;
        this.f1199b = c3127v3.f1207l;
        long j = c3127v3.f1208m;
        this.f1200c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
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

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f1097a.mo361m(AbstractC2860B3.m582c(j, this.f1201d.f1207l, this.f1200c));
    }

    @Override // p033j$.util.stream.AbstractC3043h3, p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public boolean mo360o() {
        return this.f1200c == 0 || this.f1097a.mo360o();
    }
}
