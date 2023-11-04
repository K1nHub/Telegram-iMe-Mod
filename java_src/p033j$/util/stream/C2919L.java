package p033j$.util.stream;

import p033j$.lang.AbstractC2670a;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2919L extends AbstractC3022d3 {

    /* renamed from: l */
    public final /* synthetic */ int f918l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f919m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2919L(AbstractC2964T abstractC2964T, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, InterfaceC2821g interfaceC2821g) {
        super(abstractC3012c, enumC3029e4, i);
        this.f919m = interfaceC2821g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: G0 */
    public InterfaceC3076m3 mo347G0(int i, InterfaceC3076m3 interfaceC3076m3) {
        switch (this.f918l) {
            case 0:
                return new C2907J(this, interfaceC3076m3);
            case 1:
                return new C2884F0(this, interfaceC3076m3);
            case 2:
                return new C2995Z0(this, interfaceC3076m3);
            case 3:
                return new C2992Y2(this, interfaceC3076m3);
            default:
                return new C2992Y2(this, interfaceC3076m3, (AbstractC2670a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2919L(AbstractC2920L0 abstractC2920L0, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, IntFunction intFunction) {
        super(abstractC3012c, enumC3029e4, i);
        this.f919m = intFunction;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2919L(AbstractC3020d1 abstractC3020d1, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, InterfaceC2831q interfaceC2831q) {
        super(abstractC3012c, enumC3029e4, i);
        this.f919m = interfaceC2831q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2919L(AbstractC3028e3 abstractC3028e3, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, Consumer consumer) {
        super(abstractC3012c, enumC3029e4, i);
        this.f919m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2919L(AbstractC3028e3 abstractC3028e3, AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i, Predicate predicate) {
        super(abstractC3012c, enumC3029e4, i);
        this.f919m = predicate;
    }
}
