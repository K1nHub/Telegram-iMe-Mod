package p034j$.util.stream;

import p034j$.lang.AbstractC2597a;
import p034j$.lang.AbstractC2598b;
import p034j$.lang.AbstractC2599c;
import p034j$.util.function.InterfaceC2705q;
import p034j$.util.function.InterfaceC2706r;
import p034j$.util.function.InterfaceC2708t;
import p034j$.wrappers.C3098i0;
import p034j$.wrappers.C3102k0;
import p034j$.wrappers.C3106m0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2873Z0 extends AbstractC2924h3 {

    /* renamed from: b */
    public final /* synthetic */ int f866b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f867c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2873Z0(C2791K c2791k, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f867c = c2791k;
    }

    @Override // p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public void accept(long j) {
        switch (this.f866b) {
            case 0:
                this.f962a.accept(j);
                return;
            case 1:
                this.f962a.accept(((InterfaceC2708t) ((C2809N) this.f867c).f800m).applyAsLong(j));
                return;
            case 2:
                this.f962a.accept((InterfaceC2954m3) ((InterfaceC2706r) ((C2797L) this.f867c).f784m).apply(j));
                return;
            case 3:
                this.f962a.accept(((C3106m0) ((C2803M) this.f867c).f789m).m117a(j));
                return;
            case 4:
                this.f962a.accept(((C3102k0) ((C2791K) this.f867c).f776m).m123a(j));
                return;
            case 5:
                InterfaceC2904e1 interfaceC2904e1 = (InterfaceC2904e1) ((InterfaceC2706r) ((C2809N) this.f867c).f800m).apply(j);
                if (interfaceC2904e1 != null) {
                    try {
                        interfaceC2904e1.sequential().mo180d(new C2858W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2904e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2904e1 != null) {
                    interfaceC2904e1.close();
                    return;
                }
                return;
            case 6:
                if (((C3098i0) ((C2809N) this.f867c).f800m).m129b(j)) {
                    this.f962a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2705q) ((C2809N) this.f867c).f800m).accept(j);
                this.f962a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        switch (this.f866b) {
            case 5:
                this.f962a.mo297n(-1L);
                return;
            case 6:
                this.f962a.mo297n(-1L);
                return;
            default:
                this.f962a.mo297n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2873Z0(C2797L c2797l, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f867c = c2797l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2873Z0(C2803M c2803m, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f867c = c2803m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2873Z0(C2809N c2809n, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f867c = c2809n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2873Z0(C2809N c2809n, InterfaceC2954m3 interfaceC2954m3, AbstractC2597a abstractC2597a) {
        super(interfaceC2954m3);
        this.f867c = c2809n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2873Z0(C2809N c2809n, InterfaceC2954m3 interfaceC2954m3, AbstractC2598b abstractC2598b) {
        super(interfaceC2954m3);
        this.f867c = c2809n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2873Z0(C2809N c2809n, InterfaceC2954m3 interfaceC2954m3, AbstractC2599c abstractC2599c) {
        super(interfaceC2954m3);
        this.f867c = c2809n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2873Z0(C2815O c2815o, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f867c = c2815o;
    }
}
