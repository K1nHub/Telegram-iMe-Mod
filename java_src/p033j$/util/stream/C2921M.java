package p033j$.util.stream;

import p033j$.lang.AbstractC2666a;
import p033j$.lang.AbstractC2667b;
import p033j$.lang.AbstractC2668c;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3167E;
import p033j$.wrappers.C3188S;
import p033j$.wrappers.C3194Y;
import p033j$.wrappers.C3217k0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2921M extends AbstractC2910K0 {

    /* renamed from: l */
    public final /* synthetic */ int f923l = 3;

    /* renamed from: m */
    final /* synthetic */ Object f924m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2921M(AbstractC2960T abstractC2960T, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, C3167E c3167e) {
        super(abstractC3008c, enumC3025e4, i);
        this.f924m = c3167e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        switch (this.f923l) {
            case 0:
                return new C2903J(this, interfaceC3072m3);
            case 1:
                return new C2880F0(this, interfaceC3072m3);
            case 2:
                return new C2880F0(this, interfaceC3072m3, (AbstractC2666a) null);
            case 3:
                return new C2880F0(this, interfaceC3072m3, (AbstractC2667b) null);
            case 4:
                return new C2880F0(this, interfaceC3072m3, (AbstractC2668c) null);
            case 5:
                return new C2991Z0(this, interfaceC3072m3);
            case 6:
                return new C2988Y2(this, interfaceC3072m3);
            default:
                return new C3098r(this, interfaceC3072m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2921M(AbstractC2916L0 abstractC2916L0, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, InterfaceC2822l interfaceC2822l) {
        super(abstractC3008c, enumC3025e4, i);
        this.f924m = interfaceC2822l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2921M(AbstractC2916L0 abstractC2916L0, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, IntFunction intFunction) {
        super(abstractC3008c, enumC3025e4, i);
        this.f924m = intFunction;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2921M(AbstractC2916L0 abstractC2916L0, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, C3188S c3188s) {
        super(abstractC3008c, enumC3025e4, i);
        this.f924m = c3188s;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2921M(AbstractC2916L0 abstractC2916L0, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, C3194Y c3194y) {
        super(abstractC3008c, enumC3025e4, i);
        this.f924m = c3194y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2921M(AbstractC3016d1 abstractC3016d1, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, C3217k0 c3217k0) {
        super(abstractC3008c, enumC3025e4, i);
        this.f924m = c3217k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2921M(AbstractC3024e3 abstractC3024e3, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, Function function) {
        super(abstractC3008c, enumC3025e4, i);
        this.f924m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2921M(AbstractC3024e3 abstractC3024e3, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, ToIntFunction toIntFunction) {
        super(abstractC3008c, enumC3025e4, i);
        this.f924m = toIntFunction;
    }
}
