package p033j$.util.stream;
/* renamed from: j$.util.stream.u3 */
/* loaded from: classes2.dex */
class C3183u3 extends AbstractC3105h3 {

    /* renamed from: b */
    long f1150b;

    /* renamed from: c */
    long f1151c;

    /* renamed from: d */
    final /* synthetic */ C3189v3 f1152d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3183u3(C3189v3 c3189v3, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f1152d = c3189v3;
        this.f1150b = c3189v3.f1158l;
        long j = c3189v3.f1159m;
        this.f1151c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        long j2 = this.f1150b;
        if (j2 != 0) {
            this.f1150b = j2 - 1;
            return;
        }
        long j3 = this.f1151c;
        if (j3 > 0) {
            this.f1151c = j3 - 1;
            this.f1048a.accept(j);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1048a.mo315n(AbstractC2922B3.m536c(j, this.f1152d.f1158l, this.f1151c));
    }

    @Override // p033j$.util.stream.AbstractC3105h3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1151c == 0 || this.f1048a.mo314o();
    }
}
