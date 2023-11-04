package p033j$.util.stream;

import p033j$.lang.AbstractC2670a;
import p033j$.lang.AbstractC2671b;
import p033j$.lang.AbstractC2672c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3167C;
import p033j$.wrappers.C3179I;
import p033j$.wrappers.C3194U;
import p033j$.wrappers.C3217i0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2913K extends AbstractC2959S {

    /* renamed from: l */
    public final /* synthetic */ int f910l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f911m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2913K(AbstractC2964T abstractC2964T, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, InterfaceC2820f interfaceC2820f) {
        super(abstractC3012c, enumC3029e4, i);
        this.f911m = interfaceC2820f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: G0 */
    public InterfaceC3076m3 mo347G0(int i, InterfaceC3076m3 interfaceC3076m3) {
        switch (this.f910l) {
            case 0:
                return new C2907J(this, interfaceC3076m3);
            case 1:
                return new C2907J(this, interfaceC3076m3, (AbstractC2670a) null);
            case 2:
                return new C2907J(this, interfaceC3076m3, (AbstractC2671b) null);
            case 3:
                return new C2907J(this, interfaceC3076m3, (AbstractC2672c) null);
            case 4:
                return new C2884F0(this, interfaceC3076m3);
            case 5:
                return new C2995Z0(this, interfaceC3076m3);
            case 6:
                return new C2992Y2(this, interfaceC3076m3);
            default:
                return new C3102r(this, interfaceC3076m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2913K(AbstractC2964T abstractC2964T, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, InterfaceC2821g interfaceC2821g) {
        super(abstractC3012c, enumC3029e4, i);
        this.f911m = interfaceC2821g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2913K(AbstractC2964T abstractC2964T, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, C3167C c3167c) {
        super(abstractC3012c, enumC3029e4, i);
        this.f911m = c3167c;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2913K(AbstractC2964T abstractC2964T, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, C3179I c3179i) {
        super(abstractC3012c, enumC3029e4, i);
        this.f911m = c3179i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2913K(AbstractC2920L0 abstractC2920L0, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, C3194U c3194u) {
        super(abstractC3012c, enumC3029e4, i);
        this.f911m = c3194u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2913K(AbstractC3020d1 abstractC3020d1, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, C3217i0 c3217i0) {
        super(abstractC3012c, enumC3029e4, i);
        this.f911m = c3217i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2913K(AbstractC3028e3 abstractC3028e3, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, Function function) {
        super(abstractC3012c, enumC3029e4, i);
        this.f911m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2913K(AbstractC3028e3 abstractC3028e3, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC3012c, enumC3029e4, i);
        this.f911m = toDoubleFunction;
    }
}
