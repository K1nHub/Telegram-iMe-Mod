package p033j$.util.stream;

import p033j$.lang.AbstractC2666a;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2817g;
import p033j$.util.function.InterfaceC2827q;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2915L extends AbstractC3018d3 {

    /* renamed from: l */
    public final /* synthetic */ int f918l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f919m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2915L(AbstractC2960T abstractC2960T, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, InterfaceC2817g interfaceC2817g) {
        super(abstractC3008c, enumC3025e4, i);
        this.f919m = interfaceC2817g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        switch (this.f918l) {
            case 0:
                return new C2903J(this, interfaceC3072m3);
            case 1:
                return new C2880F0(this, interfaceC3072m3);
            case 2:
                return new C2991Z0(this, interfaceC3072m3);
            case 3:
                return new C2988Y2(this, interfaceC3072m3);
            default:
                return new C2988Y2(this, interfaceC3072m3, (AbstractC2666a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2915L(AbstractC2916L0 abstractC2916L0, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, IntFunction intFunction) {
        super(abstractC3008c, enumC3025e4, i);
        this.f919m = intFunction;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2915L(AbstractC3016d1 abstractC3016d1, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, InterfaceC2827q interfaceC2827q) {
        super(abstractC3008c, enumC3025e4, i);
        this.f919m = interfaceC2827q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2915L(AbstractC3024e3 abstractC3024e3, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, Consumer consumer) {
        super(abstractC3008c, enumC3025e4, i);
        this.f919m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2915L(AbstractC3024e3 abstractC3024e3, AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i, Predicate predicate) {
        super(abstractC3008c, enumC3025e4, i);
        this.f919m = predicate;
    }
}
