package p033j$.util.stream;
/* renamed from: j$.util.stream.u3 */
/* loaded from: classes2.dex */
class C3128u3 extends AbstractC3050h3 {

    /* renamed from: b */
    long f1146b;

    /* renamed from: c */
    long f1147c;

    /* renamed from: d */
    final /* synthetic */ C3134v3 f1148d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3128u3(C3134v3 c3134v3, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1148d = c3134v3;
        this.f1146b = c3134v3.f1154l;
        long j = c3134v3.f1155m;
        this.f1147c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        long j2 = this.f1146b;
        if (j2 != 0) {
            this.f1146b = j2 - 1;
            return;
        }
        long j3 = this.f1147c;
        if (j3 > 0) {
            this.f1147c = j3 - 1;
            this.f1044a.accept(j);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f1044a.mo297n(AbstractC2867B3.m518c(j, this.f1148d.f1154l, this.f1147c));
    }

    @Override // p033j$.util.stream.AbstractC3050h3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f1147c == 0 || this.f1044a.mo296o();
    }
}
