package p033j$.util.stream;

import p033j$.lang.AbstractC2862a;
import p033j$.util.function.Function;
/* renamed from: j$.util.stream.a3 */
/* loaded from: classes2.dex */
class C3147a3 extends AbstractC3165d3 {

    /* renamed from: l */
    public final /* synthetic */ int f973l;

    /* renamed from: m */
    final /* synthetic */ Function f974m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3147a3(AbstractC3171e3 abstractC3171e3, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, Function function, int i2) {
        super(abstractC3155c, enumC3172e4, i);
        this.f973l = i2;
        if (i2 != 1) {
            this.f974m = function;
            return;
        }
        this.f974m = function;
        super(abstractC3155c, enumC3172e4, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        switch (this.f973l) {
            case 0:
                return new C3135Y2(this, interfaceC3219m3);
            default:
                return new C3135Y2(this, interfaceC3219m3, (AbstractC2862a) null);
        }
    }
}
