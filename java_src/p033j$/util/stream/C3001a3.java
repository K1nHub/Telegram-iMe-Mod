package p033j$.util.stream;

import p033j$.lang.AbstractC2667a;
import p033j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C3001a3 extends AbstractC3019d3 {

    /* renamed from: l */
    public final /* synthetic */ int f1013l;

    /* renamed from: m */
    final /* synthetic */ Function f1014m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3001a3(AbstractC3025e3 abstractC3025e3, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, Function function, int i2) {
        super(abstractC3009c, enumC3026e4, i);
        this.f1013l = i2;
        if (i2 != 1) {
            this.f1014m = function;
            return;
        }
        this.f1014m = function;
        super(abstractC3009c, enumC3026e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: G0 */
    public InterfaceC3073m3 mo347G0(int i, InterfaceC3073m3 interfaceC3073m3) {
        switch (this.f1013l) {
            case 0:
                return new C2989Y2(this, interfaceC3073m3);
            default:
                return new C2989Y2(this, interfaceC3073m3, (AbstractC2667a) null);
        }
    }
}
