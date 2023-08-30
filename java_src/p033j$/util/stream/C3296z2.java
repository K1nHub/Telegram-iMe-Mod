package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2974u;
import p033j$.util.function.InterfaceC2975v;
import p033j$.util.function.InterfaceC2976w;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C3296z2 extends AbstractC3115U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1195b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1196c;

    /* renamed from: d */
    final /* synthetic */ Object f1197d;

    /* renamed from: e */
    final /* synthetic */ Object f1198e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3296z2(EnumC3172e4 enumC3172e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2978y interfaceC2978y) {
        super(enumC3172e4);
        this.f1196c = biConsumer;
        this.f1197d = biConsumer2;
        this.f1198e = interfaceC2978y;
    }

    @Override // p033j$.util.stream.AbstractC3115U2
    /* renamed from: a */
    public InterfaceC3105S2 mo293a() {
        switch (this.f1195b) {
            case 0:
                return new C2999A2((InterfaceC2978y) this.f1198e, (InterfaceC2976w) this.f1197d, (InterfaceC2955b) this.f1196c);
            case 1:
                return new C3029F2((InterfaceC2978y) this.f1198e, (InterfaceC2974u) this.f1197d, (InterfaceC2955b) this.f1196c);
            case 2:
                return new C3035G2(this.f1198e, (BiFunction) this.f1197d, (InterfaceC2955b) this.f1196c);
            case 3:
                return new C3059K2((InterfaceC2978y) this.f1198e, (BiConsumer) this.f1197d, (BiConsumer) this.f1196c);
            default:
                return new C3083O2((InterfaceC2978y) this.f1198e, (InterfaceC2975v) this.f1197d, (InterfaceC2955b) this.f1196c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3296z2(EnumC3172e4 enumC3172e4, InterfaceC2955b interfaceC2955b, BiFunction biFunction, Object obj) {
        super(enumC3172e4);
        this.f1196c = interfaceC2955b;
        this.f1197d = biFunction;
        this.f1198e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3296z2(EnumC3172e4 enumC3172e4, InterfaceC2955b interfaceC2955b, InterfaceC2974u interfaceC2974u, InterfaceC2978y interfaceC2978y) {
        super(enumC3172e4);
        this.f1196c = interfaceC2955b;
        this.f1197d = interfaceC2974u;
        this.f1198e = interfaceC2978y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3296z2(EnumC3172e4 enumC3172e4, InterfaceC2955b interfaceC2955b, InterfaceC2975v interfaceC2975v, InterfaceC2978y interfaceC2978y) {
        super(enumC3172e4);
        this.f1196c = interfaceC2955b;
        this.f1197d = interfaceC2975v;
        this.f1198e = interfaceC2978y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3296z2(EnumC3172e4 enumC3172e4, InterfaceC2955b interfaceC2955b, InterfaceC2976w interfaceC2976w, InterfaceC2978y interfaceC2978y) {
        super(enumC3172e4);
        this.f1196c = interfaceC2955b;
        this.f1197d = interfaceC2976w;
        this.f1198e = interfaceC2978y;
    }
}
