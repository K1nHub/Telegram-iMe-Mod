package p033j$.util.stream;

import p033j$.lang.AbstractC2723a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C2996Y2 extends AbstractC3056i3 {

    /* renamed from: b */
    public final /* synthetic */ int f948b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f949c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2996Y2(C2917K c2917k, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f949c = c2917k;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f948b) {
            case 0:
                ((Consumer) ((C2923L) this.f949c).f869m).accept(obj);
                this.f1054a.accept((InterfaceC3080m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2923L) this.f949c).f869m).test(obj)) {
                    this.f1054a.accept((InterfaceC3080m3) obj);
                    return;
                }
                return;
            case 2:
                this.f1054a.accept((InterfaceC3080m3) ((C3008a3) this.f949c).f964m.apply(obj));
                return;
            case 3:
                this.f1054a.accept(((ToIntFunction) ((C2929M) this.f949c).f874m).applyAsInt(obj));
                return;
            case 4:
                this.f1054a.accept(((ToLongFunction) ((C2935N) this.f949c).f885m).applyAsLong(obj));
                return;
            case 5:
                this.f1054a.accept(((ToDoubleFunction) ((C2917K) this.f949c).f861m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C3008a3) this.f949c).f964m.apply(obj);
                if (stream != null) {
                    try {
                        ((Stream) stream.sequential()).forEach(this.f1054a);
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

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        switch (this.f948b) {
            case 1:
                this.f1054a.mo315n(-1L);
                return;
            case 6:
                this.f1054a.mo315n(-1L);
                return;
            default:
                this.f1054a.mo315n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2996Y2(C2923L c2923l, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f949c = c2923l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2996Y2(C2923L c2923l, InterfaceC3080m3 interfaceC3080m3, AbstractC2723a abstractC2723a) {
        super(interfaceC3080m3);
        this.f949c = c2923l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2996Y2(C2929M c2929m, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f949c = c2929m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2996Y2(C2935N c2935n, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f949c = c2935n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2996Y2(C3008a3 c3008a3, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f949c = c3008a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2996Y2(C3008a3 c3008a3, InterfaceC3080m3 interfaceC3080m3, AbstractC2723a abstractC2723a) {
        super(interfaceC3080m3);
        this.f949c = c3008a3;
    }
}
