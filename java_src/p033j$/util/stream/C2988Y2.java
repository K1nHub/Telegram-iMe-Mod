package p033j$.util.stream;

import p033j$.lang.AbstractC2666a;
import p033j$.util.function.Consumer;
import p033j$.util.function.Predicate;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
/* renamed from: j$.util.stream.Y2 */
/* loaded from: classes2.dex */
class C2988Y2 extends AbstractC3048i3 {

    /* renamed from: b */
    public final /* synthetic */ int f998b = 5;

    /* renamed from: c */
    final /* synthetic */ Object f999c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2988Y2(C2909K c2909k, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f999c = c2909k;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f998b) {
            case 0:
                ((Consumer) ((C2915L) this.f999c).f919m).accept(obj);
                this.f1104a.accept((InterfaceC3072m3) obj);
                return;
            case 1:
                if (((Predicate) ((C2915L) this.f999c).f919m).test(obj)) {
                    this.f1104a.accept((InterfaceC3072m3) obj);
                    return;
                }
                return;
            case 2:
                this.f1104a.accept((InterfaceC3072m3) ((C3000a3) this.f999c).f1014m.apply(obj));
                return;
            case 3:
                this.f1104a.accept(((ToIntFunction) ((C2921M) this.f999c).f924m).applyAsInt(obj));
                return;
            case 4:
                this.f1104a.accept(((ToLongFunction) ((C2927N) this.f999c).f935m).applyAsLong(obj));
                return;
            case 5:
                this.f1104a.accept(((ToDoubleFunction) ((C2909K) this.f999c).f911m).applyAsDouble(obj));
                return;
            default:
                Stream stream = (Stream) ((C3000a3) this.f999c).f1014m.apply(obj);
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

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        switch (this.f998b) {
            case 1:
                this.f1104a.mo360m(-1L);
                return;
            case 6:
                this.f1104a.mo360m(-1L);
                return;
            default:
                this.f1104a.mo360m(j);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2988Y2(C2915L c2915l, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f999c = c2915l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2988Y2(C2915L c2915l, InterfaceC3072m3 interfaceC3072m3, AbstractC2666a abstractC2666a) {
        super(interfaceC3072m3);
        this.f999c = c2915l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2988Y2(C2921M c2921m, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f999c = c2921m;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2988Y2(C2927N c2927n, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f999c = c2927n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2988Y2(C3000a3 c3000a3, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f999c = c3000a3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2988Y2(C3000a3 c3000a3, InterfaceC3072m3 interfaceC3072m3, AbstractC2666a abstractC2666a) {
        super(interfaceC3072m3);
        this.f999c = c3000a3;
    }
}
