package p035j$.util.stream;

import p035j$.util.function.InterfaceC2672j;
/* renamed from: j$.util.stream.L2 */
/* loaded from: classes2.dex */
class C2774L2 extends AbstractC2824U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2672j f788b;

    /* renamed from: c */
    final /* synthetic */ int f789c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2774L2(EnumC2881e4 enumC2881e4, InterfaceC2672j interfaceC2672j, int i) {
        super(enumC2881e4);
        this.f788b = interfaceC2672j;
        this.f789c = i;
    }

    @Override // p035j$.util.stream.AbstractC2824U2
    /* renamed from: a */
    public InterfaceC2814S2 mo284a() {
        return new C2780M2(this.f789c, this.f788b);
    }
}
