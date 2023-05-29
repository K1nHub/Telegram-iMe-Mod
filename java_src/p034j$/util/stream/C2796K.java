package p034j$.util.stream;

import p034j$.lang.AbstractC2602a;
import p034j$.lang.AbstractC2603b;
import p034j$.lang.AbstractC2604c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2700g;
import p034j$.util.function.ToDoubleFunction;
import p034j$.wrappers.C3052D;
import p034j$.wrappers.C3064J;
import p034j$.wrappers.C3082W;
import p034j$.wrappers.C3107k0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C2796K extends AbstractC2842S {

    /* renamed from: l */
    public final /* synthetic */ int f775l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f776m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2796K(AbstractC2847T abstractC2847T, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2699f interfaceC2699f) {
        super(abstractC2895c, enumC2912e4, i);
        this.f776m = interfaceC2699f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        switch (this.f775l) {
            case 0:
                return new C2790J(this, interfaceC2959m3);
            case 1:
                return new C2790J(this, interfaceC2959m3, (AbstractC2602a) null);
            case 2:
                return new C2790J(this, interfaceC2959m3, (AbstractC2603b) null);
            case 3:
                return new C2790J(this, interfaceC2959m3, (AbstractC2604c) null);
            case 4:
                return new C2767F0(this, interfaceC2959m3);
            case 5:
                return new C2878Z0(this, interfaceC2959m3);
            case 6:
                return new C2875Y2(this, interfaceC2959m3);
            default:
                return new C2985r(this, interfaceC2959m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2796K(AbstractC2847T abstractC2847T, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2700g interfaceC2700g) {
        super(abstractC2895c, enumC2912e4, i);
        this.f776m = interfaceC2700g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2796K(AbstractC2847T abstractC2847T, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, C3052D c3052d) {
        super(abstractC2895c, enumC2912e4, i);
        this.f776m = c3052d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2796K(AbstractC2847T abstractC2847T, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, C3064J c3064j) {
        super(abstractC2895c, enumC2912e4, i);
        this.f776m = c3064j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2796K(AbstractC2803L0 abstractC2803L0, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, C3082W c3082w) {
        super(abstractC2895c, enumC2912e4, i);
        this.f776m = c3082w;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2796K(AbstractC2903d1 abstractC2903d1, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, C3107k0 c3107k0) {
        super(abstractC2895c, enumC2912e4, i);
        this.f776m = c3107k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2796K(AbstractC2911e3 abstractC2911e3, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, Function function) {
        super(abstractC2895c, enumC2912e4, i);
        this.f776m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2796K(AbstractC2911e3 abstractC2911e3, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC2895c, enumC2912e4, i);
        this.f776m = toDoubleFunction;
    }
}
