package p034j$.util.stream;

import p034j$.lang.AbstractC2602a;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2700g;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2711r;
import p034j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2802L extends AbstractC2905d3 {

    /* renamed from: l */
    public final /* synthetic */ int f783l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f784m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2802L(AbstractC2847T abstractC2847T, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2700g interfaceC2700g) {
        super(abstractC2895c, enumC2912e4, i);
        this.f784m = interfaceC2700g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        switch (this.f783l) {
            case 0:
                return new C2790J(this, interfaceC2959m3);
            case 1:
                return new C2767F0(this, interfaceC2959m3);
            case 2:
                return new C2878Z0(this, interfaceC2959m3);
            case 3:
                return new C2875Y2(this, interfaceC2959m3);
            default:
                return new C2875Y2(this, interfaceC2959m3, (AbstractC2602a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2802L(AbstractC2803L0 abstractC2803L0, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2706m interfaceC2706m) {
        super(abstractC2895c, enumC2912e4, i);
        this.f784m = interfaceC2706m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2802L(AbstractC2903d1 abstractC2903d1, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, InterfaceC2711r interfaceC2711r) {
        super(abstractC2895c, enumC2912e4, i);
        this.f784m = interfaceC2711r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2802L(AbstractC2911e3 abstractC2911e3, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, Consumer consumer) {
        super(abstractC2895c, enumC2912e4, i);
        this.f784m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2802L(AbstractC2911e3 abstractC2911e3, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, Predicate predicate) {
        super(abstractC2895c, enumC2912e4, i);
        this.f784m = predicate;
    }
}
