package p035j$.util.stream;

import p035j$.lang.AbstractC2571a;
import p035j$.lang.AbstractC2572b;
import p035j$.lang.AbstractC2573c;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2676n;
import p035j$.wrappers.C3049U;
import p035j$.wrappers.C3051W;
import p035j$.wrappers.C3056a0;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2736F0 extends AbstractC2892g3 {

    /* renamed from: b */
    public final /* synthetic */ int f736b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f737c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2736F0(C2765K c2765k, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f737c = c2765k;
    }

    @Override // p035j$.util.stream.InterfaceC2916k3, p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        switch (this.f736b) {
            case 0:
                this.f959a.accept(i);
                return;
            case 1:
                ((InterfaceC2674l) ((C2777M) this.f737c).f791m).accept(i);
                this.f959a.accept(i);
                return;
            case 2:
                this.f959a.accept(i);
                return;
            case 3:
                this.f959a.accept(((C3056a0) ((C2777M) this.f737c).f791m).m161a(i));
                return;
            case 4:
                this.f959a.accept((InterfaceC2928m3) ((InterfaceC2675m) ((C2771L) this.f737c).f786m).apply(i));
                return;
            case 5:
                this.f959a.accept(((InterfaceC2676n) ((C2783N) this.f737c).f802m).applyAsLong(i));
                return;
            case 6:
                this.f959a.accept(((C3051W) ((C2765K) this.f737c).f778m).m167a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((InterfaceC2675m) ((C2777M) this.f737c).f791m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo269U(new C2712B0(this));
                    } catch (Throwable th) {
                        try {
                            intStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (intStream != null) {
                    intStream.close();
                    return;
                }
                return;
            default:
                if (((C3049U) ((C2777M) this.f737c).f791m).m169b(i)) {
                    this.f959a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        switch (this.f736b) {
            case 7:
                this.f959a.mo306n(-1L);
                return;
            case 8:
                this.f959a.mo306n(-1L);
                return;
            default:
                this.f959a.mo306n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2736F0(C2771L c2771l, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f737c = c2771l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2736F0(C2777M c2777m, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f737c = c2777m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2736F0(C2777M c2777m, InterfaceC2928m3 interfaceC2928m3, AbstractC2571a abstractC2571a) {
        super(interfaceC2928m3);
        this.f737c = c2777m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2736F0(C2777M c2777m, InterfaceC2928m3 interfaceC2928m3, AbstractC2572b abstractC2572b) {
        super(interfaceC2928m3);
        this.f737c = c2777m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2736F0(C2777M c2777m, InterfaceC2928m3 interfaceC2928m3, AbstractC2573c abstractC2573c) {
        super(interfaceC2928m3);
        this.f737c = c2777m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2736F0(C2783N c2783n, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f737c = c2783n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2736F0(C2789O c2789o, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f737c = c2789o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2736F0(C2742G0 c2742g0, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f737c = c2742g0;
    }
}
