package p033j$.util.stream;
/* renamed from: j$.util.stream.o3 */
/* loaded from: classes2.dex */
class C3231o3 extends AbstractC3195i3 {

    /* renamed from: b */
    long f1107b;

    /* renamed from: c */
    long f1108c;

    /* renamed from: d */
    final /* synthetic */ C3237p3 f1109d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3231o3(C3237p3 c3237p3, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f1109d = c3237p3;
        this.f1107b = c3237p3.f1113l;
        long j = c3237p3.f1114m;
        this.f1108c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        long j = this.f1107b;
        if (j != 0) {
            this.f1107b = j - 1;
            return;
        }
        long j2 = this.f1108c;
        if (j2 > 0) {
            this.f1108c = j2 - 1;
            this.f1064a.accept((InterfaceC3219m3) obj);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1064a.mo315n(AbstractC3006B3.m536c(j, this.f1109d.f1113l, this.f1108c));
    }

    @Override // p033j$.util.stream.AbstractC3195i3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1108c == 0 || this.f1064a.mo314o();
    }
}
