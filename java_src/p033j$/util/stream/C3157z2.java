package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2835u;
import p033j$.util.function.InterfaceC2836v;
import p033j$.util.function.InterfaceC2837w;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C3157z2 extends AbstractC2976U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1185b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1186c;

    /* renamed from: d */
    final /* synthetic */ Object f1187d;

    /* renamed from: e */
    final /* synthetic */ Object f1188e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3157z2(EnumC3033e4 enumC3033e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2839y interfaceC2839y) {
        super(enumC3033e4);
        this.f1186c = biConsumer;
        this.f1187d = biConsumer2;
        this.f1188e = interfaceC2839y;
    }

    @Override // p033j$.util.stream.AbstractC2976U2
    /* renamed from: a */
    public InterfaceC2966S2 mo293a() {
        switch (this.f1185b) {
            case 0:
                return new C2860A2((InterfaceC2839y) this.f1188e, (InterfaceC2837w) this.f1187d, (InterfaceC2816b) this.f1186c);
            case 1:
                return new C2890F2((InterfaceC2839y) this.f1188e, (InterfaceC2835u) this.f1187d, (InterfaceC2816b) this.f1186c);
            case 2:
                return new C2896G2(this.f1188e, (BiFunction) this.f1187d, (InterfaceC2816b) this.f1186c);
            case 3:
                return new C2920K2((InterfaceC2839y) this.f1188e, (BiConsumer) this.f1187d, (BiConsumer) this.f1186c);
            default:
                return new C2944O2((InterfaceC2839y) this.f1188e, (InterfaceC2836v) this.f1187d, (InterfaceC2816b) this.f1186c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3157z2(EnumC3033e4 enumC3033e4, InterfaceC2816b interfaceC2816b, BiFunction biFunction, Object obj) {
        super(enumC3033e4);
        this.f1186c = interfaceC2816b;
        this.f1187d = biFunction;
        this.f1188e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3157z2(EnumC3033e4 enumC3033e4, InterfaceC2816b interfaceC2816b, InterfaceC2835u interfaceC2835u, InterfaceC2839y interfaceC2839y) {
        super(enumC3033e4);
        this.f1186c = interfaceC2816b;
        this.f1187d = interfaceC2835u;
        this.f1188e = interfaceC2839y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3157z2(EnumC3033e4 enumC3033e4, InterfaceC2816b interfaceC2816b, InterfaceC2836v interfaceC2836v, InterfaceC2839y interfaceC2839y) {
        super(enumC3033e4);
        this.f1186c = interfaceC2816b;
        this.f1187d = interfaceC2836v;
        this.f1188e = interfaceC2839y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3157z2(EnumC3033e4 enumC3033e4, InterfaceC2816b interfaceC2816b, InterfaceC2837w interfaceC2837w, InterfaceC2839y interfaceC2839y) {
        super(enumC3033e4);
        this.f1186c = interfaceC2816b;
        this.f1187d = interfaceC2837w;
        this.f1188e = interfaceC2839y;
    }
}
