package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2834t;
import p033j$.util.function.InterfaceC2835u;
import p033j$.util.function.InterfaceC2836v;
import p033j$.util.function.InterfaceC2838x;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C3153z2 extends AbstractC2972U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1235b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1236c;

    /* renamed from: d */
    final /* synthetic */ Object f1237d;

    /* renamed from: e */
    final /* synthetic */ Object f1238e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3153z2(EnumC3029e4 enumC3029e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2838x interfaceC2838x) {
        super(enumC3029e4);
        this.f1236c = biConsumer;
        this.f1237d = biConsumer2;
        this.f1238e = interfaceC2838x;
    }

    @Override // p033j$.util.stream.AbstractC2972U2
    /* renamed from: a */
    public InterfaceC2962S2 mo339a() {
        switch (this.f1235b) {
            case 0:
                return new C2856A2((InterfaceC2838x) this.f1238e, (InterfaceC2836v) this.f1237d, (InterfaceC2816b) this.f1236c);
            case 1:
                return new C2886F2((InterfaceC2838x) this.f1238e, (InterfaceC2834t) this.f1237d, (InterfaceC2816b) this.f1236c);
            case 2:
                return new C2892G2(this.f1238e, (BiFunction) this.f1237d, (InterfaceC2816b) this.f1236c);
            case 3:
                return new C2916K2((InterfaceC2838x) this.f1238e, (BiConsumer) this.f1237d, (BiConsumer) this.f1236c);
            default:
                return new C2940O2((InterfaceC2838x) this.f1238e, (InterfaceC2835u) this.f1237d, (InterfaceC2816b) this.f1236c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3153z2(EnumC3029e4 enumC3029e4, InterfaceC2816b interfaceC2816b, BiFunction biFunction, Object obj) {
        super(enumC3029e4);
        this.f1236c = interfaceC2816b;
        this.f1237d = biFunction;
        this.f1238e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3153z2(EnumC3029e4 enumC3029e4, InterfaceC2816b interfaceC2816b, InterfaceC2834t interfaceC2834t, InterfaceC2838x interfaceC2838x) {
        super(enumC3029e4);
        this.f1236c = interfaceC2816b;
        this.f1237d = interfaceC2834t;
        this.f1238e = interfaceC2838x;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3153z2(EnumC3029e4 enumC3029e4, InterfaceC2816b interfaceC2816b, InterfaceC2835u interfaceC2835u, InterfaceC2838x interfaceC2838x) {
        super(enumC3029e4);
        this.f1236c = interfaceC2816b;
        this.f1237d = interfaceC2835u;
        this.f1238e = interfaceC2838x;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3153z2(EnumC3029e4 enumC3029e4, InterfaceC2816b interfaceC2816b, InterfaceC2836v interfaceC2836v, InterfaceC2838x interfaceC2838x) {
        super(enumC3029e4);
        this.f1236c = interfaceC2816b;
        this.f1237d = interfaceC2836v;
        this.f1238e = interfaceC2838x;
    }
}
