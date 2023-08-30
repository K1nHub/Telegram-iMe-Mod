package p033j$.util.stream;

import p033j$.lang.AbstractC2862a;
import p033j$.lang.AbstractC2863b;
import p033j$.lang.AbstractC2864c;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2967n;
import p033j$.wrappers.C3340U;
import p033j$.wrappers.C3342W;
import p033j$.wrappers.C3347a0;
/* renamed from: j$.util.stream.F0 */
/* loaded from: classes2.dex */
class C3027F0 extends AbstractC3183g3 {

    /* renamed from: b */
    public final /* synthetic */ int f829b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f830c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3027F0(C3056K c3056k, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f830c = c3056k;
    }

    @Override // p033j$.util.stream.InterfaceC3207k3, p033j$.util.stream.InterfaceC3219m3
    public void accept(int i) {
        switch (this.f829b) {
            case 0:
                this.f1052a.accept(i);
                return;
            case 1:
                ((InterfaceC2965l) ((C3068M) this.f830c).f884m).accept(i);
                this.f1052a.accept(i);
                return;
            case 2:
                this.f1052a.accept(i);
                return;
            case 3:
                this.f1052a.accept(((C3347a0) ((C3068M) this.f830c).f884m).m170a(i));
                return;
            case 4:
                this.f1052a.accept((InterfaceC3219m3) ((InterfaceC2966m) ((C3062L) this.f830c).f879m).apply(i));
                return;
            case 5:
                this.f1052a.accept(((InterfaceC2967n) ((C3074N) this.f830c).f895m).applyAsLong(i));
                return;
            case 6:
                this.f1052a.accept(((C3342W) ((C3056K) this.f830c).f871m).m176a(i));
                return;
            case 7:
                IntStream intStream = (IntStream) ((InterfaceC2966m) ((C3068M) this.f830c).f884m).apply(i);
                if (intStream != null) {
                    try {
                        intStream.sequential().mo278U(new C3003B0(this));
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
                if (((C3340U) ((C3068M) this.f830c).f884m).m178b(i)) {
                    this.f1052a.accept(i);
                    return;
                }
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f829b) {
            case 7:
                this.f1052a.mo315n(-1L);
                return;
            case 8:
                this.f1052a.mo315n(-1L);
                return;
            default:
                this.f1052a.mo315n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3027F0(C3062L c3062l, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f830c = c3062l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3027F0(C3068M c3068m, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f830c = c3068m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3027F0(C3068M c3068m, InterfaceC3219m3 interfaceC3219m3, AbstractC2862a abstractC2862a) {
        super(interfaceC3219m3);
        this.f830c = c3068m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3027F0(C3068M c3068m, InterfaceC3219m3 interfaceC3219m3, AbstractC2863b abstractC2863b) {
        super(interfaceC3219m3);
        this.f830c = c3068m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3027F0(C3068M c3068m, InterfaceC3219m3 interfaceC3219m3, AbstractC2864c abstractC2864c) {
        super(interfaceC3219m3);
        this.f830c = c3068m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3027F0(C3074N c3074n, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f830c = c3074n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3027F0(C3080O c3080o, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f830c = c3080o;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3027F0(C3033G0 c3033g0, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f830c = c3033g0;
    }
}
