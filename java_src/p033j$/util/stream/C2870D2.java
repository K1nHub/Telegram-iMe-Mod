package p033j$.util.stream;

import p033j$.util.function.InterfaceC2812b;
import p033j$.util.function.InterfaceC2814d;
import p033j$.util.function.InterfaceC2820j;
import p033j$.util.function.InterfaceC2824n;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2870D2 extends AbstractC2968U2 {

    /* renamed from: b */
    public final /* synthetic */ int f851b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f852c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870D2(EnumC3025e4 enumC3025e4, InterfaceC2812b interfaceC2812b) {
        super(enumC3025e4);
        this.f852c = interfaceC2812b;
    }

    @Override // p033j$.util.stream.AbstractC2968U2
    /* renamed from: a */
    public InterfaceC2958S2 mo338a() {
        switch (this.f851b) {
            case 0:
                return new C2876E2((InterfaceC2814d) this.f852c);
            case 1:
                return new C2894H2((InterfaceC2812b) this.f852c);
            case 2:
                return new C2930N2((InterfaceC2820j) this.f852c);
            default:
                return new C2953R2((InterfaceC2824n) this.f852c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870D2(EnumC3025e4 enumC3025e4, InterfaceC2814d interfaceC2814d) {
        super(enumC3025e4);
        this.f852c = interfaceC2814d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870D2(EnumC3025e4 enumC3025e4, InterfaceC2820j interfaceC2820j) {
        super(enumC3025e4);
        this.f852c = interfaceC2820j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870D2(EnumC3025e4 enumC3025e4, InterfaceC2824n interfaceC2824n) {
        super(enumC3025e4);
        this.f852c = interfaceC2824n;
    }
}
