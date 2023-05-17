package p034j$.util.stream;

import p034j$.lang.AbstractC2597a;
import p034j$.lang.AbstractC2598b;
import p034j$.lang.AbstractC2599c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2696h;
import p034j$.util.function.InterfaceC2702n;
import p034j$.util.function.InterfaceC2705q;
import p034j$.util.function.InterfaceC2706r;
import p034j$.util.function.InterfaceC2708t;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C3098i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2809N extends AbstractC2892c1 {

    /* renamed from: l */
    public final /* synthetic */ int f799l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f800m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2809N(AbstractC2842T abstractC2842T, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2696h interfaceC2696h) {
        super(abstractC2890c, enumC2907e4, i);
        this.f800m = interfaceC2696h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: H0 */
    public InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3) {
        switch (this.f799l) {
            case 0:
                return new C2785J(this, interfaceC2954m3);
            case 1:
                return new C2762F0(this, interfaceC2954m3);
            case 2:
                return new C2873Z0(this, interfaceC2954m3);
            case 3:
                return new C2873Z0(this, interfaceC2954m3, (AbstractC2597a) null);
            case 4:
                return new C2873Z0(this, interfaceC2954m3, (AbstractC2598b) null);
            case 5:
                return new C2873Z0(this, interfaceC2954m3, (AbstractC2599c) null);
            case 6:
                return new C2980r(this, interfaceC2954m3);
            default:
                return new C2870Y2(this, interfaceC2954m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2809N(AbstractC2798L0 abstractC2798L0, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2702n interfaceC2702n) {
        super(abstractC2890c, enumC2907e4, i);
        this.f800m = interfaceC2702n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2809N(AbstractC2898d1 abstractC2898d1, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2705q interfaceC2705q) {
        super(abstractC2890c, enumC2907e4, i);
        this.f800m = interfaceC2705q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2809N(AbstractC2898d1 abstractC2898d1, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2706r interfaceC2706r) {
        super(abstractC2890c, enumC2907e4, i);
        this.f800m = interfaceC2706r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2809N(AbstractC2898d1 abstractC2898d1, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, InterfaceC2708t interfaceC2708t) {
        super(abstractC2890c, enumC2907e4, i);
        this.f800m = interfaceC2708t;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2809N(AbstractC2898d1 abstractC2898d1, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, C3098i0 c3098i0) {
        super(abstractC2890c, enumC2907e4, i);
        this.f800m = c3098i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2809N(AbstractC2906e3 abstractC2906e3, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, Function function) {
        super(abstractC2890c, enumC2907e4, i);
        this.f800m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2809N(AbstractC2906e3 abstractC2906e3, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, ToLongFunction toLongFunction) {
        super(abstractC2890c, enumC2907e4, i);
        this.f800m = toLongFunction;
    }
}
