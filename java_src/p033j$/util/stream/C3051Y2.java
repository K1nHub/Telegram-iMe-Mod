package p033j$.util.stream;

import p033j$.lang.AbstractC2778a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C3051Y2 extends AbstractC3111i3 {

    /* renamed from: b */
    public final /* synthetic */ int f949b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f950c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3051Y2(C2972K c2972k, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f950c = c2972k;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f949b) {
            case 0:
                ((Consumer) ((C2978L) this.f950c).f870m).accept(obj);
                this.f1055a.accept((InterfaceC3135m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2978L) this.f950c).f870m).test(obj)) {
                    this.f1055a.accept((InterfaceC3135m3) obj);
                    return;
                }
                return;
            case 2:
                this.f1055a.accept((InterfaceC3135m3) ((C3063a3) this.f950c).f965m.apply(obj));
                return;
            case 3:
                this.f1055a.accept(((ToIntFunction) ((C2984M) this.f950c).f875m).applyAsInt(obj));
                return;
            case 4:
                this.f1055a.accept(((ToLongFunction) ((C2990N) this.f950c).f886m).applyAsLong(obj));
                return;
            case 5:
                this.f1055a.accept(((ToDoubleFunction) ((C2972K) this.f950c).f862m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C3063a3) this.f950c).f965m.apply(obj);
                if (stream != null) {
                    try {
                        ((Stream) stream.sequential()).forEach(this.f1055a);
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

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f949b) {
            case 1:
                this.f1055a.mo315n(-1L);
                return;
            case 6:
                this.f1055a.mo315n(-1L);
                return;
            default:
                this.f1055a.mo315n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3051Y2(C2978L c2978l, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f950c = c2978l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3051Y2(C2978L c2978l, InterfaceC3135m3 interfaceC3135m3, AbstractC2778a abstractC2778a) {
        super(interfaceC3135m3);
        this.f950c = c2978l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3051Y2(C2984M c2984m, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f950c = c2984m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3051Y2(C2990N c2990n, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f950c = c2990n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3051Y2(C3063a3 c3063a3, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f950c = c3063a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3051Y2(C3063a3 c3063a3, InterfaceC3135m3 interfaceC3135m3, AbstractC2778a abstractC2778a) {
        super(interfaceC3135m3);
        this.f950c = c3063a3;
    }
}
