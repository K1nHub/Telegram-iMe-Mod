package p034j$.util.stream;

import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2576d;
import p034j$.util.function.InterfaceC2582j;
import p034j$.util.function.InterfaceC2587o;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2636D2 extends AbstractC2734U2 {

    /* renamed from: b */
    public final /* synthetic */ int f712b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f713c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2636D2(EnumC2791e4 enumC2791e4, InterfaceC2574b interfaceC2574b) {
        super(enumC2791e4);
        this.f713c = interfaceC2574b;
    }

    @Override // p034j$.util.stream.AbstractC2734U2
    /* renamed from: a */
    public InterfaceC2724S2 mo290a() {
        switch (this.f712b) {
            case 0:
                return new C2642E2((InterfaceC2576d) this.f713c);
            case 1:
                return new C2660H2((InterfaceC2574b) this.f713c);
            case 2:
                return new C2696N2((InterfaceC2582j) this.f713c);
            default:
                return new C2719R2((InterfaceC2587o) this.f713c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2636D2(EnumC2791e4 enumC2791e4, InterfaceC2576d interfaceC2576d) {
        super(enumC2791e4);
        this.f713c = interfaceC2576d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2636D2(EnumC2791e4 enumC2791e4, InterfaceC2582j interfaceC2582j) {
        super(enumC2791e4);
        this.f713c = interfaceC2582j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2636D2(EnumC2791e4 enumC2791e4, InterfaceC2587o interfaceC2587o) {
        super(enumC2791e4);
        this.f713c = interfaceC2587o;
    }
}
