package p035j$.util.stream;

import p035j$.util.function.InterfaceC2664b;
import p035j$.util.function.InterfaceC2666d;
import p035j$.util.function.InterfaceC2672j;
import p035j$.util.function.InterfaceC2677o;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2726D2 extends AbstractC2824U2 {

    /* renamed from: b */
    public final /* synthetic */ int f718b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f719c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2726D2(EnumC2881e4 enumC2881e4, InterfaceC2664b interfaceC2664b) {
        super(enumC2881e4);
        this.f719c = interfaceC2664b;
    }

    @Override // p035j$.util.stream.AbstractC2824U2
    /* renamed from: a */
    public InterfaceC2814S2 mo284a() {
        switch (this.f718b) {
            case 0:
                return new C2732E2((InterfaceC2666d) this.f719c);
            case 1:
                return new C2750H2((InterfaceC2664b) this.f719c);
            case 2:
                return new C2786N2((InterfaceC2672j) this.f719c);
            default:
                return new C2809R2((InterfaceC2677o) this.f719c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2726D2(EnumC2881e4 enumC2881e4, InterfaceC2666d interfaceC2666d) {
        super(enumC2881e4);
        this.f719c = interfaceC2666d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2726D2(EnumC2881e4 enumC2881e4, InterfaceC2672j interfaceC2672j) {
        super(enumC2881e4);
        this.f719c = interfaceC2672j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2726D2(EnumC2881e4 enumC2881e4, InterfaceC2677o interfaceC2677o) {
        super(enumC2881e4);
        this.f719c = interfaceC2677o;
    }
}
