package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2712s implements InterfaceC2713t {

    /* renamed from: a */
    public final /* synthetic */ int f664a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2713t f665b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2713t f666c;

    public /* synthetic */ C2712s(InterfaceC2713t interfaceC2713t, InterfaceC2713t interfaceC2713t2, int i) {
        this.f664a = i;
        if (i != 1) {
            this.f665b = interfaceC2713t;
            this.f666c = interfaceC2713t2;
            return;
        }
        this.f665b = interfaceC2713t;
        this.f666c = interfaceC2713t2;
    }

    @Override // p034j$.util.function.InterfaceC2713t
    /* renamed from: a */
    public InterfaceC2713t mo112a(InterfaceC2713t interfaceC2713t) {
        switch (this.f664a) {
            case 0:
                Objects.requireNonNull(interfaceC2713t);
                return new C2712s(this, interfaceC2713t, 0);
            default:
                Objects.requireNonNull(interfaceC2713t);
                return new C2712s(this, interfaceC2713t, 0);
        }
    }

    @Override // p034j$.util.function.InterfaceC2713t
    public final long applyAsLong(long j) {
        switch (this.f664a) {
            case 0:
                return this.f666c.applyAsLong(this.f665b.applyAsLong(j));
            default:
                return this.f665b.applyAsLong(this.f666c.applyAsLong(j));
        }
    }

    @Override // p034j$.util.function.InterfaceC2713t
    /* renamed from: b */
    public InterfaceC2713t mo111b(InterfaceC2713t interfaceC2713t) {
        switch (this.f664a) {
            case 0:
                Objects.requireNonNull(interfaceC2713t);
                return new C2712s(this, interfaceC2713t, 1);
            default:
                Objects.requireNonNull(interfaceC2713t);
                return new C2712s(this, interfaceC2713t, 1);
        }
    }
}
