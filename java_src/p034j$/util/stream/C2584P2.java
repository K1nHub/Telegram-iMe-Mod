package p034j$.util.stream;

import p034j$.util.function.InterfaceC2463o;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2584P2 extends AbstractC2610U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2463o f808b;

    /* renamed from: c */
    final /* synthetic */ long f809c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2584P2(EnumC2667e4 enumC2667e4, InterfaceC2463o interfaceC2463o, long j) {
        super(enumC2667e4);
        this.f808b = interfaceC2463o;
        this.f809c = j;
    }

    @Override // p034j$.util.stream.AbstractC2610U2
    /* renamed from: a */
    public InterfaceC2600S2 mo290a() {
        return new C2590Q2(this.f809c, this.f808b);
    }
}
