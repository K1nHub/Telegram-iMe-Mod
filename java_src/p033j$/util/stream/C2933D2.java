package p033j$.util.stream;

import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2873d;
import p033j$.util.function.InterfaceC2879j;
import p033j$.util.function.InterfaceC2884o;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2933D2 extends AbstractC3031U2 {

    /* renamed from: b */
    public final /* synthetic */ int f802b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f803c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2933D2(EnumC3088e4 enumC3088e4, InterfaceC2871b interfaceC2871b) {
        super(enumC3088e4);
        this.f803c = interfaceC2871b;
    }

    @Override // p033j$.util.stream.AbstractC3031U2
    /* renamed from: a */
    public InterfaceC3021S2 mo293a() {
        switch (this.f802b) {
            case 0:
                return new C2939E2((InterfaceC2873d) this.f803c);
            case 1:
                return new C2957H2((InterfaceC2871b) this.f803c);
            case 2:
                return new C2993N2((InterfaceC2879j) this.f803c);
            default:
                return new C3016R2((InterfaceC2884o) this.f803c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2933D2(EnumC3088e4 enumC3088e4, InterfaceC2873d interfaceC2873d) {
        super(enumC3088e4);
        this.f803c = interfaceC2873d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2933D2(EnumC3088e4 enumC3088e4, InterfaceC2879j interfaceC2879j) {
        super(enumC3088e4);
        this.f803c = interfaceC2879j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2933D2(EnumC3088e4 enumC3088e4, InterfaceC2884o interfaceC2884o) {
        super(enumC3088e4);
        this.f803c = interfaceC2884o;
    }
}
