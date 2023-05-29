package p034j$.util.stream;

import p034j$.lang.AbstractC2597a;
import p034j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C2882a3 extends AbstractC2900d3 {

    /* renamed from: l */
    public final /* synthetic */ int f878l;

    /* renamed from: m */
    final /* synthetic */ Function f879m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2882a3(AbstractC2906e3 abstractC2906e3, AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, Function function, int i2) {
        super(abstractC2890c, enumC2907e4, i);
        this.f878l = i2;
        if (i2 != 1) {
            this.f879m = function;
            return;
        }
        this.f879m = function;
        super(abstractC2890c, enumC2907e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: H0 */
    public InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3) {
        switch (this.f878l) {
            case 0:
                return new C2870Y2(this, interfaceC2954m3);
            default:
                return new C2870Y2(this, interfaceC2954m3, (AbstractC2597a) null);
        }
    }
}
