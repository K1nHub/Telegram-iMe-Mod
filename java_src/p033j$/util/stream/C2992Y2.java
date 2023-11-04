package p033j$.util.stream;

import p033j$.lang.AbstractC2670a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C2992Y2 extends AbstractC3052i3 {

    /* renamed from: b */
    public final /* synthetic */ int f998b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f999c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Y2(C2913K c2913k, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f999c = c2913k;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f998b) {
            case 0:
                ((Consumer) ((C2919L) this.f999c).f919m).accept(obj);
                this.f1104a.accept((InterfaceC3076m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2919L) this.f999c).f919m).test(obj)) {
                    this.f1104a.accept((InterfaceC3076m3) obj);
                    return;
                }
                return;
            case 2:
                this.f1104a.accept((InterfaceC3076m3) ((C3004a3) this.f999c).f1014m.apply(obj));
                return;
            case 3:
                this.f1104a.accept(((ToIntFunction) ((C2925M) this.f999c).f924m).applyAsInt(obj));
                return;
            case 4:
                this.f1104a.accept(((ToLongFunction) ((C2931N) this.f999c).f935m).applyAsLong(obj));
                return;
            case 5:
                this.f1104a.accept(((ToDoubleFunction) ((C2913K) this.f999c).f911m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C3004a3) this.f999c).f1014m.apply(obj);
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

    @Override // p033j$.util.stream.InterfaceC3076m3
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
    public C2992Y2(C2919L c2919l, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f999c = c2919l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Y2(C2919L c2919l, InterfaceC3076m3 interfaceC3076m3, AbstractC2670a abstractC2670a) {
        super(interfaceC3076m3);
        this.f999c = c2919l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Y2(C2925M c2925m, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f999c = c2925m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Y2(C2931N c2931n, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f999c = c2931n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Y2(C3004a3 c3004a3, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
        this.f999c = c3004a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992Y2(C3004a3 c3004a3, InterfaceC3076m3 interfaceC3076m3, AbstractC2670a abstractC2670a) {
        super(interfaceC3076m3);
        this.f999c = c3004a3;
    }
}
