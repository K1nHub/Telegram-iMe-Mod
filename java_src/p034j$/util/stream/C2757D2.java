package p034j$.util.stream;

import p034j$.util.function.InterfaceC2695b;
import p034j$.util.function.InterfaceC2697d;
import p034j$.util.function.InterfaceC2703j;
import p034j$.util.function.InterfaceC2708o;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2757D2 extends AbstractC2855U2 {

    /* renamed from: b */
    public final /* synthetic */ int f716b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f717c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757D2(EnumC2912e4 enumC2912e4, InterfaceC2695b interfaceC2695b) {
        super(enumC2912e4);
        this.f717c = interfaceC2695b;
    }

    @Override // p034j$.util.stream.AbstractC2855U2
    /* renamed from: a */
    public InterfaceC2845S2 mo275a() {
        switch (this.f716b) {
            case 0:
                return new C2763E2((InterfaceC2697d) this.f717c);
            case 1:
                return new C2781H2((InterfaceC2695b) this.f717c);
            case 2:
                return new C2817N2((InterfaceC2703j) this.f717c);
            default:
                return new C2840R2((InterfaceC2708o) this.f717c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757D2(EnumC2912e4 enumC2912e4, InterfaceC2697d interfaceC2697d) {
        super(enumC2912e4);
        this.f717c = interfaceC2697d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757D2(EnumC2912e4 enumC2912e4, InterfaceC2703j interfaceC2703j) {
        super(enumC2912e4);
        this.f717c = interfaceC2703j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757D2(EnumC2912e4 enumC2912e4, InterfaceC2708o interfaceC2708o) {
        super(enumC2912e4);
        this.f717c = interfaceC2708o;
    }
}
