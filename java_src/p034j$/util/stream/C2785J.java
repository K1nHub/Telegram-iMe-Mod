package p034j$.util.stream;

import p034j$.lang.AbstractC2597a;
import p034j$.lang.AbstractC2598b;
import p034j$.lang.AbstractC2599c;
import p034j$.util.function.InterfaceC2694f;
import p034j$.util.function.InterfaceC2695g;
import p034j$.util.function.InterfaceC2696h;
import p034j$.wrappers.C3047D;
import p034j$.wrappers.C3051F;
import p034j$.wrappers.C3059J;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2785J extends AbstractC2912f3 {

    /* renamed from: b */
    public final /* synthetic */ int f765b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f766c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2785J(C2791K c2791k, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f766c = c2791k;
    }

    @Override // p034j$.util.stream.InterfaceC2936j3, p034j$.util.stream.InterfaceC2954m3
    public void accept(double d) {
        switch (this.f765b) {
            case 0:
                this.f945a.accept(((C3059J) ((C2791K) this.f766c).f776m).m208a(d));
                return;
            case 1:
                this.f945a.accept((InterfaceC2954m3) ((InterfaceC2695g) ((C2797L) this.f766c).f784m).apply(d));
                return;
            case 2:
                this.f945a.accept(((C3051F) ((C2803M) this.f766c).f789m).m221a(d));
                return;
            case 3:
                this.f945a.accept(((InterfaceC2696h) ((C2809N) this.f766c).f800m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2847U interfaceC2847U = (InterfaceC2847U) ((InterfaceC2695g) ((C2791K) this.f766c).f776m).apply(d);
                if (interfaceC2847U != null) {
                    try {
                        interfaceC2847U.sequential().mo196j(new C2761F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2847U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2847U != null) {
                    interfaceC2847U.close();
                    return;
                }
                return;
            case 5:
                if (((C3047D) ((C2791K) this.f766c).f776m).m225b(d)) {
                    this.f945a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2694f) ((C2791K) this.f766c).f776m).accept(d);
                this.f945a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        switch (this.f765b) {
            case 4:
                this.f945a.mo297n(-1L);
                return;
            case 5:
                this.f945a.mo297n(-1L);
                return;
            default:
                this.f945a.mo297n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2785J(C2791K c2791k, InterfaceC2954m3 interfaceC2954m3, AbstractC2597a abstractC2597a) {
        super(interfaceC2954m3);
        this.f766c = c2791k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2785J(C2791K c2791k, InterfaceC2954m3 interfaceC2954m3, AbstractC2598b abstractC2598b) {
        super(interfaceC2954m3);
        this.f766c = c2791k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2785J(C2791K c2791k, InterfaceC2954m3 interfaceC2954m3, AbstractC2599c abstractC2599c) {
        super(interfaceC2954m3);
        this.f766c = c2791k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2785J(C2797L c2797l, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f766c = c2797l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2785J(C2803M c2803m, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f766c = c2803m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2785J(C2809N c2809n, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f766c = c2809n;
    }
}
