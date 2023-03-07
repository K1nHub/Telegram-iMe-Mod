package p034j$.util.stream;

import p034j$.lang.AbstractC2357a;
import p034j$.lang.AbstractC2358b;
import p034j$.lang.AbstractC2359c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.ToIntFunction;
import p034j$.wrappers.C2811F;
import p034j$.wrappers.C2835U;
import p034j$.wrappers.C2842a0;
import p034j$.wrappers.C2866m0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2563M extends AbstractC2552K0 {

    /* renamed from: l */
    public final /* synthetic */ int f779l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f780m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2563M(AbstractC2602T abstractC2602T, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, C2811F c2811f) {
        super(abstractC2650c, enumC2667e4, i);
        this.f780m = c2811f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        switch (this.f779l) {
            case 0:
                return new C2545J(this, interfaceC2714m3);
            case 1:
                return new C2522F0(this, interfaceC2714m3);
            case 2:
                return new C2522F0(this, interfaceC2714m3, (AbstractC2357a) null);
            case 3:
                return new C2522F0(this, interfaceC2714m3, (AbstractC2358b) null);
            case 4:
                return new C2522F0(this, interfaceC2714m3, (AbstractC2359c) null);
            case 5:
                return new C2633Z0(this, interfaceC2714m3);
            case 6:
                return new C2630Y2(this, interfaceC2714m3);
            default:
                return new C2740r(this, interfaceC2714m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2563M(AbstractC2558L0 abstractC2558L0, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, InterfaceC2460l interfaceC2460l) {
        super(abstractC2650c, enumC2667e4, i);
        this.f780m = interfaceC2460l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2563M(AbstractC2558L0 abstractC2558L0, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, InterfaceC2461m interfaceC2461m) {
        super(abstractC2650c, enumC2667e4, i);
        this.f780m = interfaceC2461m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2563M(AbstractC2558L0 abstractC2558L0, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, C2835U c2835u) {
        super(abstractC2650c, enumC2667e4, i);
        this.f780m = c2835u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2563M(AbstractC2558L0 abstractC2558L0, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, C2842a0 c2842a0) {
        super(abstractC2650c, enumC2667e4, i);
        this.f780m = c2842a0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2563M(AbstractC2658d1 abstractC2658d1, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, C2866m0 c2866m0) {
        super(abstractC2650c, enumC2667e4, i);
        this.f780m = c2866m0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2563M(AbstractC2666e3 abstractC2666e3, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, Function function) {
        super(abstractC2650c, enumC2667e4, i);
        this.f780m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2563M(AbstractC2666e3 abstractC2666e3, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, ToIntFunction toIntFunction) {
        super(abstractC2650c, enumC2667e4, i);
        this.f780m = toIntFunction;
    }
}
