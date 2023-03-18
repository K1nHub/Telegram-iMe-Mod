package p034j$.util.stream;

import p034j$.util.function.InterfaceC2587o;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2708P2 extends AbstractC2734U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2587o f813b;

    /* renamed from: c */
    final /* synthetic */ long f814c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2708P2(EnumC2791e4 enumC2791e4, InterfaceC2587o interfaceC2587o, long j) {
        super(enumC2791e4);
        this.f813b = interfaceC2587o;
        this.f814c = j;
    }

    @Override // p034j$.util.stream.AbstractC2734U2
    /* renamed from: a */
    public InterfaceC2724S2 mo290a() {
        return new C2714Q2(this.f814c, this.f813b);
    }
}
