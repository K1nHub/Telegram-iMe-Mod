package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.InterfaceC2695b;
import p034j$.util.function.InterfaceC2714u;
import p034j$.util.function.InterfaceC2715v;
import p034j$.util.function.InterfaceC2716w;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C3036z2 extends AbstractC2855U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1100b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1101c;

    /* renamed from: d */
    final /* synthetic */ Object f1102d;

    /* renamed from: e */
    final /* synthetic */ Object f1103e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3036z2(EnumC2912e4 enumC2912e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2718y interfaceC2718y) {
        super(enumC2912e4);
        this.f1101c = biConsumer;
        this.f1102d = biConsumer2;
        this.f1103e = interfaceC2718y;
    }

    @Override // p034j$.util.stream.AbstractC2855U2
    /* renamed from: a */
    public InterfaceC2845S2 mo275a() {
        switch (this.f1100b) {
            case 0:
                return new C2739A2((InterfaceC2718y) this.f1103e, (InterfaceC2716w) this.f1102d, (InterfaceC2695b) this.f1101c);
            case 1:
                return new C2769F2((InterfaceC2718y) this.f1103e, (InterfaceC2714u) this.f1102d, (InterfaceC2695b) this.f1101c);
            case 2:
                return new C2775G2(this.f1103e, (BiFunction) this.f1102d, (InterfaceC2695b) this.f1101c);
            case 3:
                return new C2799K2((InterfaceC2718y) this.f1103e, (BiConsumer) this.f1102d, (BiConsumer) this.f1101c);
            default:
                return new C2823O2((InterfaceC2718y) this.f1103e, (InterfaceC2715v) this.f1102d, (InterfaceC2695b) this.f1101c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3036z2(EnumC2912e4 enumC2912e4, InterfaceC2695b interfaceC2695b, BiFunction biFunction, Object obj) {
        super(enumC2912e4);
        this.f1101c = interfaceC2695b;
        this.f1102d = biFunction;
        this.f1103e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3036z2(EnumC2912e4 enumC2912e4, InterfaceC2695b interfaceC2695b, InterfaceC2714u interfaceC2714u, InterfaceC2718y interfaceC2718y) {
        super(enumC2912e4);
        this.f1101c = interfaceC2695b;
        this.f1102d = interfaceC2714u;
        this.f1103e = interfaceC2718y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3036z2(EnumC2912e4 enumC2912e4, InterfaceC2695b interfaceC2695b, InterfaceC2715v interfaceC2715v, InterfaceC2718y interfaceC2718y) {
        super(enumC2912e4);
        this.f1101c = interfaceC2695b;
        this.f1102d = interfaceC2715v;
        this.f1103e = interfaceC2718y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3036z2(EnumC2912e4 enumC2912e4, InterfaceC2695b interfaceC2695b, InterfaceC2716w interfaceC2716w, InterfaceC2718y interfaceC2718y) {
        super(enumC2912e4);
        this.f1101c = interfaceC2695b;
        this.f1102d = interfaceC2716w;
        this.f1103e = interfaceC2718y;
    }
}
