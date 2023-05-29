package p034j$.util.stream;

import p034j$.lang.AbstractC2597a;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C2870Y2 extends AbstractC2930i3 {

    /* renamed from: b */
    public final /* synthetic */ int f863b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f864c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870Y2(C2791K c2791k, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f864c = c2791k;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f863b) {
            case 0:
                ((Consumer) ((C2797L) this.f864c).f784m).accept(obj);
                this.f969a.accept((InterfaceC2954m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2797L) this.f864c).f784m).test(obj)) {
                    this.f969a.accept((InterfaceC2954m3) obj);
                    return;
                }
                return;
            case 2:
                this.f969a.accept((InterfaceC2954m3) ((C2882a3) this.f864c).f879m.apply(obj));
                return;
            case 3:
                this.f969a.accept(((ToIntFunction) ((C2803M) this.f864c).f789m).applyAsInt(obj));
                return;
            case 4:
                this.f969a.accept(((ToLongFunction) ((C2809N) this.f864c).f800m).applyAsLong(obj));
                return;
            case 5:
                this.f969a.accept(((ToDoubleFunction) ((C2791K) this.f864c).f776m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C2882a3) this.f864c).f879m.apply(obj);
                if (stream != null) {
                    try {
                        ((Stream) stream.sequential()).forEach(this.f969a);
                    } catch (Throwable th) {
                        try {
                            stream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (stream != null) {
                    stream.close();
                    return;
                }
                return;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        switch (this.f863b) {
            case 1:
                this.f969a.mo297n(-1L);
                return;
            case 6:
                this.f969a.mo297n(-1L);
                return;
            default:
                this.f969a.mo297n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870Y2(C2797L c2797l, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f864c = c2797l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870Y2(C2797L c2797l, InterfaceC2954m3 interfaceC2954m3, AbstractC2597a abstractC2597a) {
        super(interfaceC2954m3);
        this.f864c = c2797l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870Y2(C2803M c2803m, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f864c = c2803m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870Y2(C2809N c2809n, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f864c = c2809n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870Y2(C2882a3 c2882a3, InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
        this.f864c = c2882a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870Y2(C2882a3 c2882a3, InterfaceC2954m3 interfaceC2954m3, AbstractC2597a abstractC2597a) {
        super(interfaceC2954m3);
        this.f864c = c2882a3;
    }
}
