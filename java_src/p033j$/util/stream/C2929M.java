package p033j$.util.stream;

import p033j$.lang.AbstractC2723a;
import p033j$.lang.AbstractC2724b;
import p033j$.lang.AbstractC2725c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3177F;
import p033j$.wrappers.C3201U;
import p033j$.wrappers.C3208a0;
import p033j$.wrappers.C3232m0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C2929M extends AbstractC2918K0 {

    /* renamed from: l */
    public final /* synthetic */ int f870l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f871m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929M(AbstractC2968T abstractC2968T, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, C3177F c3177f) {
        super(abstractC3016c, enumC3033e4, i);
        this.f871m = c3177f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        switch (this.f870l) {
            case 0:
                return new C2911J(this, interfaceC3080m3);
            case 1:
                return new C2888F0(this, interfaceC3080m3);
            case 2:
                return new C2888F0(this, interfaceC3080m3, (AbstractC2723a) null);
            case 3:
                return new C2888F0(this, interfaceC3080m3, (AbstractC2724b) null);
            case 4:
                return new C2888F0(this, interfaceC3080m3, (AbstractC2725c) null);
            case 5:
                return new C2999Z0(this, interfaceC3080m3);
            case 6:
                return new C2996Y2(this, interfaceC3080m3);
            default:
                return new C3106r(this, interfaceC3080m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929M(AbstractC2924L0 abstractC2924L0, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2826l interfaceC2826l) {
        super(abstractC3016c, enumC3033e4, i);
        this.f871m = interfaceC2826l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929M(AbstractC2924L0 abstractC2924L0, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, InterfaceC2827m interfaceC2827m) {
        super(abstractC3016c, enumC3033e4, i);
        this.f871m = interfaceC2827m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929M(AbstractC2924L0 abstractC2924L0, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, C3201U c3201u) {
        super(abstractC3016c, enumC3033e4, i);
        this.f871m = c3201u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929M(AbstractC2924L0 abstractC2924L0, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, C3208a0 c3208a0) {
        super(abstractC3016c, enumC3033e4, i);
        this.f871m = c3208a0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929M(AbstractC3024d1 abstractC3024d1, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, C3232m0 c3232m0) {
        super(abstractC3016c, enumC3033e4, i);
        this.f871m = c3232m0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929M(AbstractC3032e3 abstractC3032e3, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, Function function) {
        super(abstractC3016c, enumC3033e4, i);
        this.f871m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929M(AbstractC3032e3 abstractC3032e3, AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, ToIntFunction toIntFunction) {
        super(abstractC3016c, enumC3033e4, i);
        this.f871m = toIntFunction;
    }
}
