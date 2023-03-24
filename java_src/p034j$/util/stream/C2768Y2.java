package p034j$.util.stream;

import p034j$.lang.AbstractC2495a;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C2768Y2 extends AbstractC2828i3 {

    /* renamed from: b */
    public final /* synthetic */ int f860b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f861c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2768Y2(C2689K c2689k, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f861c = c2689k;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f860b) {
            case 0:
                ((Consumer) ((C2695L) this.f861c).f781m).accept(obj);
                this.f966a.accept((InterfaceC2852m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2695L) this.f861c).f781m).test(obj)) {
                    this.f966a.accept((InterfaceC2852m3) obj);
                    return;
                }
                return;
            case 2:
                this.f966a.accept((InterfaceC2852m3) ((C2780a3) this.f861c).f876m.apply(obj));
                return;
            case 3:
                this.f966a.accept(((ToIntFunction) ((C2701M) this.f861c).f786m).applyAsInt(obj));
                return;
            case 4:
                this.f966a.accept(((ToLongFunction) ((C2707N) this.f861c).f797m).applyAsLong(obj));
                return;
            case 5:
                this.f966a.accept(((ToDoubleFunction) ((C2689K) this.f861c).f773m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C2780a3) this.f861c).f876m.apply(obj);
                if (stream != null) {
                    try {
                        ((Stream) stream.sequential()).forEach(this.f966a);
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

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        switch (this.f860b) {
            case 1:
                this.f966a.mo311n(-1L);
                return;
            case 6:
                this.f966a.mo311n(-1L);
                return;
            default:
                this.f966a.mo311n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2768Y2(C2695L c2695l, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f861c = c2695l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2768Y2(C2695L c2695l, InterfaceC2852m3 interfaceC2852m3, AbstractC2495a abstractC2495a) {
        super(interfaceC2852m3);
        this.f861c = c2695l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2768Y2(C2701M c2701m, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f861c = c2701m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2768Y2(C2707N c2707n, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f861c = c2707n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2768Y2(C2780a3 c2780a3, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
        this.f861c = c2780a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2768Y2(C2780a3 c2780a3, InterfaceC2852m3 interfaceC2852m3, AbstractC2495a abstractC2495a) {
        super(interfaceC2852m3);
        this.f861c = c2780a3;
    }
}
