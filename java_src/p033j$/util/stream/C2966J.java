package p033j$.util.stream;

import p033j$.lang.AbstractC2778a;
import p033j$.lang.AbstractC2779b;
import p033j$.lang.AbstractC2780c;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2876g;
import p033j$.util.function.InterfaceC2877h;
import p033j$.wrappers.C3228D;
import p033j$.wrappers.C3232F;
import p033j$.wrappers.C3240J;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2966J extends AbstractC3093f3 {

    /* renamed from: b */
    public final /* synthetic */ int f851b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f852c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2966J(C2972K c2972k, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f852c = c2972k;
    }

    @Override // p033j$.util.stream.InterfaceC3117j3, p033j$.util.stream.InterfaceC3135m3
    public void accept(double d) {
        switch (this.f851b) {
            case 0:
                this.f1031a.accept(((C3240J) ((C2972K) this.f852c).f862m).m226a(d));
                return;
            case 1:
                this.f1031a.accept((InterfaceC3135m3) ((InterfaceC2876g) ((C2978L) this.f852c).f870m).apply(d));
                return;
            case 2:
                this.f1031a.accept(((C3232F) ((C2984M) this.f852c).f875m).m239a(d));
                return;
            case 3:
                this.f1031a.accept(((InterfaceC2877h) ((C2990N) this.f852c).f886m).applyAsLong(d));
                return;
            case 4:
                InterfaceC3028U interfaceC3028U = (InterfaceC3028U) ((InterfaceC2876g) ((C2972K) this.f852c).f862m).apply(d);
                if (interfaceC3028U != null) {
                    try {
                        interfaceC3028U.sequential().mo214j(new C2942F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC3028U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3028U != null) {
                    interfaceC3028U.close();
                    return;
                }
                return;
            case 5:
                if (((C3228D) ((C2972K) this.f852c).f862m).m243b(d)) {
                    this.f1031a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2875f) ((C2972K) this.f852c).f862m).accept(d);
                this.f1031a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f851b) {
            case 4:
                this.f1031a.mo315n(-1L);
                return;
            case 5:
                this.f1031a.mo315n(-1L);
                return;
            default:
                this.f1031a.mo315n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2966J(C2972K c2972k, InterfaceC3135m3 interfaceC3135m3, AbstractC2778a abstractC2778a) {
        super(interfaceC3135m3);
        this.f852c = c2972k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2966J(C2972K c2972k, InterfaceC3135m3 interfaceC3135m3, AbstractC2779b abstractC2779b) {
        super(interfaceC3135m3);
        this.f852c = c2972k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2966J(C2972K c2972k, InterfaceC3135m3 interfaceC3135m3, AbstractC2780c abstractC2780c) {
        super(interfaceC3135m3);
        this.f852c = c2972k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2966J(C2978L c2978l, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f852c = c2978l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2966J(C2984M c2984m, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f852c = c2984m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2966J(C2990N c2990n, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f852c = c2990n;
    }
}
