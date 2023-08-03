package p033j$.util.stream;

import p033j$.lang.AbstractC2723a;
import p033j$.lang.AbstractC2724b;
import p033j$.lang.AbstractC2725c;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2832r;
import p033j$.util.function.InterfaceC2834t;
import p033j$.wrappers.C3224i0;
import p033j$.wrappers.C3228k0;
import p033j$.wrappers.C3232m0;
/* renamed from: j$.util.stream.Z0 */
/* loaded from: classes2.dex */
class C2999Z0 extends AbstractC3050h3 {

    /* renamed from: b */
    public final /* synthetic */ int f951b = 4;

    /* renamed from: c */
    final /* synthetic */ Object f952c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2999Z0(C2917K c2917k, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f952c = c2917k;
    }

    @Override // p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        switch (this.f951b) {
            case 0:
                this.f1047a.accept(j);
                return;
            case 1:
                this.f1047a.accept(((InterfaceC2834t) ((C2935N) this.f952c).f885m).applyAsLong(j));
                return;
            case 2:
                this.f1047a.accept((InterfaceC3080m3) ((InterfaceC2832r) ((C2923L) this.f952c).f869m).apply(j));
                return;
            case 3:
                this.f1047a.accept(((C3232m0) ((C2929M) this.f952c).f874m).m135a(j));
                return;
            case 4:
                this.f1047a.accept(((C3228k0) ((C2917K) this.f952c).f861m).m141a(j));
                return;
            case 5:
                InterfaceC3030e1 interfaceC3030e1 = (InterfaceC3030e1) ((InterfaceC2832r) ((C2935N) this.f952c).f885m).apply(j);
                if (interfaceC3030e1 != null) {
                    try {
                        interfaceC3030e1.sequential().mo198d(new C2984W0(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC3030e1.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3030e1 != null) {
                    interfaceC3030e1.close();
                    return;
                }
                return;
            case 6:
                if (((C3224i0) ((C2935N) this.f952c).f885m).m147b(j)) {
                    this.f1047a.accept(j);
                    return;
                }
                return;
            default:
                ((InterfaceC2831q) ((C2935N) this.f952c).f885m).accept(j);
                this.f1047a.accept(j);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f951b) {
            case 5:
                this.f1047a.mo315n(-1L);
                return;
            case 6:
                this.f1047a.mo315n(-1L);
                return;
            default:
                this.f1047a.mo315n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2999Z0(C2923L c2923l, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f952c = c2923l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2999Z0(C2929M c2929m, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f952c = c2929m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2999Z0(C2935N c2935n, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f952c = c2935n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2999Z0(C2935N c2935n, InterfaceC3080m3 interfaceC3080m3, AbstractC2723a abstractC2723a) {
        super(interfaceC3080m3);
        this.f952c = c2935n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2999Z0(C2935N c2935n, InterfaceC3080m3 interfaceC3080m3, AbstractC2724b abstractC2724b) {
        super(interfaceC3080m3);
        this.f952c = c2935n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2999Z0(C2935N c2935n, InterfaceC3080m3 interfaceC3080m3, AbstractC2725c abstractC2725c) {
        super(interfaceC3080m3);
        this.f952c = c2935n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2999Z0(C2941O c2941o, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f952c = c2941o;
    }
}
