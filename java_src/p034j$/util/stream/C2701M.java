package p034j$.util.stream;

import p034j$.lang.AbstractC2495a;
import p034j$.lang.AbstractC2496b;
import p034j$.lang.AbstractC2497c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.ToIntFunction;
import p034j$.wrappers.C2949F;
import p034j$.wrappers.C2973U;
import p034j$.wrappers.C2980a0;
import p034j$.wrappers.C3004m0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2701M extends AbstractC2690K0 {

    /* renamed from: l */
    public final /* synthetic */ int f785l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f786m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701M(AbstractC2740T abstractC2740T, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, C2949F c2949f) {
        super(abstractC2788c, enumC2805e4, i);
        this.f786m = c2949f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        switch (this.f785l) {
            case 0:
                return new C2683J(this, interfaceC2852m3);
            case 1:
                return new C2660F0(this, interfaceC2852m3);
            case 2:
                return new C2660F0(this, interfaceC2852m3, (AbstractC2495a) null);
            case 3:
                return new C2660F0(this, interfaceC2852m3, (AbstractC2496b) null);
            case 4:
                return new C2660F0(this, interfaceC2852m3, (AbstractC2497c) null);
            case 5:
                return new C2771Z0(this, interfaceC2852m3);
            case 6:
                return new C2768Y2(this, interfaceC2852m3);
            default:
                return new C2878r(this, interfaceC2852m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701M(AbstractC2696L0 abstractC2696L0, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2598l interfaceC2598l) {
        super(abstractC2788c, enumC2805e4, i);
        this.f786m = interfaceC2598l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701M(AbstractC2696L0 abstractC2696L0, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2599m interfaceC2599m) {
        super(abstractC2788c, enumC2805e4, i);
        this.f786m = interfaceC2599m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701M(AbstractC2696L0 abstractC2696L0, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, C2973U c2973u) {
        super(abstractC2788c, enumC2805e4, i);
        this.f786m = c2973u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701M(AbstractC2696L0 abstractC2696L0, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, C2980a0 c2980a0) {
        super(abstractC2788c, enumC2805e4, i);
        this.f786m = c2980a0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701M(AbstractC2796d1 abstractC2796d1, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, C3004m0 c3004m0) {
        super(abstractC2788c, enumC2805e4, i);
        this.f786m = c3004m0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701M(AbstractC2804e3 abstractC2804e3, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, Function function) {
        super(abstractC2788c, enumC2805e4, i);
        this.f786m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2701M(AbstractC2804e3 abstractC2804e3, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, ToIntFunction toIntFunction) {
        super(abstractC2788c, enumC2805e4, i);
        this.f786m = toIntFunction;
    }
}
