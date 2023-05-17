package p034j$.util.stream;

import p034j$.lang.AbstractC2597a;
import p034j$.lang.AbstractC2598b;
import p034j$.lang.AbstractC2599c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2700l;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.ToIntFunction;
import p034j$.wrappers.C3051F;
import p034j$.wrappers.C3075U;
import p034j$.wrappers.C3082a0;
import p034j$.wrappers.C3106m0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2803M extends AbstractC2792K0 {

    /* renamed from: l */
    public final /* synthetic */ int f788l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f789m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2803M(AbstractC2842T abstractC2842T, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, C3051F c3051f) {
        super(abstractC2890c, enumC2907e4, i);
        this.f789m = c3051f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: H0 */
    public InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3) {
        switch (this.f788l) {
            case 0:
                return new C2785J(this, interfaceC2954m3);
            case 1:
                return new C2762F0(this, interfaceC2954m3);
            case 2:
                return new C2762F0(this, interfaceC2954m3, (AbstractC2597a) null);
            case 3:
                return new C2762F0(this, interfaceC2954m3, (AbstractC2598b) null);
            case 4:
                return new C2762F0(this, interfaceC2954m3, (AbstractC2599c) null);
            case 5:
                return new C2873Z0(this, interfaceC2954m3);
            case 6:
                return new C2870Y2(this, interfaceC2954m3);
            default:
                return new C2980r(this, interfaceC2954m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2803M(AbstractC2798L0 abstractC2798L0, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2700l interfaceC2700l) {
        super(abstractC2890c, enumC2907e4, i);
        this.f789m = interfaceC2700l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2803M(AbstractC2798L0 abstractC2798L0, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2701m interfaceC2701m) {
        super(abstractC2890c, enumC2907e4, i);
        this.f789m = interfaceC2701m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2803M(AbstractC2798L0 abstractC2798L0, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, C3075U c3075u) {
        super(abstractC2890c, enumC2907e4, i);
        this.f789m = c3075u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2803M(AbstractC2798L0 abstractC2798L0, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, C3082a0 c3082a0) {
        super(abstractC2890c, enumC2907e4, i);
        this.f789m = c3082a0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2803M(AbstractC2898d1 abstractC2898d1, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, C3106m0 c3106m0) {
        super(abstractC2890c, enumC2907e4, i);
        this.f789m = c3106m0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2803M(AbstractC2906e3 abstractC2906e3, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, Function function) {
        super(abstractC2890c, enumC2907e4, i);
        this.f789m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2803M(AbstractC2906e3 abstractC2906e3, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, ToIntFunction toIntFunction) {
        super(abstractC2890c, enumC2907e4, i);
        this.f789m = toIntFunction;
    }
}
