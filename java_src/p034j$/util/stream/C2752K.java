package p034j$.util.stream;

import p034j$.lang.AbstractC2558a;
import p034j$.lang.AbstractC2559b;
import p034j$.lang.AbstractC2560c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2656g;
import p034j$.util.function.ToDoubleFunction;
import p034j$.wrappers.C3008D;
import p034j$.wrappers.C3020J;
import p034j$.wrappers.C3038W;
import p034j$.wrappers.C3063k0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2752K extends AbstractC2798S {

    /* renamed from: l */
    public final /* synthetic */ int f772l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f773m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752K(AbstractC2803T abstractC2803T, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2655f interfaceC2655f) {
        super(abstractC2851c, enumC2868e4, i);
        this.f773m = interfaceC2655f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: H0 */
    public InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3) {
        switch (this.f772l) {
            case 0:
                return new C2746J(this, interfaceC2915m3);
            case 1:
                return new C2746J(this, interfaceC2915m3, (AbstractC2558a) null);
            case 2:
                return new C2746J(this, interfaceC2915m3, (AbstractC2559b) null);
            case 3:
                return new C2746J(this, interfaceC2915m3, (AbstractC2560c) null);
            case 4:
                return new C2723F0(this, interfaceC2915m3);
            case 5:
                return new C2834Z0(this, interfaceC2915m3);
            case 6:
                return new C2831Y2(this, interfaceC2915m3);
            default:
                return new C2941r(this, interfaceC2915m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752K(AbstractC2803T abstractC2803T, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2656g interfaceC2656g) {
        super(abstractC2851c, enumC2868e4, i);
        this.f773m = interfaceC2656g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752K(AbstractC2803T abstractC2803T, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, C3008D c3008d) {
        super(abstractC2851c, enumC2868e4, i);
        this.f773m = c3008d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752K(AbstractC2803T abstractC2803T, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, C3020J c3020j) {
        super(abstractC2851c, enumC2868e4, i);
        this.f773m = c3020j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752K(AbstractC2759L0 abstractC2759L0, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, C3038W c3038w) {
        super(abstractC2851c, enumC2868e4, i);
        this.f773m = c3038w;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752K(AbstractC2859d1 abstractC2859d1, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, C3063k0 c3063k0) {
        super(abstractC2851c, enumC2868e4, i);
        this.f773m = c3063k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752K(AbstractC2867e3 abstractC2867e3, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, Function function) {
        super(abstractC2851c, enumC2868e4, i);
        this.f773m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2752K(AbstractC2867e3 abstractC2867e3, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC2851c, enumC2868e4, i);
        this.f773m = toDoubleFunction;
    }
}
