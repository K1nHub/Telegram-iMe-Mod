package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.InterfaceC2813b;
import p033j$.util.function.InterfaceC2831t;
import p033j$.util.function.InterfaceC2832u;
import p033j$.util.function.InterfaceC2833v;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C3150z2 extends AbstractC2969U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1235b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1236c;

    /* renamed from: d */
    final /* synthetic */ Object f1237d;

    /* renamed from: e */
    final /* synthetic */ Object f1238e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3150z2(EnumC3026e4 enumC3026e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2835x interfaceC2835x) {
        super(enumC3026e4);
        this.f1236c = biConsumer;
        this.f1237d = biConsumer2;
        this.f1238e = interfaceC2835x;
    }

    @Override // p033j$.util.stream.AbstractC2969U2
    /* renamed from: a */
    public InterfaceC2959S2 mo339a() {
        switch (this.f1235b) {
            case 0:
                return new C2853A2((InterfaceC2835x) this.f1238e, (InterfaceC2833v) this.f1237d, (InterfaceC2813b) this.f1236c);
            case 1:
                return new C2883F2((InterfaceC2835x) this.f1238e, (InterfaceC2831t) this.f1237d, (InterfaceC2813b) this.f1236c);
            case 2:
                return new C2889G2(this.f1238e, (BiFunction) this.f1237d, (InterfaceC2813b) this.f1236c);
            case 3:
                return new C2913K2((InterfaceC2835x) this.f1238e, (BiConsumer) this.f1237d, (BiConsumer) this.f1236c);
            default:
                return new C2937O2((InterfaceC2835x) this.f1238e, (InterfaceC2832u) this.f1237d, (InterfaceC2813b) this.f1236c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3150z2(EnumC3026e4 enumC3026e4, InterfaceC2813b interfaceC2813b, BiFunction biFunction, Object obj) {
        super(enumC3026e4);
        this.f1236c = interfaceC2813b;
        this.f1237d = biFunction;
        this.f1238e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3150z2(EnumC3026e4 enumC3026e4, InterfaceC2813b interfaceC2813b, InterfaceC2831t interfaceC2831t, InterfaceC2835x interfaceC2835x) {
        super(enumC3026e4);
        this.f1236c = interfaceC2813b;
        this.f1237d = interfaceC2831t;
        this.f1238e = interfaceC2835x;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3150z2(EnumC3026e4 enumC3026e4, InterfaceC2813b interfaceC2813b, InterfaceC2832u interfaceC2832u, InterfaceC2835x interfaceC2835x) {
        super(enumC3026e4);
        this.f1236c = interfaceC2813b;
        this.f1237d = interfaceC2832u;
        this.f1238e = interfaceC2835x;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3150z2(EnumC3026e4 enumC3026e4, InterfaceC2813b interfaceC2813b, InterfaceC2833v interfaceC2833v, InterfaceC2835x interfaceC2835x) {
        super(enumC3026e4);
        this.f1236c = interfaceC2813b;
        this.f1237d = interfaceC2833v;
        this.f1238e = interfaceC2835x;
    }
}
