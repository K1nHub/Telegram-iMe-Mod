package p033j$.util.stream;

import p033j$.util.function.InterfaceC2829o;
/* renamed from: j$.util.stream.P2 */
/* loaded from: classes2.dex */
class C2950P2 extends AbstractC2976U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2829o f899b;

    /* renamed from: c */
    final /* synthetic */ long f900c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2950P2(EnumC3033e4 enumC3033e4, InterfaceC2829o interfaceC2829o, long j) {
        super(enumC3033e4);
        this.f899b = interfaceC2829o;
        this.f900c = j;
    }

    @Override // p033j$.util.stream.AbstractC2976U2
    /* renamed from: a */
    public InterfaceC2966S2 mo275a() {
        return new C2956Q2(this.f900c, this.f899b);
    }
}
