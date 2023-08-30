package p033j$.util.stream;

import p033j$.lang.AbstractC2862a;
import p033j$.lang.AbstractC2863b;
import p033j$.lang.AbstractC2864c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2960g;
import p033j$.util.function.ToDoubleFunction;
import p033j$.wrappers.C3312D;
import p033j$.wrappers.C3324J;
import p033j$.wrappers.C3342W;
import p033j$.wrappers.C3367k0;
/* renamed from: j$.util.stream.K */
/* loaded from: classes2.dex */
class C3056K extends AbstractC3102S {

    /* renamed from: l */
    public final /* synthetic */ int f870l = 4;

    /* renamed from: m */
    final /* synthetic */ Object f871m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3056K(AbstractC3107T abstractC3107T, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2959f interfaceC2959f) {
        super(abstractC3155c, enumC3172e4, i);
        this.f871m = interfaceC2959f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        switch (this.f870l) {
            case 0:
                return new C3050J(this, interfaceC3219m3);
            case 1:
                return new C3050J(this, interfaceC3219m3, (AbstractC2862a) null);
            case 2:
                return new C3050J(this, interfaceC3219m3, (AbstractC2863b) null);
            case 3:
                return new C3050J(this, interfaceC3219m3, (AbstractC2864c) null);
            case 4:
                return new C3027F0(this, interfaceC3219m3);
            case 5:
                return new C3138Z0(this, interfaceC3219m3);
            case 6:
                return new C3135Y2(this, interfaceC3219m3);
            default:
                return new C3245r(this, interfaceC3219m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3056K(AbstractC3107T abstractC3107T, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2960g interfaceC2960g) {
        super(abstractC3155c, enumC3172e4, i);
        this.f871m = interfaceC2960g;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3056K(AbstractC3107T abstractC3107T, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, C3312D c3312d) {
        super(abstractC3155c, enumC3172e4, i);
        this.f871m = c3312d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3056K(AbstractC3107T abstractC3107T, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, C3324J c3324j) {
        super(abstractC3155c, enumC3172e4, i);
        this.f871m = c3324j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3056K(AbstractC3063L0 abstractC3063L0, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, C3342W c3342w) {
        super(abstractC3155c, enumC3172e4, i);
        this.f871m = c3342w;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3056K(AbstractC3163d1 abstractC3163d1, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, C3367k0 c3367k0) {
        super(abstractC3155c, enumC3172e4, i);
        this.f871m = c3367k0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3056K(AbstractC3171e3 abstractC3171e3, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, Function function) {
        super(abstractC3155c, enumC3172e4, i);
        this.f871m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3056K(AbstractC3171e3 abstractC3171e3, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, ToDoubleFunction toDoubleFunction) {
        super(abstractC3155c, enumC3172e4, i);
        this.f871m = toDoubleFunction;
    }
}
