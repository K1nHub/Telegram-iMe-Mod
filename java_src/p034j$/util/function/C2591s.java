package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2591s implements InterfaceC2592t {

    /* renamed from: a */
    public final /* synthetic */ int f660a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2592t f661b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2592t f662c;

    public /* synthetic */ C2591s(InterfaceC2592t interfaceC2592t, InterfaceC2592t interfaceC2592t2, int i) {
        this.f660a = i;
        if (i != 1) {
            this.f661b = interfaceC2592t;
            this.f662c = interfaceC2592t2;
            return;
        }
        this.f661b = interfaceC2592t;
        this.f662c = interfaceC2592t2;
    }

    @Override // p034j$.util.function.InterfaceC2592t
    /* renamed from: a */
    public InterfaceC2592t mo127a(InterfaceC2592t interfaceC2592t) {
        switch (this.f660a) {
            case 0:
                Objects.requireNonNull(interfaceC2592t);
                return new C2591s(this, interfaceC2592t, 0);
            default:
                Objects.requireNonNull(interfaceC2592t);
                return new C2591s(this, interfaceC2592t, 0);
        }
    }

    @Override // p034j$.util.function.InterfaceC2592t
    public final long applyAsLong(long j) {
        switch (this.f660a) {
            case 0:
                return this.f662c.applyAsLong(this.f661b.applyAsLong(j));
            default:
                return this.f661b.applyAsLong(this.f662c.applyAsLong(j));
        }
    }

    @Override // p034j$.util.function.InterfaceC2592t
    /* renamed from: b */
    public InterfaceC2592t mo126b(InterfaceC2592t interfaceC2592t) {
        switch (this.f660a) {
            case 0:
                Objects.requireNonNull(interfaceC2592t);
                return new C2591s(this, interfaceC2592t, 1);
            default:
                Objects.requireNonNull(interfaceC2592t);
                return new C2591s(this, interfaceC2592t, 1);
        }
    }
}
