package p034j$.util.stream;

import p034j$.lang.AbstractC2558a;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C2831Y2 extends AbstractC2891i3 {

    /* renamed from: b */
    public final /* synthetic */ int f860b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f861c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2831Y2(C2752K c2752k, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f861c = c2752k;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f860b) {
            case 0:
                ((Consumer) ((C2758L) this.f861c).f781m).accept(obj);
                this.f966a.accept((InterfaceC2915m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2758L) this.f861c).f781m).test(obj)) {
                    this.f966a.accept((InterfaceC2915m3) obj);
                    return;
                }
                return;
            case 2:
                this.f966a.accept((InterfaceC2915m3) ((C2843a3) this.f861c).f876m.apply(obj));
                return;
            case 3:
                this.f966a.accept(((ToIntFunction) ((C2764M) this.f861c).f786m).applyAsInt(obj));
                return;
            case 4:
                this.f966a.accept(((ToLongFunction) ((C2770N) this.f861c).f797m).applyAsLong(obj));
                return;
            case 5:
                this.f966a.accept(((ToDoubleFunction) ((C2752K) this.f861c).f773m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C2843a3) this.f861c).f876m.apply(obj);
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

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        switch (this.f860b) {
            case 1:
                this.f966a.mo292n(-1L);
                return;
            case 6:
                this.f966a.mo292n(-1L);
                return;
            default:
                this.f966a.mo292n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2831Y2(C2758L c2758l, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f861c = c2758l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2831Y2(C2758L c2758l, InterfaceC2915m3 interfaceC2915m3, AbstractC2558a abstractC2558a) {
        super(interfaceC2915m3);
        this.f861c = c2758l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2831Y2(C2764M c2764m, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f861c = c2764m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2831Y2(C2770N c2770n, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f861c = c2770n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2831Y2(C2843a3 c2843a3, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f861c = c2843a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2831Y2(C2843a3 c2843a3, InterfaceC2915m3 interfaceC2915m3, AbstractC2558a abstractC2558a) {
        super(interfaceC2915m3);
        this.f861c = c2843a3;
    }
}
