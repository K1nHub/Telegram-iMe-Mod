package p034j$.util.stream;

import p034j$.lang.AbstractC2357a;
import p034j$.lang.AbstractC2358b;
import p034j$.lang.AbstractC2359c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2456h;
import p034j$.util.function.InterfaceC2462n;
import p034j$.util.function.InterfaceC2465q;
import p034j$.util.function.InterfaceC2466r;
import p034j$.util.function.InterfaceC2468t;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C2858i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2569N extends AbstractC2652c1 {

    /* renamed from: l */
    public final /* synthetic */ int f790l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f791m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2569N(AbstractC2602T abstractC2602T, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, InterfaceC2456h interfaceC2456h) {
        super(abstractC2650c, enumC2667e4, i);
        this.f791m = interfaceC2456h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        switch (this.f790l) {
            case 0:
                return new C2545J(this, interfaceC2714m3);
            case 1:
                return new C2522F0(this, interfaceC2714m3);
            case 2:
                return new C2633Z0(this, interfaceC2714m3);
            case 3:
                return new C2633Z0(this, interfaceC2714m3, (AbstractC2357a) null);
            case 4:
                return new C2633Z0(this, interfaceC2714m3, (AbstractC2358b) null);
            case 5:
                return new C2633Z0(this, interfaceC2714m3, (AbstractC2359c) null);
            case 6:
                return new C2740r(this, interfaceC2714m3);
            default:
                return new C2630Y2(this, interfaceC2714m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2569N(AbstractC2558L0 abstractC2558L0, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, InterfaceC2462n interfaceC2462n) {
        super(abstractC2650c, enumC2667e4, i);
        this.f791m = interfaceC2462n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2569N(AbstractC2658d1 abstractC2658d1, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, InterfaceC2465q interfaceC2465q) {
        super(abstractC2650c, enumC2667e4, i);
        this.f791m = interfaceC2465q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2569N(AbstractC2658d1 abstractC2658d1, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, InterfaceC2466r interfaceC2466r) {
        super(abstractC2650c, enumC2667e4, i);
        this.f791m = interfaceC2466r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2569N(AbstractC2658d1 abstractC2658d1, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, InterfaceC2468t interfaceC2468t) {
        super(abstractC2650c, enumC2667e4, i);
        this.f791m = interfaceC2468t;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2569N(AbstractC2658d1 abstractC2658d1, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, C2858i0 c2858i0) {
        super(abstractC2650c, enumC2667e4, i);
        this.f791m = c2858i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2569N(AbstractC2666e3 abstractC2666e3, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, Function function) {
        super(abstractC2650c, enumC2667e4, i);
        this.f791m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2569N(AbstractC2666e3 abstractC2666e3, AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, ToLongFunction toLongFunction) {
        super(abstractC2650c, enumC2667e4, i);
        this.f791m = toLongFunction;
    }
}
