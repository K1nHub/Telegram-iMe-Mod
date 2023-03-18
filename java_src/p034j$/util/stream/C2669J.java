package p034j$.util.stream;

import p034j$.lang.AbstractC2481a;
import p034j$.lang.AbstractC2482b;
import p034j$.lang.AbstractC2483c;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2579g;
import p034j$.util.function.InterfaceC2580h;
import p034j$.wrappers.C2931D;
import p034j$.wrappers.C2935F;
import p034j$.wrappers.C2943J;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2669J extends AbstractC2796f3 {

    /* renamed from: b */
    public final /* synthetic */ int f761b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f762c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2669J(C2675K c2675k, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f762c = c2675k;
    }

    @Override // p034j$.util.stream.InterfaceC2820j3, p034j$.util.stream.InterfaceC2838m3
    public void accept(double d) {
        switch (this.f761b) {
            case 0:
                this.f941a.accept(((C2943J) ((C2675K) this.f762c).f772m).m223a(d));
                return;
            case 1:
                this.f941a.accept((InterfaceC2838m3) ((InterfaceC2579g) ((C2681L) this.f762c).f780m).apply(d));
                return;
            case 2:
                this.f941a.accept(((C2935F) ((C2687M) this.f762c).f785m).m236a(d));
                return;
            case 3:
                this.f941a.accept(((InterfaceC2580h) ((C2693N) this.f762c).f796m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2731U interfaceC2731U = (InterfaceC2731U) ((InterfaceC2579g) ((C2675K) this.f762c).f772m).apply(d);
                if (interfaceC2731U != null) {
                    try {
                        interfaceC2731U.sequential().mo211j(new C2645F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2731U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2731U != null) {
                    interfaceC2731U.close();
                    return;
                }
                return;
            case 5:
                if (((C2931D) ((C2675K) this.f762c).f772m).m240b(d)) {
                    this.f941a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2578f) ((C2675K) this.f762c).f772m).accept(d);
                this.f941a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        switch (this.f761b) {
            case 4:
                this.f941a.mo312n(-1L);
                return;
            case 5:
                this.f941a.mo312n(-1L);
                return;
            default:
                this.f941a.mo312n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2669J(C2675K c2675k, InterfaceC2838m3 interfaceC2838m3, AbstractC2481a abstractC2481a) {
        super(interfaceC2838m3);
        this.f762c = c2675k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2669J(C2675K c2675k, InterfaceC2838m3 interfaceC2838m3, AbstractC2482b abstractC2482b) {
        super(interfaceC2838m3);
        this.f762c = c2675k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2669J(C2675K c2675k, InterfaceC2838m3 interfaceC2838m3, AbstractC2483c abstractC2483c) {
        super(interfaceC2838m3);
        this.f762c = c2675k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2669J(C2681L c2681l, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f762c = c2681l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2669J(C2687M c2687m, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f762c = c2687m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2669J(C2693N c2693n, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f762c = c2693n;
    }
}
