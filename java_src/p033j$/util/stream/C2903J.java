package p033j$.util.stream;

import p033j$.lang.AbstractC2666a;
import p033j$.lang.AbstractC2667b;
import p033j$.lang.AbstractC2668c;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2817g;
import p033j$.util.function.InterfaceC2818h;
import p033j$.wrappers.C3163C;
import p033j$.wrappers.C3167E;
import p033j$.wrappers.C3175I;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2903J extends AbstractC3030f3 {

    /* renamed from: b */
    public final /* synthetic */ int f900b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f901c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2903J(C2909K c2909k, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f901c = c2909k;
    }

    @Override // p033j$.util.stream.InterfaceC3054j3, p033j$.util.stream.InterfaceC3072m3
    public void accept(double d) {
        switch (this.f900b) {
            case 0:
                this.f1080a.accept(((C3175I) ((C2909K) this.f901c).f911m).m260a(d));
                return;
            case 1:
                this.f1080a.accept((InterfaceC3072m3) ((InterfaceC2817g) ((C2915L) this.f901c).f919m).apply(d));
                return;
            case 2:
                this.f1080a.accept(((C3167E) ((C2921M) this.f901c).f924m).m287a(d));
                return;
            case 3:
                this.f1080a.accept(((InterfaceC2818h) ((C2927N) this.f901c).f935m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2965U interfaceC2965U = (InterfaceC2965U) ((InterfaceC2817g) ((C2909K) this.f901c).f911m).apply(d);
                if (interfaceC2965U != null) {
                    try {
                        interfaceC2965U.sequential().mo267j(new C2879F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2965U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2965U != null) {
                    interfaceC2965U.close();
                    return;
                }
                return;
            case 5:
                if (((C3163C) ((C2909K) this.f901c).f911m).m291b(d)) {
                    this.f1080a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2816f) ((C2909K) this.f901c).f911m).accept(d);
                this.f1080a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        switch (this.f900b) {
            case 4:
                this.f1080a.mo360m(-1L);
                return;
            case 5:
                this.f1080a.mo360m(-1L);
                return;
            default:
                this.f1080a.mo360m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2903J(C2909K c2909k, InterfaceC3072m3 interfaceC3072m3, AbstractC2666a abstractC2666a) {
        super(interfaceC3072m3);
        this.f901c = c2909k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2903J(C2909K c2909k, InterfaceC3072m3 interfaceC3072m3, AbstractC2667b abstractC2667b) {
        super(interfaceC3072m3);
        this.f901c = c2909k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2903J(C2909K c2909k, InterfaceC3072m3 interfaceC3072m3, AbstractC2668c abstractC2668c) {
        super(interfaceC3072m3);
        this.f901c = c2909k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2903J(C2915L c2915l, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f901c = c2915l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2903J(C2921M c2921m, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f901c = c2921m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2903J(C2927N c2927n, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f901c = c2927n;
    }
}
