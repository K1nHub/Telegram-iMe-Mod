package p034j$.util.stream;

import p034j$.util.function.InterfaceC2708o;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2829P2 extends AbstractC2855U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2708o f817b;

    /* renamed from: c */
    final /* synthetic */ long f818c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2829P2(EnumC2912e4 enumC2912e4, InterfaceC2708o interfaceC2708o, long j) {
        super(enumC2912e4);
        this.f817b = interfaceC2708o;
        this.f818c = j;
    }

    @Override // p034j$.util.stream.AbstractC2855U2
    /* renamed from: a */
    public InterfaceC2845S2 mo275a() {
        return new C2835Q2(this.f818c, this.f817b);
    }
}
