package p034j$.util.stream;

import p034j$.util.function.InterfaceC2703o;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2824P2 extends AbstractC2850U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2703o f817b;

    /* renamed from: c */
    final /* synthetic */ long f818c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2824P2(EnumC2907e4 enumC2907e4, InterfaceC2703o interfaceC2703o, long j) {
        super(enumC2907e4);
        this.f817b = interfaceC2703o;
        this.f818c = j;
    }

    @Override // p034j$.util.stream.AbstractC2850U2
    /* renamed from: a */
    public InterfaceC2840S2 mo275a() {
        return new C2830Q2(this.f818c, this.f817b);
    }
}
