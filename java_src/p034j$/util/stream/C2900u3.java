package p034j$.util.stream;
/* renamed from: j$.util.stream.u3 */
/* loaded from: classes2.dex */
class C2900u3 extends AbstractC2822h3 {

    /* renamed from: b */
    long f1061b;

    /* renamed from: c */
    long f1062c;

    /* renamed from: d */
    final /* synthetic */ C2906v3 f1063d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2900u3(C2906v3 c2906v3, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f1063d = c2906v3;
        this.f1061b = c2906v3.f1069l;
        long j = c2906v3.f1070m;
        this.f1062c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        long j2 = this.f1061b;
        if (j2 != 0) {
            this.f1061b = j2 - 1;
            return;
        }
        long j3 = this.f1062c;
        if (j3 > 0) {
            this.f1062c = j3 - 1;
            this.f959a.accept(j);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f959a.mo311n(AbstractC2639B3.m532c(j, this.f1063d.f1069l, this.f1062c));
    }

    @Override // p034j$.util.stream.AbstractC2822h3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public boolean mo310o() {
        return this.f1062c == 0 || this.f959a.mo310o();
    }
}
