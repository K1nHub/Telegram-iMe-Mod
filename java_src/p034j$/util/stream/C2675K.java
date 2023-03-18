package p034j$.util.stream;

import p034j$.lang.AbstractC2481a;
import p034j$.lang.AbstractC2482b;
import p034j$.lang.AbstractC2483c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2579g;
import p034j$.util.function.ToDoubleFunction;
import p034j$.wrappers.C2931D;
import p034j$.wrappers.C2943J;
import p034j$.wrappers.C2961W;
import p034j$.wrappers.C2986k0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2675K extends AbstractC2721S {

    /* renamed from: l */
    public final /* synthetic */ int f771l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f772m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2675K(AbstractC2726T abstractC2726T, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2578f interfaceC2578f) {
        super(abstractC2774c, enumC2791e4, i);
        this.f772m = interfaceC2578f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        switch (this.f771l) {
            case 0:
                return new C2669J(this, interfaceC2838m3);
            case 1:
                return new C2669J(this, interfaceC2838m3, (AbstractC2481a) null);
            case 2:
                return new C2669J(this, interfaceC2838m3, (AbstractC2482b) null);
            case 3:
                return new C2669J(this, interfaceC2838m3, (AbstractC2483c) null);
            case 4:
                return new C2646F0(this, interfaceC2838m3);
            case 5:
                return new C2757Z0(this, interfaceC2838m3);
            case 6:
                return new C2754Y2(this, interfaceC2838m3);
            default:
                return new C2864r(this, interfaceC2838m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2675K(AbstractC2726T abstractC2726T, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2579g interfaceC2579g) {
        super(abstractC2774c, enumC2791e4, i);
        this.f772m = interfaceC2579g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2675K(AbstractC2726T abstractC2726T, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, C2931D c2931d) {
        super(abstractC2774c, enumC2791e4, i);
        this.f772m = c2931d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2675K(AbstractC2726T abstractC2726T, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, C2943J c2943j) {
        super(abstractC2774c, enumC2791e4, i);
        this.f772m = c2943j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2675K(AbstractC2682L0 abstractC2682L0, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, C2961W c2961w) {
        super(abstractC2774c, enumC2791e4, i);
        this.f772m = c2961w;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2675K(AbstractC2782d1 abstractC2782d1, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, C2986k0 c2986k0) {
        super(abstractC2774c, enumC2791e4, i);
        this.f772m = c2986k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2675K(AbstractC2790e3 abstractC2790e3, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, Function function) {
        super(abstractC2774c, enumC2791e4, i);
        this.f772m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2675K(AbstractC2790e3 abstractC2790e3, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC2774c, enumC2791e4, i);
        this.f772m = toDoubleFunction;
    }
}
