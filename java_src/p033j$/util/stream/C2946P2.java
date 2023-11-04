package p033j$.util.stream;

import p033j$.util.function.InterfaceC2828n;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2946P2 extends AbstractC2972U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2828n f952b;

    /* renamed from: c */
    final /* synthetic */ long f953c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2946P2(EnumC3029e4 enumC3029e4, InterfaceC2828n interfaceC2828n, long j) {
        super(enumC3029e4);
        this.f952b = interfaceC2828n;
        this.f953c = j;
    }

    @Override // p033j$.util.stream.AbstractC2972U2
    /* renamed from: a */
    public InterfaceC2962S2 mo339a() {
        return new C2952Q2(this.f953c, this.f952b);
    }
}
