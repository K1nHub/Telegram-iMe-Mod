package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.InterfaceC2450b;
import p034j$.util.function.InterfaceC2469u;
import p034j$.util.function.InterfaceC2470v;
import p034j$.util.function.InterfaceC2471w;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C2791z2 extends AbstractC2610U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1091b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1092c;

    /* renamed from: d */
    final /* synthetic */ Object f1093d;

    /* renamed from: e */
    final /* synthetic */ Object f1094e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791z2(EnumC2667e4 enumC2667e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2473y interfaceC2473y) {
        super(enumC2667e4);
        this.f1092c = biConsumer;
        this.f1093d = biConsumer2;
        this.f1094e = interfaceC2473y;
    }

    @Override // p034j$.util.stream.AbstractC2610U2
    /* renamed from: a */
    public InterfaceC2600S2 mo290a() {
        switch (this.f1091b) {
            case 0:
                return new C2494A2((InterfaceC2473y) this.f1094e, (InterfaceC2471w) this.f1093d, (InterfaceC2450b) this.f1092c);
            case 1:
                return new C2524F2((InterfaceC2473y) this.f1094e, (InterfaceC2469u) this.f1093d, (InterfaceC2450b) this.f1092c);
            case 2:
                return new C2530G2(this.f1094e, (BiFunction) this.f1093d, (InterfaceC2450b) this.f1092c);
            case 3:
                return new C2554K2((InterfaceC2473y) this.f1094e, (BiConsumer) this.f1093d, (BiConsumer) this.f1092c);
            default:
                return new C2578O2((InterfaceC2473y) this.f1094e, (InterfaceC2470v) this.f1093d, (InterfaceC2450b) this.f1092c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791z2(EnumC2667e4 enumC2667e4, InterfaceC2450b interfaceC2450b, BiFunction biFunction, Object obj) {
        super(enumC2667e4);
        this.f1092c = interfaceC2450b;
        this.f1093d = biFunction;
        this.f1094e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791z2(EnumC2667e4 enumC2667e4, InterfaceC2450b interfaceC2450b, InterfaceC2469u interfaceC2469u, InterfaceC2473y interfaceC2473y) {
        super(enumC2667e4);
        this.f1092c = interfaceC2450b;
        this.f1093d = interfaceC2469u;
        this.f1094e = interfaceC2473y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791z2(EnumC2667e4 enumC2667e4, InterfaceC2450b interfaceC2450b, InterfaceC2470v interfaceC2470v, InterfaceC2473y interfaceC2473y) {
        super(enumC2667e4);
        this.f1092c = interfaceC2450b;
        this.f1093d = interfaceC2470v;
        this.f1094e = interfaceC2473y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2791z2(EnumC2667e4 enumC2667e4, InterfaceC2450b interfaceC2450b, InterfaceC2471w interfaceC2471w, InterfaceC2473y interfaceC2473y) {
        super(enumC2667e4);
        this.f1092c = interfaceC2450b;
        this.f1093d = interfaceC2471w;
        this.f1094e = interfaceC2473y;
    }
}
