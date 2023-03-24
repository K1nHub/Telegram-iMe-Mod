package p034j$.util.stream;

import p034j$.lang.AbstractC2495a;
import p034j$.lang.AbstractC2496b;
import p034j$.lang.AbstractC2497c;
import p034j$.util.function.InterfaceC2603q;
import p034j$.util.function.InterfaceC2604r;
import p034j$.util.function.InterfaceC2606t;
import p034j$.wrappers.C2996i0;
import p034j$.wrappers.C3000k0;
import p034j$.wrappers.C3004m0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2771Z0 extends AbstractC2822h3 {

    /* renamed from: b */
    public final /* synthetic */ int f863b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f864c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771Z0(C2689K c2689k, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f864c = c2689k;
    }

    @Override // p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        switch (this.f863b) {
            case 0:
                this.f959a.accept(j);
                return;
            case 1:
                this.f959a.accept(((InterfaceC2606t) ((C2707N) this.f864c).f797m).applyAsLong(j));
                return;
            case 2:
                this.f959a.accept((InterfaceC2852m3) ((InterfaceC2604r) ((C2695L) this.f864c).f781m).apply(j));
                return;
            case 3:
                this.f959a.accept(((C3004m0) ((C2701M) this.f864c).f786m).m131a(j));
                return;
            case 4:
                this.f959a.accept(((C3000k0) ((C2689K) this.f864c).f773m).m137a(j));
                return;
            case 5:
                InterfaceC2802e1 interfaceC2802e1 = (InterfaceC2802e1) ((InterfaceC2604r) ((C2707N) this.f864c).f797m).apply(j);
                if (interfaceC2802e1 != null) {
                    try {
                        interfaceC2802e1.sequential().mo194d(new C2756W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2802e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2802e1 != null) {
                    interfaceC2802e1.close();
                    return;
                }
                return;
            case 6:
                if (((C2996i0) ((C2707N) this.f864c).f797m).m143b(j)) {
                    this.f959a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2603q) ((C2707N) this.f864c).f797m).accept(j);
                this.f959a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        switch (this.f863b) {
            case 5:
                this.f959a.mo311n(-1L);
                return;
            case 6:
                this.f959a.mo311n(-1L);
                return;
            default:
                this.f959a.mo311n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771Z0(C2695L c2695l, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f864c = c2695l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771Z0(C2701M c2701m, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f864c = c2701m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771Z0(C2707N c2707n, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f864c = c2707n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771Z0(C2707N c2707n, InterfaceC2852m3 interfaceC2852m3, AbstractC2495a abstractC2495a) {
        super(interfaceC2852m3);
        this.f864c = c2707n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771Z0(C2707N c2707n, InterfaceC2852m3 interfaceC2852m3, AbstractC2496b abstractC2496b) {
        super(interfaceC2852m3);
        this.f864c = c2707n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771Z0(C2707N c2707n, InterfaceC2852m3 interfaceC2852m3, AbstractC2497c abstractC2497c) {
        super(interfaceC2852m3);
        this.f864c = c2707n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2771Z0(C2713O c2713o, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f864c = c2713o;
    }
}
