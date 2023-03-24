package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2605s implements InterfaceC2606t {

    /* renamed from: a */
    public final /* synthetic */ int f661a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2606t f662b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2606t f663c;

    public /* synthetic */ C2605s(InterfaceC2606t interfaceC2606t, InterfaceC2606t interfaceC2606t2, int i) {
        this.f661a = i;
        if (i != 1) {
            this.f662b = interfaceC2606t;
            this.f663c = interfaceC2606t2;
            return;
        }
        this.f662b = interfaceC2606t;
        this.f663c = interfaceC2606t2;
    }

    @Override // p034j$.util.function.InterfaceC2606t
    /* renamed from: a */
    public InterfaceC2606t mo126a(InterfaceC2606t interfaceC2606t) {
        switch (this.f661a) {
            case 0:
                Objects.requireNonNull(interfaceC2606t);
                return new C2605s(this, interfaceC2606t, 0);
            default:
                Objects.requireNonNull(interfaceC2606t);
                return new C2605s(this, interfaceC2606t, 0);
        }
    }

    @Override // p034j$.util.function.InterfaceC2606t
    public final long applyAsLong(long j) {
        switch (this.f661a) {
            case 0:
                return this.f663c.applyAsLong(this.f662b.applyAsLong(j));
            default:
                return this.f662b.applyAsLong(this.f663c.applyAsLong(j));
        }
    }

    @Override // p034j$.util.function.InterfaceC2606t
    /* renamed from: b */
    public InterfaceC2606t mo125b(InterfaceC2606t interfaceC2606t) {
        switch (this.f661a) {
            case 0:
                Objects.requireNonNull(interfaceC2606t);
                return new C2605s(this, interfaceC2606t, 1);
            default:
                Objects.requireNonNull(interfaceC2606t);
                return new C2605s(this, interfaceC2606t, 1);
        }
    }
}
