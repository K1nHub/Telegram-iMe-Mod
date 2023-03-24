package p034j$.util.stream;

import p034j$.lang.AbstractC2495a;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2593g;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2604r;
import p034j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2695L extends AbstractC2798d3 {

    /* renamed from: l */
    public final /* synthetic */ int f780l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f781m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2695L(AbstractC2740T abstractC2740T, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2593g interfaceC2593g) {
        super(abstractC2788c, enumC2805e4, i);
        this.f781m = interfaceC2593g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        switch (this.f780l) {
            case 0:
                return new C2683J(this, interfaceC2852m3);
            case 1:
                return new C2660F0(this, interfaceC2852m3);
            case 2:
                return new C2771Z0(this, interfaceC2852m3);
            case 3:
                return new C2768Y2(this, interfaceC2852m3);
            default:
                return new C2768Y2(this, interfaceC2852m3, (AbstractC2495a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2695L(AbstractC2696L0 abstractC2696L0, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2599m interfaceC2599m) {
        super(abstractC2788c, enumC2805e4, i);
        this.f781m = interfaceC2599m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2695L(AbstractC2796d1 abstractC2796d1, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2604r interfaceC2604r) {
        super(abstractC2788c, enumC2805e4, i);
        this.f781m = interfaceC2604r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2695L(AbstractC2804e3 abstractC2804e3, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, Consumer consumer) {
        super(abstractC2788c, enumC2805e4, i);
        this.f781m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2695L(AbstractC2804e3 abstractC2804e3, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, Predicate predicate) {
        super(abstractC2788c, enumC2805e4, i);
        this.f781m = predicate;
    }
}
