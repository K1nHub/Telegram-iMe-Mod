package p035j$.util.stream;

import p035j$.util.function.BiConsumer;
import p035j$.util.function.BiFunction;
import p035j$.util.function.InterfaceC2664b;
import p035j$.util.function.InterfaceC2683u;
import p035j$.util.function.InterfaceC2684v;
import p035j$.util.function.InterfaceC2685w;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C3005z2 extends AbstractC2824U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1102b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1103c;

    /* renamed from: d */
    final /* synthetic */ Object f1104d;

    /* renamed from: e */
    final /* synthetic */ Object f1105e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3005z2(EnumC2881e4 enumC2881e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2687y interfaceC2687y) {
        super(enumC2881e4);
        this.f1103c = biConsumer;
        this.f1104d = biConsumer2;
        this.f1105e = interfaceC2687y;
    }

    @Override // p035j$.util.stream.AbstractC2824U2
    /* renamed from: a */
    public InterfaceC2814S2 mo284a() {
        switch (this.f1102b) {
            case 0:
                return new C2708A2((InterfaceC2687y) this.f1105e, (InterfaceC2685w) this.f1104d, (InterfaceC2664b) this.f1103c);
            case 1:
                return new C2738F2((InterfaceC2687y) this.f1105e, (InterfaceC2683u) this.f1104d, (InterfaceC2664b) this.f1103c);
            case 2:
                return new C2744G2(this.f1105e, (BiFunction) this.f1104d, (InterfaceC2664b) this.f1103c);
            case 3:
                return new C2768K2((InterfaceC2687y) this.f1105e, (BiConsumer) this.f1104d, (BiConsumer) this.f1103c);
            default:
                return new C2792O2((InterfaceC2687y) this.f1105e, (InterfaceC2684v) this.f1104d, (InterfaceC2664b) this.f1103c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3005z2(EnumC2881e4 enumC2881e4, InterfaceC2664b interfaceC2664b, BiFunction biFunction, Object obj) {
        super(enumC2881e4);
        this.f1103c = interfaceC2664b;
        this.f1104d = biFunction;
        this.f1105e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3005z2(EnumC2881e4 enumC2881e4, InterfaceC2664b interfaceC2664b, InterfaceC2683u interfaceC2683u, InterfaceC2687y interfaceC2687y) {
        super(enumC2881e4);
        this.f1103c = interfaceC2664b;
        this.f1104d = interfaceC2683u;
        this.f1105e = interfaceC2687y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3005z2(EnumC2881e4 enumC2881e4, InterfaceC2664b interfaceC2664b, InterfaceC2684v interfaceC2684v, InterfaceC2687y interfaceC2687y) {
        super(enumC2881e4);
        this.f1103c = interfaceC2664b;
        this.f1104d = interfaceC2684v;
        this.f1105e = interfaceC2687y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3005z2(EnumC2881e4 enumC2881e4, InterfaceC2664b interfaceC2664b, InterfaceC2685w interfaceC2685w, InterfaceC2687y interfaceC2687y) {
        super(enumC2881e4);
        this.f1103c = interfaceC2664b;
        this.f1104d = interfaceC2685w;
        this.f1105e = interfaceC2687y;
    }
}
