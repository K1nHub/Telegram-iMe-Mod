package p033j$.util.stream;

import p033j$.lang.AbstractC2667a;
import p033j$.lang.AbstractC2668b;
import p033j$.lang.AbstractC2669c;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3168E;
import p033j$.wrappers.C3189S;
import p033j$.wrappers.C3195Y;
import p033j$.wrappers.C3218k0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2922M extends AbstractC2911K0 {

    /* renamed from: l */
    public final /* synthetic */ int f923l = 3;

    /* renamed from: m */
    final /* synthetic */ Object f924m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2922M(AbstractC2961T abstractC2961T, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, C3168E c3168e) {
        super(abstractC3009c, enumC3026e4, i);
        this.f924m = c3168e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: G0 */
    public InterfaceC3073m3 mo347G0(int i, InterfaceC3073m3 interfaceC3073m3) {
        switch (this.f923l) {
            case 0:
                return new C2904J(this, interfaceC3073m3);
            case 1:
                return new C2881F0(this, interfaceC3073m3);
            case 2:
                return new C2881F0(this, interfaceC3073m3, (AbstractC2667a) null);
            case 3:
                return new C2881F0(this, interfaceC3073m3, (AbstractC2668b) null);
            case 4:
                return new C2881F0(this, interfaceC3073m3, (AbstractC2669c) null);
            case 5:
                return new C2992Z0(this, interfaceC3073m3);
            case 6:
                return new C2989Y2(this, interfaceC3073m3);
            default:
                return new C3099r(this, interfaceC3073m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2922M(AbstractC2917L0 abstractC2917L0, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, InterfaceC2823l interfaceC2823l) {
        super(abstractC3009c, enumC3026e4, i);
        this.f924m = interfaceC2823l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2922M(AbstractC2917L0 abstractC2917L0, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, IntFunction intFunction) {
        super(abstractC3009c, enumC3026e4, i);
        this.f924m = intFunction;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2922M(AbstractC2917L0 abstractC2917L0, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, C3189S c3189s) {
        super(abstractC3009c, enumC3026e4, i);
        this.f924m = c3189s;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2922M(AbstractC2917L0 abstractC2917L0, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, C3195Y c3195y) {
        super(abstractC3009c, enumC3026e4, i);
        this.f924m = c3195y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2922M(AbstractC3017d1 abstractC3017d1, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, C3218k0 c3218k0) {
        super(abstractC3009c, enumC3026e4, i);
        this.f924m = c3218k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2922M(AbstractC3025e3 abstractC3025e3, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, Function function) {
        super(abstractC3009c, enumC3026e4, i);
        this.f924m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2922M(AbstractC3025e3 abstractC3025e3, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, ToIntFunction toIntFunction) {
        super(abstractC3009c, enumC3026e4, i);
        this.f924m = toIntFunction;
    }
}
