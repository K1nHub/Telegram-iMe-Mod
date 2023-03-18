package p034j$.util.stream;

import p034j$.lang.AbstractC2481a;
import p034j$.lang.AbstractC2482b;
import p034j$.lang.AbstractC2483c;
import p034j$.util.function.InterfaceC2589q;
import p034j$.util.function.InterfaceC2590r;
import p034j$.util.function.InterfaceC2592t;
import p034j$.wrappers.C2982i0;
import p034j$.wrappers.C2986k0;
import p034j$.wrappers.C2990m0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2757Z0 extends AbstractC2808h3 {

    /* renamed from: b */
    public final /* synthetic */ int f862b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f863c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757Z0(C2675K c2675k, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f863c = c2675k;
    }

    @Override // p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        switch (this.f862b) {
            case 0:
                this.f958a.accept(j);
                return;
            case 1:
                this.f958a.accept(((InterfaceC2592t) ((C2693N) this.f863c).f796m).applyAsLong(j));
                return;
            case 2:
                this.f958a.accept((InterfaceC2838m3) ((InterfaceC2590r) ((C2681L) this.f863c).f780m).apply(j));
                return;
            case 3:
                this.f958a.accept(((C2990m0) ((C2687M) this.f863c).f785m).m132a(j));
                return;
            case 4:
                this.f958a.accept(((C2986k0) ((C2675K) this.f863c).f772m).m138a(j));
                return;
            case 5:
                InterfaceC2788e1 interfaceC2788e1 = (InterfaceC2788e1) ((InterfaceC2590r) ((C2693N) this.f863c).f796m).apply(j);
                if (interfaceC2788e1 != null) {
                    try {
                        interfaceC2788e1.sequential().mo195d(new C2742W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2788e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2788e1 != null) {
                    interfaceC2788e1.close();
                    return;
                }
                return;
            case 6:
                if (((C2982i0) ((C2693N) this.f863c).f796m).m144b(j)) {
                    this.f958a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2589q) ((C2693N) this.f863c).f796m).accept(j);
                this.f958a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        switch (this.f862b) {
            case 5:
                this.f958a.mo312n(-1L);
                return;
            case 6:
                this.f958a.mo312n(-1L);
                return;
            default:
                this.f958a.mo312n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757Z0(C2681L c2681l, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f863c = c2681l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757Z0(C2687M c2687m, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f863c = c2687m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757Z0(C2693N c2693n, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f863c = c2693n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757Z0(C2693N c2693n, InterfaceC2838m3 interfaceC2838m3, AbstractC2481a abstractC2481a) {
        super(interfaceC2838m3);
        this.f863c = c2693n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757Z0(C2693N c2693n, InterfaceC2838m3 interfaceC2838m3, AbstractC2482b abstractC2482b) {
        super(interfaceC2838m3);
        this.f863c = c2693n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757Z0(C2693N c2693n, InterfaceC2838m3 interfaceC2838m3, AbstractC2483c abstractC2483c) {
        super(interfaceC2838m3);
        this.f863c = c2693n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2757Z0(C2699O c2699o, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f863c = c2699o;
    }
}
