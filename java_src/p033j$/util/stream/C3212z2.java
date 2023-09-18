package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2890u;
import p033j$.util.function.InterfaceC2891v;
import p033j$.util.function.InterfaceC2892w;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C3212z2 extends AbstractC3031U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1186b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1187c;

    /* renamed from: d */
    final /* synthetic */ Object f1188d;

    /* renamed from: e */
    final /* synthetic */ Object f1189e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3212z2(EnumC3088e4 enumC3088e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2894y interfaceC2894y) {
        super(enumC3088e4);
        this.f1187c = biConsumer;
        this.f1188d = biConsumer2;
        this.f1189e = interfaceC2894y;
    }

    @Override // p033j$.util.stream.AbstractC3031U2
    /* renamed from: a */
    public InterfaceC3021S2 mo293a() {
        switch (this.f1186b) {
            case 0:
                return new C2915A2((InterfaceC2894y) this.f1189e, (InterfaceC2892w) this.f1188d, (InterfaceC2871b) this.f1187c);
            case 1:
                return new C2945F2((InterfaceC2894y) this.f1189e, (InterfaceC2890u) this.f1188d, (InterfaceC2871b) this.f1187c);
            case 2:
                return new C2951G2(this.f1189e, (BiFunction) this.f1188d, (InterfaceC2871b) this.f1187c);
            case 3:
                return new C2975K2((InterfaceC2894y) this.f1189e, (BiConsumer) this.f1188d, (BiConsumer) this.f1187c);
            default:
                return new C2999O2((InterfaceC2894y) this.f1189e, (InterfaceC2891v) this.f1188d, (InterfaceC2871b) this.f1187c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3212z2(EnumC3088e4 enumC3088e4, InterfaceC2871b interfaceC2871b, BiFunction biFunction, Object obj) {
        super(enumC3088e4);
        this.f1187c = interfaceC2871b;
        this.f1188d = biFunction;
        this.f1189e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3212z2(EnumC3088e4 enumC3088e4, InterfaceC2871b interfaceC2871b, InterfaceC2890u interfaceC2890u, InterfaceC2894y interfaceC2894y) {
        super(enumC3088e4);
        this.f1187c = interfaceC2871b;
        this.f1188d = interfaceC2890u;
        this.f1189e = interfaceC2894y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3212z2(EnumC3088e4 enumC3088e4, InterfaceC2871b interfaceC2871b, InterfaceC2891v interfaceC2891v, InterfaceC2894y interfaceC2894y) {
        super(enumC3088e4);
        this.f1187c = interfaceC2871b;
        this.f1188d = interfaceC2891v;
        this.f1189e = interfaceC2894y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3212z2(EnumC3088e4 enumC3088e4, InterfaceC2871b interfaceC2871b, InterfaceC2892w interfaceC2892w, InterfaceC2894y interfaceC2894y) {
        super(enumC3088e4);
        this.f1187c = interfaceC2871b;
        this.f1188d = interfaceC2892w;
        this.f1189e = interfaceC2894y;
    }
}
