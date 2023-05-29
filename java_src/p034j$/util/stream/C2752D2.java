package p034j$.util.stream;

import p034j$.util.function.InterfaceC2690b;
import p034j$.util.function.InterfaceC2692d;
import p034j$.util.function.InterfaceC2698j;
import p034j$.util.function.InterfaceC2703o;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2752D2 extends AbstractC2850U2 {

    /* renamed from: b */
    public final /* synthetic */ int f716b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f717c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752D2(EnumC2907e4 enumC2907e4, InterfaceC2690b interfaceC2690b) {
        super(enumC2907e4);
        this.f717c = interfaceC2690b;
    }

    @Override // p034j$.util.stream.AbstractC2850U2
    /* renamed from: a */
    public InterfaceC2840S2 mo275a() {
        switch (this.f716b) {
            case 0:
                return new C2758E2((InterfaceC2692d) this.f717c);
            case 1:
                return new C2776H2((InterfaceC2690b) this.f717c);
            case 2:
                return new C2812N2((InterfaceC2698j) this.f717c);
            default:
                return new C2835R2((InterfaceC2703o) this.f717c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752D2(EnumC2907e4 enumC2907e4, InterfaceC2692d interfaceC2692d) {
        super(enumC2907e4);
        this.f717c = interfaceC2692d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752D2(EnumC2907e4 enumC2907e4, InterfaceC2698j interfaceC2698j) {
        super(enumC2907e4);
        this.f717c = interfaceC2698j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752D2(EnumC2907e4 enumC2907e4, InterfaceC2703o interfaceC2703o) {
        super(enumC2907e4);
        this.f717c = interfaceC2703o;
    }
}
