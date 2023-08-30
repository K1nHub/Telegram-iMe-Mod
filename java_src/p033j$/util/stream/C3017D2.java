package p033j$.util.stream;

import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2957d;
import p033j$.util.function.InterfaceC2963j;
import p033j$.util.function.InterfaceC2968o;
/* renamed from: j$.util.stream.D2 */
/* loaded from: classes2.dex */
class C3017D2 extends AbstractC3115U2 {

    /* renamed from: b */
    public final /* synthetic */ int f811b = 1;

    /* renamed from: c */
    final /* synthetic */ Object f812c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3017D2(EnumC3172e4 enumC3172e4, InterfaceC2955b interfaceC2955b) {
        super(enumC3172e4);
        this.f812c = interfaceC2955b;
    }

    @Override // p033j$.util.stream.AbstractC3115U2
    /* renamed from: a */
    public InterfaceC3105S2 mo293a() {
        switch (this.f811b) {
            case 0:
                return new C3023E2((InterfaceC2957d) this.f812c);
            case 1:
                return new C3041H2((InterfaceC2955b) this.f812c);
            case 2:
                return new C3077N2((InterfaceC2963j) this.f812c);
            default:
                return new C3100R2((InterfaceC2968o) this.f812c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3017D2(EnumC3172e4 enumC3172e4, InterfaceC2957d interfaceC2957d) {
        super(enumC3172e4);
        this.f812c = interfaceC2957d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3017D2(EnumC3172e4 enumC3172e4, InterfaceC2963j interfaceC2963j) {
        super(enumC3172e4);
        this.f812c = interfaceC2963j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3017D2(EnumC3172e4 enumC3172e4, InterfaceC2968o interfaceC2968o) {
        super(enumC3172e4);
        this.f812c = interfaceC2968o;
    }
}
