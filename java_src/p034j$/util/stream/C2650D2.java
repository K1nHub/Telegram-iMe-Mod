package p034j$.util.stream;

import p034j$.util.function.InterfaceC2588b;
import p034j$.util.function.InterfaceC2590d;
import p034j$.util.function.InterfaceC2596j;
import p034j$.util.function.InterfaceC2601o;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2650D2 extends AbstractC2748U2 {

    /* renamed from: b */
    public final /* synthetic */ int f713b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f714c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2650D2(EnumC2805e4 enumC2805e4, InterfaceC2588b interfaceC2588b) {
        super(enumC2805e4);
        this.f714c = interfaceC2588b;
    }

    @Override // p034j$.util.stream.AbstractC2748U2
    /* renamed from: a */
    public InterfaceC2738S2 mo289a() {
        switch (this.f713b) {
            case 0:
                return new C2656E2((InterfaceC2590d) this.f714c);
            case 1:
                return new C2674H2((InterfaceC2588b) this.f714c);
            case 2:
                return new C2710N2((InterfaceC2596j) this.f714c);
            default:
                return new C2733R2((InterfaceC2601o) this.f714c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2650D2(EnumC2805e4 enumC2805e4, InterfaceC2590d interfaceC2590d) {
        super(enumC2805e4);
        this.f714c = interfaceC2590d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2650D2(EnumC2805e4 enumC2805e4, InterfaceC2596j interfaceC2596j) {
        super(enumC2805e4);
        this.f714c = interfaceC2596j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2650D2(EnumC2805e4 enumC2805e4, InterfaceC2601o interfaceC2601o) {
        super(enumC2805e4);
        this.f714c = interfaceC2601o;
    }
}
