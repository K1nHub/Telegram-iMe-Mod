package p033j$.util.stream;

import p033j$.lang.AbstractC2723a;
import p033j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C3008a3 extends AbstractC3026d3 {

    /* renamed from: l */
    public final /* synthetic */ int f960l;

    /* renamed from: m */
    final /* synthetic */ Function f961m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3008a3(AbstractC3032e3 abstractC3032e3, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, Function function, int i2) {
        super(abstractC3016c, enumC3033e4, i);
        this.f960l = i2;
        if (i2 != 1) {
            this.f961m = function;
            return;
        }
        this.f961m = function;
        super(abstractC3016c, enumC3033e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        switch (this.f960l) {
            case 0:
                return new C2996Y2(this, interfaceC3080m3);
            default:
                return new C2996Y2(this, interfaceC3080m3, (AbstractC2723a) null);
        }
    }
}
