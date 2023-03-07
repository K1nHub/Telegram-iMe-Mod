package p034j$.util.stream;

import p034j$.lang.AbstractC2357a;
import p034j$.lang.AbstractC2358b;
import p034j$.lang.AbstractC2359c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2455g;
import p034j$.util.function.ToDoubleFunction;
import p034j$.wrappers.C2807D;
import p034j$.wrappers.C2819J;
import p034j$.wrappers.C2837W;
import p034j$.wrappers.C2862k0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2551K extends AbstractC2597S {

    /* renamed from: l */
    public final /* synthetic */ int f766l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f767m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2551K(AbstractC2602T abstractC2602T, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, InterfaceC2454f interfaceC2454f) {
        super(abstractC2650c, enumC2667e4, i);
        this.f767m = interfaceC2454f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        switch (this.f766l) {
            case 0:
                return new C2545J(this, interfaceC2714m3);
            case 1:
                return new C2545J(this, interfaceC2714m3, (AbstractC2357a) null);
            case 2:
                return new C2545J(this, interfaceC2714m3, (AbstractC2358b) null);
            case 3:
                return new C2545J(this, interfaceC2714m3, (AbstractC2359c) null);
            case 4:
                return new C2522F0(this, interfaceC2714m3);
            case 5:
                return new C2633Z0(this, interfaceC2714m3);
            case 6:
                return new C2630Y2(this, interfaceC2714m3);
            default:
                return new C2740r(this, interfaceC2714m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2551K(AbstractC2602T abstractC2602T, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, InterfaceC2455g interfaceC2455g) {
        super(abstractC2650c, enumC2667e4, i);
        this.f767m = interfaceC2455g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2551K(AbstractC2602T abstractC2602T, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, C2807D c2807d) {
        super(abstractC2650c, enumC2667e4, i);
        this.f767m = c2807d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2551K(AbstractC2602T abstractC2602T, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, C2819J c2819j) {
        super(abstractC2650c, enumC2667e4, i);
        this.f767m = c2819j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2551K(AbstractC2558L0 abstractC2558L0, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, C2837W c2837w) {
        super(abstractC2650c, enumC2667e4, i);
        this.f767m = c2837w;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2551K(AbstractC2658d1 abstractC2658d1, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, C2862k0 c2862k0) {
        super(abstractC2650c, enumC2667e4, i);
        this.f767m = c2862k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2551K(AbstractC2666e3 abstractC2666e3, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, Function function) {
        super(abstractC2650c, enumC2667e4, i);
        this.f767m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2551K(AbstractC2666e3 abstractC2666e3, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC2650c, enumC2667e4, i);
        this.f767m = toDoubleFunction;
    }
}
