package p033j$.util.stream;

import p033j$.lang.AbstractC2665a;
import p033j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C2999a3 extends AbstractC3017d3 {

    /* renamed from: l */
    public final /* synthetic */ int f1013l;

    /* renamed from: m */
    final /* synthetic */ Function f1014m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2999a3(AbstractC3023e3 abstractC3023e3, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, Function function, int i2) {
        super(abstractC3007c, enumC3024e4, i);
        this.f1013l = i2;
        if (i2 != 1) {
            this.f1014m = function;
            return;
        }
        this.f1014m = function;
        super(abstractC3007c, enumC3024e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: G0 */
    public InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3) {
        switch (this.f1013l) {
            case 0:
                return new C2987Y2(this, interfaceC3071m3);
            default:
                return new C2987Y2(this, interfaceC3071m3, (AbstractC2665a) null);
        }
    }
}
