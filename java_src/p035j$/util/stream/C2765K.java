package p035j$.util.stream;

import p035j$.lang.AbstractC2571a;
import p035j$.lang.AbstractC2572b;
import p035j$.lang.AbstractC2573c;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2669g;
import p035j$.util.function.ToDoubleFunction;
import p035j$.wrappers.C3021D;
import p035j$.wrappers.C3033J;
import p035j$.wrappers.C3051W;
import p035j$.wrappers.C3076k0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2765K extends AbstractC2811S {

    /* renamed from: l */
    public final /* synthetic */ int f777l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f778m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2765K(AbstractC2816T abstractC2816T, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2668f interfaceC2668f) {
        super(abstractC2864c, enumC2881e4, i);
        this.f778m = interfaceC2668f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        switch (this.f777l) {
            case 0:
                return new C2759J(this, interfaceC2928m3);
            case 1:
                return new C2759J(this, interfaceC2928m3, (AbstractC2571a) null);
            case 2:
                return new C2759J(this, interfaceC2928m3, (AbstractC2572b) null);
            case 3:
                return new C2759J(this, interfaceC2928m3, (AbstractC2573c) null);
            case 4:
                return new C2736F0(this, interfaceC2928m3);
            case 5:
                return new C2847Z0(this, interfaceC2928m3);
            case 6:
                return new C2844Y2(this, interfaceC2928m3);
            default:
                return new C2954r(this, interfaceC2928m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2765K(AbstractC2816T abstractC2816T, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2669g interfaceC2669g) {
        super(abstractC2864c, enumC2881e4, i);
        this.f778m = interfaceC2669g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2765K(AbstractC2816T abstractC2816T, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, C3021D c3021d) {
        super(abstractC2864c, enumC2881e4, i);
        this.f778m = c3021d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2765K(AbstractC2816T abstractC2816T, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, C3033J c3033j) {
        super(abstractC2864c, enumC2881e4, i);
        this.f778m = c3033j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2765K(AbstractC2772L0 abstractC2772L0, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, C3051W c3051w) {
        super(abstractC2864c, enumC2881e4, i);
        this.f778m = c3051w;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2765K(AbstractC2872d1 abstractC2872d1, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, C3076k0 c3076k0) {
        super(abstractC2864c, enumC2881e4, i);
        this.f778m = c3076k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2765K(AbstractC2880e3 abstractC2880e3, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, Function function) {
        super(abstractC2864c, enumC2881e4, i);
        this.f778m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2765K(AbstractC2880e3 abstractC2880e3, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC2864c, enumC2881e4, i);
        this.f778m = toDoubleFunction;
    }
}
