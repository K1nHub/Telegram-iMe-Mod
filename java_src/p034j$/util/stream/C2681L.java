package p034j$.util.stream;

import p034j$.lang.AbstractC2481a;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2579g;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2590r;
import p034j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2681L extends AbstractC2784d3 {

    /* renamed from: l */
    public final /* synthetic */ int f779l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f780m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2681L(AbstractC2726T abstractC2726T, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2579g interfaceC2579g) {
        super(abstractC2774c, enumC2791e4, i);
        this.f780m = interfaceC2579g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        switch (this.f779l) {
            case 0:
                return new C2669J(this, interfaceC2838m3);
            case 1:
                return new C2646F0(this, interfaceC2838m3);
            case 2:
                return new C2757Z0(this, interfaceC2838m3);
            case 3:
                return new C2754Y2(this, interfaceC2838m3);
            default:
                return new C2754Y2(this, interfaceC2838m3, (AbstractC2481a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2681L(AbstractC2682L0 abstractC2682L0, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2585m interfaceC2585m) {
        super(abstractC2774c, enumC2791e4, i);
        this.f780m = interfaceC2585m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2681L(AbstractC2782d1 abstractC2782d1, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2590r interfaceC2590r) {
        super(abstractC2774c, enumC2791e4, i);
        this.f780m = interfaceC2590r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2681L(AbstractC2790e3 abstractC2790e3, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, Consumer consumer) {
        super(abstractC2774c, enumC2791e4, i);
        this.f780m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2681L(AbstractC2790e3 abstractC2790e3, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, Predicate predicate) {
        super(abstractC2774c, enumC2791e4, i);
        this.f780m = predicate;
    }
}
