package p034j$.util.stream;

import p034j$.lang.AbstractC2602a;
import p034j$.lang.AbstractC2603b;
import p034j$.lang.AbstractC2604c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.ToIntFunction;
import p034j$.wrappers.C3056F;
import p034j$.wrappers.C3080U;
import p034j$.wrappers.C3087a0;
import p034j$.wrappers.C3111m0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2808M extends AbstractC2797K0 {

    /* renamed from: l */
    public final /* synthetic */ int f788l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f789m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2808M(AbstractC2847T abstractC2847T, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, C3056F c3056f) {
        super(abstractC2895c, enumC2912e4, i);
        this.f789m = c3056f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        switch (this.f788l) {
            case 0:
                return new C2790J(this, interfaceC2959m3);
            case 1:
                return new C2767F0(this, interfaceC2959m3);
            case 2:
                return new C2767F0(this, interfaceC2959m3, (AbstractC2602a) null);
            case 3:
                return new C2767F0(this, interfaceC2959m3, (AbstractC2603b) null);
            case 4:
                return new C2767F0(this, interfaceC2959m3, (AbstractC2604c) null);
            case 5:
                return new C2878Z0(this, interfaceC2959m3);
            case 6:
                return new C2875Y2(this, interfaceC2959m3);
            default:
                return new C2985r(this, interfaceC2959m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2808M(AbstractC2803L0 abstractC2803L0, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2705l interfaceC2705l) {
        super(abstractC2895c, enumC2912e4, i);
        this.f789m = interfaceC2705l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2808M(AbstractC2803L0 abstractC2803L0, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2706m interfaceC2706m) {
        super(abstractC2895c, enumC2912e4, i);
        this.f789m = interfaceC2706m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2808M(AbstractC2803L0 abstractC2803L0, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, C3080U c3080u) {
        super(abstractC2895c, enumC2912e4, i);
        this.f789m = c3080u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2808M(AbstractC2803L0 abstractC2803L0, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, C3087a0 c3087a0) {
        super(abstractC2895c, enumC2912e4, i);
        this.f789m = c3087a0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2808M(AbstractC2903d1 abstractC2903d1, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, C3111m0 c3111m0) {
        super(abstractC2895c, enumC2912e4, i);
        this.f789m = c3111m0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2808M(AbstractC2911e3 abstractC2911e3, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, Function function) {
        super(abstractC2895c, enumC2912e4, i);
        this.f789m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2808M(AbstractC2911e3 abstractC2911e3, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, ToIntFunction toIntFunction) {
        super(abstractC2895c, enumC2912e4, i);
        this.f789m = toIntFunction;
    }
}
