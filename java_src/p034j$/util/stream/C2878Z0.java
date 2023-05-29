package p034j$.util.stream;

import p034j$.lang.AbstractC2602a;
import p034j$.lang.AbstractC2603b;
import p034j$.lang.AbstractC2604c;
import p034j$.util.function.InterfaceC2710q;
import p034j$.util.function.InterfaceC2711r;
import p034j$.util.function.InterfaceC2713t;
import p034j$.wrappers.C3103i0;
import p034j$.wrappers.C3107k0;
import p034j$.wrappers.C3111m0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2878Z0 extends AbstractC2929h3 {

    /* renamed from: b */
    public final /* synthetic */ int f866b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f867c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878Z0(C2796K c2796k, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f867c = c2796k;
    }

    @Override // p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        switch (this.f866b) {
            case 0:
                this.f962a.accept(j);
                return;
            case 1:
                this.f962a.accept(((InterfaceC2713t) ((C2814N) this.f867c).f800m).applyAsLong(j));
                return;
            case 2:
                this.f962a.accept((InterfaceC2959m3) ((InterfaceC2711r) ((C2802L) this.f867c).f784m).apply(j));
                return;
            case 3:
                this.f962a.accept(((C3111m0) ((C2808M) this.f867c).f789m).m117a(j));
                return;
            case 4:
                this.f962a.accept(((C3107k0) ((C2796K) this.f867c).f776m).m123a(j));
                return;
            case 5:
                InterfaceC2909e1 interfaceC2909e1 = (InterfaceC2909e1) ((InterfaceC2711r) ((C2814N) this.f867c).f800m).apply(j);
                if (interfaceC2909e1 != null) {
                    try {
                        interfaceC2909e1.sequential().mo180d(new C2863W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2909e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2909e1 != null) {
                    interfaceC2909e1.close();
                    return;
                }
                return;
            case 6:
                if (((C3103i0) ((C2814N) this.f867c).f800m).m129b(j)) {
                    this.f962a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2710q) ((C2814N) this.f867c).f800m).accept(j);
                this.f962a.accept(j);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
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
    public C2878Z0(C2802L c2802l, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f867c = c2802l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878Z0(C2808M c2808m, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f867c = c2808m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878Z0(C2814N c2814n, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f867c = c2814n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878Z0(C2814N c2814n, InterfaceC2959m3 interfaceC2959m3, AbstractC2602a abstractC2602a) {
        super(interfaceC2959m3);
        this.f867c = c2814n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878Z0(C2814N c2814n, InterfaceC2959m3 interfaceC2959m3, AbstractC2603b abstractC2603b) {
        super(interfaceC2959m3);
        this.f867c = c2814n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878Z0(C2814N c2814n, InterfaceC2959m3 interfaceC2959m3, AbstractC2604c abstractC2604c) {
        super(interfaceC2959m3);
        this.f867c = c2814n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878Z0(C2820O c2820o, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f867c = c2820o;
    }
}
