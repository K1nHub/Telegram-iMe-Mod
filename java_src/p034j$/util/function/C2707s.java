package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2707s implements InterfaceC2708t {

    /* renamed from: a */
    public final /* synthetic */ int f664a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2708t f665b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2708t f666c;

    public /* synthetic */ C2707s(InterfaceC2708t interfaceC2708t, InterfaceC2708t interfaceC2708t2, int i) {
        this.f664a = i;
        if (i != 1) {
            this.f665b = interfaceC2708t;
            this.f666c = interfaceC2708t2;
            return;
        }
        this.f665b = interfaceC2708t;
        this.f666c = interfaceC2708t2;
    }

    @Override // p034j$.util.function.InterfaceC2708t
    /* renamed from: a */
    public InterfaceC2708t mo112a(InterfaceC2708t interfaceC2708t) {
        switch (this.f664a) {
            case 0:
                Objects.requireNonNull(interfaceC2708t);
                return new C2707s(this, interfaceC2708t, 0);
            default:
                Objects.requireNonNull(interfaceC2708t);
                return new C2707s(this, interfaceC2708t, 0);
        }
    }

    @Override // p034j$.util.function.InterfaceC2708t
    public final long applyAsLong(long j) {
        switch (this.f664a) {
            case 0:
                return this.f666c.applyAsLong(this.f665b.applyAsLong(j));
            default:
                return this.f665b.applyAsLong(this.f666c.applyAsLong(j));
        }
    }

    @Override // p034j$.util.function.InterfaceC2708t
    /* renamed from: b */
    public InterfaceC2708t mo111b(InterfaceC2708t interfaceC2708t) {
        switch (this.f664a) {
            case 0:
                Objects.requireNonNull(interfaceC2708t);
                return new C2707s(this, interfaceC2708t, 1);
            default:
                Objects.requireNonNull(interfaceC2708t);
                return new C2707s(this, interfaceC2708t, 1);
        }
    }
}
