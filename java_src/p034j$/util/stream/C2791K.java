package p034j$.util.stream;

import p034j$.lang.AbstractC2597a;
import p034j$.lang.AbstractC2598b;
import p034j$.lang.AbstractC2599c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2694f;
import p034j$.util.function.InterfaceC2695g;
import p034j$.util.function.ToDoubleFunction;
import p034j$.wrappers.C3047D;
import p034j$.wrappers.C3059J;
import p034j$.wrappers.C3077W;
import p034j$.wrappers.C3102k0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2791K extends AbstractC2837S {

    /* renamed from: l */
    public final /* synthetic */ int f775l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f776m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791K(AbstractC2842T abstractC2842T, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2694f interfaceC2694f) {
        super(abstractC2890c, enumC2907e4, i);
        this.f776m = interfaceC2694f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: H0 */
    public InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3) {
        switch (this.f775l) {
            case 0:
                return new C2785J(this, interfaceC2954m3);
            case 1:
                return new C2785J(this, interfaceC2954m3, (AbstractC2597a) null);
            case 2:
                return new C2785J(this, interfaceC2954m3, (AbstractC2598b) null);
            case 3:
                return new C2785J(this, interfaceC2954m3, (AbstractC2599c) null);
            case 4:
                return new C2762F0(this, interfaceC2954m3);
            case 5:
                return new C2873Z0(this, interfaceC2954m3);
            case 6:
                return new C2870Y2(this, interfaceC2954m3);
            default:
                return new C2980r(this, interfaceC2954m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791K(AbstractC2842T abstractC2842T, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2695g interfaceC2695g) {
        super(abstractC2890c, enumC2907e4, i);
        this.f776m = interfaceC2695g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791K(AbstractC2842T abstractC2842T, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, C3047D c3047d) {
        super(abstractC2890c, enumC2907e4, i);
        this.f776m = c3047d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791K(AbstractC2842T abstractC2842T, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, C3059J c3059j) {
        super(abstractC2890c, enumC2907e4, i);
        this.f776m = c3059j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791K(AbstractC2798L0 abstractC2798L0, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, C3077W c3077w) {
        super(abstractC2890c, enumC2907e4, i);
        this.f776m = c3077w;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791K(AbstractC2898d1 abstractC2898d1, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, C3102k0 c3102k0) {
        super(abstractC2890c, enumC2907e4, i);
        this.f776m = c3102k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791K(AbstractC2906e3 abstractC2906e3, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, Function function) {
        super(abstractC2890c, enumC2907e4, i);
        this.f776m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791K(AbstractC2906e3 abstractC2906e3, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC2890c, enumC2907e4, i);
        this.f776m = toDoubleFunction;
    }
}
