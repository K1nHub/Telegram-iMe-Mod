package p033j$.util.stream;

import p033j$.lang.AbstractC2778a;
import p033j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C3063a3 extends AbstractC3081d3 {

    /* renamed from: l */
    public final /* synthetic */ int f964l;

    /* renamed from: m */
    final /* synthetic */ Function f965m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3063a3(AbstractC3087e3 abstractC3087e3, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, Function function, int i2) {
        super(abstractC3071c, enumC3088e4, i);
        this.f964l = i2;
        if (i2 != 1) {
            this.f965m = function;
            return;
        }
        this.f965m = function;
        super(abstractC3071c, enumC3088e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        switch (this.f964l) {
            case 0:
                return new C3051Y2(this, interfaceC3135m3);
            default:
                return new C3051Y2(this, interfaceC3135m3, (AbstractC2778a) null);
        }
    }
}
