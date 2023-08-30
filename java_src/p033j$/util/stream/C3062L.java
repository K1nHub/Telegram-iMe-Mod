package p033j$.util.stream;

import p033j$.lang.AbstractC2862a;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2960g;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2971r;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C3062L extends AbstractC3165d3 {

    /* renamed from: l */
    public final /* synthetic */ int f878l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f879m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3062L(AbstractC3107T abstractC3107T, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2960g interfaceC2960g) {
        super(abstractC3155c, enumC3172e4, i);
        this.f879m = interfaceC2960g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        switch (this.f878l) {
            case 0:
                return new C3050J(this, interfaceC3219m3);
            case 1:
                return new C3027F0(this, interfaceC3219m3);
            case 2:
                return new C3138Z0(this, interfaceC3219m3);
            case 3:
                return new C3135Y2(this, interfaceC3219m3);
            default:
                return new C3135Y2(this, interfaceC3219m3, (AbstractC2862a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3062L(AbstractC3063L0 abstractC3063L0, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2966m interfaceC2966m) {
        super(abstractC3155c, enumC3172e4, i);
        this.f879m = interfaceC2966m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3062L(AbstractC3163d1 abstractC3163d1, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, InterfaceC2971r interfaceC2971r) {
        super(abstractC3155c, enumC3172e4, i);
        this.f879m = interfaceC2971r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3062L(AbstractC3171e3 abstractC3171e3, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, Consumer consumer) {
        super(abstractC3155c, enumC3172e4, i);
        this.f879m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3062L(AbstractC3171e3 abstractC3171e3, AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, Predicate predicate) {
        super(abstractC3155c, enumC3172e4, i);
        this.f879m = predicate;
    }
}
