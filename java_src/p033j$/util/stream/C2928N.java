package p033j$.util.stream;

import p033j$.lang.AbstractC2667a;
import p033j$.lang.AbstractC2668b;
import p033j$.lang.AbstractC2669c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2819h;
import p033j$.util.function.InterfaceC2824m;
import p033j$.util.function.InterfaceC2827p;
import p033j$.util.function.InterfaceC2828q;
import p033j$.util.function.InterfaceC2830s;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3210g0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2928N extends AbstractC3011c1 {

    /* renamed from: l */
    public final /* synthetic */ int f934l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f935m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2928N(AbstractC2961T abstractC2961T, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, InterfaceC2819h interfaceC2819h) {
        super(abstractC3009c, enumC3026e4, i);
        this.f935m = interfaceC2819h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: G0 */
    public InterfaceC3073m3 mo347G0(int i, InterfaceC3073m3 interfaceC3073m3) {
        switch (this.f934l) {
            case 0:
                return new C2904J(this, interfaceC3073m3);
            case 1:
                return new C2881F0(this, interfaceC3073m3);
            case 2:
                return new C2992Z0(this, interfaceC3073m3);
            case 3:
                return new C2992Z0(this, interfaceC3073m3, (AbstractC2667a) null);
            case 4:
                return new C2992Z0(this, interfaceC3073m3, (AbstractC2668b) null);
            case 5:
                return new C2992Z0(this, interfaceC3073m3, (AbstractC2669c) null);
            case 6:
                return new C3099r(this, interfaceC3073m3);
            default:
                return new C2989Y2(this, interfaceC3073m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2928N(AbstractC2917L0 abstractC2917L0, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, InterfaceC2824m interfaceC2824m) {
        super(abstractC3009c, enumC3026e4, i);
        this.f935m = interfaceC2824m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2928N(AbstractC3017d1 abstractC3017d1, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, InterfaceC2827p interfaceC2827p) {
        super(abstractC3009c, enumC3026e4, i);
        this.f935m = interfaceC2827p;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2928N(AbstractC3017d1 abstractC3017d1, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, InterfaceC2828q interfaceC2828q) {
        super(abstractC3009c, enumC3026e4, i);
        this.f935m = interfaceC2828q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2928N(AbstractC3017d1 abstractC3017d1, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, InterfaceC2830s interfaceC2830s) {
        super(abstractC3009c, enumC3026e4, i);
        this.f935m = interfaceC2830s;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2928N(AbstractC3017d1 abstractC3017d1, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, C3210g0 c3210g0) {
        super(abstractC3009c, enumC3026e4, i);
        this.f935m = c3210g0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2928N(AbstractC3025e3 abstractC3025e3, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, Function function) {
        super(abstractC3009c, enumC3026e4, i);
        this.f935m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2928N(AbstractC3025e3 abstractC3025e3, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, ToLongFunction toLongFunction) {
        super(abstractC3009c, enumC3026e4, i);
        this.f935m = toLongFunction;
    }
}
