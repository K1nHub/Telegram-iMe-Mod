package p034j$.util.stream;

import p034j$.lang.AbstractC2558a;
import p034j$.lang.AbstractC2559b;
import p034j$.lang.AbstractC2560c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.ToIntFunction;
import p034j$.wrappers.C3012F;
import p034j$.wrappers.C3036U;
import p034j$.wrappers.C3043a0;
import p034j$.wrappers.C3067m0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2764M extends AbstractC2753K0 {

    /* renamed from: l */
    public final /* synthetic */ int f785l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f786m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2764M(AbstractC2803T abstractC2803T, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, C3012F c3012f) {
        super(abstractC2851c, enumC2868e4, i);
        this.f786m = c3012f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: H0 */
    public InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3) {
        switch (this.f785l) {
            case 0:
                return new C2746J(this, interfaceC2915m3);
            case 1:
                return new C2723F0(this, interfaceC2915m3);
            case 2:
                return new C2723F0(this, interfaceC2915m3, (AbstractC2558a) null);
            case 3:
                return new C2723F0(this, interfaceC2915m3, (AbstractC2559b) null);
            case 4:
                return new C2723F0(this, interfaceC2915m3, (AbstractC2560c) null);
            case 5:
                return new C2834Z0(this, interfaceC2915m3);
            case 6:
                return new C2831Y2(this, interfaceC2915m3);
            default:
                return new C2941r(this, interfaceC2915m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2764M(AbstractC2759L0 abstractC2759L0, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2661l interfaceC2661l) {
        super(abstractC2851c, enumC2868e4, i);
        this.f786m = interfaceC2661l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2764M(AbstractC2759L0 abstractC2759L0, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2662m interfaceC2662m) {
        super(abstractC2851c, enumC2868e4, i);
        this.f786m = interfaceC2662m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2764M(AbstractC2759L0 abstractC2759L0, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, C3036U c3036u) {
        super(abstractC2851c, enumC2868e4, i);
        this.f786m = c3036u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2764M(AbstractC2759L0 abstractC2759L0, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, C3043a0 c3043a0) {
        super(abstractC2851c, enumC2868e4, i);
        this.f786m = c3043a0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2764M(AbstractC2859d1 abstractC2859d1, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, C3067m0 c3067m0) {
        super(abstractC2851c, enumC2868e4, i);
        this.f786m = c3067m0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2764M(AbstractC2867e3 abstractC2867e3, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, Function function) {
        super(abstractC2851c, enumC2868e4, i);
        this.f786m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2764M(AbstractC2867e3 abstractC2867e3, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, ToIntFunction toIntFunction) {
        super(abstractC2851c, enumC2868e4, i);
        this.f786m = toIntFunction;
    }
}
