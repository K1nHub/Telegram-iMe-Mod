package p033j$.util.stream;

import p033j$.lang.AbstractC2670a;
import p033j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C3004a3 extends AbstractC3022d3 {

    /* renamed from: l */
    public final /* synthetic */ int f1013l;

    /* renamed from: m */
    final /* synthetic */ Function f1014m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3004a3(AbstractC3028e3 abstractC3028e3, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, Function function, int i2) {
        super(abstractC3012c, enumC3029e4, i);
        this.f1013l = i2;
        if (i2 != 1) {
            this.f1014m = function;
            return;
        }
        this.f1014m = function;
        super(abstractC3012c, enumC3029e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: G0 */
    public InterfaceC3076m3 mo347G0(int i, InterfaceC3076m3 interfaceC3076m3) {
        switch (this.f1013l) {
            case 0:
                return new C2992Y2(this, interfaceC3076m3);
            default:
                return new C2992Y2(this, interfaceC3076m3, (AbstractC2670a) null);
        }
    }
}
