package p034j$.util.stream;

import p034j$.lang.AbstractC2495a;
import p034j$.lang.AbstractC2496b;
import p034j$.lang.AbstractC2497c;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2594h;
import p034j$.util.function.InterfaceC2600n;
import p034j$.util.function.InterfaceC2603q;
import p034j$.util.function.InterfaceC2604r;
import p034j$.util.function.InterfaceC2606t;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C2996i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2707N extends AbstractC2790c1 {

    /* renamed from: l */
    public final /* synthetic */ int f796l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f797m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2707N(AbstractC2740T abstractC2740T, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2594h interfaceC2594h) {
        super(abstractC2788c, enumC2805e4, i);
        this.f797m = interfaceC2594h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        switch (this.f796l) {
            case 0:
                return new C2683J(this, interfaceC2852m3);
            case 1:
                return new C2660F0(this, interfaceC2852m3);
            case 2:
                return new C2771Z0(this, interfaceC2852m3);
            case 3:
                return new C2771Z0(this, interfaceC2852m3, (AbstractC2495a) null);
            case 4:
                return new C2771Z0(this, interfaceC2852m3, (AbstractC2496b) null);
            case 5:
                return new C2771Z0(this, interfaceC2852m3, (AbstractC2497c) null);
            case 6:
                return new C2878r(this, interfaceC2852m3);
            default:
                return new C2768Y2(this, interfaceC2852m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2707N(AbstractC2696L0 abstractC2696L0, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2600n interfaceC2600n) {
        super(abstractC2788c, enumC2805e4, i);
        this.f797m = interfaceC2600n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2707N(AbstractC2796d1 abstractC2796d1, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2603q interfaceC2603q) {
        super(abstractC2788c, enumC2805e4, i);
        this.f797m = interfaceC2603q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2707N(AbstractC2796d1 abstractC2796d1, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2604r interfaceC2604r) {
        super(abstractC2788c, enumC2805e4, i);
        this.f797m = interfaceC2604r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2707N(AbstractC2796d1 abstractC2796d1, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, InterfaceC2606t interfaceC2606t) {
        super(abstractC2788c, enumC2805e4, i);
        this.f797m = interfaceC2606t;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2707N(AbstractC2796d1 abstractC2796d1, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, C2996i0 c2996i0) {
        super(abstractC2788c, enumC2805e4, i);
        this.f797m = c2996i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2707N(AbstractC2804e3 abstractC2804e3, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, Function function) {
        super(abstractC2788c, enumC2805e4, i);
        this.f797m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2707N(AbstractC2804e3 abstractC2804e3, AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, ToLongFunction toLongFunction) {
        super(abstractC2788c, enumC2805e4, i);
        this.f797m = toLongFunction;
    }
}
