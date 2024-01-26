package p033j$.util.stream;

import p033j$.util.function.InterfaceC2811b;
import p033j$.util.function.InterfaceC2813d;
import p033j$.util.function.InterfaceC2819j;
import p033j$.util.function.InterfaceC2823n;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2869D2 extends AbstractC2967U2 {

    /* renamed from: b */
    public final /* synthetic */ int f851b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f852c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2869D2(EnumC3024e4 enumC3024e4, InterfaceC2811b interfaceC2811b) {
        super(enumC3024e4);
        this.f852c = interfaceC2811b;
    }

    @Override // p033j$.util.stream.AbstractC2967U2
    /* renamed from: a */
    public InterfaceC2957S2 mo342a() {
        switch (this.f851b) {
            case 0:
                return new C2875E2((InterfaceC2813d) this.f852c);
            case 1:
                return new C2893H2((InterfaceC2811b) this.f852c);
            case 2:
                return new C2929N2((InterfaceC2819j) this.f852c);
            default:
                return new C2952R2((InterfaceC2823n) this.f852c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2869D2(EnumC3024e4 enumC3024e4, InterfaceC2813d interfaceC2813d) {
        super(enumC3024e4);
        this.f852c = interfaceC2813d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2869D2(EnumC3024e4 enumC3024e4, InterfaceC2819j interfaceC2819j) {
        super(enumC3024e4);
        this.f852c = interfaceC2819j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2869D2(EnumC3024e4 enumC3024e4, InterfaceC2823n interfaceC2823n) {
        super(enumC3024e4);
        this.f852c = interfaceC2823n;
    }
}
