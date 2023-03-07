package p034j$.util.stream;

import p034j$.lang.AbstractC2357a;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C2630Y2 extends AbstractC2690i3 {

    /* renamed from: b */
    public final /* synthetic */ int f854b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f855c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2630Y2(C2551K c2551k, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f855c = c2551k;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f854b) {
            case 0:
                ((Consumer) ((C2557L) this.f855c).f775m).accept(obj);
                this.f960a.accept((InterfaceC2714m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2557L) this.f855c).f775m).test(obj)) {
                    this.f960a.accept((InterfaceC2714m3) obj);
                    return;
                }
                return;
            case 2:
                this.f960a.accept((InterfaceC2714m3) ((C2642a3) this.f855c).f870m.apply(obj));
                return;
            case 3:
                this.f960a.accept(((ToIntFunction) ((C2563M) this.f855c).f780m).applyAsInt(obj));
                return;
            case 4:
                this.f960a.accept(((ToLongFunction) ((C2569N) this.f855c).f791m).applyAsLong(obj));
                return;
            case 5:
                this.f960a.accept(((ToDoubleFunction) ((C2551K) this.f855c).f767m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C2642a3) this.f855c).f870m.apply(obj);
                if (stream != null) {
                    try {
                        ((Stream) stream.sequential()).forEach(this.f960a);
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

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        switch (this.f854b) {
            case 1:
                this.f960a.mo312n(-1L);
                return;
            case 6:
                this.f960a.mo312n(-1L);
                return;
            default:
                this.f960a.mo312n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2630Y2(C2557L c2557l, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f855c = c2557l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2630Y2(C2557L c2557l, InterfaceC2714m3 interfaceC2714m3, AbstractC2357a abstractC2357a) {
        super(interfaceC2714m3);
        this.f855c = c2557l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2630Y2(C2563M c2563m, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f855c = c2563m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2630Y2(C2569N c2569n, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f855c = c2569n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2630Y2(C2642a3 c2642a3, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
        this.f855c = c2642a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2630Y2(C2642a3 c2642a3, InterfaceC2714m3 interfaceC2714m3, AbstractC2357a abstractC2357a) {
        super(interfaceC2714m3);
        this.f855c = c2642a3;
    }
}
