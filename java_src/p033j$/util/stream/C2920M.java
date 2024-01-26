package p033j$.util.stream;

import p033j$.lang.AbstractC2665a;
import p033j$.lang.AbstractC2666b;
import p033j$.lang.AbstractC2667c;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3166E;
import p033j$.wrappers.C3187S;
import p033j$.wrappers.C3193Y;
import p033j$.wrappers.C3216k0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2920M extends AbstractC2909K0 {

    /* renamed from: l */
    public final /* synthetic */ int f923l = 3;

    /* renamed from: m */
    final /* synthetic */ Object f924m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2920M(AbstractC2959T abstractC2959T, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, C3166E c3166e) {
        super(abstractC3007c, enumC3024e4, i);
        this.f924m = c3166e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: G0 */
    public InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3) {
        switch (this.f923l) {
            case 0:
                return new C2902J(this, interfaceC3071m3);
            case 1:
                return new C2879F0(this, interfaceC3071m3);
            case 2:
                return new C2879F0(this, interfaceC3071m3, (AbstractC2665a) null);
            case 3:
                return new C2879F0(this, interfaceC3071m3, (AbstractC2666b) null);
            case 4:
                return new C2879F0(this, interfaceC3071m3, (AbstractC2667c) null);
            case 5:
                return new C2990Z0(this, interfaceC3071m3);
            case 6:
                return new C2987Y2(this, interfaceC3071m3);
            default:
                return new C3097r(this, interfaceC3071m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2920M(AbstractC2915L0 abstractC2915L0, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, InterfaceC2821l interfaceC2821l) {
        super(abstractC3007c, enumC3024e4, i);
        this.f924m = interfaceC2821l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2920M(AbstractC2915L0 abstractC2915L0, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, IntFunction intFunction) {
        super(abstractC3007c, enumC3024e4, i);
        this.f924m = intFunction;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2920M(AbstractC2915L0 abstractC2915L0, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, C3187S c3187s) {
        super(abstractC3007c, enumC3024e4, i);
        this.f924m = c3187s;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2920M(AbstractC2915L0 abstractC2915L0, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, C3193Y c3193y) {
        super(abstractC3007c, enumC3024e4, i);
        this.f924m = c3193y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2920M(AbstractC3015d1 abstractC3015d1, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, C3216k0 c3216k0) {
        super(abstractC3007c, enumC3024e4, i);
        this.f924m = c3216k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2920M(AbstractC3023e3 abstractC3023e3, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, Function function) {
        super(abstractC3007c, enumC3024e4, i);
        this.f924m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2920M(AbstractC3023e3 abstractC3023e3, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, ToIntFunction toIntFunction) {
        super(abstractC3007c, enumC3024e4, i);
        this.f924m = toIntFunction;
    }
}
