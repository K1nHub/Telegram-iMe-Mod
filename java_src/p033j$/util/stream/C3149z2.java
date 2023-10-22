package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.InterfaceC2812b;
import p033j$.util.function.InterfaceC2830t;
import p033j$.util.function.InterfaceC2831u;
import p033j$.util.function.InterfaceC2832v;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C3149z2 extends AbstractC2968U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1235b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1236c;

    /* renamed from: d */
    final /* synthetic */ Object f1237d;

    /* renamed from: e */
    final /* synthetic */ Object f1238e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3149z2(EnumC3025e4 enumC3025e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2834x interfaceC2834x) {
        super(enumC3025e4);
        this.f1236c = biConsumer;
        this.f1237d = biConsumer2;
        this.f1238e = interfaceC2834x;
    }

    @Override // p033j$.util.stream.AbstractC2968U2
    /* renamed from: a */
    public InterfaceC2958S2 mo338a() {
        switch (this.f1235b) {
            case 0:
                return new C2852A2((InterfaceC2834x) this.f1238e, (InterfaceC2832v) this.f1237d, (InterfaceC2812b) this.f1236c);
            case 1:
                return new C2882F2((InterfaceC2834x) this.f1238e, (InterfaceC2830t) this.f1237d, (InterfaceC2812b) this.f1236c);
            case 2:
                return new C2888G2(this.f1238e, (BiFunction) this.f1237d, (InterfaceC2812b) this.f1236c);
            case 3:
                return new C2912K2((InterfaceC2834x) this.f1238e, (BiConsumer) this.f1237d, (BiConsumer) this.f1236c);
            default:
                return new C2936O2((InterfaceC2834x) this.f1238e, (InterfaceC2831u) this.f1237d, (InterfaceC2812b) this.f1236c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3149z2(EnumC3025e4 enumC3025e4, InterfaceC2812b interfaceC2812b, BiFunction biFunction, Object obj) {
        super(enumC3025e4);
        this.f1236c = interfaceC2812b;
        this.f1237d = biFunction;
        this.f1238e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3149z2(EnumC3025e4 enumC3025e4, InterfaceC2812b interfaceC2812b, InterfaceC2830t interfaceC2830t, InterfaceC2834x interfaceC2834x) {
        super(enumC3025e4);
        this.f1236c = interfaceC2812b;
        this.f1237d = interfaceC2830t;
        this.f1238e = interfaceC2834x;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3149z2(EnumC3025e4 enumC3025e4, InterfaceC2812b interfaceC2812b, InterfaceC2831u interfaceC2831u, InterfaceC2834x interfaceC2834x) {
        super(enumC3025e4);
        this.f1236c = interfaceC2812b;
        this.f1237d = interfaceC2831u;
        this.f1238e = interfaceC2834x;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3149z2(EnumC3025e4 enumC3025e4, InterfaceC2812b interfaceC2812b, InterfaceC2832v interfaceC2832v, InterfaceC2834x interfaceC2834x) {
        super(enumC3025e4);
        this.f1236c = interfaceC2812b;
        this.f1237d = interfaceC2832v;
        this.f1238e = interfaceC2834x;
    }
}
