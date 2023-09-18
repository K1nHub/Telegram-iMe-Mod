package p033j$.util.stream;

import p033j$.lang.AbstractC2778a;
import p033j$.lang.AbstractC2779b;
import p033j$.lang.AbstractC2780c;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2877h;
import p033j$.util.function.InterfaceC2883n;
import p033j$.util.function.InterfaceC2886q;
import p033j$.util.function.InterfaceC2887r;
import p033j$.util.function.InterfaceC2889t;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3279i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2990N extends AbstractC3073c1 {

    /* renamed from: l */
    public final /* synthetic */ int f885l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f886m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990N(AbstractC3023T abstractC3023T, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2877h interfaceC2877h) {
        super(abstractC3071c, enumC3088e4, i);
        this.f886m = interfaceC2877h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        switch (this.f885l) {
            case 0:
                return new C2966J(this, interfaceC3135m3);
            case 1:
                return new C2943F0(this, interfaceC3135m3);
            case 2:
                return new C3054Z0(this, interfaceC3135m3);
            case 3:
                return new C3054Z0(this, interfaceC3135m3, (AbstractC2778a) null);
            case 4:
                return new C3054Z0(this, interfaceC3135m3, (AbstractC2779b) null);
            case 5:
                return new C3054Z0(this, interfaceC3135m3, (AbstractC2780c) null);
            case 6:
                return new C3161r(this, interfaceC3135m3);
            default:
                return new C3051Y2(this, interfaceC3135m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990N(AbstractC2979L0 abstractC2979L0, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2883n interfaceC2883n) {
        super(abstractC3071c, enumC3088e4, i);
        this.f886m = interfaceC2883n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990N(AbstractC3079d1 abstractC3079d1, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2886q interfaceC2886q) {
        super(abstractC3071c, enumC3088e4, i);
        this.f886m = interfaceC2886q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990N(AbstractC3079d1 abstractC3079d1, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2887r interfaceC2887r) {
        super(abstractC3071c, enumC3088e4, i);
        this.f886m = interfaceC2887r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990N(AbstractC3079d1 abstractC3079d1, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, InterfaceC2889t interfaceC2889t) {
        super(abstractC3071c, enumC3088e4, i);
        this.f886m = interfaceC2889t;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990N(AbstractC3079d1 abstractC3079d1, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, C3279i0 c3279i0) {
        super(abstractC3071c, enumC3088e4, i);
        this.f886m = c3279i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990N(AbstractC3087e3 abstractC3087e3, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, Function function) {
        super(abstractC3071c, enumC3088e4, i);
        this.f886m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2990N(AbstractC3087e3 abstractC3087e3, AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, ToLongFunction toLongFunction) {
        super(abstractC3071c, enumC3088e4, i);
        this.f886m = toLongFunction;
    }
}
