package p034j$.util.stream;

import p034j$.lang.AbstractC2357a;
import p034j$.lang.AbstractC2358b;
import p034j$.lang.AbstractC2359c;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2455g;
import p034j$.util.function.InterfaceC2456h;
import p034j$.wrappers.C2807D;
import p034j$.wrappers.C2811F;
import p034j$.wrappers.C2819J;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2545J extends AbstractC2672f3 {

    /* renamed from: b */
    public final /* synthetic */ int f756b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f757c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2545J(C2551K c2551k, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f757c = c2551k;
    }

    @Override // p034j$.util.stream.InterfaceC2696j3, p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        switch (this.f756b) {
            case 0:
                this.f936a.accept(((C2819J) ((C2551K) this.f757c).f767m).m223a(d));
                return;
            case 1:
                this.f936a.accept((InterfaceC2714m3) ((InterfaceC2455g) ((C2557L) this.f757c).f775m).apply(d));
                return;
            case 2:
                this.f936a.accept(((C2811F) ((C2563M) this.f757c).f780m).m236a(d));
                return;
            case 3:
                this.f936a.accept(((InterfaceC2456h) ((C2569N) this.f757c).f791m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2607U interfaceC2607U = (InterfaceC2607U) ((InterfaceC2455g) ((C2551K) this.f757c).f767m).apply(d);
                if (interfaceC2607U != null) {
                    try {
                        interfaceC2607U.sequential().mo211j(new C2521F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2607U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2607U != null) {
                    interfaceC2607U.close();
                    return;
                }
                return;
            case 5:
                if (((C2807D) ((C2551K) this.f757c).f767m).m240b(d)) {
                    this.f936a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2454f) ((C2551K) this.f757c).f767m).accept(d);
                this.f936a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        switch (this.f756b) {
            case 4:
                this.f936a.mo312n(-1L);
                return;
            case 5:
                this.f936a.mo312n(-1L);
                return;
            default:
                this.f936a.mo312n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2545J(C2551K c2551k, InterfaceC2714m3 interfaceC2714m3, AbstractC2357a abstractC2357a) {
        super(interfaceC2714m3);
        this.f757c = c2551k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2545J(C2551K c2551k, InterfaceC2714m3 interfaceC2714m3, AbstractC2358b abstractC2358b) {
        super(interfaceC2714m3);
        this.f757c = c2551k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2545J(C2551K c2551k, InterfaceC2714m3 interfaceC2714m3, AbstractC2359c abstractC2359c) {
        super(interfaceC2714m3);
        this.f757c = c2551k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2545J(C2557L c2557l, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f757c = c2557l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2545J(C2563M c2563m, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f757c = c2563m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2545J(C2569N c2569n, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f757c = c2569n;
    }
}
