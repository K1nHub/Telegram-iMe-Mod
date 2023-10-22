package p033j$.util.stream;

import p033j$.util.function.InterfaceC2824n;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2942P2 extends AbstractC2968U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2824n f952b;

    /* renamed from: c */
    final /* synthetic */ long f953c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2942P2(EnumC3025e4 enumC3025e4, InterfaceC2824n interfaceC2824n, long j) {
        super(enumC3025e4);
        this.f952b = interfaceC2824n;
        this.f953c = j;
    }

    @Override // p033j$.util.stream.AbstractC2968U2
    /* renamed from: a */
    public InterfaceC2958S2 mo338a() {
        return new C2948Q2(this.f953c, this.f952b);
    }
}
