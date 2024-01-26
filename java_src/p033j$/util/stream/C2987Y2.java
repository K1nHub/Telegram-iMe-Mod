package p033j$.util.stream;

import p033j$.lang.AbstractC2665a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C2987Y2 extends AbstractC3047i3 {

    /* renamed from: b */
    public final /* synthetic */ int f998b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f999c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2987Y2(C2908K c2908k, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f999c = c2908k;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f998b) {
            case 0:
                ((Consumer) ((C2914L) this.f999c).f919m).accept(obj);
                this.f1104a.accept((InterfaceC3071m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2914L) this.f999c).f919m).test(obj)) {
                    this.f1104a.accept((InterfaceC3071m3) obj);
                    return;
                }
                return;
            case 2:
                this.f1104a.accept((InterfaceC3071m3) ((C2999a3) this.f999c).f1014m.apply(obj));
                return;
            case 3:
                this.f1104a.accept(((ToIntFunction) ((C2920M) this.f999c).f924m).applyAsInt(obj));
                return;
            case 4:
                this.f1104a.accept(((ToLongFunction) ((C2926N) this.f999c).f935m).applyAsLong(obj));
                return;
            case 5:
                this.f1104a.accept(((ToDoubleFunction) ((C2908K) this.f999c).f911m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C2999a3) this.f999c).f1014m.apply(obj);
                if (stream != null) {
                    try {
                        ((Stream) stream.sequential()).forEach(this.f1104a);
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

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        switch (this.f998b) {
            case 1:
                this.f1104a.mo364m(-1L);
                return;
            case 6:
                this.f1104a.mo364m(-1L);
                return;
            default:
                this.f1104a.mo364m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2987Y2(C2914L c2914l, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f999c = c2914l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2987Y2(C2914L c2914l, InterfaceC3071m3 interfaceC3071m3, AbstractC2665a abstractC2665a) {
        super(interfaceC3071m3);
        this.f999c = c2914l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2987Y2(C2920M c2920m, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f999c = c2920m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2987Y2(C2926N c2926n, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f999c = c2926n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2987Y2(C2999a3 c2999a3, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f999c = c2999a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2987Y2(C2999a3 c2999a3, InterfaceC3071m3 interfaceC3071m3, AbstractC2665a abstractC2665a) {
        super(interfaceC3071m3);
        this.f999c = c2999a3;
    }
}
