package p035j$.util.stream;

import p035j$.lang.AbstractC2571a;
import p035j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C2856a3 extends AbstractC2874d3 {

    /* renamed from: l */
    public final /* synthetic */ int f880l;

    /* renamed from: m */
    final /* synthetic */ Function f881m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2856a3(AbstractC2880e3 abstractC2880e3, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, Function function, int i2) {
        super(abstractC2864c, enumC2881e4, i);
        this.f880l = i2;
        if (i2 != 1) {
            this.f881m = function;
            return;
        }
        this.f881m = function;
        super(abstractC2864c, enumC2881e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        switch (this.f880l) {
            case 0:
                return new C2844Y2(this, interfaceC2928m3);
            default:
                return new C2844Y2(this, interfaceC2928m3, (AbstractC2571a) null);
        }
    }
}
