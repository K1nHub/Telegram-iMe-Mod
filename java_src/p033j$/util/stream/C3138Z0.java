package p033j$.util.stream;

import p033j$.lang.AbstractC2862a;
import p033j$.lang.AbstractC2863b;
import p033j$.lang.AbstractC2864c;
import p033j$.util.function.InterfaceC2970q;
import p033j$.util.function.InterfaceC2971r;
import p033j$.util.function.InterfaceC2973t;
import p033j$.wrappers.C3363i0;
import p033j$.wrappers.C3367k0;
import p033j$.wrappers.C3371m0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C3138Z0 extends AbstractC3189h3 {

    /* renamed from: b */
    public final /* synthetic */ int f961b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f962c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3138Z0(C3056K c3056k, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f962c = c3056k;
    }

    @Override // p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        switch (this.f961b) {
            case 0:
                this.f1057a.accept(j);
                return;
            case 1:
                this.f1057a.accept(((InterfaceC2973t) ((C3074N) this.f962c).f895m).applyAsLong(j));
                return;
            case 2:
                this.f1057a.accept((InterfaceC3219m3) ((InterfaceC2971r) ((C3062L) this.f962c).f879m).apply(j));
                return;
            case 3:
                this.f1057a.accept(((C3371m0) ((C3068M) this.f962c).f884m).m135a(j));
                return;
            case 4:
                this.f1057a.accept(((C3367k0) ((C3056K) this.f962c).f871m).m141a(j));
                return;
            case 5:
                InterfaceC3169e1 interfaceC3169e1 = (InterfaceC3169e1) ((InterfaceC2971r) ((C3074N) this.f962c).f895m).apply(j);
                if (interfaceC3169e1 != null) {
                    try {
                        interfaceC3169e1.sequential().mo198d(new C3123W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC3169e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3169e1 != null) {
                    interfaceC3169e1.close();
                    return;
                }
                return;
            case 6:
                if (((C3363i0) ((C3074N) this.f962c).f895m).m147b(j)) {
                    this.f1057a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2970q) ((C3074N) this.f962c).f895m).accept(j);
                this.f1057a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f961b) {
            case 5:
                this.f1057a.mo315n(-1L);
                return;
            case 6:
                this.f1057a.mo315n(-1L);
                return;
            default:
                this.f1057a.mo315n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3138Z0(C3062L c3062l, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f962c = c3062l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3138Z0(C3068M c3068m, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f962c = c3068m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3138Z0(C3074N c3074n, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f962c = c3074n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3138Z0(C3074N c3074n, InterfaceC3219m3 interfaceC3219m3, AbstractC2862a abstractC2862a) {
        super(interfaceC3219m3);
        this.f962c = c3074n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3138Z0(C3074N c3074n, InterfaceC3219m3 interfaceC3219m3, AbstractC2863b abstractC2863b) {
        super(interfaceC3219m3);
        this.f962c = c3074n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3138Z0(C3074N c3074n, InterfaceC3219m3 interfaceC3219m3, AbstractC2864c abstractC2864c) {
        super(interfaceC3219m3);
        this.f962c = c3074n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3138Z0(C3080O c3080o, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f962c = c3080o;
    }
}
