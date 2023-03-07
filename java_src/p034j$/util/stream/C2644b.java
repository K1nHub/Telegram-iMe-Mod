package p034j$.util.stream;

import java.util.List;
import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2451c;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2466r;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2644b implements InterfaceC2473y, InterfaceC2466r, Consumer, InterfaceC2451c {

    /* renamed from: a */
    public final /* synthetic */ int f873a = 2;

    /* renamed from: b */
    public final /* synthetic */ Object f874b;

    public /* synthetic */ C2644b(InterfaceC2487s interfaceC2487s) {
        this.f874b = interfaceC2487s;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f873a) {
            case 3:
                ((InterfaceC2714m3) this.f874b).accept((InterfaceC2714m3) obj);
                return;
            default:
                ((List) this.f874b).add(obj);
                return;
        }
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f873a) {
            case 3:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p034j$.util.function.InterfaceC2466r
    public Object apply(long j) {
        int i = C2535H1.f743k;
        return AbstractC2779x2.m326d(j, (InterfaceC2461m) this.f874b);
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public Object get() {
        switch (this.f873a) {
            case 0:
                return (InterfaceC2487s) this.f874b;
            default:
                return ((AbstractC2650c) this.f874b).m452D0();
        }
    }

    public /* synthetic */ C2644b(InterfaceC2461m interfaceC2461m) {
        this.f874b = interfaceC2461m;
    }

    public /* synthetic */ C2644b(AbstractC2650c abstractC2650c) {
        this.f874b = abstractC2650c;
    }
}
