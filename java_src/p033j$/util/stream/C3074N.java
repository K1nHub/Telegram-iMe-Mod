package p033j$.util.stream;

import p033j$.lang.AbstractC2862a;
import p033j$.lang.AbstractC2863b;
import p033j$.lang.AbstractC2864c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2961h;
import p033j$.util.function.InterfaceC2967n;
import p033j$.util.function.InterfaceC2970q;
import p033j$.util.function.InterfaceC2971r;
import p033j$.util.function.InterfaceC2973t;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3363i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C3074N extends AbstractC3157c1 {

    /* renamed from: l */
    public final /* synthetic */ int f894l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f895m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3074N(AbstractC3107T abstractC3107T, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2961h interfaceC2961h) {
        super(abstractC3155c, enumC3172e4, i);
        this.f895m = interfaceC2961h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        switch (this.f894l) {
            case 0:
                return new C3050J(this, interfaceC3219m3);
            case 1:
                return new C3027F0(this, interfaceC3219m3);
            case 2:
                return new C3138Z0(this, interfaceC3219m3);
            case 3:
                return new C3138Z0(this, interfaceC3219m3, (AbstractC2862a) null);
            case 4:
                return new C3138Z0(this, interfaceC3219m3, (AbstractC2863b) null);
            case 5:
                return new C3138Z0(this, interfaceC3219m3, (AbstractC2864c) null);
            case 6:
                return new C3245r(this, interfaceC3219m3);
            default:
                return new C3135Y2(this, interfaceC3219m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3074N(AbstractC3063L0 abstractC3063L0, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2967n interfaceC2967n) {
        super(abstractC3155c, enumC3172e4, i);
        this.f895m = interfaceC2967n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3074N(AbstractC3163d1 abstractC3163d1, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2970q interfaceC2970q) {
        super(abstractC3155c, enumC3172e4, i);
        this.f895m = interfaceC2970q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3074N(AbstractC3163d1 abstractC3163d1, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2971r interfaceC2971r) {
        super(abstractC3155c, enumC3172e4, i);
        this.f895m = interfaceC2971r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3074N(AbstractC3163d1 abstractC3163d1, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2973t interfaceC2973t) {
        super(abstractC3155c, enumC3172e4, i);
        this.f895m = interfaceC2973t;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3074N(AbstractC3163d1 abstractC3163d1, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, C3363i0 c3363i0) {
        super(abstractC3155c, enumC3172e4, i);
        this.f895m = c3363i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3074N(AbstractC3171e3 abstractC3171e3, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, Function function) {
        super(abstractC3155c, enumC3172e4, i);
        this.f895m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3074N(AbstractC3171e3 abstractC3171e3, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, ToLongFunction toLongFunction) {
        super(abstractC3155c, enumC3172e4, i);
        this.f895m = toLongFunction;
    }
}
