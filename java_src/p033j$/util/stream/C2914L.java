package p033j$.util.stream;

import p033j$.lang.AbstractC2665a;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2816g;
import p033j$.util.function.InterfaceC2826q;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2914L extends AbstractC3017d3 {

    /* renamed from: l */
    public final /* synthetic */ int f918l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f919m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2914L(AbstractC2959T abstractC2959T, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, InterfaceC2816g interfaceC2816g) {
        super(abstractC3007c, enumC3024e4, i);
        this.f919m = interfaceC2816g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: G0 */
    public InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3) {
        switch (this.f918l) {
            case 0:
                return new C2902J(this, interfaceC3071m3);
            case 1:
                return new C2879F0(this, interfaceC3071m3);
            case 2:
                return new C2990Z0(this, interfaceC3071m3);
            case 3:
                return new C2987Y2(this, interfaceC3071m3);
            default:
                return new C2987Y2(this, interfaceC3071m3, (AbstractC2665a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2914L(AbstractC2915L0 abstractC2915L0, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, IntFunction intFunction) {
        super(abstractC3007c, enumC3024e4, i);
        this.f919m = intFunction;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2914L(AbstractC3015d1 abstractC3015d1, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, InterfaceC2826q interfaceC2826q) {
        super(abstractC3007c, enumC3024e4, i);
        this.f919m = interfaceC2826q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2914L(AbstractC3023e3 abstractC3023e3, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, Consumer consumer) {
        super(abstractC3007c, enumC3024e4, i);
        this.f919m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2914L(AbstractC3023e3 abstractC3023e3, AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i, Predicate predicate) {
        super(abstractC3007c, enumC3024e4, i);
        this.f919m = predicate;
    }
}
