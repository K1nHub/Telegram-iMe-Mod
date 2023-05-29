package p034j$.util.stream;

import p034j$.lang.AbstractC2602a;
import p034j$.lang.AbstractC2603b;
import p034j$.lang.AbstractC2604c;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2707n;
import p034j$.wrappers.C3080U;
import p034j$.wrappers.C3082W;
import p034j$.wrappers.C3087a0;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2767F0 extends AbstractC2923g3 {

    /* renamed from: b */
    public final /* synthetic */ int f734b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f735c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767F0(C2796K c2796k, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f735c = c2796k;
    }

    @Override // p034j$.util.stream.InterfaceC2947k3, p034j$.util.stream.InterfaceC2959m3
    public void accept(int i) {
        switch (this.f734b) {
            case 0:
                this.f957a.accept(i);
                return;
            case 1:
                ((InterfaceC2705l) ((C2808M) this.f735c).f789m).accept(i);
                this.f957a.accept(i);
                return;
            case 2:
                this.f957a.accept(i);
                return;
            case 3:
                this.f957a.accept(((C3087a0) ((C2808M) this.f735c).f789m).m152a(i));
                return;
            case 4:
                this.f957a.accept((InterfaceC2959m3) ((InterfaceC2706m) ((C2802L) this.f735c).f784m).apply(i));
                return;
            case 5:
                this.f957a.accept(((InterfaceC2707n) ((C2814N) this.f735c).f800m).applyAsLong(i));
                return;
            case 6:
                this.f957a.accept(((C3082W) ((C2796K) this.f735c).f776m).m158a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((InterfaceC2706m) ((C2808M) this.f735c).f789m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo260U(new C2743B0(this));
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
                if (((C3080U) ((C2808M) this.f735c).f789m).m160b(i)) {
                    this.f957a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
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
    public C2767F0(C2802L c2802l, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f735c = c2802l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767F0(C2808M c2808m, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f735c = c2808m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767F0(C2808M c2808m, InterfaceC2959m3 interfaceC2959m3, AbstractC2602a abstractC2602a) {
        super(interfaceC2959m3);
        this.f735c = c2808m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767F0(C2808M c2808m, InterfaceC2959m3 interfaceC2959m3, AbstractC2603b abstractC2603b) {
        super(interfaceC2959m3);
        this.f735c = c2808m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767F0(C2808M c2808m, InterfaceC2959m3 interfaceC2959m3, AbstractC2604c abstractC2604c) {
        super(interfaceC2959m3);
        this.f735c = c2808m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767F0(C2814N c2814n, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f735c = c2814n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767F0(C2820O c2820o, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f735c = c2820o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2767F0(C2773G0 c2773g0, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
        this.f735c = c2773g0;
    }
}
