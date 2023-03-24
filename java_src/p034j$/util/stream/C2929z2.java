package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.InterfaceC2588b;
import p034j$.util.function.InterfaceC2607u;
import p034j$.util.function.InterfaceC2608v;
import p034j$.util.function.InterfaceC2609w;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C2929z2 extends AbstractC2748U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1097b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1098c;

    /* renamed from: d */
    final /* synthetic */ Object f1099d;

    /* renamed from: e */
    final /* synthetic */ Object f1100e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929z2(EnumC2805e4 enumC2805e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2611y interfaceC2611y) {
        super(enumC2805e4);
        this.f1098c = biConsumer;
        this.f1099d = biConsumer2;
        this.f1100e = interfaceC2611y;
    }

    @Override // p034j$.util.stream.AbstractC2748U2
    /* renamed from: a */
    public InterfaceC2738S2 mo289a() {
        switch (this.f1097b) {
            case 0:
                return new C2632A2((InterfaceC2611y) this.f1100e, (InterfaceC2609w) this.f1099d, (InterfaceC2588b) this.f1098c);
            case 1:
                return new C2662F2((InterfaceC2611y) this.f1100e, (InterfaceC2607u) this.f1099d, (InterfaceC2588b) this.f1098c);
            case 2:
                return new C2668G2(this.f1100e, (BiFunction) this.f1099d, (InterfaceC2588b) this.f1098c);
            case 3:
                return new C2692K2((InterfaceC2611y) this.f1100e, (BiConsumer) this.f1099d, (BiConsumer) this.f1098c);
            default:
                return new C2716O2((InterfaceC2611y) this.f1100e, (InterfaceC2608v) this.f1099d, (InterfaceC2588b) this.f1098c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929z2(EnumC2805e4 enumC2805e4, InterfaceC2588b interfaceC2588b, BiFunction biFunction, Object obj) {
        super(enumC2805e4);
        this.f1098c = interfaceC2588b;
        this.f1099d = biFunction;
        this.f1100e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929z2(EnumC2805e4 enumC2805e4, InterfaceC2588b interfaceC2588b, InterfaceC2607u interfaceC2607u, InterfaceC2611y interfaceC2611y) {
        super(enumC2805e4);
        this.f1098c = interfaceC2588b;
        this.f1099d = interfaceC2607u;
        this.f1100e = interfaceC2611y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929z2(EnumC2805e4 enumC2805e4, InterfaceC2588b interfaceC2588b, InterfaceC2608v interfaceC2608v, InterfaceC2611y interfaceC2611y) {
        super(enumC2805e4);
        this.f1098c = interfaceC2588b;
        this.f1099d = interfaceC2608v;
        this.f1100e = interfaceC2611y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2929z2(EnumC2805e4 enumC2805e4, InterfaceC2588b interfaceC2588b, InterfaceC2609w interfaceC2609w, InterfaceC2611y interfaceC2611y) {
        super(enumC2805e4);
        this.f1098c = interfaceC2588b;
        this.f1099d = interfaceC2609w;
        this.f1100e = interfaceC2611y;
    }
}
