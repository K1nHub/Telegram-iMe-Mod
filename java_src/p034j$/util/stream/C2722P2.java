package p034j$.util.stream;

import p034j$.util.function.InterfaceC2601o;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2722P2 extends AbstractC2748U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2601o f814b;

    /* renamed from: c */
    final /* synthetic */ long f815c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2722P2(EnumC2805e4 enumC2805e4, InterfaceC2601o interfaceC2601o, long j) {
        super(enumC2805e4);
        this.f814b = interfaceC2601o;
        this.f815c = j;
    }

    @Override // p034j$.util.stream.AbstractC2748U2
    /* renamed from: a */
    public InterfaceC2738S2 mo289a() {
        return new C2728Q2(this.f815c, this.f814b);
    }
}
