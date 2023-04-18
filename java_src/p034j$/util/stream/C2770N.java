package p034j$.util.stream;

import p034j$.lang.AbstractC2558a;
import p034j$.lang.AbstractC2559b;
import p034j$.lang.AbstractC2560c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2657h;
import p034j$.util.function.InterfaceC2663n;
import p034j$.util.function.InterfaceC2666q;
import p034j$.util.function.InterfaceC2667r;
import p034j$.util.function.InterfaceC2669t;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C3059i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2770N extends AbstractC2853c1 {

    /* renamed from: l */
    public final /* synthetic */ int f796l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f797m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2770N(AbstractC2803T abstractC2803T, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2657h interfaceC2657h) {
        super(abstractC2851c, enumC2868e4, i);
        this.f797m = interfaceC2657h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: H0 */
    public InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3) {
        switch (this.f796l) {
            case 0:
                return new C2746J(this, interfaceC2915m3);
            case 1:
                return new C2723F0(this, interfaceC2915m3);
            case 2:
                return new C2834Z0(this, interfaceC2915m3);
            case 3:
                return new C2834Z0(this, interfaceC2915m3, (AbstractC2558a) null);
            case 4:
                return new C2834Z0(this, interfaceC2915m3, (AbstractC2559b) null);
            case 5:
                return new C2834Z0(this, interfaceC2915m3, (AbstractC2560c) null);
            case 6:
                return new C2941r(this, interfaceC2915m3);
            default:
                return new C2831Y2(this, interfaceC2915m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2770N(AbstractC2759L0 abstractC2759L0, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2663n interfaceC2663n) {
        super(abstractC2851c, enumC2868e4, i);
        this.f797m = interfaceC2663n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2770N(AbstractC2859d1 abstractC2859d1, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2666q interfaceC2666q) {
        super(abstractC2851c, enumC2868e4, i);
        this.f797m = interfaceC2666q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2770N(AbstractC2859d1 abstractC2859d1, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2667r interfaceC2667r) {
        super(abstractC2851c, enumC2868e4, i);
        this.f797m = interfaceC2667r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2770N(AbstractC2859d1 abstractC2859d1, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, InterfaceC2669t interfaceC2669t) {
        super(abstractC2851c, enumC2868e4, i);
        this.f797m = interfaceC2669t;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2770N(AbstractC2859d1 abstractC2859d1, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, C3059i0 c3059i0) {
        super(abstractC2851c, enumC2868e4, i);
        this.f797m = c3059i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2770N(AbstractC2867e3 abstractC2867e3, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, Function function) {
        super(abstractC2851c, enumC2868e4, i);
        this.f797m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2770N(AbstractC2867e3 abstractC2867e3, AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, ToLongFunction toLongFunction) {
        super(abstractC2851c, enumC2868e4, i);
        this.f797m = toLongFunction;
    }
}
