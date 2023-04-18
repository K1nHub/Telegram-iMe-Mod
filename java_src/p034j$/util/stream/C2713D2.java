package p034j$.util.stream;

import p034j$.util.function.InterfaceC2651b;
import p034j$.util.function.InterfaceC2653d;
import p034j$.util.function.InterfaceC2659j;
import p034j$.util.function.InterfaceC2664o;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2713D2 extends AbstractC2811U2 {

    /* renamed from: b */
    public final /* synthetic */ int f713b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f714c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2713D2(EnumC2868e4 enumC2868e4, InterfaceC2651b interfaceC2651b) {
        super(enumC2868e4);
        this.f714c = interfaceC2651b;
    }

    @Override // p034j$.util.stream.AbstractC2811U2
    /* renamed from: a */
    public InterfaceC2801S2 mo270a() {
        switch (this.f713b) {
            case 0:
                return new C2719E2((InterfaceC2653d) this.f714c);
            case 1:
                return new C2737H2((InterfaceC2651b) this.f714c);
            case 2:
                return new C2773N2((InterfaceC2659j) this.f714c);
            default:
                return new C2796R2((InterfaceC2664o) this.f714c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2713D2(EnumC2868e4 enumC2868e4, InterfaceC2653d interfaceC2653d) {
        super(enumC2868e4);
        this.f714c = interfaceC2653d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2713D2(EnumC2868e4 enumC2868e4, InterfaceC2659j interfaceC2659j) {
        super(enumC2868e4);
        this.f714c = interfaceC2659j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2713D2(EnumC2868e4 enumC2868e4, InterfaceC2664o interfaceC2664o) {
        super(enumC2868e4);
        this.f714c = interfaceC2664o;
    }
}
