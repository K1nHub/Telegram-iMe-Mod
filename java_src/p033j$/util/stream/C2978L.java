package p033j$.util.stream;

import p033j$.lang.AbstractC2778a;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2876g;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2887r;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.L */
/* loaded from: classes2.dex */
public class C2978L extends AbstractC3081d3 {

    /* renamed from: l */
    public final /* synthetic */ int f869l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f870m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2978L(AbstractC3023T abstractC3023T, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2876g interfaceC2876g) {
        super(abstractC3071c, enumC3088e4, i);
        this.f870m = interfaceC2876g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        switch (this.f869l) {
            case 0:
                return new C2966J(this, interfaceC3135m3);
            case 1:
                return new C2943F0(this, interfaceC3135m3);
            case 2:
                return new C3054Z0(this, interfaceC3135m3);
            case 3:
                return new C3051Y2(this, interfaceC3135m3);
            default:
                return new C3051Y2(this, interfaceC3135m3, (AbstractC2778a) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2978L(AbstractC2979L0 abstractC2979L0, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2882m interfaceC2882m) {
        super(abstractC3071c, enumC3088e4, i);
        this.f870m = interfaceC2882m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2978L(AbstractC3079d1 abstractC3079d1, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2887r interfaceC2887r) {
        super(abstractC3071c, enumC3088e4, i);
        this.f870m = interfaceC2887r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2978L(AbstractC3087e3 abstractC3087e3, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, Consumer consumer) {
        super(abstractC3071c, enumC3088e4, i);
        this.f870m = consumer;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2978L(AbstractC3087e3 abstractC3087e3, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, Predicate predicate) {
        super(abstractC3071c, enumC3088e4, i);
        this.f870m = predicate;
    }
}
