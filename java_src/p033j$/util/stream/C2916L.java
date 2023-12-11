package p033j$.util.stream;

import p033j$.lang.AbstractC2667a;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2818g;
import p033j$.util.function.InterfaceC2828q;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2916L extends AbstractC3019d3 {

    /* renamed from: l */
    public final /* synthetic */ int f918l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f919m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2916L(AbstractC2961T abstractC2961T, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, InterfaceC2818g interfaceC2818g) {
        super(abstractC3009c, enumC3026e4, i);
        this.f919m = interfaceC2818g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: G0 */
    public InterfaceC3073m3 mo347G0(int i, InterfaceC3073m3 interfaceC3073m3) {
        switch (this.f918l) {
            case 0:
                return new C2904J(this, interfaceC3073m3);
            case 1:
                return new C2881F0(this, interfaceC3073m3);
            case 2:
                return new C2992Z0(this, interfaceC3073m3);
            case 3:
                return new C2989Y2(this, interfaceC3073m3);
            default:
                return new C2989Y2(this, interfaceC3073m3, (AbstractC2667a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2916L(AbstractC2917L0 abstractC2917L0, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, IntFunction intFunction) {
        super(abstractC3009c, enumC3026e4, i);
        this.f919m = intFunction;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2916L(AbstractC3017d1 abstractC3017d1, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, InterfaceC2828q interfaceC2828q) {
        super(abstractC3009c, enumC3026e4, i);
        this.f919m = interfaceC2828q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2916L(AbstractC3025e3 abstractC3025e3, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, Consumer consumer) {
        super(abstractC3009c, enumC3026e4, i);
        this.f919m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2916L(AbstractC3025e3 abstractC3025e3, AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i, Predicate predicate) {
        super(abstractC3009c, enumC3026e4, i);
        this.f919m = predicate;
    }
}
