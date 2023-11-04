package p033j$.util.stream;

import p033j$.lang.AbstractC2670a;
import p033j$.lang.AbstractC2671b;
import p033j$.lang.AbstractC2672c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2822h;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2830p;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2833s;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3213g0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2931N extends AbstractC3014c1 {

    /* renamed from: l */
    public final /* synthetic */ int f934l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f935m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2931N(AbstractC2964T abstractC2964T, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, InterfaceC2822h interfaceC2822h) {
        super(abstractC3012c, enumC3029e4, i);
        this.f935m = interfaceC2822h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: G0 */
    public InterfaceC3076m3 mo347G0(int i, InterfaceC3076m3 interfaceC3076m3) {
        switch (this.f934l) {
            case 0:
                return new C2907J(this, interfaceC3076m3);
            case 1:
                return new C2884F0(this, interfaceC3076m3);
            case 2:
                return new C2995Z0(this, interfaceC3076m3);
            case 3:
                return new C2995Z0(this, interfaceC3076m3, (AbstractC2670a) null);
            case 4:
                return new C2995Z0(this, interfaceC3076m3, (AbstractC2671b) null);
            case 5:
                return new C2995Z0(this, interfaceC3076m3, (AbstractC2672c) null);
            case 6:
                return new C3102r(this, interfaceC3076m3);
            default:
                return new C2992Y2(this, interfaceC3076m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2931N(AbstractC2920L0 abstractC2920L0, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, InterfaceC2827m interfaceC2827m) {
        super(abstractC3012c, enumC3029e4, i);
        this.f935m = interfaceC2827m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2931N(AbstractC3020d1 abstractC3020d1, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, InterfaceC2830p interfaceC2830p) {
        super(abstractC3012c, enumC3029e4, i);
        this.f935m = interfaceC2830p;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2931N(AbstractC3020d1 abstractC3020d1, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, InterfaceC2831q interfaceC2831q) {
        super(abstractC3012c, enumC3029e4, i);
        this.f935m = interfaceC2831q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2931N(AbstractC3020d1 abstractC3020d1, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, InterfaceC2833s interfaceC2833s) {
        super(abstractC3012c, enumC3029e4, i);
        this.f935m = interfaceC2833s;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2931N(AbstractC3020d1 abstractC3020d1, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, C3213g0 c3213g0) {
        super(abstractC3012c, enumC3029e4, i);
        this.f935m = c3213g0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2931N(AbstractC3028e3 abstractC3028e3, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, Function function) {
        super(abstractC3012c, enumC3029e4, i);
        this.f935m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2931N(AbstractC3028e3 abstractC3028e3, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, ToLongFunction toLongFunction) {
        super(abstractC3012c, enumC3029e4, i);
        this.f935m = toLongFunction;
    }
}
