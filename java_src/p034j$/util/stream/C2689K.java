package p034j$.util.stream;

import p034j$.lang.AbstractC2495a;
import p034j$.lang.AbstractC2496b;
import p034j$.lang.AbstractC2497c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2593g;
import p034j$.util.function.ToDoubleFunction;
import p034j$.wrappers.C2945D;
import p034j$.wrappers.C2957J;
import p034j$.wrappers.C2975W;
import p034j$.wrappers.C3000k0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2689K extends AbstractC2735S {

    /* renamed from: l */
    public final /* synthetic */ int f772l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f773m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2689K(AbstractC2740T abstractC2740T, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2592f interfaceC2592f) {
        super(abstractC2788c, enumC2805e4, i);
        this.f773m = interfaceC2592f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        switch (this.f772l) {
            case 0:
                return new C2683J(this, interfaceC2852m3);
            case 1:
                return new C2683J(this, interfaceC2852m3, (AbstractC2495a) null);
            case 2:
                return new C2683J(this, interfaceC2852m3, (AbstractC2496b) null);
            case 3:
                return new C2683J(this, interfaceC2852m3, (AbstractC2497c) null);
            case 4:
                return new C2660F0(this, interfaceC2852m3);
            case 5:
                return new C2771Z0(this, interfaceC2852m3);
            case 6:
                return new C2768Y2(this, interfaceC2852m3);
            default:
                return new C2878r(this, interfaceC2852m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2689K(AbstractC2740T abstractC2740T, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2593g interfaceC2593g) {
        super(abstractC2788c, enumC2805e4, i);
        this.f773m = interfaceC2593g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2689K(AbstractC2740T abstractC2740T, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, C2945D c2945d) {
        super(abstractC2788c, enumC2805e4, i);
        this.f773m = c2945d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2689K(AbstractC2740T abstractC2740T, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, C2957J c2957j) {
        super(abstractC2788c, enumC2805e4, i);
        this.f773m = c2957j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2689K(AbstractC2696L0 abstractC2696L0, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, C2975W c2975w) {
        super(abstractC2788c, enumC2805e4, i);
        this.f773m = c2975w;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2689K(AbstractC2796d1 abstractC2796d1, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, C3000k0 c3000k0) {
        super(abstractC2788c, enumC2805e4, i);
        this.f773m = c3000k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2689K(AbstractC2804e3 abstractC2804e3, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, Function function) {
        super(abstractC2788c, enumC2805e4, i);
        this.f773m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2689K(AbstractC2804e3 abstractC2804e3, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC2788c, enumC2805e4, i);
        this.f773m = toDoubleFunction;
    }
}
