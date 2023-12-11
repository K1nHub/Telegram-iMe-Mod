package p033j$.util.stream;

import p033j$.util.function.InterfaceC2813b;
import p033j$.util.function.InterfaceC2815d;
import p033j$.util.function.InterfaceC2821j;
import p033j$.util.function.InterfaceC2825n;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C2871D2 extends AbstractC2969U2 {

    /* renamed from: b */
    public final /* synthetic */ int f851b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f852c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2871D2(EnumC3026e4 enumC3026e4, InterfaceC2813b interfaceC2813b) {
        super(enumC3026e4);
        this.f852c = interfaceC2813b;
    }

    @Override // p033j$.util.stream.AbstractC2969U2
    /* renamed from: a */
    public InterfaceC2959S2 mo339a() {
        switch (this.f851b) {
            case 0:
                return new C2877E2((InterfaceC2815d) this.f852c);
            case 1:
                return new C2895H2((InterfaceC2813b) this.f852c);
            case 2:
                return new C2931N2((InterfaceC2821j) this.f852c);
            default:
                return new C2954R2((InterfaceC2825n) this.f852c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2871D2(EnumC3026e4 enumC3026e4, InterfaceC2815d interfaceC2815d) {
        super(enumC3026e4);
        this.f852c = interfaceC2815d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2871D2(EnumC3026e4 enumC3026e4, InterfaceC2821j interfaceC2821j) {
        super(enumC3026e4);
        this.f852c = interfaceC2821j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2871D2(EnumC3026e4 enumC3026e4, InterfaceC2825n interfaceC2825n) {
        super(enumC3026e4);
        this.f852c = interfaceC2825n;
    }
}
