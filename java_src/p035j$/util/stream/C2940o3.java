package p035j$.util.stream;
/* renamed from: j$.util.stream.o3 */
/* loaded from: classes2.dex */
class C2940o3 extends AbstractC2904i3 {

    /* renamed from: b */
    long f1014b;

    /* renamed from: c */
    long f1015c;

    /* renamed from: d */
    final /* synthetic */ C2946p3 f1016d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2940o3(C2946p3 c2946p3, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f1016d = c2946p3;
        this.f1014b = c2946p3.f1020l;
        long j = c2946p3.f1021m;
        this.f1015c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        long j = this.f1014b;
        if (j != 0) {
            this.f1014b = j - 1;
            return;
        }
        long j2 = this.f1015c;
        if (j2 > 0) {
            this.f1015c = j2 - 1;
            this.f971a.accept((InterfaceC2928m3) obj);
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f971a.mo306n(AbstractC2715B3.m527c(j, this.f1016d.f1020l, this.f1015c));
    }

    @Override // p035j$.util.stream.AbstractC2904i3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public boolean mo305o() {
        return this.f1015c == 0 || this.f971a.mo305o();
    }
}
