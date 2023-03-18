package p034j$.util.stream;

import p034j$.lang.AbstractC2481a;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C2754Y2 extends AbstractC2814i3 {

    /* renamed from: b */
    public final /* synthetic */ int f859b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f860c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2754Y2(C2675K c2675k, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f860c = c2675k;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f859b) {
            case 0:
                ((Consumer) ((C2681L) this.f860c).f780m).accept(obj);
                this.f965a.accept((InterfaceC2838m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2681L) this.f860c).f780m).test(obj)) {
                    this.f965a.accept((InterfaceC2838m3) obj);
                    return;
                }
                return;
            case 2:
                this.f965a.accept((InterfaceC2838m3) ((C2766a3) this.f860c).f875m.apply(obj));
                return;
            case 3:
                this.f965a.accept(((ToIntFunction) ((C2687M) this.f860c).f785m).applyAsInt(obj));
                return;
            case 4:
                this.f965a.accept(((ToLongFunction) ((C2693N) this.f860c).f796m).applyAsLong(obj));
                return;
            case 5:
                this.f965a.accept(((ToDoubleFunction) ((C2675K) this.f860c).f772m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C2766a3) this.f860c).f875m.apply(obj);
                if (stream != null) {
                    try {
                        ((Stream) stream.sequential()).forEach(this.f965a);
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

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        switch (this.f859b) {
            case 1:
                this.f965a.mo312n(-1L);
                return;
            case 6:
                this.f965a.mo312n(-1L);
                return;
            default:
                this.f965a.mo312n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2754Y2(C2681L c2681l, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f860c = c2681l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2754Y2(C2681L c2681l, InterfaceC2838m3 interfaceC2838m3, AbstractC2481a abstractC2481a) {
        super(interfaceC2838m3);
        this.f860c = c2681l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2754Y2(C2687M c2687m, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f860c = c2687m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2754Y2(C2693N c2693n, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f860c = c2693n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2754Y2(C2766a3 c2766a3, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
        this.f860c = c2766a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2754Y2(C2766a3 c2766a3, InterfaceC2838m3 interfaceC2838m3, AbstractC2481a abstractC2481a) {
        super(interfaceC2838m3);
        this.f860c = c2766a3;
    }
}
