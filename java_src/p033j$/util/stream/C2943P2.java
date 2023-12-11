package p033j$.util.stream;

import p033j$.util.function.InterfaceC2825n;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2943P2 extends AbstractC2969U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2825n f952b;

    /* renamed from: c */
    final /* synthetic */ long f953c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2943P2(EnumC3026e4 enumC3026e4, InterfaceC2825n interfaceC2825n, long j) {
        super(enumC3026e4);
        this.f952b = interfaceC2825n;
        this.f953c = j;
    }

    @Override // p033j$.util.stream.AbstractC2969U2
    /* renamed from: a */
    public InterfaceC2959S2 mo339a() {
        return new C2949Q2(this.f953c, this.f952b);
    }
}
