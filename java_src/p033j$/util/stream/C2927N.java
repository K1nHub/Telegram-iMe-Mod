package p033j$.util.stream;

import p033j$.lang.AbstractC2666a;
import p033j$.lang.AbstractC2667b;
import p033j$.lang.AbstractC2668c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2818h;
import p033j$.util.function.InterfaceC2823m;
import p033j$.util.function.InterfaceC2826p;
import p033j$.util.function.InterfaceC2827q;
import p033j$.util.function.InterfaceC2829s;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3209g0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2927N extends AbstractC3010c1 {

    /* renamed from: l */
    public final /* synthetic */ int f934l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f935m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2927N(AbstractC2960T abstractC2960T, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, InterfaceC2818h interfaceC2818h) {
        super(abstractC3008c, enumC3025e4, i);
        this.f935m = interfaceC2818h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        switch (this.f934l) {
            case 0:
                return new C2903J(this, interfaceC3072m3);
            case 1:
                return new C2880F0(this, interfaceC3072m3);
            case 2:
                return new C2991Z0(this, interfaceC3072m3);
            case 3:
                return new C2991Z0(this, interfaceC3072m3, (AbstractC2666a) null);
            case 4:
                return new C2991Z0(this, interfaceC3072m3, (AbstractC2667b) null);
            case 5:
                return new C2991Z0(this, interfaceC3072m3, (AbstractC2668c) null);
            case 6:
                return new C3098r(this, interfaceC3072m3);
            default:
                return new C2988Y2(this, interfaceC3072m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2927N(AbstractC2916L0 abstractC2916L0, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, InterfaceC2823m interfaceC2823m) {
        super(abstractC3008c, enumC3025e4, i);
        this.f935m = interfaceC2823m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2927N(AbstractC3016d1 abstractC3016d1, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, InterfaceC2826p interfaceC2826p) {
        super(abstractC3008c, enumC3025e4, i);
        this.f935m = interfaceC2826p;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2927N(AbstractC3016d1 abstractC3016d1, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, InterfaceC2827q interfaceC2827q) {
        super(abstractC3008c, enumC3025e4, i);
        this.f935m = interfaceC2827q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2927N(AbstractC3016d1 abstractC3016d1, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, InterfaceC2829s interfaceC2829s) {
        super(abstractC3008c, enumC3025e4, i);
        this.f935m = interfaceC2829s;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2927N(AbstractC3016d1 abstractC3016d1, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, C3209g0 c3209g0) {
        super(abstractC3008c, enumC3025e4, i);
        this.f935m = c3209g0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2927N(AbstractC3024e3 abstractC3024e3, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, Function function) {
        super(abstractC3008c, enumC3025e4, i);
        this.f935m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2927N(AbstractC3024e3 abstractC3024e3, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, ToLongFunction toLongFunction) {
        super(abstractC3008c, enumC3025e4, i);
        this.f935m = toLongFunction;
    }
}
