package p034j$.util.stream;

import p034j$.lang.AbstractC2481a;
import p034j$.lang.AbstractC2482b;
import p034j$.lang.AbstractC2483c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2580h;
import p034j$.util.function.InterfaceC2586n;
import p034j$.util.function.InterfaceC2589q;
import p034j$.util.function.InterfaceC2590r;
import p034j$.util.function.InterfaceC2592t;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C2982i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2693N extends AbstractC2776c1 {

    /* renamed from: l */
    public final /* synthetic */ int f795l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f796m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2693N(AbstractC2726T abstractC2726T, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2580h interfaceC2580h) {
        super(abstractC2774c, enumC2791e4, i);
        this.f796m = interfaceC2580h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        switch (this.f795l) {
            case 0:
                return new C2669J(this, interfaceC2838m3);
            case 1:
                return new C2646F0(this, interfaceC2838m3);
            case 2:
                return new C2757Z0(this, interfaceC2838m3);
            case 3:
                return new C2757Z0(this, interfaceC2838m3, (AbstractC2481a) null);
            case 4:
                return new C2757Z0(this, interfaceC2838m3, (AbstractC2482b) null);
            case 5:
                return new C2757Z0(this, interfaceC2838m3, (AbstractC2483c) null);
            case 6:
                return new C2864r(this, interfaceC2838m3);
            default:
                return new C2754Y2(this, interfaceC2838m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2693N(AbstractC2682L0 abstractC2682L0, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2586n interfaceC2586n) {
        super(abstractC2774c, enumC2791e4, i);
        this.f796m = interfaceC2586n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2693N(AbstractC2782d1 abstractC2782d1, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2589q interfaceC2589q) {
        super(abstractC2774c, enumC2791e4, i);
        this.f796m = interfaceC2589q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2693N(AbstractC2782d1 abstractC2782d1, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2590r interfaceC2590r) {
        super(abstractC2774c, enumC2791e4, i);
        this.f796m = interfaceC2590r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2693N(AbstractC2782d1 abstractC2782d1, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2592t interfaceC2592t) {
        super(abstractC2774c, enumC2791e4, i);
        this.f796m = interfaceC2592t;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2693N(AbstractC2782d1 abstractC2782d1, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, C2982i0 c2982i0) {
        super(abstractC2774c, enumC2791e4, i);
        this.f796m = c2982i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2693N(AbstractC2790e3 abstractC2790e3, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, Function function) {
        super(abstractC2774c, enumC2791e4, i);
        this.f796m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2693N(AbstractC2790e3 abstractC2790e3, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, ToLongFunction toLongFunction) {
        super(abstractC2774c, enumC2791e4, i);
        this.f796m = toLongFunction;
    }
}
