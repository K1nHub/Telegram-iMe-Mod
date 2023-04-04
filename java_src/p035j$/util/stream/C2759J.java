package p035j$.util.stream;

import p035j$.lang.AbstractC2571a;
import p035j$.lang.AbstractC2572b;
import p035j$.lang.AbstractC2573c;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2669g;
import p035j$.util.function.InterfaceC2670h;
import p035j$.wrappers.C3021D;
import p035j$.wrappers.C3025F;
import p035j$.wrappers.C3033J;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2759J extends AbstractC2886f3 {

    /* renamed from: b */
    public final /* synthetic */ int f767b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f768c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2759J(C2765K c2765k, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f768c = c2765k;
    }

    @Override // p035j$.util.stream.InterfaceC2910j3, p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        switch (this.f767b) {
            case 0:
                this.f947a.accept(((C3033J) ((C2765K) this.f768c).f778m).m217a(d));
                return;
            case 1:
                this.f947a.accept((InterfaceC2928m3) ((InterfaceC2669g) ((C2771L) this.f768c).f786m).apply(d));
                return;
            case 2:
                this.f947a.accept(((C3025F) ((C2777M) this.f768c).f791m).m230a(d));
                return;
            case 3:
                this.f947a.accept(((InterfaceC2670h) ((C2783N) this.f768c).f802m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2821U interfaceC2821U = (InterfaceC2821U) ((InterfaceC2669g) ((C2765K) this.f768c).f778m).apply(d);
                if (interfaceC2821U != null) {
                    try {
                        interfaceC2821U.sequential().mo205j(new C2735F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2821U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2821U != null) {
                    interfaceC2821U.close();
                    return;
                }
                return;
            case 5:
                if (((C3021D) ((C2765K) this.f768c).f778m).m234b(d)) {
                    this.f947a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2668f) ((C2765K) this.f768c).f778m).accept(d);
                this.f947a.accept(d);
                return;
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        switch (this.f767b) {
            case 4:
                this.f947a.mo306n(-1L);
                return;
            case 5:
                this.f947a.mo306n(-1L);
                return;
            default:
                this.f947a.mo306n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2759J(C2765K c2765k, InterfaceC2928m3 interfaceC2928m3, AbstractC2571a abstractC2571a) {
        super(interfaceC2928m3);
        this.f768c = c2765k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2759J(C2765K c2765k, InterfaceC2928m3 interfaceC2928m3, AbstractC2572b abstractC2572b) {
        super(interfaceC2928m3);
        this.f768c = c2765k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2759J(C2765K c2765k, InterfaceC2928m3 interfaceC2928m3, AbstractC2573c abstractC2573c) {
        super(interfaceC2928m3);
        this.f768c = c2765k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2759J(C2771L c2771l, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f768c = c2771l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2759J(C2777M c2777m, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f768c = c2777m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2759J(C2783N c2783n, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f768c = c2783n;
    }
}
