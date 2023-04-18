package p034j$.util.stream;

import p034j$.lang.AbstractC2558a;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2656g;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2667r;
import p034j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2758L extends AbstractC2861d3 {

    /* renamed from: l */
    public final /* synthetic */ int f780l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f781m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2758L(AbstractC2803T abstractC2803T, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2656g interfaceC2656g) {
        super(abstractC2851c, enumC2868e4, i);
        this.f781m = interfaceC2656g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: H0 */
    public InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3) {
        switch (this.f780l) {
            case 0:
                return new C2746J(this, interfaceC2915m3);
            case 1:
                return new C2723F0(this, interfaceC2915m3);
            case 2:
                return new C2834Z0(this, interfaceC2915m3);
            case 3:
                return new C2831Y2(this, interfaceC2915m3);
            default:
                return new C2831Y2(this, interfaceC2915m3, (AbstractC2558a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2758L(AbstractC2759L0 abstractC2759L0, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2662m interfaceC2662m) {
        super(abstractC2851c, enumC2868e4, i);
        this.f781m = interfaceC2662m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2758L(AbstractC2859d1 abstractC2859d1, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2667r interfaceC2667r) {
        super(abstractC2851c, enumC2868e4, i);
        this.f781m = interfaceC2667r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2758L(AbstractC2867e3 abstractC2867e3, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, Consumer consumer) {
        super(abstractC2851c, enumC2868e4, i);
        this.f781m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2758L(AbstractC2867e3 abstractC2867e3, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, Predicate predicate) {
        super(abstractC2851c, enumC2868e4, i);
        this.f781m = predicate;
    }
}
