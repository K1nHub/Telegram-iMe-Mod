package p033j$.util.stream;

import p033j$.lang.AbstractC2667a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C2989Y2 extends AbstractC3049i3 {

    /* renamed from: b */
    public final /* synthetic */ int f998b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f999c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2989Y2(C2910K c2910k, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f999c = c2910k;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f998b) {
            case 0:
                ((Consumer) ((C2916L) this.f999c).f919m).accept(obj);
                this.f1104a.accept((InterfaceC3073m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2916L) this.f999c).f919m).test(obj)) {
                    this.f1104a.accept((InterfaceC3073m3) obj);
                    return;
                }
                return;
            case 2:
                this.f1104a.accept((InterfaceC3073m3) ((C3001a3) this.f999c).f1014m.apply(obj));
                return;
            case 3:
                this.f1104a.accept(((ToIntFunction) ((C2922M) this.f999c).f924m).applyAsInt(obj));
                return;
            case 4:
                this.f1104a.accept(((ToLongFunction) ((C2928N) this.f999c).f935m).applyAsLong(obj));
                return;
            case 5:
                this.f1104a.accept(((ToDoubleFunction) ((C2910K) this.f999c).f911m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C3001a3) this.f999c).f1014m.apply(obj);
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

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        switch (this.f998b) {
            case 1:
                this.f1104a.mo361m(-1L);
                return;
            case 6:
                this.f1104a.mo361m(-1L);
                return;
            default:
                this.f1104a.mo361m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2989Y2(C2916L c2916l, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f999c = c2916l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2989Y2(C2916L c2916l, InterfaceC3073m3 interfaceC3073m3, AbstractC2667a abstractC2667a) {
        super(interfaceC3073m3);
        this.f999c = c2916l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2989Y2(C2922M c2922m, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f999c = c2922m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2989Y2(C2928N c2928n, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f999c = c2928n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2989Y2(C3001a3 c3001a3, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f999c = c3001a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2989Y2(C3001a3 c3001a3, InterfaceC3073m3 interfaceC3073m3, AbstractC2667a abstractC2667a) {
        super(interfaceC3073m3);
        this.f999c = c3001a3;
    }
}
