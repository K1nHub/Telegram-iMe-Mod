package p033j$.util.stream;

import p033j$.lang.AbstractC2666a;
import p033j$.lang.AbstractC2667b;
import p033j$.lang.AbstractC2668c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2817g;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3163C;
import p033j$.wrappers.C3175I;
import p033j$.wrappers.C3190U;
import p033j$.wrappers.C3213i0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2909K extends AbstractC2955S {

    /* renamed from: l */
    public final /* synthetic */ int f910l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f911m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2909K(AbstractC2960T abstractC2960T, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, InterfaceC2816f interfaceC2816f) {
        super(abstractC3008c, enumC3025e4, i);
        this.f911m = interfaceC2816f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        switch (this.f910l) {
            case 0:
                return new C2903J(this, interfaceC3072m3);
            case 1:
                return new C2903J(this, interfaceC3072m3, (AbstractC2666a) null);
            case 2:
                return new C2903J(this, interfaceC3072m3, (AbstractC2667b) null);
            case 3:
                return new C2903J(this, interfaceC3072m3, (AbstractC2668c) null);
            case 4:
                return new C2880F0(this, interfaceC3072m3);
            case 5:
                return new C2991Z0(this, interfaceC3072m3);
            case 6:
                return new C2988Y2(this, interfaceC3072m3);
            default:
                return new C3098r(this, interfaceC3072m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2909K(AbstractC2960T abstractC2960T, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, InterfaceC2817g interfaceC2817g) {
        super(abstractC3008c, enumC3025e4, i);
        this.f911m = interfaceC2817g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2909K(AbstractC2960T abstractC2960T, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, C3163C c3163c) {
        super(abstractC3008c, enumC3025e4, i);
        this.f911m = c3163c;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2909K(AbstractC2960T abstractC2960T, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, C3175I c3175i) {
        super(abstractC3008c, enumC3025e4, i);
        this.f911m = c3175i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2909K(AbstractC2916L0 abstractC2916L0, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, C3190U c3190u) {
        super(abstractC3008c, enumC3025e4, i);
        this.f911m = c3190u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2909K(AbstractC3016d1 abstractC3016d1, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, C3213i0 c3213i0) {
        super(abstractC3008c, enumC3025e4, i);
        this.f911m = c3213i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2909K(AbstractC3024e3 abstractC3024e3, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, Function function) {
        super(abstractC3008c, enumC3025e4, i);
        this.f911m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2909K(AbstractC3024e3 abstractC3024e3, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC3008c, enumC3025e4, i);
        this.f911m = toDoubleFunction;
    }
}
