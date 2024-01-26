package p033j$.util.stream;

import p033j$.lang.AbstractC2665a;
import p033j$.lang.AbstractC2666b;
import p033j$.lang.AbstractC2667c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2815f;
import p033j$.util.function.InterfaceC2816g;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3162C;
import p033j$.wrappers.C3174I;
import p033j$.wrappers.C3189U;
import p033j$.wrappers.C3212i0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2908K extends AbstractC2954S {

    /* renamed from: l */
    public final /* synthetic */ int f910l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f911m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2908K(AbstractC2959T abstractC2959T, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, InterfaceC2815f interfaceC2815f) {
        super(abstractC3007c, enumC3024e4, i);
        this.f911m = interfaceC2815f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: G0 */
    public InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3) {
        switch (this.f910l) {
            case 0:
                return new C2902J(this, interfaceC3071m3);
            case 1:
                return new C2902J(this, interfaceC3071m3, (AbstractC2665a) null);
            case 2:
                return new C2902J(this, interfaceC3071m3, (AbstractC2666b) null);
            case 3:
                return new C2902J(this, interfaceC3071m3, (AbstractC2667c) null);
            case 4:
                return new C2879F0(this, interfaceC3071m3);
            case 5:
                return new C2990Z0(this, interfaceC3071m3);
            case 6:
                return new C2987Y2(this, interfaceC3071m3);
            default:
                return new C3097r(this, interfaceC3071m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2908K(AbstractC2959T abstractC2959T, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, InterfaceC2816g interfaceC2816g) {
        super(abstractC3007c, enumC3024e4, i);
        this.f911m = interfaceC2816g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2908K(AbstractC2959T abstractC2959T, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, C3162C c3162c) {
        super(abstractC3007c, enumC3024e4, i);
        this.f911m = c3162c;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2908K(AbstractC2959T abstractC2959T, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, C3174I c3174i) {
        super(abstractC3007c, enumC3024e4, i);
        this.f911m = c3174i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2908K(AbstractC2915L0 abstractC2915L0, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, C3189U c3189u) {
        super(abstractC3007c, enumC3024e4, i);
        this.f911m = c3189u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2908K(AbstractC3015d1 abstractC3015d1, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, C3212i0 c3212i0) {
        super(abstractC3007c, enumC3024e4, i);
        this.f911m = c3212i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2908K(AbstractC3023e3 abstractC3023e3, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, Function function) {
        super(abstractC3007c, enumC3024e4, i);
        this.f911m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2908K(AbstractC3023e3 abstractC3023e3, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC3007c, enumC3024e4, i);
        this.f911m = toDoubleFunction;
    }
}
