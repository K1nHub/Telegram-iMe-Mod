package p033j$.util.stream;
/* renamed from: j$.util.stream.u3 */
/* loaded from: classes2.dex */
class C3128u3 extends AbstractC3050h3 {

    /* renamed from: b */
    long f1149b;

    /* renamed from: c */
    long f1150c;

    /* renamed from: d */
    final /* synthetic */ C3134v3 f1151d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3128u3(C3134v3 c3134v3, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1151d = c3134v3;
        this.f1149b = c3134v3.f1157l;
        long j = c3134v3.f1158m;
        this.f1150c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        long j2 = this.f1149b;
        if (j2 != 0) {
            this.f1149b = j2 - 1;
            return;
        }
        long j3 = this.f1150c;
        if (j3 > 0) {
            this.f1150c = j3 - 1;
            this.f1047a.accept(j);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1047a.mo315n(AbstractC2867B3.m536c(j, this.f1151d.f1157l, this.f1150c));
    }

    @Override // p033j$.util.stream.AbstractC3050h3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1150c == 0 || this.f1047a.mo314o();
    }
}
