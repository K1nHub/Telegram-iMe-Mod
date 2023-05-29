package p034j$.util.stream;

import p034j$.lang.AbstractC2602a;
import p034j$.lang.AbstractC2603b;
import p034j$.lang.AbstractC2604c;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2700g;
import p034j$.util.function.InterfaceC2701h;
import p034j$.wrappers.C3052D;
import p034j$.wrappers.C3056F;
import p034j$.wrappers.C3064J;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2790J extends AbstractC2917f3 {

    /* renamed from: b */
    public final /* synthetic */ int f765b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f766c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2790J(C2796K c2796k, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f766c = c2796k;
    }

    @Override // p034j$.util.stream.InterfaceC2941j3, p034j$.util.stream.InterfaceC2959m3
    public void accept(double d) {
        switch (this.f765b) {
            case 0:
                this.f945a.accept(((C3064J) ((C2796K) this.f766c).f776m).m208a(d));
                return;
            case 1:
                this.f945a.accept((InterfaceC2959m3) ((InterfaceC2700g) ((C2802L) this.f766c).f784m).apply(d));
                return;
            case 2:
                this.f945a.accept(((C3056F) ((C2808M) this.f766c).f789m).m221a(d));
                return;
            case 3:
                this.f945a.accept(((InterfaceC2701h) ((C2814N) this.f766c).f800m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2852U interfaceC2852U = (InterfaceC2852U) ((InterfaceC2700g) ((C2796K) this.f766c).f776m).apply(d);
                if (interfaceC2852U != null) {
                    try {
                        interfaceC2852U.sequential().mo196j(new C2766F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2852U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2852U != null) {
                    interfaceC2852U.close();
                    return;
                }
                return;
            case 5:
                if (((C3052D) ((C2796K) this.f766c).f776m).m225b(d)) {
                    this.f945a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2699f) ((C2796K) this.f766c).f776m).accept(d);
                this.f945a.accept(d);
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
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
    public C2790J(C2796K c2796k, InterfaceC2959m3 interfaceC2959m3, AbstractC2602a abstractC2602a) {
        super(interfaceC2959m3);
        this.f766c = c2796k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2790J(C2796K c2796k, InterfaceC2959m3 interfaceC2959m3, AbstractC2603b abstractC2603b) {
        super(interfaceC2959m3);
        this.f766c = c2796k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2790J(C2796K c2796k, InterfaceC2959m3 interfaceC2959m3, AbstractC2604c abstractC2604c) {
        super(interfaceC2959m3);
        this.f766c = c2796k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2790J(C2802L c2802l, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f766c = c2802l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2790J(C2808M c2808m, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f766c = c2808m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2790J(C2814N c2814n, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f766c = c2814n;
    }
}
