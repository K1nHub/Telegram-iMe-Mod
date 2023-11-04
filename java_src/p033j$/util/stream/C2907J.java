package p033j$.util.stream;

import p033j$.lang.AbstractC2670a;
import p033j$.lang.AbstractC2671b;
import p033j$.lang.AbstractC2672c;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.InterfaceC2822h;
import p033j$.wrappers.C3167C;
import p033j$.wrappers.C3171E;
import p033j$.wrappers.C3179I;
/* renamed from: j$.util.stream.J */
/* loaded from: classes2.dex */
class C2907J extends AbstractC3034f3 {

    /* renamed from: b */
    public final /* synthetic */ int f900b = 0;

    /* renamed from: c */
    final /* synthetic */ Object f901c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2907J(C2913K c2913k, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f901c = c2913k;
    }

    @Override // p033j$.util.stream.InterfaceC3058j3, p033j$.util.stream.InterfaceC3076m3
    public void accept(double d) {
        switch (this.f900b) {
            case 0:
                this.f1080a.accept(((C3179I) ((C2913K) this.f901c).f911m).m261a(d));
                return;
            case 1:
                this.f1080a.accept((InterfaceC3076m3) ((InterfaceC2821g) ((C2919L) this.f901c).f919m).apply(d));
                return;
            case 2:
                this.f1080a.accept(((C3171E) ((C2925M) this.f901c).f924m).m288a(d));
                return;
            case 3:
                this.f1080a.accept(((InterfaceC2822h) ((C2931N) this.f901c).f935m).applyAsLong(d));
                return;
            case 4:
                InterfaceC2969U interfaceC2969U = (InterfaceC2969U) ((InterfaceC2821g) ((C2913K) this.f901c).f911m).apply(d);
                if (interfaceC2969U != null) {
                    try {
                        interfaceC2969U.sequential().mo268j(new C2883F(this));
                    } catch (Throwable th) {
                        try {
                            interfaceC2969U.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC2969U != null) {
                    interfaceC2969U.close();
                    return;
                }
                return;
            case 5:
                if (((C3167C) ((C2913K) this.f901c).f911m).m292b(d)) {
                    this.f1080a.accept(d);
                    return;
                }
                return;
            default:
                ((InterfaceC2820f) ((C2913K) this.f901c).f911m).accept(d);
                this.f1080a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        switch (this.f900b) {
            case 4:
                this.f1080a.mo361m(-1L);
                return;
            case 5:
                this.f1080a.mo361m(-1L);
                return;
            default:
                this.f1080a.mo361m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2907J(C2913K c2913k, InterfaceC3076m3 interfaceC3076m3, AbstractC2670a abstractC2670a) {
        super(interfaceC3076m3);
        this.f901c = c2913k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2907J(C2913K c2913k, InterfaceC3076m3 interfaceC3076m3, AbstractC2671b abstractC2671b) {
        super(interfaceC3076m3);
        this.f901c = c2913k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2907J(C2913K c2913k, InterfaceC3076m3 interfaceC3076m3, AbstractC2672c abstractC2672c) {
        super(interfaceC3076m3);
        this.f901c = c2913k;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2907J(C2919L c2919l, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f901c = c2919l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2907J(C2925M c2925m, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f901c = c2925m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2907J(C2931N c2931n, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f901c = c2931n;
    }
}
