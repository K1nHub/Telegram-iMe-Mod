package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2593u;
import p034j$.util.function.InterfaceC2594v;
import p034j$.util.function.InterfaceC2595w;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C2915z2 extends AbstractC2734U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1096b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1097c;

    /* renamed from: d */
    final /* synthetic */ Object f1098d;

    /* renamed from: e */
    final /* synthetic */ Object f1099e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2915z2(EnumC2791e4 enumC2791e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2597y interfaceC2597y) {
        super(enumC2791e4);
        this.f1097c = biConsumer;
        this.f1098d = biConsumer2;
        this.f1099e = interfaceC2597y;
    }

    @Override // p034j$.util.stream.AbstractC2734U2
    /* renamed from: a */
    public InterfaceC2724S2 mo290a() {
        switch (this.f1096b) {
            case 0:
                return new C2618A2((InterfaceC2597y) this.f1099e, (InterfaceC2595w) this.f1098d, (InterfaceC2574b) this.f1097c);
            case 1:
                return new C2648F2((InterfaceC2597y) this.f1099e, (InterfaceC2593u) this.f1098d, (InterfaceC2574b) this.f1097c);
            case 2:
                return new C2654G2(this.f1099e, (BiFunction) this.f1098d, (InterfaceC2574b) this.f1097c);
            case 3:
                return new C2678K2((InterfaceC2597y) this.f1099e, (BiConsumer) this.f1098d, (BiConsumer) this.f1097c);
            default:
                return new C2702O2((InterfaceC2597y) this.f1099e, (InterfaceC2594v) this.f1098d, (InterfaceC2574b) this.f1097c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2915z2(EnumC2791e4 enumC2791e4, InterfaceC2574b interfaceC2574b, BiFunction biFunction, Object obj) {
        super(enumC2791e4);
        this.f1097c = interfaceC2574b;
        this.f1098d = biFunction;
        this.f1099e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2915z2(EnumC2791e4 enumC2791e4, InterfaceC2574b interfaceC2574b, InterfaceC2593u interfaceC2593u, InterfaceC2597y interfaceC2597y) {
        super(enumC2791e4);
        this.f1097c = interfaceC2574b;
        this.f1098d = interfaceC2593u;
        this.f1099e = interfaceC2597y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2915z2(EnumC2791e4 enumC2791e4, InterfaceC2574b interfaceC2574b, InterfaceC2594v interfaceC2594v, InterfaceC2597y interfaceC2597y) {
        super(enumC2791e4);
        this.f1097c = interfaceC2574b;
        this.f1098d = interfaceC2594v;
        this.f1099e = interfaceC2597y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2915z2(EnumC2791e4 enumC2791e4, InterfaceC2574b interfaceC2574b, InterfaceC2595w interfaceC2595w, InterfaceC2597y interfaceC2597y) {
        super(enumC2791e4);
        this.f1097c = interfaceC2574b;
        this.f1098d = interfaceC2595w;
        this.f1099e = interfaceC2597y;
    }
}
