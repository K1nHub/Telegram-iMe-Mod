package p034j$.util.stream;

import p034j$.lang.AbstractC2602a;
import p034j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C2887a3 extends AbstractC2905d3 {

    /* renamed from: l */
    public final /* synthetic */ int f878l;

    /* renamed from: m */
    final /* synthetic */ Function f879m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2887a3(AbstractC2911e3 abstractC2911e3, AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, Function function, int i2) {
        super(abstractC2895c, enumC2912e4, i);
        this.f878l = i2;
        if (i2 != 1) {
            this.f879m = function;
            return;
        }
        this.f879m = function;
        super(abstractC2895c, enumC2912e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        switch (this.f878l) {
            case 0:
                return new C2875Y2(this, interfaceC2959m3);
            default:
                return new C2875Y2(this, interfaceC2959m3, (AbstractC2602a) null);
        }
    }
}
