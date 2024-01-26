package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.InterfaceC2811b;
import p033j$.util.function.InterfaceC2829t;
import p033j$.util.function.InterfaceC2830u;
import p033j$.util.function.InterfaceC2831v;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C3148z2 extends AbstractC2967U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1235b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1236c;

    /* renamed from: d */
    final /* synthetic */ Object f1237d;

    /* renamed from: e */
    final /* synthetic */ Object f1238e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3148z2(EnumC3024e4 enumC3024e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2833x interfaceC2833x) {
        super(enumC3024e4);
        this.f1236c = biConsumer;
        this.f1237d = biConsumer2;
        this.f1238e = interfaceC2833x;
    }

    @Override // p033j$.util.stream.AbstractC2967U2
    /* renamed from: a */
    public InterfaceC2957S2 mo342a() {
        switch (this.f1235b) {
            case 0:
                return new C2851A2((InterfaceC2833x) this.f1238e, (InterfaceC2831v) this.f1237d, (InterfaceC2811b) this.f1236c);
            case 1:
                return new C2881F2((InterfaceC2833x) this.f1238e, (InterfaceC2829t) this.f1237d, (InterfaceC2811b) this.f1236c);
            case 2:
                return new C2887G2(this.f1238e, (BiFunction) this.f1237d, (InterfaceC2811b) this.f1236c);
            case 3:
                return new C2911K2((InterfaceC2833x) this.f1238e, (BiConsumer) this.f1237d, (BiConsumer) this.f1236c);
            default:
                return new C2935O2((InterfaceC2833x) this.f1238e, (InterfaceC2830u) this.f1237d, (InterfaceC2811b) this.f1236c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3148z2(EnumC3024e4 enumC3024e4, InterfaceC2811b interfaceC2811b, BiFunction biFunction, Object obj) {
        super(enumC3024e4);
        this.f1236c = interfaceC2811b;
        this.f1237d = biFunction;
        this.f1238e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3148z2(EnumC3024e4 enumC3024e4, InterfaceC2811b interfaceC2811b, InterfaceC2829t interfaceC2829t, InterfaceC2833x interfaceC2833x) {
        super(enumC3024e4);
        this.f1236c = interfaceC2811b;
        this.f1237d = interfaceC2829t;
        this.f1238e = interfaceC2833x;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3148z2(EnumC3024e4 enumC3024e4, InterfaceC2811b interfaceC2811b, InterfaceC2830u interfaceC2830u, InterfaceC2833x interfaceC2833x) {
        super(enumC3024e4);
        this.f1236c = interfaceC2811b;
        this.f1237d = interfaceC2830u;
        this.f1238e = interfaceC2833x;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3148z2(EnumC3024e4 enumC3024e4, InterfaceC2811b interfaceC2811b, InterfaceC2831v interfaceC2831v, InterfaceC2833x interfaceC2833x) {
        super(enumC3024e4);
        this.f1236c = interfaceC2811b;
        this.f1237d = interfaceC2831v;
        this.f1238e = interfaceC2833x;
    }
}
