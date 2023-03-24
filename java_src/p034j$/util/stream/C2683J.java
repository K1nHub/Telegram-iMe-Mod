package p034j$.util.stream;

import p034j$.lang.AbstractC2495a;
import p034j$.lang.AbstractC2496b;
import p034j$.lang.AbstractC2497c;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2593g;
import p034j$.util.function.InterfaceC2594h;
import p034j$.wrappers.C2945D;
import p034j$.wrappers.C2949F;
import p034j$.wrappers.C2957J;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2683J extends AbstractC2810f3 {

    /* renamed from: b */
    public final /* synthetic */ int f762b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f763c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2683J(C2689K c2689k, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f763c = c2689k;
    }

    @Override // p034j$.util.stream.InterfaceC2834j3, p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        switch (this.f762b) {
            case 0:
                this.f942a.accept(((C2957J) ((C2689K) this.f763c).f773m).m222a(d));
                return;
            case 1:
                this.f942a.accept((InterfaceC2852m3) ((InterfaceC2593g) ((C2695L) this.f763c).f781m).apply(d));
                return;
            case 2:
                this.f942a.accept(((C2949F) ((C2701M) this.f763c).f786m).m235a(d));
                return;
            case 3:
                this.f942a.accept(((InterfaceC2594h) ((C2707N) this.f763c).f797m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2745U interfaceC2745U = (InterfaceC2745U) ((InterfaceC2593g) ((C2689K) this.f763c).f773m).apply(d);
                if (interfaceC2745U != null) {
                    try {
                        interfaceC2745U.sequential().mo210j(new C2659F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2745U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2745U != null) {
                    interfaceC2745U.close();
                    return;
                }
                return;
            case 5:
                if (((C2945D) ((C2689K) this.f763c).f773m).m239b(d)) {
                    this.f942a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2592f) ((C2689K) this.f763c).f773m).accept(d);
                this.f942a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        switch (this.f762b) {
            case 4:
                this.f942a.mo311n(-1L);
                return;
            case 5:
                this.f942a.mo311n(-1L);
                return;
            default:
                this.f942a.mo311n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2683J(C2689K c2689k, InterfaceC2852m3 interfaceC2852m3, AbstractC2495a abstractC2495a) {
        super(interfaceC2852m3);
        this.f763c = c2689k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2683J(C2689K c2689k, InterfaceC2852m3 interfaceC2852m3, AbstractC2496b abstractC2496b) {
        super(interfaceC2852m3);
        this.f763c = c2689k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2683J(C2689K c2689k, InterfaceC2852m3 interfaceC2852m3, AbstractC2497c abstractC2497c) {
        super(interfaceC2852m3);
        this.f763c = c2689k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2683J(C2695L c2695l, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f763c = c2695l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2683J(C2701M c2701m, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f763c = c2701m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2683J(C2707N c2707n, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f763c = c2707n;
    }
}
