package p035j$.util.stream;
/* renamed from: j$.util.stream.u3 */
/* loaded from: classes2.dex */
class C2976u3 extends AbstractC2898h3 {

    /* renamed from: b */
    long f1066b;

    /* renamed from: c */
    long f1067c;

    /* renamed from: d */
    final /* synthetic */ C2982v3 f1068d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2976u3(C2982v3 c2982v3, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f1068d = c2982v3;
        this.f1066b = c2982v3.f1074l;
        long j = c2982v3.f1075m;
        this.f1067c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        long j2 = this.f1066b;
        if (j2 != 0) {
            this.f1066b = j2 - 1;
            return;
        }
        long j3 = this.f1067c;
        if (j3 > 0) {
            this.f1067c = j3 - 1;
            this.f964a.accept(j);
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f964a.mo306n(AbstractC2715B3.m527c(j, this.f1068d.f1074l, this.f1067c));
    }

    @Override // p035j$.util.stream.AbstractC2898h3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public boolean mo305o() {
        return this.f1067c == 0 || this.f964a.mo305o();
    }
}
