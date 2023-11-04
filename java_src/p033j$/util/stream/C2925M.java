package p033j$.util.stream;

import p033j$.lang.AbstractC2670a;
import p033j$.lang.AbstractC2671b;
import p033j$.lang.AbstractC2672c;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3171E;
import p033j$.wrappers.C3192S;
import p033j$.wrappers.C3198Y;
import p033j$.wrappers.C3221k0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2925M extends AbstractC2914K0 {

    /* renamed from: l */
    public final /* synthetic */ int f923l = 3;

    /* renamed from: m */
    final /* synthetic */ Object f924m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2925M(AbstractC2964T abstractC2964T, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, C3171E c3171e) {
        super(abstractC3012c, enumC3029e4, i);
        this.f924m = c3171e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: G0 */
    public InterfaceC3076m3 mo347G0(int i, InterfaceC3076m3 interfaceC3076m3) {
        switch (this.f923l) {
            case 0:
                return new C2907J(this, interfaceC3076m3);
            case 1:
                return new C2884F0(this, interfaceC3076m3);
            case 2:
                return new C2884F0(this, interfaceC3076m3, (AbstractC2670a) null);
            case 3:
                return new C2884F0(this, interfaceC3076m3, (AbstractC2671b) null);
            case 4:
                return new C2884F0(this, interfaceC3076m3, (AbstractC2672c) null);
            case 5:
                return new C2995Z0(this, interfaceC3076m3);
            case 6:
                return new C2992Y2(this, interfaceC3076m3);
            default:
                return new C3102r(this, interfaceC3076m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2925M(AbstractC2920L0 abstractC2920L0, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, InterfaceC2826l interfaceC2826l) {
        super(abstractC3012c, enumC3029e4, i);
        this.f924m = interfaceC2826l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2925M(AbstractC2920L0 abstractC2920L0, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, IntFunction intFunction) {
        super(abstractC3012c, enumC3029e4, i);
        this.f924m = intFunction;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2925M(AbstractC2920L0 abstractC2920L0, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, C3192S c3192s) {
        super(abstractC3012c, enumC3029e4, i);
        this.f924m = c3192s;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2925M(AbstractC2920L0 abstractC2920L0, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, C3198Y c3198y) {
        super(abstractC3012c, enumC3029e4, i);
        this.f924m = c3198y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2925M(AbstractC3020d1 abstractC3020d1, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, C3221k0 c3221k0) {
        super(abstractC3012c, enumC3029e4, i);
        this.f924m = c3221k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2925M(AbstractC3028e3 abstractC3028e3, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, Function function) {
        super(abstractC3012c, enumC3029e4, i);
        this.f924m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2925M(AbstractC3028e3 abstractC3028e3, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, ToIntFunction toIntFunction) {
        super(abstractC3012c, enumC3029e4, i);
        this.f924m = toIntFunction;
    }
}
