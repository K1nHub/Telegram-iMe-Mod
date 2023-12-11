package p033j$.util.stream;

import p033j$.lang.AbstractC2667a;
import p033j$.lang.AbstractC2668b;
import p033j$.lang.AbstractC2669c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.function.InterfaceC2818g;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3164C;
import p033j$.wrappers.C3176I;
import p033j$.wrappers.C3191U;
import p033j$.wrappers.C3214i0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2910K extends AbstractC2956S {

    /* renamed from: l */
    public final /* synthetic */ int f910l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f911m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2910K(AbstractC2961T abstractC2961T, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, InterfaceC2817f interfaceC2817f) {
        super(abstractC3009c, enumC3026e4, i);
        this.f911m = interfaceC2817f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: G0 */
    public InterfaceC3073m3 mo347G0(int i, InterfaceC3073m3 interfaceC3073m3) {
        switch (this.f910l) {
            case 0:
                return new C2904J(this, interfaceC3073m3);
            case 1:
                return new C2904J(this, interfaceC3073m3, (AbstractC2667a) null);
            case 2:
                return new C2904J(this, interfaceC3073m3, (AbstractC2668b) null);
            case 3:
                return new C2904J(this, interfaceC3073m3, (AbstractC2669c) null);
            case 4:
                return new C2881F0(this, interfaceC3073m3);
            case 5:
                return new C2992Z0(this, interfaceC3073m3);
            case 6:
                return new C2989Y2(this, interfaceC3073m3);
            default:
                return new C3099r(this, interfaceC3073m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2910K(AbstractC2961T abstractC2961T, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, InterfaceC2818g interfaceC2818g) {
        super(abstractC3009c, enumC3026e4, i);
        this.f911m = interfaceC2818g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2910K(AbstractC2961T abstractC2961T, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, C3164C c3164c) {
        super(abstractC3009c, enumC3026e4, i);
        this.f911m = c3164c;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2910K(AbstractC2961T abstractC2961T, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, C3176I c3176i) {
        super(abstractC3009c, enumC3026e4, i);
        this.f911m = c3176i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2910K(AbstractC2917L0 abstractC2917L0, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, C3191U c3191u) {
        super(abstractC3009c, enumC3026e4, i);
        this.f911m = c3191u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2910K(AbstractC3017d1 abstractC3017d1, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, C3214i0 c3214i0) {
        super(abstractC3009c, enumC3026e4, i);
        this.f911m = c3214i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2910K(AbstractC3025e3 abstractC3025e3, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, Function function) {
        super(abstractC3009c, enumC3026e4, i);
        this.f911m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2910K(AbstractC3025e3 abstractC3025e3, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC3009c, enumC3026e4, i);
        this.f911m = toDoubleFunction;
    }
}
