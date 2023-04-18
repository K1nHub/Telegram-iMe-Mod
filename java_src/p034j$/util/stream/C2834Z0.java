package p034j$.util.stream;

import p034j$.lang.AbstractC2558a;
import p034j$.lang.AbstractC2559b;
import p034j$.lang.AbstractC2560c;
import p034j$.util.function.InterfaceC2666q;
import p034j$.util.function.InterfaceC2667r;
import p034j$.util.function.InterfaceC2669t;
import p034j$.wrappers.C3059i0;
import p034j$.wrappers.C3063k0;
import p034j$.wrappers.C3067m0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2834Z0 extends AbstractC2885h3 {

    /* renamed from: b */
    public final /* synthetic */ int f863b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f864c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2834Z0(C2752K c2752k, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f864c = c2752k;
    }

    @Override // p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        switch (this.f863b) {
            case 0:
                this.f959a.accept(j);
                return;
            case 1:
                this.f959a.accept(((InterfaceC2669t) ((C2770N) this.f864c).f797m).applyAsLong(j));
                return;
            case 2:
                this.f959a.accept((InterfaceC2915m3) ((InterfaceC2667r) ((C2758L) this.f864c).f781m).apply(j));
                return;
            case 3:
                this.f959a.accept(((C3067m0) ((C2764M) this.f864c).f786m).m112a(j));
                return;
            case 4:
                this.f959a.accept(((C3063k0) ((C2752K) this.f864c).f773m).m118a(j));
                return;
            case 5:
                InterfaceC2865e1 interfaceC2865e1 = (InterfaceC2865e1) ((InterfaceC2667r) ((C2770N) this.f864c).f797m).apply(j);
                if (interfaceC2865e1 != null) {
                    try {
                        interfaceC2865e1.sequential().mo175d(new C2819W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2865e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2865e1 != null) {
                    interfaceC2865e1.close();
                    return;
                }
                return;
            case 6:
                if (((C3059i0) ((C2770N) this.f864c).f797m).m124b(j)) {
                    this.f959a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2666q) ((C2770N) this.f864c).f797m).accept(j);
                this.f959a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        switch (this.f863b) {
            case 5:
                this.f959a.mo292n(-1L);
                return;
            case 6:
                this.f959a.mo292n(-1L);
                return;
            default:
                this.f959a.mo292n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2834Z0(C2758L c2758l, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f864c = c2758l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2834Z0(C2764M c2764m, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f864c = c2764m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2834Z0(C2770N c2770n, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f864c = c2770n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2834Z0(C2770N c2770n, InterfaceC2915m3 interfaceC2915m3, AbstractC2558a abstractC2558a) {
        super(interfaceC2915m3);
        this.f864c = c2770n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2834Z0(C2770N c2770n, InterfaceC2915m3 interfaceC2915m3, AbstractC2559b abstractC2559b) {
        super(interfaceC2915m3);
        this.f864c = c2770n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2834Z0(C2770N c2770n, InterfaceC2915m3 interfaceC2915m3, AbstractC2560c abstractC2560c) {
        super(interfaceC2915m3);
        this.f864c = c2770n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2834Z0(C2776O c2776o, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f864c = c2776o;
    }
}
