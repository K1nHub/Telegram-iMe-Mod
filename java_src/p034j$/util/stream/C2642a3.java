package p034j$.util.stream;

import p034j$.lang.AbstractC2357a;
import p034j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C2642a3 extends AbstractC2660d3 {

    /* renamed from: l */
    public final /* synthetic */ int f869l;

    /* renamed from: m */
    final /* synthetic */ Function f870m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2642a3(AbstractC2666e3 abstractC2666e3, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, Function function, int i2) {
        super(abstractC2650c, enumC2667e4, i);
        this.f869l = i2;
        if (i2 != 1) {
            this.f870m = function;
            return;
        }
        this.f870m = function;
        super(abstractC2650c, enumC2667e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        switch (this.f869l) {
            case 0:
                return new C2630Y2(this, interfaceC2714m3);
            default:
                return new C2630Y2(this, interfaceC2714m3, (AbstractC2357a) null);
        }
    }
}
