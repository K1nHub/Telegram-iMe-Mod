package p034j$.util.stream;

import p034j$.util.function.InterfaceC2450b;
import p034j$.util.function.InterfaceC2452d;
import p034j$.util.function.InterfaceC2458j;
import p034j$.util.function.InterfaceC2463o;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2512D2 extends AbstractC2610U2 {

    /* renamed from: b */
    public final /* synthetic */ int f707b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f708c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2512D2(EnumC2667e4 enumC2667e4, InterfaceC2450b interfaceC2450b) {
        super(enumC2667e4);
        this.f708c = interfaceC2450b;
    }

    @Override // p034j$.util.stream.AbstractC2610U2
    /* renamed from: a */
    public InterfaceC2600S2 mo290a() {
        switch (this.f707b) {
            case 0:
                return new C2518E2((InterfaceC2452d) this.f708c);
            case 1:
                return new C2536H2((InterfaceC2450b) this.f708c);
            case 2:
                return new C2572N2((InterfaceC2458j) this.f708c);
            default:
                return new C2595R2((InterfaceC2463o) this.f708c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2512D2(EnumC2667e4 enumC2667e4, InterfaceC2452d interfaceC2452d) {
        super(enumC2667e4);
        this.f708c = interfaceC2452d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2512D2(EnumC2667e4 enumC2667e4, InterfaceC2458j interfaceC2458j) {
        super(enumC2667e4);
        this.f708c = interfaceC2458j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2512D2(EnumC2667e4 enumC2667e4, InterfaceC2463o interfaceC2463o) {
        super(enumC2667e4);
        this.f708c = interfaceC2463o;
    }
}
