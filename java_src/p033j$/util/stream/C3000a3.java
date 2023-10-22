package p033j$.util.stream;

import p033j$.lang.AbstractC2666a;
import p033j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C3000a3 extends AbstractC3018d3 {

    /* renamed from: l */
    public final /* synthetic */ int f1013l;

    /* renamed from: m */
    final /* synthetic */ Function f1014m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3000a3(AbstractC3024e3 abstractC3024e3, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, Function function, int i2) {
        super(abstractC3008c, enumC3025e4, i);
        this.f1013l = i2;
        if (i2 != 1) {
            this.f1014m = function;
            return;
        }
        this.f1014m = function;
        super(abstractC3008c, enumC3025e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        switch (this.f1013l) {
            case 0:
                return new C2988Y2(this, interfaceC3072m3);
            default:
                return new C2988Y2(this, interfaceC3072m3, (AbstractC2666a) null);
        }
    }
}
