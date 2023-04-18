package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.K4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2757K4 implements InterfaceC2915m3 {

    /* renamed from: a */
    public final /* synthetic */ int f778a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f779b;

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(double d) {
        switch (this.f778a) {
            case 0:
                AbstractC2925o1.m349f(this);
                throw null;
            default:
                AbstractC2925o1.m349f(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f778a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public /* synthetic */ void mo292n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(int i) {
        switch (this.f778a) {
            case 0:
                AbstractC2925o1.m351d(this);
                throw null;
            default:
                AbstractC2925o1.m351d(this);
                throw null;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public /* synthetic */ void accept(long j) {
        switch (this.f778a) {
            case 0:
                AbstractC2925o1.m350e(this);
                throw null;
            default:
                AbstractC2925o1.m350e(this);
                throw null;
        }
    }

    @Override // p034j$.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f778a) {
            case 0:
                ((Consumer) this.f779b).accept(obj);
                return;
            default:
                ((C2844a4) this.f779b).accept(obj);
                return;
        }
    }
}
