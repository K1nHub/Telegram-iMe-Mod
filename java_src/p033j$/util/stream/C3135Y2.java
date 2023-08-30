package p033j$.util.stream;

import p033j$.lang.AbstractC2862a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C3135Y2 extends AbstractC3195i3 {

    /* renamed from: b */
    public final /* synthetic */ int f958b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f959c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3135Y2(C3056K c3056k, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f959c = c3056k;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f958b) {
            case 0:
                ((Consumer) ((C3062L) this.f959c).f879m).accept(obj);
                this.f1064a.accept((InterfaceC3219m3) obj);
                return;
            case 1:
                if (((Predicate) ((C3062L) this.f959c).f879m).test(obj)) {
                    this.f1064a.accept((InterfaceC3219m3) obj);
                    return;
                }
                return;
            case 2:
                this.f1064a.accept((InterfaceC3219m3) ((C3147a3) this.f959c).f974m.apply(obj));
                return;
            case 3:
                this.f1064a.accept(((ToIntFunction) ((C3068M) this.f959c).f884m).applyAsInt(obj));
                return;
            case 4:
                this.f1064a.accept(((ToLongFunction) ((C3074N) this.f959c).f895m).applyAsLong(obj));
                return;
            case 5:
                this.f1064a.accept(((ToDoubleFunction) ((C3056K) this.f959c).f871m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C3147a3) this.f959c).f974m.apply(obj);
                if (stream != null) {
                    try {
                        ((Stream) stream.sequential()).forEach(this.f1064a);
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

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f958b) {
            case 1:
                this.f1064a.mo315n(-1L);
                return;
            case 6:
                this.f1064a.mo315n(-1L);
                return;
            default:
                this.f1064a.mo315n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3135Y2(C3062L c3062l, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f959c = c3062l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3135Y2(C3062L c3062l, InterfaceC3219m3 interfaceC3219m3, AbstractC2862a abstractC2862a) {
        super(interfaceC3219m3);
        this.f959c = c3062l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3135Y2(C3068M c3068m, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f959c = c3068m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3135Y2(C3074N c3074n, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f959c = c3074n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3135Y2(C3147a3 c3147a3, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f959c = c3147a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3135Y2(C3147a3 c3147a3, InterfaceC3219m3 interfaceC3219m3, AbstractC2862a abstractC2862a) {
        super(interfaceC3219m3);
        this.f959c = c3147a3;
    }
}
