package p033j$.util.stream;

import p033j$.lang.AbstractC2665a;
import p033j$.lang.AbstractC2666b;
import p033j$.lang.AbstractC2667c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2817h;
import p033j$.util.function.InterfaceC2822m;
import p033j$.util.function.InterfaceC2825p;
import p033j$.util.function.InterfaceC2826q;
import p033j$.util.function.InterfaceC2828s;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3208g0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2926N extends AbstractC3009c1 {

    /* renamed from: l */
    public final /* synthetic */ int f934l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f935m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2926N(AbstractC2959T abstractC2959T, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, InterfaceC2817h interfaceC2817h) {
        super(abstractC3007c, enumC3024e4, i);
        this.f935m = interfaceC2817h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: G0 */
    public InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3) {
        switch (this.f934l) {
            case 0:
                return new C2902J(this, interfaceC3071m3);
            case 1:
                return new C2879F0(this, interfaceC3071m3);
            case 2:
                return new C2990Z0(this, interfaceC3071m3);
            case 3:
                return new C2990Z0(this, interfaceC3071m3, (AbstractC2665a) null);
            case 4:
                return new C2990Z0(this, interfaceC3071m3, (AbstractC2666b) null);
            case 5:
                return new C2990Z0(this, interfaceC3071m3, (AbstractC2667c) null);
            case 6:
                return new C3097r(this, interfaceC3071m3);
            default:
                return new C2987Y2(this, interfaceC3071m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2926N(AbstractC2915L0 abstractC2915L0, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, InterfaceC2822m interfaceC2822m) {
        super(abstractC3007c, enumC3024e4, i);
        this.f935m = interfaceC2822m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2926N(AbstractC3015d1 abstractC3015d1, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, InterfaceC2825p interfaceC2825p) {
        super(abstractC3007c, enumC3024e4, i);
        this.f935m = interfaceC2825p;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2926N(AbstractC3015d1 abstractC3015d1, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, InterfaceC2826q interfaceC2826q) {
        super(abstractC3007c, enumC3024e4, i);
        this.f935m = interfaceC2826q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2926N(AbstractC3015d1 abstractC3015d1, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, InterfaceC2828s interfaceC2828s) {
        super(abstractC3007c, enumC3024e4, i);
        this.f935m = interfaceC2828s;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2926N(AbstractC3015d1 abstractC3015d1, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, C3208g0 c3208g0) {
        super(abstractC3007c, enumC3024e4, i);
        this.f935m = c3208g0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2926N(AbstractC3023e3 abstractC3023e3, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, Function function) {
        super(abstractC3007c, enumC3024e4, i);
        this.f935m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2926N(AbstractC3023e3 abstractC3023e3, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, ToLongFunction toLongFunction) {
        super(abstractC3007c, enumC3024e4, i);
        this.f935m = toLongFunction;
    }
}
