package p033j$.util.stream;

import p033j$.lang.AbstractC2723a;
import p033j$.lang.AbstractC2724b;
import p033j$.lang.AbstractC2725c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3173D;
import p033j$.wrappers.C3185J;
import p033j$.wrappers.C3203W;
import p033j$.wrappers.C3228k0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2917K extends AbstractC2963S {

    /* renamed from: l */
    public final /* synthetic */ int f857l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f858m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2917K(AbstractC2968T abstractC2968T, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2820f interfaceC2820f) {
        super(abstractC3016c, enumC3033e4, i);
        this.f858m = interfaceC2820f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        switch (this.f857l) {
            case 0:
                return new C2911J(this, interfaceC3080m3);
            case 1:
                return new C2911J(this, interfaceC3080m3, (AbstractC2723a) null);
            case 2:
                return new C2911J(this, interfaceC3080m3, (AbstractC2724b) null);
            case 3:
                return new C2911J(this, interfaceC3080m3, (AbstractC2725c) null);
            case 4:
                return new C2888F0(this, interfaceC3080m3);
            case 5:
                return new C2999Z0(this, interfaceC3080m3);
            case 6:
                return new C2996Y2(this, interfaceC3080m3);
            default:
                return new C3106r(this, interfaceC3080m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2917K(AbstractC2968T abstractC2968T, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2821g interfaceC2821g) {
        super(abstractC3016c, enumC3033e4, i);
        this.f858m = interfaceC2821g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2917K(AbstractC2968T abstractC2968T, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, C3173D c3173d) {
        super(abstractC3016c, enumC3033e4, i);
        this.f858m = c3173d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2917K(AbstractC2968T abstractC2968T, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, C3185J c3185j) {
        super(abstractC3016c, enumC3033e4, i);
        this.f858m = c3185j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2917K(AbstractC2924L0 abstractC2924L0, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, C3203W c3203w) {
        super(abstractC3016c, enumC3033e4, i);
        this.f858m = c3203w;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2917K(AbstractC3024d1 abstractC3024d1, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, C3228k0 c3228k0) {
        super(abstractC3016c, enumC3033e4, i);
        this.f858m = c3228k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2917K(AbstractC3032e3 abstractC3032e3, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, Function function) {
        super(abstractC3016c, enumC3033e4, i);
        this.f858m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2917K(AbstractC3032e3 abstractC3032e3, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC3016c, enumC3033e4, i);
        this.f858m = toDoubleFunction;
    }
}
