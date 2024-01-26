package p033j$.util.stream;

import p033j$.lang.AbstractC2665a;
import p033j$.lang.AbstractC2666b;
import p033j$.lang.AbstractC2667c;
import p033j$.util.function.InterfaceC2815f;
import p033j$.util.function.InterfaceC2816g;
import p033j$.util.function.InterfaceC2817h;
import p033j$.wrappers.C3162C;
import p033j$.wrappers.C3166E;
import p033j$.wrappers.C3174I;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2902J extends AbstractC3029f3 {

    /* renamed from: b */
    public final /* synthetic */ int f900b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f901c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2902J(C2908K c2908k, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f901c = c2908k;
    }

    @Override // p033j$.util.stream.InterfaceC3053j3, p033j$.util.stream.InterfaceC3071m3
    public void accept(double d) {
        switch (this.f900b) {
            case 0:
                this.f1080a.accept(((C3174I) ((C2908K) this.f901c).f911m).m264a(d));
                return;
            case 1:
                this.f1080a.accept((InterfaceC3071m3) ((InterfaceC2816g) ((C2914L) this.f901c).f919m).apply(d));
                return;
            case 2:
                this.f1080a.accept(((C3166E) ((C2920M) this.f901c).f924m).m291a(d));
                return;
            case 3:
                this.f1080a.accept(((InterfaceC2817h) ((C2926N) this.f901c).f935m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2964U interfaceC2964U = (InterfaceC2964U) ((InterfaceC2816g) ((C2908K) this.f901c).f911m).apply(d);
                if (interfaceC2964U != null) {
                    try {
                        interfaceC2964U.sequential().mo271j(new C2878F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2964U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2964U != null) {
                    interfaceC2964U.close();
                    return;
                }
                return;
            case 5:
                if (((C3162C) ((C2908K) this.f901c).f911m).m295b(d)) {
                    this.f1080a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2815f) ((C2908K) this.f901c).f911m).accept(d);
                this.f1080a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        switch (this.f900b) {
            case 4:
                this.f1080a.mo364m(-1L);
                return;
            case 5:
                this.f1080a.mo364m(-1L);
                return;
            default:
                this.f1080a.mo364m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2902J(C2908K c2908k, InterfaceC3071m3 interfaceC3071m3, AbstractC2665a abstractC2665a) {
        super(interfaceC3071m3);
        this.f901c = c2908k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2902J(C2908K c2908k, InterfaceC3071m3 interfaceC3071m3, AbstractC2666b abstractC2666b) {
        super(interfaceC3071m3);
        this.f901c = c2908k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2902J(C2908K c2908k, InterfaceC3071m3 interfaceC3071m3, AbstractC2667c abstractC2667c) {
        super(interfaceC3071m3);
        this.f901c = c2908k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2902J(C2914L c2914l, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f901c = c2914l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2902J(C2920M c2920m, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f901c = c2920m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2902J(C2926N c2926n, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f901c = c2926n;
    }
}
