package p034j$.util.stream;

import p034j$.lang.AbstractC2481a;
import p034j$.lang.AbstractC2482b;
import p034j$.lang.AbstractC2483c;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2586n;
import p034j$.wrappers.C2959U;
import p034j$.wrappers.C2961W;
import p034j$.wrappers.C2966a0;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2646F0 extends AbstractC2802g3 {

    /* renamed from: b */
    public final /* synthetic */ int f730b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f731c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2646F0(C2675K c2675k, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f731c = c2675k;
    }

    @Override // p034j$.util.stream.InterfaceC2826k3, p034j$.util.stream.InterfaceC2838m3
    public void accept(int i) {
        switch (this.f730b) {
            case 0:
                this.f953a.accept(i);
                return;
            case 1:
                ((InterfaceC2584l) ((C2687M) this.f731c).f785m).accept(i);
                this.f953a.accept(i);
                return;
            case 2:
                this.f953a.accept(i);
                return;
            case 3:
                this.f953a.accept(((C2966a0) ((C2687M) this.f731c).f785m).m167a(i));
                return;
            case 4:
                this.f953a.accept((InterfaceC2838m3) ((InterfaceC2585m) ((C2681L) this.f731c).f780m).apply(i));
                return;
            case 5:
                this.f953a.accept(((InterfaceC2586n) ((C2693N) this.f731c).f796m).applyAsLong(i));
                return;
            case 6:
                this.f953a.accept(((C2961W) ((C2675K) this.f731c).f772m).m173a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((InterfaceC2585m) ((C2687M) this.f731c).f785m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo275U(new C2622B0(this));
                    } catch (Throwable th) {
                        try {
                            intStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (intStream != null) {
                    intStream.close();
                    return;
                }
                return;
            default:
                if (((C2959U) ((C2687M) this.f731c).f785m).m175b(i)) {
                    this.f953a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        switch (this.f730b) {
            case 7:
                this.f953a.mo312n(-1L);
                return;
            case 8:
                this.f953a.mo312n(-1L);
                return;
            default:
                this.f953a.mo312n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2646F0(C2681L c2681l, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f731c = c2681l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2646F0(C2687M c2687m, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f731c = c2687m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2646F0(C2687M c2687m, InterfaceC2838m3 interfaceC2838m3, AbstractC2481a abstractC2481a) {
        super(interfaceC2838m3);
        this.f731c = c2687m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2646F0(C2687M c2687m, InterfaceC2838m3 interfaceC2838m3, AbstractC2482b abstractC2482b) {
        super(interfaceC2838m3);
        this.f731c = c2687m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2646F0(C2687M c2687m, InterfaceC2838m3 interfaceC2838m3, AbstractC2483c abstractC2483c) {
        super(interfaceC2838m3);
        this.f731c = c2687m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2646F0(C2693N c2693n, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f731c = c2693n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2646F0(C2699O c2699o, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f731c = c2699o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2646F0(C2652G0 c2652g0, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f731c = c2652g0;
    }
}
