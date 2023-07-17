package p033j$.util.stream;

import java.util.List;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817c;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2832r;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3010b implements InterfaceC2839y, InterfaceC2832r, Consumer, InterfaceC2817c {

    /* renamed from: a */
    public final /* synthetic */ int f964a = 2;

    /* renamed from: b */
    public final /* synthetic */ Object f965b;

    public /* synthetic */ C3010b(InterfaceC2853s interfaceC2853s) {
        this.f965b = interfaceC2853s;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f964a) {
            case 3:
                ((InterfaceC3080m3) this.f965b).accept((InterfaceC3080m3) obj);
                return;
            default:
                ((List) this.f965b).add(obj);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f964a) {
            case 3:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p033j$.util.function.InterfaceC2832r
    public Object apply(long j) {
        int i = C2901H1.f834k;
        return AbstractC3145x2.m311d(j, (InterfaceC2827m) this.f965b);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        switch (this.f964a) {
            case 0:
                return (InterfaceC2853s) this.f965b;
            default:
                return ((AbstractC3016c) this.f965b).m437D0();
        }
    }

    public /* synthetic */ C3010b(InterfaceC2827m interfaceC2827m) {
        this.f965b = interfaceC2827m;
    }

    public /* synthetic */ C3010b(AbstractC3016c abstractC3016c) {
        this.f965b = abstractC3016c;
    }
}
