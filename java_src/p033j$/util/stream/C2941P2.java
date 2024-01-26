package p033j$.util.stream;

import p033j$.util.function.InterfaceC2823n;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2941P2 extends AbstractC2967U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2823n f952b;

    /* renamed from: c */
    final /* synthetic */ long f953c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2941P2(EnumC3024e4 enumC3024e4, InterfaceC2823n interfaceC2823n, long j) {
        super(enumC3024e4);
        this.f952b = interfaceC2823n;
        this.f953c = j;
    }

    @Override // p033j$.util.stream.AbstractC2967U2
    /* renamed from: a */
    public InterfaceC2957S2 mo342a() {
        return new C2947Q2(this.f953c, this.f952b);
    }
}
