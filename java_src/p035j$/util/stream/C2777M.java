package p035j$.util.stream;

import p035j$.lang.AbstractC2571a;
import p035j$.lang.AbstractC2572b;
import p035j$.lang.AbstractC2573c;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.ToIntFunction;
import p035j$.wrappers.C3025F;
import p035j$.wrappers.C3049U;
import p035j$.wrappers.C3056a0;
import p035j$.wrappers.C3080m0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2777M extends AbstractC2766K0 {

    /* renamed from: l */
    public final /* synthetic */ int f790l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f791m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2777M(AbstractC2816T abstractC2816T, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, C3025F c3025f) {
        super(abstractC2864c, enumC2881e4, i);
        this.f791m = c3025f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        switch (this.f790l) {
            case 0:
                return new C2759J(this, interfaceC2928m3);
            case 1:
                return new C2736F0(this, interfaceC2928m3);
            case 2:
                return new C2736F0(this, interfaceC2928m3, (AbstractC2571a) null);
            case 3:
                return new C2736F0(this, interfaceC2928m3, (AbstractC2572b) null);
            case 4:
                return new C2736F0(this, interfaceC2928m3, (AbstractC2573c) null);
            case 5:
                return new C2847Z0(this, interfaceC2928m3);
            case 6:
                return new C2844Y2(this, interfaceC2928m3);
            default:
                return new C2954r(this, interfaceC2928m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2777M(AbstractC2772L0 abstractC2772L0, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2674l interfaceC2674l) {
        super(abstractC2864c, enumC2881e4, i);
        this.f791m = interfaceC2674l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2777M(AbstractC2772L0 abstractC2772L0, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2675m interfaceC2675m) {
        super(abstractC2864c, enumC2881e4, i);
        this.f791m = interfaceC2675m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2777M(AbstractC2772L0 abstractC2772L0, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, C3049U c3049u) {
        super(abstractC2864c, enumC2881e4, i);
        this.f791m = c3049u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2777M(AbstractC2772L0 abstractC2772L0, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, C3056a0 c3056a0) {
        super(abstractC2864c, enumC2881e4, i);
        this.f791m = c3056a0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2777M(AbstractC2872d1 abstractC2872d1, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, C3080m0 c3080m0) {
        super(abstractC2864c, enumC2881e4, i);
        this.f791m = c3080m0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2777M(AbstractC2880e3 abstractC2880e3, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, Function function) {
        super(abstractC2864c, enumC2881e4, i);
        this.f791m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2777M(AbstractC2880e3 abstractC2880e3, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, ToIntFunction toIntFunction) {
        super(abstractC2864c, enumC2881e4, i);
        this.f791m = toIntFunction;
    }
}
