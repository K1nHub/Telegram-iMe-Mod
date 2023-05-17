package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.InterfaceC2690b;
import p034j$.util.function.InterfaceC2709u;
import p034j$.util.function.InterfaceC2710v;
import p034j$.util.function.InterfaceC2711w;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C3031z2 extends AbstractC2850U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1100b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1101c;

    /* renamed from: d */
    final /* synthetic */ Object f1102d;

    /* renamed from: e */
    final /* synthetic */ Object f1103e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3031z2(EnumC2907e4 enumC2907e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2713y interfaceC2713y) {
        super(enumC2907e4);
        this.f1101c = biConsumer;
        this.f1102d = biConsumer2;
        this.f1103e = interfaceC2713y;
    }

    @Override // p034j$.util.stream.AbstractC2850U2
    /* renamed from: a */
    public InterfaceC2840S2 mo275a() {
        switch (this.f1100b) {
            case 0:
                return new C2734A2((InterfaceC2713y) this.f1103e, (InterfaceC2711w) this.f1102d, (InterfaceC2690b) this.f1101c);
            case 1:
                return new C2764F2((InterfaceC2713y) this.f1103e, (InterfaceC2709u) this.f1102d, (InterfaceC2690b) this.f1101c);
            case 2:
                return new C2770G2(this.f1103e, (BiFunction) this.f1102d, (InterfaceC2690b) this.f1101c);
            case 3:
                return new C2794K2((InterfaceC2713y) this.f1103e, (BiConsumer) this.f1102d, (BiConsumer) this.f1101c);
            default:
                return new C2818O2((InterfaceC2713y) this.f1103e, (InterfaceC2710v) this.f1102d, (InterfaceC2690b) this.f1101c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3031z2(EnumC2907e4 enumC2907e4, InterfaceC2690b interfaceC2690b, BiFunction biFunction, Object obj) {
        super(enumC2907e4);
        this.f1101c = interfaceC2690b;
        this.f1102d = biFunction;
        this.f1103e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3031z2(EnumC2907e4 enumC2907e4, InterfaceC2690b interfaceC2690b, InterfaceC2709u interfaceC2709u, InterfaceC2713y interfaceC2713y) {
        super(enumC2907e4);
        this.f1101c = interfaceC2690b;
        this.f1102d = interfaceC2709u;
        this.f1103e = interfaceC2713y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3031z2(EnumC2907e4 enumC2907e4, InterfaceC2690b interfaceC2690b, InterfaceC2710v interfaceC2710v, InterfaceC2713y interfaceC2713y) {
        super(enumC2907e4);
        this.f1101c = interfaceC2690b;
        this.f1102d = interfaceC2710v;
        this.f1103e = interfaceC2713y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3031z2(EnumC2907e4 enumC2907e4, InterfaceC2690b interfaceC2690b, InterfaceC2711w interfaceC2711w, InterfaceC2713y interfaceC2713y) {
        super(enumC2907e4);
        this.f1101c = interfaceC2690b;
        this.f1102d = interfaceC2711w;
        this.f1103e = interfaceC2713y;
    }
}
