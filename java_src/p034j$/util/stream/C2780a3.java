package p034j$.util.stream;

import p034j$.lang.AbstractC2495a;
import p034j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C2780a3 extends AbstractC2798d3 {

    /* renamed from: l */
    public final /* synthetic */ int f875l;

    /* renamed from: m */
    final /* synthetic */ Function f876m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2780a3(AbstractC2804e3 abstractC2804e3, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, Function function, int i2) {
        super(abstractC2788c, enumC2805e4, i);
        this.f875l = i2;
        if (i2 != 1) {
            this.f876m = function;
            return;
        }
        this.f876m = function;
        super(abstractC2788c, enumC2805e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        switch (this.f875l) {
            case 0:
                return new C2768Y2(this, interfaceC2852m3);
            default:
                return new C2768Y2(this, interfaceC2852m3, (AbstractC2495a) null);
        }
    }
}
