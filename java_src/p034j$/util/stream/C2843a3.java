package p034j$.util.stream;

import p034j$.lang.AbstractC2558a;
import p034j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C2843a3 extends AbstractC2861d3 {

    /* renamed from: l */
    public final /* synthetic */ int f875l;

    /* renamed from: m */
    final /* synthetic */ Function f876m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2843a3(AbstractC2867e3 abstractC2867e3, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, Function function, int i2) {
        super(abstractC2851c, enumC2868e4, i);
        this.f875l = i2;
        if (i2 != 1) {
            this.f876m = function;
            return;
        }
        this.f876m = function;
        super(abstractC2851c, enumC2868e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: H0 */
    public InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3) {
        switch (this.f875l) {
            case 0:
                return new C2831Y2(this, interfaceC2915m3);
            default:
                return new C2831Y2(this, interfaceC2915m3, (AbstractC2558a) null);
        }
    }
}
