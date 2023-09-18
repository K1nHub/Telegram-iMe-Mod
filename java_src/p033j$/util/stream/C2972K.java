package p033j$.util.stream;

import p033j$.lang.AbstractC2778a;
import p033j$.lang.AbstractC2779b;
import p033j$.lang.AbstractC2780c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2876g;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3228D;
import p033j$.wrappers.C3240J;
import p033j$.wrappers.C3258W;
import p033j$.wrappers.C3283k0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2972K extends AbstractC3018S {

    /* renamed from: l */
    public final /* synthetic */ int f861l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f862m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2972K(AbstractC3023T abstractC3023T, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2875f interfaceC2875f) {
        super(abstractC3071c, enumC3088e4, i);
        this.f862m = interfaceC2875f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        switch (this.f861l) {
            case 0:
                return new C2966J(this, interfaceC3135m3);
            case 1:
                return new C2966J(this, interfaceC3135m3, (AbstractC2778a) null);
            case 2:
                return new C2966J(this, interfaceC3135m3, (AbstractC2779b) null);
            case 3:
                return new C2966J(this, interfaceC3135m3, (AbstractC2780c) null);
            case 4:
                return new C2943F0(this, interfaceC3135m3);
            case 5:
                return new C3054Z0(this, interfaceC3135m3);
            case 6:
                return new C3051Y2(this, interfaceC3135m3);
            default:
                return new C3161r(this, interfaceC3135m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2972K(AbstractC3023T abstractC3023T, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2876g interfaceC2876g) {
        super(abstractC3071c, enumC3088e4, i);
        this.f862m = interfaceC2876g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2972K(AbstractC3023T abstractC3023T, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, C3228D c3228d) {
        super(abstractC3071c, enumC3088e4, i);
        this.f862m = c3228d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2972K(AbstractC3023T abstractC3023T, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, C3240J c3240j) {
        super(abstractC3071c, enumC3088e4, i);
        this.f862m = c3240j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2972K(AbstractC2979L0 abstractC2979L0, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, C3258W c3258w) {
        super(abstractC3071c, enumC3088e4, i);
        this.f862m = c3258w;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2972K(AbstractC3079d1 abstractC3079d1, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, C3283k0 c3283k0) {
        super(abstractC3071c, enumC3088e4, i);
        this.f862m = c3283k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2972K(AbstractC3087e3 abstractC3087e3, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, Function function) {
        super(abstractC3071c, enumC3088e4, i);
        this.f862m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2972K(AbstractC3087e3 abstractC3087e3, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC3071c, enumC3088e4, i);
        this.f862m = toDoubleFunction;
    }
}
