package p035j$.util.stream;

import p035j$.lang.AbstractC2571a;
import p035j$.util.function.Consumer;
import p035j$.util.function.Predicate;
import p035j$.util.function.ToDoubleFunction;
import p035j$.util.function.ToIntFunction;
import p035j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C2844Y2 extends AbstractC2904i3 {

    /* renamed from: b */
    public final /* synthetic */ int f865b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f866c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2844Y2(C2765K c2765k, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f866c = c2765k;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f865b) {
            case 0:
                ((Consumer) ((C2771L) this.f866c).f786m).accept(obj);
                this.f971a.accept((InterfaceC2928m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2771L) this.f866c).f786m).test(obj)) {
                    this.f971a.accept((InterfaceC2928m3) obj);
                    return;
                }
                return;
            case 2:
                this.f971a.accept((InterfaceC2928m3) ((C2856a3) this.f866c).f881m.apply(obj));
                return;
            case 3:
                this.f971a.accept(((ToIntFunction) ((C2777M) this.f866c).f791m).applyAsInt(obj));
                return;
            case 4:
                this.f971a.accept(((ToLongFunction) ((C2783N) this.f866c).f802m).applyAsLong(obj));
                return;
            case 5:
                this.f971a.accept(((ToDoubleFunction) ((C2765K) this.f866c).f778m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C2856a3) this.f866c).f881m.apply(obj);
                if (stream != null) {
                    try {
                        ((Stream) stream.sequential()).forEach(this.f971a);
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

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        switch (this.f865b) {
            case 1:
                this.f971a.mo306n(-1L);
                return;
            case 6:
                this.f971a.mo306n(-1L);
                return;
            default:
                this.f971a.mo306n(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2844Y2(C2771L c2771l, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f866c = c2771l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2844Y2(C2771L c2771l, InterfaceC2928m3 interfaceC2928m3, AbstractC2571a abstractC2571a) {
        super(interfaceC2928m3);
        this.f866c = c2771l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2844Y2(C2777M c2777m, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f866c = c2777m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2844Y2(C2783N c2783n, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f866c = c2783n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2844Y2(C2856a3 c2856a3, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f866c = c2856a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2844Y2(C2856a3 c2856a3, InterfaceC2928m3 interfaceC2928m3, AbstractC2571a abstractC2571a) {
        super(interfaceC2928m3);
        this.f866c = c2856a3;
    }
}
