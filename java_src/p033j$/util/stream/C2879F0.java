package p033j$.util.stream;

import p033j$.lang.AbstractC2665a;
import p033j$.lang.AbstractC2666b;
import p033j$.lang.AbstractC2667c;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.InterfaceC2822m;
import p033j$.wrappers.C3187S;
import p033j$.wrappers.C3189U;
import p033j$.wrappers.C3193Y;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C2879F0 extends AbstractC3035g3 {

    /* renamed from: b */
    public final /* synthetic */ int f869b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f870c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2879F0(C2908K c2908k, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f870c = c2908k;
    }

    @Override // p033j$.util.stream.InterfaceC3059k3, p033j$.util.stream.InterfaceC3071m3
    public void accept(int i) {
        switch (this.f869b) {
            case 0:
                this.f1092a.accept(i);
                return;
            case 1:
                ((InterfaceC2821l) ((C2920M) this.f870c).f924m).accept(i);
                this.f1092a.accept(i);
                return;
            case 2:
                this.f1092a.accept(i);
                return;
            case 3:
                this.f1092a.accept(((C3193Y) ((C2920M) this.f870c).f924m).m227a(i));
                return;
            case 4:
                this.f1092a.accept((InterfaceC3071m3) ((IntFunction) ((C2914L) this.f870c).f919m).apply(i));
                return;
            case 5:
                this.f1092a.accept(((InterfaceC2822m) ((C2926N) this.f870c).f935m).applyAsLong(i));
                return;
            case 6:
                this.f1092a.accept(((C3189U) ((C2908K) this.f870c).f911m).m231a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((IntFunction) ((C2920M) this.f870c).f924m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo328T(new C2855B0(this));
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
                if (((C3187S) ((C2920M) this.f870c).f924m).m233b(i)) {
                    this.f1092a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        switch (this.f869b) {
            case 7:
                this.f1092a.mo364m(-1L);
                return;
            case 8:
                this.f1092a.mo364m(-1L);
                return;
            default:
                this.f1092a.mo364m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2879F0(C2914L c2914l, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f870c = c2914l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2879F0(C2920M c2920m, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f870c = c2920m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2879F0(C2920M c2920m, InterfaceC3071m3 interfaceC3071m3, AbstractC2665a abstractC2665a) {
        super(interfaceC3071m3);
        this.f870c = c2920m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2879F0(C2920M c2920m, InterfaceC3071m3 interfaceC3071m3, AbstractC2666b abstractC2666b) {
        super(interfaceC3071m3);
        this.f870c = c2920m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2879F0(C2920M c2920m, InterfaceC3071m3 interfaceC3071m3, AbstractC2667c abstractC2667c) {
        super(interfaceC3071m3);
        this.f870c = c2920m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2879F0(C2926N c2926n, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f870c = c2926n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2879F0(C2932O c2932o, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f870c = c2932o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2879F0(C2885G0 c2885g0, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f870c = c2885g0;
    }
}
