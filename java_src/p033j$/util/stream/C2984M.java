package p033j$.util.stream;

import p033j$.lang.AbstractC2778a;
import p033j$.lang.AbstractC2779b;
import p033j$.lang.AbstractC2780c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3232F;
import p033j$.wrappers.C3256U;
import p033j$.wrappers.C3263a0;
import p033j$.wrappers.C3287m0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2984M extends AbstractC2973K0 {

    /* renamed from: l */
    public final /* synthetic */ int f874l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f875m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2984M(AbstractC3023T abstractC3023T, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, C3232F c3232f) {
        super(abstractC3071c, enumC3088e4, i);
        this.f875m = c3232f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        switch (this.f874l) {
            case 0:
                return new C2966J(this, interfaceC3135m3);
            case 1:
                return new C2943F0(this, interfaceC3135m3);
            case 2:
                return new C2943F0(this, interfaceC3135m3, (AbstractC2778a) null);
            case 3:
                return new C2943F0(this, interfaceC3135m3, (AbstractC2779b) null);
            case 4:
                return new C2943F0(this, interfaceC3135m3, (AbstractC2780c) null);
            case 5:
                return new C3054Z0(this, interfaceC3135m3);
            case 6:
                return new C3051Y2(this, interfaceC3135m3);
            default:
                return new C3161r(this, interfaceC3135m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2984M(AbstractC2979L0 abstractC2979L0, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2881l interfaceC2881l) {
        super(abstractC3071c, enumC3088e4, i);
        this.f875m = interfaceC2881l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2984M(AbstractC2979L0 abstractC2979L0, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2882m interfaceC2882m) {
        super(abstractC3071c, enumC3088e4, i);
        this.f875m = interfaceC2882m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2984M(AbstractC2979L0 abstractC2979L0, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, C3256U c3256u) {
        super(abstractC3071c, enumC3088e4, i);
        this.f875m = c3256u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2984M(AbstractC2979L0 abstractC2979L0, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, C3263a0 c3263a0) {
        super(abstractC3071c, enumC3088e4, i);
        this.f875m = c3263a0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2984M(AbstractC3079d1 abstractC3079d1, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, C3287m0 c3287m0) {
        super(abstractC3071c, enumC3088e4, i);
        this.f875m = c3287m0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2984M(AbstractC3087e3 abstractC3087e3, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, Function function) {
        super(abstractC3071c, enumC3088e4, i);
        this.f875m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2984M(AbstractC3087e3 abstractC3087e3, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, ToIntFunction toIntFunction) {
        super(abstractC3071c, enumC3088e4, i);
        this.f875m = toIntFunction;
    }
}
