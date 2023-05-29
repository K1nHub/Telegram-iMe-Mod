package p034j$.util.stream;

import p034j$.lang.AbstractC2602a;
import p034j$.lang.AbstractC2603b;
import p034j$.lang.AbstractC2604c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2701h;
import p034j$.util.function.InterfaceC2707n;
import p034j$.util.function.InterfaceC2710q;
import p034j$.util.function.InterfaceC2711r;
import p034j$.util.function.InterfaceC2713t;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C3103i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2814N extends AbstractC2897c1 {

    /* renamed from: l */
    public final /* synthetic */ int f799l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f800m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2814N(AbstractC2847T abstractC2847T, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2701h interfaceC2701h) {
        super(abstractC2895c, enumC2912e4, i);
        this.f800m = interfaceC2701h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        switch (this.f799l) {
            case 0:
                return new C2790J(this, interfaceC2959m3);
            case 1:
                return new C2767F0(this, interfaceC2959m3);
            case 2:
                return new C2878Z0(this, interfaceC2959m3);
            case 3:
                return new C2878Z0(this, interfaceC2959m3, (AbstractC2602a) null);
            case 4:
                return new C2878Z0(this, interfaceC2959m3, (AbstractC2603b) null);
            case 5:
                return new C2878Z0(this, interfaceC2959m3, (AbstractC2604c) null);
            case 6:
                return new C2985r(this, interfaceC2959m3);
            default:
                return new C2875Y2(this, interfaceC2959m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2814N(AbstractC2803L0 abstractC2803L0, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2707n interfaceC2707n) {
        super(abstractC2895c, enumC2912e4, i);
        this.f800m = interfaceC2707n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2814N(AbstractC2903d1 abstractC2903d1, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2710q interfaceC2710q) {
        super(abstractC2895c, enumC2912e4, i);
        this.f800m = interfaceC2710q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2814N(AbstractC2903d1 abstractC2903d1, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2711r interfaceC2711r) {
        super(abstractC2895c, enumC2912e4, i);
        this.f800m = interfaceC2711r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2814N(AbstractC2903d1 abstractC2903d1, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2713t interfaceC2713t) {
        super(abstractC2895c, enumC2912e4, i);
        this.f800m = interfaceC2713t;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2814N(AbstractC2903d1 abstractC2903d1, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, C3103i0 c3103i0) {
        super(abstractC2895c, enumC2912e4, i);
        this.f800m = c3103i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2814N(AbstractC2911e3 abstractC2911e3, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, Function function) {
        super(abstractC2895c, enumC2912e4, i);
        this.f800m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2814N(AbstractC2911e3 abstractC2911e3, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, ToLongFunction toLongFunction) {
        super(abstractC2895c, enumC2912e4, i);
        this.f800m = toLongFunction;
    }
}
