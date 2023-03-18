package p034j$.util.stream;

import p034j$.lang.AbstractC2481a;
import p034j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C2766a3 extends AbstractC2784d3 {

    /* renamed from: l */
    public final /* synthetic */ int f874l;

    /* renamed from: m */
    final /* synthetic */ Function f875m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2766a3(AbstractC2790e3 abstractC2790e3, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, Function function, int i2) {
        super(abstractC2774c, enumC2791e4, i);
        this.f874l = i2;
        if (i2 != 1) {
            this.f875m = function;
            return;
        }
        this.f875m = function;
        super(abstractC2774c, enumC2791e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        switch (this.f874l) {
            case 0:
                return new C2754Y2(this, interfaceC2838m3);
            default:
                return new C2754Y2(this, interfaceC2838m3, (AbstractC2481a) null);
        }
    }
}
