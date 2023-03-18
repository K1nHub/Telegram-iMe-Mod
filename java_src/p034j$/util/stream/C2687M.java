package p034j$.util.stream;

import p034j$.lang.AbstractC2481a;
import p034j$.lang.AbstractC2482b;
import p034j$.lang.AbstractC2483c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.ToIntFunction;
import p034j$.wrappers.C2935F;
import p034j$.wrappers.C2959U;
import p034j$.wrappers.C2966a0;
import p034j$.wrappers.C2990m0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2687M extends AbstractC2676K0 {

    /* renamed from: l */
    public final /* synthetic */ int f784l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f785m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2687M(AbstractC2726T abstractC2726T, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, C2935F c2935f) {
        super(abstractC2774c, enumC2791e4, i);
        this.f785m = c2935f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        switch (this.f784l) {
            case 0:
                return new C2669J(this, interfaceC2838m3);
            case 1:
                return new C2646F0(this, interfaceC2838m3);
            case 2:
                return new C2646F0(this, interfaceC2838m3, (AbstractC2481a) null);
            case 3:
                return new C2646F0(this, interfaceC2838m3, (AbstractC2482b) null);
            case 4:
                return new C2646F0(this, interfaceC2838m3, (AbstractC2483c) null);
            case 5:
                return new C2757Z0(this, interfaceC2838m3);
            case 6:
                return new C2754Y2(this, interfaceC2838m3);
            default:
                return new C2864r(this, interfaceC2838m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2687M(AbstractC2682L0 abstractC2682L0, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2584l interfaceC2584l) {
        super(abstractC2774c, enumC2791e4, i);
        this.f785m = interfaceC2584l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2687M(AbstractC2682L0 abstractC2682L0, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, InterfaceC2585m interfaceC2585m) {
        super(abstractC2774c, enumC2791e4, i);
        this.f785m = interfaceC2585m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2687M(AbstractC2682L0 abstractC2682L0, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, C2959U c2959u) {
        super(abstractC2774c, enumC2791e4, i);
        this.f785m = c2959u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2687M(AbstractC2682L0 abstractC2682L0, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, C2966a0 c2966a0) {
        super(abstractC2774c, enumC2791e4, i);
        this.f785m = c2966a0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2687M(AbstractC2782d1 abstractC2782d1, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, C2990m0 c2990m0) {
        super(abstractC2774c, enumC2791e4, i);
        this.f785m = c2990m0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2687M(AbstractC2790e3 abstractC2790e3, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, Function function) {
        super(abstractC2774c, enumC2791e4, i);
        this.f785m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2687M(AbstractC2790e3 abstractC2790e3, AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, ToIntFunction toIntFunction) {
        super(abstractC2774c, enumC2791e4, i);
        this.f785m = toIntFunction;
    }
}
