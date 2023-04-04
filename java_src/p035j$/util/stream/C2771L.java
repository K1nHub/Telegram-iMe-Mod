package p035j$.util.stream;

import p035j$.lang.AbstractC2571a;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2669g;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2680r;
import p035j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2771L extends AbstractC2874d3 {

    /* renamed from: l */
    public final /* synthetic */ int f785l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f786m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771L(AbstractC2816T abstractC2816T, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2669g interfaceC2669g) {
        super(abstractC2864c, enumC2881e4, i);
        this.f786m = interfaceC2669g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        switch (this.f785l) {
            case 0:
                return new C2759J(this, interfaceC2928m3);
            case 1:
                return new C2736F0(this, interfaceC2928m3);
            case 2:
                return new C2847Z0(this, interfaceC2928m3);
            case 3:
                return new C2844Y2(this, interfaceC2928m3);
            default:
                return new C2844Y2(this, interfaceC2928m3, (AbstractC2571a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771L(AbstractC2772L0 abstractC2772L0, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2675m interfaceC2675m) {
        super(abstractC2864c, enumC2881e4, i);
        this.f786m = interfaceC2675m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771L(AbstractC2872d1 abstractC2872d1, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2680r interfaceC2680r) {
        super(abstractC2864c, enumC2881e4, i);
        this.f786m = interfaceC2680r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771L(AbstractC2880e3 abstractC2880e3, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, Consumer consumer) {
        super(abstractC2864c, enumC2881e4, i);
        this.f786m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771L(AbstractC2880e3 abstractC2880e3, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, Predicate predicate) {
        super(abstractC2864c, enumC2881e4, i);
        this.f786m = predicate;
    }
}
