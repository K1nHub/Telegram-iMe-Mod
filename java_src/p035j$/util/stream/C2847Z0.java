package p035j$.util.stream;

import p035j$.lang.AbstractC2571a;
import p035j$.lang.AbstractC2572b;
import p035j$.lang.AbstractC2573c;
import p035j$.util.function.InterfaceC2679q;
import p035j$.util.function.InterfaceC2680r;
import p035j$.util.function.InterfaceC2682t;
import p035j$.wrappers.C3072i0;
import p035j$.wrappers.C3076k0;
import p035j$.wrappers.C3080m0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2847Z0 extends AbstractC2898h3 {

    /* renamed from: b */
    public final /* synthetic */ int f868b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f869c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2847Z0(C2765K c2765k, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f869c = c2765k;
    }

    @Override // p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        switch (this.f868b) {
            case 0:
                this.f964a.accept(j);
                return;
            case 1:
                this.f964a.accept(((InterfaceC2682t) ((C2783N) this.f869c).f802m).applyAsLong(j));
                return;
            case 2:
                this.f964a.accept((InterfaceC2928m3) ((InterfaceC2680r) ((C2771L) this.f869c).f786m).apply(j));
                return;
            case 3:
                this.f964a.accept(((C3080m0) ((C2777M) this.f869c).f791m).m126a(j));
                return;
            case 4:
                this.f964a.accept(((C3076k0) ((C2765K) this.f869c).f778m).m132a(j));
                return;
            case 5:
                InterfaceC2878e1 interfaceC2878e1 = (InterfaceC2878e1) ((InterfaceC2680r) ((C2783N) this.f869c).f802m).apply(j);
                if (interfaceC2878e1 != null) {
                    try {
                        interfaceC2878e1.sequential().mo189d(new C2832W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2878e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2878e1 != null) {
                    interfaceC2878e1.close();
                    return;
                }
                return;
            case 6:
                if (((C3072i0) ((C2783N) this.f869c).f802m).m138b(j)) {
                    this.f964a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2679q) ((C2783N) this.f869c).f802m).accept(j);
                this.f964a.accept(j);
                return;
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        switch (this.f868b) {
            case 5:
                this.f964a.mo306n(-1L);
                return;
            case 6:
                this.f964a.mo306n(-1L);
                return;
            default:
                this.f964a.mo306n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2847Z0(C2771L c2771l, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f869c = c2771l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2847Z0(C2777M c2777m, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f869c = c2777m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2847Z0(C2783N c2783n, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f869c = c2783n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2847Z0(C2783N c2783n, InterfaceC2928m3 interfaceC2928m3, AbstractC2571a abstractC2571a) {
        super(interfaceC2928m3);
        this.f869c = c2783n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2847Z0(C2783N c2783n, InterfaceC2928m3 interfaceC2928m3, AbstractC2572b abstractC2572b) {
        super(interfaceC2928m3);
        this.f869c = c2783n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2847Z0(C2783N c2783n, InterfaceC2928m3 interfaceC2928m3, AbstractC2573c abstractC2573c) {
        super(interfaceC2928m3);
        this.f869c = c2783n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2847Z0(C2789O c2789o, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f869c = c2789o;
    }
}
