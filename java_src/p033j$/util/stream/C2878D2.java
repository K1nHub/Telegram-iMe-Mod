package p033j$.util.stream;

import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2829o;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2878D2 extends AbstractC2976U2 {

    /* renamed from: b */
    public final /* synthetic */ int f801b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f802c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878D2(EnumC3033e4 enumC3033e4, InterfaceC2816b interfaceC2816b) {
        super(enumC3033e4);
        this.f802c = interfaceC2816b;
    }

    @Override // p033j$.util.stream.AbstractC2976U2
    /* renamed from: a */
    public InterfaceC2966S2 mo293a() {
        switch (this.f801b) {
            case 0:
                return new C2884E2((InterfaceC2818d) this.f802c);
            case 1:
                return new C2902H2((InterfaceC2816b) this.f802c);
            case 2:
                return new C2938N2((InterfaceC2824j) this.f802c);
            default:
                return new C2961R2((InterfaceC2829o) this.f802c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878D2(EnumC3033e4 enumC3033e4, InterfaceC2818d interfaceC2818d) {
        super(enumC3033e4);
        this.f802c = interfaceC2818d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878D2(EnumC3033e4 enumC3033e4, InterfaceC2824j interfaceC2824j) {
        super(enumC3033e4);
        this.f802c = interfaceC2824j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878D2(EnumC3033e4 enumC3033e4, InterfaceC2829o interfaceC2829o) {
        super(enumC3033e4);
        this.f802c = interfaceC2829o;
    }
}
