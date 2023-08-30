package p033j$.util.stream;

import p033j$.lang.AbstractC2862a;
import p033j$.lang.AbstractC2863b;
import p033j$.lang.AbstractC2864c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.ToIntFunction;
import p033j$.wrappers.C3316F;
import p033j$.wrappers.C3340U;
import p033j$.wrappers.C3347a0;
import p033j$.wrappers.C3371m0;
/* renamed from: j$.util.stream.M */
/* loaded from: classes2.dex */
class C3068M extends AbstractC3057K0 {

    /* renamed from: l */
    public final /* synthetic */ int f883l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f884m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3068M(AbstractC3107T abstractC3107T, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, C3316F c3316f) {
        super(abstractC3155c, enumC3172e4, i);
        this.f884m = c3316f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        switch (this.f883l) {
            case 0:
                return new C3050J(this, interfaceC3219m3);
            case 1:
                return new C3027F0(this, interfaceC3219m3);
            case 2:
                return new C3027F0(this, interfaceC3219m3, (AbstractC2862a) null);
            case 3:
                return new C3027F0(this, interfaceC3219m3, (AbstractC2863b) null);
            case 4:
                return new C3027F0(this, interfaceC3219m3, (AbstractC2864c) null);
            case 5:
                return new C3138Z0(this, interfaceC3219m3);
            case 6:
                return new C3135Y2(this, interfaceC3219m3);
            default:
                return new C3245r(this, interfaceC3219m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3068M(AbstractC3063L0 abstractC3063L0, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2965l interfaceC2965l) {
        super(abstractC3155c, enumC3172e4, i);
        this.f884m = interfaceC2965l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3068M(AbstractC3063L0 abstractC3063L0, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2966m interfaceC2966m) {
        super(abstractC3155c, enumC3172e4, i);
        this.f884m = interfaceC2966m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3068M(AbstractC3063L0 abstractC3063L0, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, C3340U c3340u) {
        super(abstractC3155c, enumC3172e4, i);
        this.f884m = c3340u;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3068M(AbstractC3063L0 abstractC3063L0, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, C3347a0 c3347a0) {
        super(abstractC3155c, enumC3172e4, i);
        this.f884m = c3347a0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3068M(AbstractC3163d1 abstractC3163d1, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, C3371m0 c3371m0) {
        super(abstractC3155c, enumC3172e4, i);
        this.f884m = c3371m0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3068M(AbstractC3171e3 abstractC3171e3, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, Function function) {
        super(abstractC3155c, enumC3172e4, i);
        this.f884m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3068M(AbstractC3171e3 abstractC3171e3, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, ToIntFunction toIntFunction) {
        super(abstractC3155c, enumC3172e4, i);
        this.f884m = toIntFunction;
    }
}
