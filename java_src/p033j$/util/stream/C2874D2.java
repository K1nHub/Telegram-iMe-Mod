package p033j$.util.stream;

import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2828n;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2874D2 extends AbstractC2972U2 {

    /* renamed from: b */
    public final /* synthetic */ int f851b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f852c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2874D2(EnumC3029e4 enumC3029e4, InterfaceC2816b interfaceC2816b) {
        super(enumC3029e4);
        this.f852c = interfaceC2816b;
    }

    @Override // p033j$.util.stream.AbstractC2972U2
    /* renamed from: a */
    public InterfaceC2962S2 mo339a() {
        switch (this.f851b) {
            case 0:
                return new C2880E2((InterfaceC2818d) this.f852c);
            case 1:
                return new C2898H2((InterfaceC2816b) this.f852c);
            case 2:
                return new C2934N2((InterfaceC2824j) this.f852c);
            default:
                return new C2957R2((InterfaceC2828n) this.f852c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2874D2(EnumC3029e4 enumC3029e4, InterfaceC2818d interfaceC2818d) {
        super(enumC3029e4);
        this.f852c = interfaceC2818d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2874D2(EnumC3029e4 enumC3029e4, InterfaceC2824j interfaceC2824j) {
        super(enumC3029e4);
        this.f852c = interfaceC2824j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2874D2(EnumC3029e4 enumC3029e4, InterfaceC2828n interfaceC2828n) {
        super(enumC3029e4);
        this.f852c = interfaceC2828n;
    }
}
