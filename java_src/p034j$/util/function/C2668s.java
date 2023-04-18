package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2668s implements InterfaceC2669t {

    /* renamed from: a */
    public final /* synthetic */ int f661a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2669t f662b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2669t f663c;

    public /* synthetic */ C2668s(InterfaceC2669t interfaceC2669t, InterfaceC2669t interfaceC2669t2, int i) {
        this.f661a = i;
        if (i != 1) {
            this.f662b = interfaceC2669t;
            this.f663c = interfaceC2669t2;
            return;
        }
        this.f662b = interfaceC2669t;
        this.f663c = interfaceC2669t2;
    }

    @Override // p034j$.util.function.InterfaceC2669t
    /* renamed from: a */
    public InterfaceC2669t mo107a(InterfaceC2669t interfaceC2669t) {
        switch (this.f661a) {
            case 0:
                Objects.requireNonNull(interfaceC2669t);
                return new C2668s(this, interfaceC2669t, 0);
            default:
                Objects.requireNonNull(interfaceC2669t);
                return new C2668s(this, interfaceC2669t, 0);
        }
    }

    @Override // p034j$.util.function.InterfaceC2669t
    public final long applyAsLong(long j) {
        switch (this.f661a) {
            case 0:
                return this.f663c.applyAsLong(this.f662b.applyAsLong(j));
            default:
                return this.f662b.applyAsLong(this.f663c.applyAsLong(j));
        }
    }

    @Override // p034j$.util.function.InterfaceC2669t
    /* renamed from: b */
    public InterfaceC2669t mo106b(InterfaceC2669t interfaceC2669t) {
        switch (this.f661a) {
            case 0:
                Objects.requireNonNull(interfaceC2669t);
                return new C2668s(this, interfaceC2669t, 1);
            default:
                Objects.requireNonNull(interfaceC2669t);
                return new C2668s(this, interfaceC2669t, 1);
        }
    }
}
