package p034j$.util.stream;

import p034j$.lang.AbstractC2597a;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2695g;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2706r;
import p034j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2797L extends AbstractC2900d3 {

    /* renamed from: l */
    public final /* synthetic */ int f783l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f784m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2797L(AbstractC2842T abstractC2842T, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2695g interfaceC2695g) {
        super(abstractC2890c, enumC2907e4, i);
        this.f784m = interfaceC2695g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: H0 */
    public InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3) {
        switch (this.f783l) {
            case 0:
                return new C2785J(this, interfaceC2954m3);
            case 1:
                return new C2762F0(this, interfaceC2954m3);
            case 2:
                return new C2873Z0(this, interfaceC2954m3);
            case 3:
                return new C2870Y2(this, interfaceC2954m3);
            default:
                return new C2870Y2(this, interfaceC2954m3, (AbstractC2597a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2797L(AbstractC2798L0 abstractC2798L0, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2701m interfaceC2701m) {
        super(abstractC2890c, enumC2907e4, i);
        this.f784m = interfaceC2701m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2797L(AbstractC2898d1 abstractC2898d1, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2706r interfaceC2706r) {
        super(abstractC2890c, enumC2907e4, i);
        this.f784m = interfaceC2706r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2797L(AbstractC2906e3 abstractC2906e3, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, Consumer consumer) {
        super(abstractC2890c, enumC2907e4, i);
        this.f784m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2797L(AbstractC2906e3 abstractC2906e3, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, Predicate predicate) {
        super(abstractC2890c, enumC2907e4, i);
        this.f784m = predicate;
    }
}
