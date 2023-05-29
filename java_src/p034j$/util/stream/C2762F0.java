package p034j$.util.stream;

import p034j$.lang.AbstractC2597a;
import p034j$.lang.AbstractC2598b;
import p034j$.lang.AbstractC2599c;
import p034j$.util.function.InterfaceC2700l;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2702n;
import p034j$.wrappers.C3075U;
import p034j$.wrappers.C3077W;
import p034j$.wrappers.C3082a0;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2762F0 extends AbstractC2918g3 {

    /* renamed from: b */
    public final /* synthetic */ int f734b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f735c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762F0(C2791K c2791k, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f735c = c2791k;
    }

    @Override // p034j$.util.stream.InterfaceC2942k3, p034j$.util.stream.InterfaceC2954m3
    public void accept(int i) {
        switch (this.f734b) {
            case 0:
                this.f957a.accept(i);
                return;
            case 1:
                ((InterfaceC2700l) ((C2803M) this.f735c).f789m).accept(i);
                this.f957a.accept(i);
                return;
            case 2:
                this.f957a.accept(i);
                return;
            case 3:
                this.f957a.accept(((C3082a0) ((C2803M) this.f735c).f789m).m152a(i));
                return;
            case 4:
                this.f957a.accept((InterfaceC2954m3) ((InterfaceC2701m) ((C2797L) this.f735c).f784m).apply(i));
                return;
            case 5:
                this.f957a.accept(((InterfaceC2702n) ((C2809N) this.f735c).f800m).applyAsLong(i));
                return;
            case 6:
                this.f957a.accept(((C3077W) ((C2791K) this.f735c).f776m).m158a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((InterfaceC2701m) ((C2803M) this.f735c).f789m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo260U(new C2738B0(this));
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
                if (((C3075U) ((C2803M) this.f735c).f789m).m160b(i)) {
                    this.f957a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        switch (this.f734b) {
            case 7:
                this.f957a.mo297n(-1L);
                return;
            case 8:
                this.f957a.mo297n(-1L);
                return;
            default:
                this.f957a.mo297n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762F0(C2797L c2797l, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f735c = c2797l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762F0(C2803M c2803m, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f735c = c2803m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762F0(C2803M c2803m, InterfaceC2954m3 interfaceC2954m3, AbstractC2597a abstractC2597a) {
        super(interfaceC2954m3);
        this.f735c = c2803m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762F0(C2803M c2803m, InterfaceC2954m3 interfaceC2954m3, AbstractC2598b abstractC2598b) {
        super(interfaceC2954m3);
        this.f735c = c2803m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762F0(C2803M c2803m, InterfaceC2954m3 interfaceC2954m3, AbstractC2599c abstractC2599c) {
        super(interfaceC2954m3);
        this.f735c = c2803m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762F0(C2809N c2809n, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f735c = c2809n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762F0(C2815O c2815o, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f735c = c2815o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762F0(C2768G0 c2768g0, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f735c = c2768g0;
    }
}
