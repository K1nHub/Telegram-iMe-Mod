package p033j$.util.stream;

import p033j$.lang.AbstractC2862a;
import p033j$.lang.AbstractC2863b;
import p033j$.lang.AbstractC2864c;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2960g;
import p033j$.util.function.InterfaceC2961h;
import p033j$.wrappers.C3312D;
import p033j$.wrappers.C3316F;
import p033j$.wrappers.C3324J;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C3050J extends AbstractC3177f3 {

    /* renamed from: b */
    public final /* synthetic */ int f860b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f861c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3050J(C3056K c3056k, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f861c = c3056k;
    }

    @Override // p033j$.util.stream.InterfaceC3201j3, p033j$.util.stream.InterfaceC3219m3
    public void accept(double d) {
        switch (this.f860b) {
            case 0:
                this.f1040a.accept(((C3324J) ((C3056K) this.f861c).f871m).m226a(d));
                return;
            case 1:
                this.f1040a.accept((InterfaceC3219m3) ((InterfaceC2960g) ((C3062L) this.f861c).f879m).apply(d));
                return;
            case 2:
                this.f1040a.accept(((C3316F) ((C3068M) this.f861c).f884m).m239a(d));
                return;
            case 3:
                this.f1040a.accept(((InterfaceC2961h) ((C3074N) this.f861c).f895m).applyAsLong(d));
                return;
            case 4:
                InterfaceC3112U interfaceC3112U = (InterfaceC3112U) ((InterfaceC2960g) ((C3056K) this.f861c).f871m).apply(d);
                if (interfaceC3112U != null) {
                    try {
                        interfaceC3112U.sequential().mo214j(new C3026F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC3112U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3112U != null) {
                    interfaceC3112U.close();
                    return;
                }
                return;
            case 5:
                if (((C3312D) ((C3056K) this.f861c).f871m).m243b(d)) {
                    this.f1040a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2959f) ((C3056K) this.f861c).f871m).accept(d);
                this.f1040a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f860b) {
            case 4:
                this.f1040a.mo315n(-1L);
                return;
            case 5:
                this.f1040a.mo315n(-1L);
                return;
            default:
                this.f1040a.mo315n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3050J(C3056K c3056k, InterfaceC3219m3 interfaceC3219m3, AbstractC2862a abstractC2862a) {
        super(interfaceC3219m3);
        this.f861c = c3056k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3050J(C3056K c3056k, InterfaceC3219m3 interfaceC3219m3, AbstractC2863b abstractC2863b) {
        super(interfaceC3219m3);
        this.f861c = c3056k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3050J(C3056K c3056k, InterfaceC3219m3 interfaceC3219m3, AbstractC2864c abstractC2864c) {
        super(interfaceC3219m3);
        this.f861c = c3056k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3050J(C3062L c3062l, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f861c = c3062l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3050J(C3068M c3068m, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f861c = c3068m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3050J(C3074N c3074n, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f861c = c3074n;
    }
}
